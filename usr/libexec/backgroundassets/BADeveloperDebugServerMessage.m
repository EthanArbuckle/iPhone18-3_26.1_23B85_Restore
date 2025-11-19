@interface BADeveloperDebugServerMessage
+ (Class)classForMessageOperation:(int64_t)a3;
- (BADeveloperDebugServerMessage)initWithCoder:(id)a3;
- (BADeveloperDebugServerMessage)initWithMessageOperation:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BADeveloperDebugServerMessage

- (BADeveloperDebugServerMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BADeveloperDebugServerMessage;
  v5 = [(BADeveloperDebugMessage *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_messageOperation = [v4 decodeIntegerForKey:@"BAServerMessageOperation"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BADeveloperDebugServerMessage;
  v4 = a3;
  [(BADeveloperDebugMessage *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[BADeveloperDebugServerMessage messageOperation](self forKey:{"messageOperation", v5.receiver, v5.super_class), @"BAServerMessageOperation"}];
}

- (BADeveloperDebugServerMessage)initWithMessageOperation:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = BADeveloperDebugServerMessage;
  result = [(BADeveloperDebugMessage *)&v5 init];
  if (result)
  {
    result->_messageOperation = a3;
  }

  return result;
}

+ (Class)classForMessageOperation:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end