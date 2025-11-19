@interface SPCBPeripheralKeyRequestParameters
- (SPCBPeripheralKeyRequestParameters)initWithCoder:(id)a3;
- (SPCBPeripheralKeyRequestParameters)initWithSessionKey:(id)a3 vendorIdentifierList:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPCBPeripheralKeyRequestParameters

- (SPCBPeripheralKeyRequestParameters)initWithSessionKey:(id)a3 vendorIdentifierList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SPCBPeripheralKeyRequestParameters;
  v8 = [(SPCBPeripheralKeyRequestParameters *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    sessionKey = v8->_sessionKey;
    v8->_sessionKey = v9;

    v11 = [v7 copy];
    vendorIdentifierList = v8->_vendorIdentifierList;
    v8->_vendorIdentifierList = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPCBPeripheralKeyRequestParameters alloc];
  v5 = [(SPCBPeripheralKeyRequestParameters *)self sessionKey];
  v6 = [(SPCBPeripheralKeyRequestParameters *)self vendorIdentifierList];
  v7 = [(SPCBPeripheralKeyRequestParameters *)v4 initWithSessionKey:v5 vendorIdentifierList:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPCBPeripheralKeyRequestParameters *)self sessionKey];
  [v4 encodeObject:v5 forKey:@"sessionKey"];

  v6 = [(SPCBPeripheralKeyRequestParameters *)self vendorIdentifierList];
  [v4 encodeObject:v6 forKey:@"vendorIdentifierList"];
}

- (SPCBPeripheralKeyRequestParameters)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionKey"];
  sessionKey = self->_sessionKey;
  self->_sessionKey = v5;

  v7 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"vendorIdentifierList"];

  vendorIdentifierList = self->_vendorIdentifierList;
  self->_vendorIdentifierList = v10;

  v12 = *MEMORY[0x277D85DE8];
  return self;
}

@end