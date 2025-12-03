@interface BADeveloperDebugServerMessage
+ (Class)classForMessageOperation:(int64_t)operation;
- (BADeveloperDebugServerMessage)initWithCoder:(id)coder;
- (BADeveloperDebugServerMessage)initWithMessageOperation:(int64_t)operation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BADeveloperDebugServerMessage

- (BADeveloperDebugServerMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BADeveloperDebugServerMessage;
  v5 = [(BADeveloperDebugMessage *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_messageOperation = [coderCopy decodeIntegerForKey:@"BAServerMessageOperation"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BADeveloperDebugServerMessage;
  coderCopy = coder;
  [(BADeveloperDebugMessage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[BADeveloperDebugServerMessage messageOperation](self forKey:{"messageOperation", v5.receiver, v5.super_class), @"BAServerMessageOperation"}];
}

- (BADeveloperDebugServerMessage)initWithMessageOperation:(int64_t)operation
{
  v5.receiver = self;
  v5.super_class = BADeveloperDebugServerMessage;
  result = [(BADeveloperDebugMessage *)&v5 init];
  if (result)
  {
    result->_messageOperation = operation;
  }

  return result;
}

+ (Class)classForMessageOperation:(int64_t)operation
{
  if (operation == 1)
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