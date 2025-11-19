@interface SPStandaloneBeacon
- (BOOL)isEqual:(id)a3;
- (SPStandaloneBeacon)initWithCoder:(id)a3;
- (SPStandaloneBeacon)initWithIdentifier:(id)a3 macAddress:(id)a4 classicMacAddress:(id)a5 serialNumber:(id)a6 pairingDate:(id)a7 productData:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPStandaloneBeacon

- (SPStandaloneBeacon)initWithIdentifier:(id)a3 macAddress:(id)a4 classicMacAddress:(id)a5 serialNumber:(id)a6 pairingDate:(id)a7 productData:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = SPStandaloneBeacon;
  v20 = [(SPStandaloneBeacon *)&v34 init];
  if (v20)
  {
    v21 = [v14 copy];
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [v15 copy];
    macAddress = v20->_macAddress;
    v20->_macAddress = v23;

    v25 = [v16 copy];
    classicMacAddress = v20->_classicMacAddress;
    v20->_classicMacAddress = v25;

    v27 = [v17 copy];
    serialNumber = v20->_serialNumber;
    v20->_serialNumber = v27;

    v29 = [v18 copy];
    pairingDate = v20->_pairingDate;
    v20->_pairingDate = v29;

    v31 = [v19 copy];
    productData = v20->_productData;
    v20->_productData = v31;
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPStandaloneBeacon alloc];
  v5 = [(SPStandaloneBeacon *)self identifier];
  v6 = [(SPStandaloneBeacon *)self macAddress];
  v7 = [(SPStandaloneBeacon *)self classicMacAddress];
  v8 = [(SPStandaloneBeacon *)self serialNumber];
  v9 = [(SPStandaloneBeacon *)self pairingDate];
  v10 = [(SPStandaloneBeacon *)self productData];
  v11 = [(SPStandaloneBeacon *)v4 initWithIdentifier:v5 macAddress:v6 classicMacAddress:v7 serialNumber:v8 pairingDate:v9 productData:v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPStandaloneBeacon *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(SPStandaloneBeacon *)self macAddress];
  [v4 encodeObject:v6 forKey:@"macAddress"];

  v7 = [(SPStandaloneBeacon *)self classicMacAddress];
  [v4 encodeObject:v7 forKey:@"classicMacAddress"];

  v8 = [(SPStandaloneBeacon *)self serialNumber];
  [v4 encodeObject:v8 forKey:@"serialNumber"];

  v9 = [(SPStandaloneBeacon *)self pairingDate];
  [v4 encodeObject:v9 forKey:@"pairingDate"];

  v10 = [(SPStandaloneBeacon *)self productData];
  [v4 encodeObject:v10 forKey:@"productData"];
}

- (SPStandaloneBeacon)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"macAddress"];
  macAddress = self->_macAddress;
  self->_macAddress = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"classicMacAddress"];
  classicMacAddress = self->_classicMacAddress;
  self->_classicMacAddress = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingDate"];
  pairingDate = self->_pairingDate;
  self->_pairingDate = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productData"];

  productData = self->_productData;
  self->_productData = v15;

  return self;
}

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
      v6 = [(SPStandaloneBeacon *)self identifier];
      v7 = [(SPStandaloneBeacon *)v5 identifier];

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
  v2 = [(SPStandaloneBeacon *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SPStandaloneBeacon *)self identifier];
  v5 = [(SPStandaloneBeacon *)self serialNumber];
  v6 = [(SPStandaloneBeacon *)self macAddress];
  v7 = [v6 fm_hexString];
  v8 = [(SPStandaloneBeacon *)self classicMacAddress];
  v9 = [v8 fm_hexString];
  v10 = [v3 stringWithFormat:@"<id: %@ S/N: [%@] macAddress: [%@] classicMacAddress: %@>", v4, v5, v7, v9];

  return v10;
}

@end