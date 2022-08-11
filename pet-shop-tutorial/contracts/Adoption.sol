pragma solidity ^0.5.0;

contract Adoption {
    address[16] public adopters; // Ethereum addresses, public variables have automatic getter methods

    // Adopting a pet
    function adopt(uint petIdx) public returns (uint) {
        require(petIdx >= 0 && petIdx <= 15);
        adopters[petIdx] = msg.sender;
        return petIdx;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) { // 'view': not modify the state of the contract
        return adopters; // already declared, so simply return
    }
}