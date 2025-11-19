@interface SPCBPeripheralKeyRequest
- (SPCBPeripheralKeyRequest)initWithCoder:(id)a3;
- (SPCBPeripheralKeyRequest)initWithDate:(id)a3 requestParameters:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPCBPeripheralKeyRequest

- (SPCBPeripheralKeyRequest)initWithDate:(id)a3 requestParameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SPCBPeripheralKeyRequest;
  v8 = [(SPCBPeripheralKeyRequest *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    date = v8->_date;
    v8->_date = v9;

    v11 = [v7 copy];
    requestParameters = v8->_requestParameters;
    v8->_requestParameters = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPCBPeripheralKeyRequest *)self date];
  [v4 encodeObject:v5 forKey:@"date"];

  v6 = [(SPCBPeripheralKeyRequest *)self requestParameters];
  [v4 encodeObject:v6 forKey:@"requestParameters"];
}

- (SPCBPeripheralKeyRequest)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  date = self->_date;
  self->_date = v5;

  v7 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"requestParameters"];

  requestParameters = self->_requestParameters;
  self->_requestParameters = v10;

  v12 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPCBPeripheralKeyRequest *)self date];
  v6 = [(SPCBPeripheralKeyRequest *)self requestParameters];
  v7 = [v3 stringWithFormat:@"[%@: date=%@, paramCount=%lu]", v4, v5, objc_msgSend(v6, "count")];

  return v7;
}

@end