@interface SPCBPeripheralKeyAddressPair
- (SPCBPeripheralKeyAddressPair)initWithCoder:(id)coder;
- (SPCBPeripheralKeyAddressPair)initWithLEMACAddress:(id)address longTermKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPCBPeripheralKeyAddressPair

- (SPCBPeripheralKeyAddressPair)initWithLEMACAddress:(id)address longTermKey:(id)key
{
  addressCopy = address;
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = SPCBPeripheralKeyAddressPair;
  v8 = [(SPCBPeripheralKeyAddressPair *)&v14 init];
  if (v8)
  {
    if ([addressCopy length] == 7 && objc_msgSend(keyCopy, "length") == 16)
    {
      v9 = [addressCopy copy];
      leMACAddress = v8->_leMACAddress;
      v8->_leMACAddress = v9;

      v11 = [keyCopy copy];
      longTermKey = v8->_longTermKey;
      v8->_longTermKey = v11;
    }

    else
    {
      longTermKey = v8;
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPCBPeripheralKeyAddressPair alloc];
  leMACAddress = [(SPCBPeripheralKeyAddressPair *)self leMACAddress];
  longTermKey = [(SPCBPeripheralKeyAddressPair *)self longTermKey];
  v7 = [(SPCBPeripheralKeyAddressPair *)v4 initWithLEMACAddress:leMACAddress longTermKey:longTermKey];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  leMACAddress = [(SPCBPeripheralKeyAddressPair *)self leMACAddress];
  [coderCopy encodeObject:leMACAddress forKey:@"mac"];

  longTermKey = [(SPCBPeripheralKeyAddressPair *)self longTermKey];
  [coderCopy encodeObject:longTermKey forKey:@"ltk"];
}

- (SPCBPeripheralKeyAddressPair)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mac"];
  leMACAddress = self->_leMACAddress;
  self->_leMACAddress = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ltk"];

  longTermKey = self->_longTermKey;
  self->_longTermKey = v7;

  if ([(NSData *)self->_leMACAddress length]== 7 && [(NSData *)self->_longTermKey length]== 16)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  leMACAddress = [(SPCBPeripheralKeyAddressPair *)self leMACAddress];
  fm_hexString = [leMACAddress fm_hexString];
  longTermKey = [(SPCBPeripheralKeyAddressPair *)self longTermKey];
  fm_hexString2 = [longTermKey fm_hexString];
  v8 = [v3 stringWithFormat:@"[LEMAC: %@ LTK: %@]", fm_hexString, fm_hexString2];

  return v8;
}

@end