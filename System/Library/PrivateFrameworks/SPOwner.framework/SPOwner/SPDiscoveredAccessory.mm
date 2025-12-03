@interface SPDiscoveredAccessory
- (BOOL)isEqual:(id)equal;
- (SPDiscoveredAccessory)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPDiscoveredAccessory

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
      identifier = [(SPDiscoveredAccessory *)self identifier];
      identifier2 = [(SPDiscoveredAccessory *)v5 identifier];

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
  identifier = [(SPDiscoveredAccessory *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  identifier = [(SPDiscoveredAccessory *)self identifier];
  v6 = [identifier copy];
  [v4 setIdentifier:v6];

  macAddress = [(SPDiscoveredAccessory *)self macAddress];
  v8 = [macAddress copy];
  [v4 setMacAddress:v8];

  discoveredMetadata = [(SPDiscoveredAccessory *)self discoveredMetadata];
  v10 = [discoveredMetadata copy];
  [v4 setDiscoveredMetadata:v10];

  productInformation = [(SPDiscoveredAccessory *)self productInformation];
  v12 = [productInformation copy];
  [v4 setProductInformation:v12];

  [v4 setIsBatteryTooLow:{-[SPDiscoveredAccessory isBatteryTooLow](self, "isBatteryTooLow")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_macAddress forKey:@"macAddress"];
  [coderCopy encodeObject:self->_discoveredMetadata forKey:@"discoveredMetadata"];
  [coderCopy encodeObject:self->_productInformation forKey:@"productInformation"];
  [coderCopy encodeBool:self->_isBatteryTooLow forKey:@"isBatteryTooLow"];
}

- (SPDiscoveredAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"macAddress"];
  macAddress = self->_macAddress;
  self->_macAddress = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"discoveredMetadata"];
  discoveredMetadata = self->_discoveredMetadata;
  self->_discoveredMetadata = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productInformation"];
  productInformation = self->_productInformation;
  self->_productInformation = v11;

  v13 = [coderCopy decodeBoolForKey:@"isBatteryTooLow"];
  self->_isBatteryTooLow = v13;
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(SPDiscoveredAccessory *)self identifier];
  macAddress = [(SPDiscoveredAccessory *)self macAddress];
  fm_hexString = [macAddress fm_hexString];
  discoveredMetadata = [(SPDiscoveredAccessory *)self discoveredMetadata];
  productInformation = [(SPDiscoveredAccessory *)self productInformation];
  v10 = [v3 stringWithFormat:@"<%@: %p %@ [%@] %@ %@>", v4, self, identifier, fm_hexString, discoveredMetadata, productInformation];

  return v10;
}

@end