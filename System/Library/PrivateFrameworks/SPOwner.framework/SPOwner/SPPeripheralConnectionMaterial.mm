@interface SPPeripheralConnectionMaterial
- (SPPeripheralConnectionMaterial)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPPeripheralConnectionMaterial

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  irkData = [(SPPeripheralConnectionMaterial *)self irkData];
  v6 = [irkData copy];
  [v4 setIrkData:v6];

  btAddressData = [(SPPeripheralConnectionMaterial *)self btAddressData];
  v8 = [btAddressData copy];
  [v4 setBtAddressData:v8];

  btAddressWithTypeData = [(SPPeripheralConnectionMaterial *)self btAddressWithTypeData];
  v10 = [btAddressWithTypeData copy];
  [v4 setBtAddressWithTypeData:v10];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  irkData = self->_irkData;
  v5 = irkDataKey;
  coderCopy = coder;
  [coderCopy encodeObject:irkData forKey:v5];
  [coderCopy encodeObject:self->_btAddressData forKey:btAddressDataKey];
  [coderCopy encodeObject:self->_btAddressWithTypeData forKey:btAddressWithTypeDataKey];
}

- (SPPeripheralConnectionMaterial)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:irkDataKey];
  irkData = self->_irkData;
  self->_irkData = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:btAddressDataKey];
  btAddressData = self->_btAddressData;
  self->_btAddressData = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:btAddressWithTypeDataKey];

  btAddressWithTypeData = self->_btAddressWithTypeData;
  self->_btAddressWithTypeData = v9;

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  irkData = [(SPPeripheralConnectionMaterial *)self irkData];
  btAddressData = [(SPPeripheralConnectionMaterial *)self btAddressData];
  btAddressWithTypeData = [(SPPeripheralConnectionMaterial *)self btAddressWithTypeData];
  v8 = [v3 stringWithFormat:@"<%@: %p irkData: %@ btAddressData: %@ btAddressWithTypeData: %@>", v4, self, irkData, btAddressData, btAddressWithTypeData];

  return v8;
}

@end