@interface SPStandaloneBeacon
- (BOOL)isEqual:(id)equal;
- (SPStandaloneBeacon)initWithCoder:(id)coder;
- (SPStandaloneBeacon)initWithIdentifier:(id)identifier macAddress:(id)address classicMacAddress:(id)macAddress serialNumber:(id)number pairingDate:(id)date productData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPStandaloneBeacon

- (SPStandaloneBeacon)initWithIdentifier:(id)identifier macAddress:(id)address classicMacAddress:(id)macAddress serialNumber:(id)number pairingDate:(id)date productData:(id)data
{
  identifierCopy = identifier;
  addressCopy = address;
  macAddressCopy = macAddress;
  numberCopy = number;
  dateCopy = date;
  dataCopy = data;
  v34.receiver = self;
  v34.super_class = SPStandaloneBeacon;
  v20 = [(SPStandaloneBeacon *)&v34 init];
  if (v20)
  {
    v21 = [identifierCopy copy];
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [addressCopy copy];
    macAddress = v20->_macAddress;
    v20->_macAddress = v23;

    v25 = [macAddressCopy copy];
    classicMacAddress = v20->_classicMacAddress;
    v20->_classicMacAddress = v25;

    v27 = [numberCopy copy];
    serialNumber = v20->_serialNumber;
    v20->_serialNumber = v27;

    v29 = [dateCopy copy];
    pairingDate = v20->_pairingDate;
    v20->_pairingDate = v29;

    v31 = [dataCopy copy];
    productData = v20->_productData;
    v20->_productData = v31;
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPStandaloneBeacon alloc];
  identifier = [(SPStandaloneBeacon *)self identifier];
  macAddress = [(SPStandaloneBeacon *)self macAddress];
  classicMacAddress = [(SPStandaloneBeacon *)self classicMacAddress];
  serialNumber = [(SPStandaloneBeacon *)self serialNumber];
  pairingDate = [(SPStandaloneBeacon *)self pairingDate];
  productData = [(SPStandaloneBeacon *)self productData];
  v11 = [(SPStandaloneBeacon *)v4 initWithIdentifier:identifier macAddress:macAddress classicMacAddress:classicMacAddress serialNumber:serialNumber pairingDate:pairingDate productData:productData];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SPStandaloneBeacon *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  macAddress = [(SPStandaloneBeacon *)self macAddress];
  [coderCopy encodeObject:macAddress forKey:@"macAddress"];

  classicMacAddress = [(SPStandaloneBeacon *)self classicMacAddress];
  [coderCopy encodeObject:classicMacAddress forKey:@"classicMacAddress"];

  serialNumber = [(SPStandaloneBeacon *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"serialNumber"];

  pairingDate = [(SPStandaloneBeacon *)self pairingDate];
  [coderCopy encodeObject:pairingDate forKey:@"pairingDate"];

  productData = [(SPStandaloneBeacon *)self productData];
  [coderCopy encodeObject:productData forKey:@"productData"];
}

- (SPStandaloneBeacon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"macAddress"];
  macAddress = self->_macAddress;
  self->_macAddress = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"classicMacAddress"];
  classicMacAddress = self->_classicMacAddress;
  self->_classicMacAddress = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingDate"];
  pairingDate = self->_pairingDate;
  self->_pairingDate = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productData"];

  productData = self->_productData;
  self->_productData = v15;

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(SPStandaloneBeacon *)self identifier];
      identifier2 = [(SPStandaloneBeacon *)v5 identifier];

      v8 = [identifier isEqual:identifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(SPStandaloneBeacon *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(SPStandaloneBeacon *)self identifier];
  serialNumber = [(SPStandaloneBeacon *)self serialNumber];
  macAddress = [(SPStandaloneBeacon *)self macAddress];
  fm_hexString = [macAddress fm_hexString];
  classicMacAddress = [(SPStandaloneBeacon *)self classicMacAddress];
  fm_hexString2 = [classicMacAddress fm_hexString];
  v10 = [v3 stringWithFormat:@"<id: %@ S/N: [%@] macAddress: [%@] classicMacAddress: %@>", identifier, serialNumber, fm_hexString, fm_hexString2];

  return v10;
}

@end