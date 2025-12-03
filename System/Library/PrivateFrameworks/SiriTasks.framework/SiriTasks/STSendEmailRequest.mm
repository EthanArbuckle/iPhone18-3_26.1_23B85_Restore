@interface STSendEmailRequest
- (STSendEmailRequest)initWithCoder:(id)coder;
- (id)_initWithMessage:(id)message;
- (id)createResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSendEmailRequest

- (STSendEmailRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STSendEmailRequest;
  v5 = [(AFSiriRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_message"];
    message = v5->_message;
    v5->_message = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STSendEmailRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_message forKey:{@"_message", v5.receiver, v5.super_class}];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = STSendEmailRequest;
  v6 = [(AFSiriRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
  }

  return v7;
}

@end