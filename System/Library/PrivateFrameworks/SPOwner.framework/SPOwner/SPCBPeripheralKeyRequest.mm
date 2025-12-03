@interface SPCBPeripheralKeyRequest
- (SPCBPeripheralKeyRequest)initWithCoder:(id)coder;
- (SPCBPeripheralKeyRequest)initWithDate:(id)date requestParameters:(id)parameters;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPCBPeripheralKeyRequest

- (SPCBPeripheralKeyRequest)initWithDate:(id)date requestParameters:(id)parameters
{
  dateCopy = date;
  parametersCopy = parameters;
  v14.receiver = self;
  v14.super_class = SPCBPeripheralKeyRequest;
  v8 = [(SPCBPeripheralKeyRequest *)&v14 init];
  if (v8)
  {
    v9 = [dateCopy copy];
    date = v8->_date;
    v8->_date = v9;

    v11 = [parametersCopy copy];
    requestParameters = v8->_requestParameters;
    v8->_requestParameters = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  date = [(SPCBPeripheralKeyRequest *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  requestParameters = [(SPCBPeripheralKeyRequest *)self requestParameters];
  [coderCopy encodeObject:requestParameters forKey:@"requestParameters"];
}

- (SPCBPeripheralKeyRequest)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  date = self->_date;
  self->_date = v5;

  v7 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"requestParameters"];

  requestParameters = self->_requestParameters;
  self->_requestParameters = v10;

  v12 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  date = [(SPCBPeripheralKeyRequest *)self date];
  requestParameters = [(SPCBPeripheralKeyRequest *)self requestParameters];
  v7 = [v3 stringWithFormat:@"[%@: date=%@, paramCount=%lu]", v4, date, objc_msgSend(requestParameters, "count")];

  return v7;
}

@end