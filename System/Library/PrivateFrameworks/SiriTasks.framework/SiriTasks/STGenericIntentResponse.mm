@interface STGenericIntentResponse
- (STGenericIntentResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STGenericIntentResponse

- (STGenericIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STGenericIntentResponse;
  v5 = [(AFSiriResponse *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_responseCode = [coderCopy decodeIntegerForKey:@"_responseCode"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STGenericIntentResponse;
  coderCopy = coder;
  [(AFSiriResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_responseCode forKey:{@"_responseCode", v5.receiver, v5.super_class}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = STGenericIntentResponse;
  v4 = [(STGenericIntentResponse *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ response code: %ld", v4, self->_responseCode];

  return v5;
}

@end