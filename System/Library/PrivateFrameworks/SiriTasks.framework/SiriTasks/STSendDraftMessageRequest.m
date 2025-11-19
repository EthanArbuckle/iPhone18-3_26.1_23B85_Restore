@interface STSendDraftMessageRequest
- (STSendDraftMessageRequest)initWithCoder:(id)a3;
- (id)_initWithMessage:(id)a3;
- (id)createResponse;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSendDraftMessageRequest

- (STSendDraftMessageRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STSendDraftMessageRequest;
  v5 = [(AFSiriRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_message"];
    message = v5->_message;
    v5->_message = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STSendDraftMessageRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_message forKey:{@"_message", v5.receiver, v5.super_class}];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithMessage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = STSendDraftMessageRequest;
  v6 = [(AFSiriRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
  }

  return v7;
}

@end