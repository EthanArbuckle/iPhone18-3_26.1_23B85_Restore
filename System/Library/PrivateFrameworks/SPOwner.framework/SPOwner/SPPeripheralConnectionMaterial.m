@interface SPPeripheralConnectionMaterial
- (SPPeripheralConnectionMaterial)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPPeripheralConnectionMaterial

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(SPPeripheralConnectionMaterial *)self irkData];
  v6 = [v5 copy];
  [v4 setIrkData:v6];

  v7 = [(SPPeripheralConnectionMaterial *)self btAddressData];
  v8 = [v7 copy];
  [v4 setBtAddressData:v8];

  v9 = [(SPPeripheralConnectionMaterial *)self btAddressWithTypeData];
  v10 = [v9 copy];
  [v4 setBtAddressWithTypeData:v10];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  irkData = self->_irkData;
  v5 = irkDataKey;
  v6 = a3;
  [v6 encodeObject:irkData forKey:v5];
  [v6 encodeObject:self->_btAddressData forKey:btAddressDataKey];
  [v6 encodeObject:self->_btAddressWithTypeData forKey:btAddressWithTypeDataKey];
}

- (SPPeripheralConnectionMaterial)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:irkDataKey];
  irkData = self->_irkData;
  self->_irkData = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:btAddressDataKey];
  btAddressData = self->_btAddressData;
  self->_btAddressData = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:btAddressWithTypeDataKey];

  btAddressWithTypeData = self->_btAddressWithTypeData;
  self->_btAddressWithTypeData = v9;

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPPeripheralConnectionMaterial *)self irkData];
  v6 = [(SPPeripheralConnectionMaterial *)self btAddressData];
  v7 = [(SPPeripheralConnectionMaterial *)self btAddressWithTypeData];
  v8 = [v3 stringWithFormat:@"<%@: %p irkData: %@ btAddressData: %@ btAddressWithTypeData: %@>", v4, self, v5, v6, v7];

  return v8;
}

@end