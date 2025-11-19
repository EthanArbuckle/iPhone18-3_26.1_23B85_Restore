@interface STGenericIntentResponse
- (STGenericIntentResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STGenericIntentResponse

- (STGenericIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STGenericIntentResponse;
  v5 = [(AFSiriResponse *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_responseCode = [v4 decodeIntegerForKey:@"_responseCode"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STGenericIntentResponse;
  v4 = a3;
  [(AFSiriResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_responseCode forKey:{@"_responseCode", v5.receiver, v5.super_class}];
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