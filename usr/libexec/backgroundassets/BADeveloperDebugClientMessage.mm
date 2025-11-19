@interface BADeveloperDebugClientMessage
+ (Class)classForMessageOperation:(int64_t)a3;
- (BADeveloperDebugClientMessage)initWithCoder:(id)a3;
- (BADeveloperDebugClientMessage)initWithMessageOperation:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BADeveloperDebugClientMessage

- (BADeveloperDebugClientMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BADeveloperDebugClientMessage;
  v5 = [(BADeveloperDebugMessage *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_messageOperation = [v4 decodeIntegerForKey:@"BAClientMessageOperation"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BADeveloperDebugClientMessage;
  v4 = a3;
  [(BADeveloperDebugMessage *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[BADeveloperDebugClientMessage messageOperation](self forKey:{"messageOperation", v5.receiver, v5.super_class), @"BAClientMessageOperation"}];
}

- (BADeveloperDebugClientMessage)initWithMessageOperation:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = BADeveloperDebugClientMessage;
  result = [(BADeveloperDebugMessage *)&v5 init];
  if (result)
  {
    result->_messageOperation = a3;
  }

  return result;
}

+ (Class)classForMessageOperation:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_10007A220[a3 - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

@end