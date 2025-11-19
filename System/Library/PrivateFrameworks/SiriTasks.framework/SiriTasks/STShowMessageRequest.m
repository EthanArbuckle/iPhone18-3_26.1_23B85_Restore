@interface STShowMessageRequest
- (STShowMessageRequest)initWithCoder:(id)a3;
- (id)_initWithMessage:(id)a3 showAsDraft:(BOOL)a4;
- (id)createResponse;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STShowMessageRequest

- (STShowMessageRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STShowMessageRequest;
  v5 = [(AFSiriRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_message"];
    message = v5->_message;
    v5->_message = v6;

    v5->_showAsDraft = [v4 decodeBoolForKey:@"_showAsDraft"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STShowMessageRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_message forKey:{@"_message", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_showAsDraft forKey:@"_showAsDraft"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithMessage:(id)a3 showAsDraft:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = STShowMessageRequest;
  v8 = [(AFSiriRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_message, a3);
    v9->_showAsDraft = a4;
  }

  return v9;
}

@end