@interface STShowMessageRequest
- (STShowMessageRequest)initWithCoder:(id)coder;
- (id)_initWithMessage:(id)message showAsDraft:(BOOL)draft;
- (id)createResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STShowMessageRequest

- (STShowMessageRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STShowMessageRequest;
  v5 = [(AFSiriRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_message"];
    message = v5->_message;
    v5->_message = v6;

    v5->_showAsDraft = [coderCopy decodeBoolForKey:@"_showAsDraft"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STShowMessageRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_message forKey:{@"_message", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_showAsDraft forKey:@"_showAsDraft"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithMessage:(id)message showAsDraft:(BOOL)draft
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = STShowMessageRequest;
  v8 = [(AFSiriRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_message, message);
    v9->_showAsDraft = draft;
  }

  return v9;
}

@end