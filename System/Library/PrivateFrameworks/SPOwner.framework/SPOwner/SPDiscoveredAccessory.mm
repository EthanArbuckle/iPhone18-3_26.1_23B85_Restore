@interface SPDiscoveredAccessory
- (BOOL)isEqual:(id)a3;
- (SPDiscoveredAccessory)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPDiscoveredAccessory

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SPDiscoveredAccessory *)self identifier];
      v7 = [(SPDiscoveredAccessory *)v5 identifier];

      v8 = [v6 isEqual:v7];
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
  v2 = [(SPDiscoveredAccessory *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(SPDiscoveredAccessory *)self identifier];
  v6 = [v5 copy];
  [v4 setIdentifier:v6];

  v7 = [(SPDiscoveredAccessory *)self macAddress];
  v8 = [v7 copy];
  [v4 setMacAddress:v8];

  v9 = [(SPDiscoveredAccessory *)self discoveredMetadata];
  v10 = [v9 copy];
  [v4 setDiscoveredMetadata:v10];

  v11 = [(SPDiscoveredAccessory *)self productInformation];
  v12 = [v11 copy];
  [v4 setProductInformation:v12];

  [v4 setIsBatteryTooLow:{-[SPDiscoveredAccessory isBatteryTooLow](self, "isBatteryTooLow")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_macAddress forKey:@"macAddress"];
  [v5 encodeObject:self->_discoveredMetadata forKey:@"discoveredMetadata"];
  [v5 encodeObject:self->_productInformation forKey:@"productInformation"];
  [v5 encodeBool:self->_isBatteryTooLow forKey:@"isBatteryTooLow"];
}

- (SPDiscoveredAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"macAddress"];
  macAddress = self->_macAddress;
  self->_macAddress = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"discoveredMetadata"];
  discoveredMetadata = self->_discoveredMetadata;
  self->_discoveredMetadata = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productInformation"];
  productInformation = self->_productInformation;
  self->_productInformation = v11;

  v13 = [v4 decodeBoolForKey:@"isBatteryTooLow"];
  self->_isBatteryTooLow = v13;
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPDiscoveredAccessory *)self identifier];
  v6 = [(SPDiscoveredAccessory *)self macAddress];
  v7 = [v6 fm_hexString];
  v8 = [(SPDiscoveredAccessory *)self discoveredMetadata];
  v9 = [(SPDiscoveredAccessory *)self productInformation];
  v10 = [v3 stringWithFormat:@"<%@: %p %@ [%@] %@ %@>", v4, self, v5, v7, v8, v9];

  return v10;
}

@end