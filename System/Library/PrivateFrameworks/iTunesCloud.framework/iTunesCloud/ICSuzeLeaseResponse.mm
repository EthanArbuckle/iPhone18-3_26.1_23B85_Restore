@interface ICSuzeLeaseResponse
- (ICSuzeLeaseResponse)initWithResponseDictionary:(id)a3 requestDate:(id)a4;
- (NSData)clientData;
- (NSDate)leaseExpirationDate;
@end

@implementation ICSuzeLeaseResponse

- (NSDate)leaseExpirationDate
{
  v3 = [(NSDictionary *)self->_responseDictionary objectForKey:@"lease-duration"];
  v4 = objc_opt_respondsToSelector();
  v5 = 0.0;
  if (v4)
  {
    [v3 doubleValue];
  }

  if (v5 < 30.0)
  {
    v5 = 30.0;
  }

  v6 = [(NSDate *)self->_requestDate dateByAddingTimeInterval:v5];

  return v6;
}

- (NSData)clientData
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"client-data"];
  if (_NSIsNSData())
  {
    v3 = v2;
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  if (_NSIsNSString())
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v2 options:0];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (ICSuzeLeaseResponse)initWithResponseDictionary:(id)a3 requestDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ICSuzeLeaseResponse;
  v8 = [(ICSuzeLeaseResponse *)&v14 init];
  if (v8)
  {
    v9 = [v7 copy];
    requestDate = v8->_requestDate;
    v8->_requestDate = v9;

    v11 = [v6 copy];
    responseDictionary = v8->_responseDictionary;
    v8->_responseDictionary = v11;
  }

  return v8;
}

@end