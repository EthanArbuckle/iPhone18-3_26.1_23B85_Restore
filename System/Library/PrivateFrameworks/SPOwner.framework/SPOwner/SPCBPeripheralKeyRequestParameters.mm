@interface SPCBPeripheralKeyRequestParameters
- (SPCBPeripheralKeyRequestParameters)initWithCoder:(id)coder;
- (SPCBPeripheralKeyRequestParameters)initWithSessionKey:(id)key vendorIdentifierList:(id)list;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPCBPeripheralKeyRequestParameters

- (SPCBPeripheralKeyRequestParameters)initWithSessionKey:(id)key vendorIdentifierList:(id)list
{
  keyCopy = key;
  listCopy = list;
  v14.receiver = self;
  v14.super_class = SPCBPeripheralKeyRequestParameters;
  v8 = [(SPCBPeripheralKeyRequestParameters *)&v14 init];
  if (v8)
  {
    v9 = [keyCopy copy];
    sessionKey = v8->_sessionKey;
    v8->_sessionKey = v9;

    v11 = [listCopy copy];
    vendorIdentifierList = v8->_vendorIdentifierList;
    v8->_vendorIdentifierList = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPCBPeripheralKeyRequestParameters alloc];
  sessionKey = [(SPCBPeripheralKeyRequestParameters *)self sessionKey];
  vendorIdentifierList = [(SPCBPeripheralKeyRequestParameters *)self vendorIdentifierList];
  v7 = [(SPCBPeripheralKeyRequestParameters *)v4 initWithSessionKey:sessionKey vendorIdentifierList:vendorIdentifierList];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sessionKey = [(SPCBPeripheralKeyRequestParameters *)self sessionKey];
  [coderCopy encodeObject:sessionKey forKey:@"sessionKey"];

  vendorIdentifierList = [(SPCBPeripheralKeyRequestParameters *)self vendorIdentifierList];
  [coderCopy encodeObject:vendorIdentifierList forKey:@"vendorIdentifierList"];
}

- (SPCBPeripheralKeyRequestParameters)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionKey"];
  sessionKey = self->_sessionKey;
  self->_sessionKey = v5;

  v7 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"vendorIdentifierList"];

  vendorIdentifierList = self->_vendorIdentifierList;
  self->_vendorIdentifierList = v10;

  v12 = *MEMORY[0x277D85DE8];
  return self;
}

@end