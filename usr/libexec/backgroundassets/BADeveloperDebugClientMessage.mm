@interface BADeveloperDebugClientMessage
+ (Class)classForMessageOperation:(int64_t)operation;
- (BADeveloperDebugClientMessage)initWithCoder:(id)coder;
- (BADeveloperDebugClientMessage)initWithMessageOperation:(int64_t)operation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BADeveloperDebugClientMessage

- (BADeveloperDebugClientMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BADeveloperDebugClientMessage;
  v5 = [(BADeveloperDebugMessage *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_messageOperation = [coderCopy decodeIntegerForKey:@"BAClientMessageOperation"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BADeveloperDebugClientMessage;
  coderCopy = coder;
  [(BADeveloperDebugMessage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[BADeveloperDebugClientMessage messageOperation](self forKey:{"messageOperation", v5.receiver, v5.super_class), @"BAClientMessageOperation"}];
}

- (BADeveloperDebugClientMessage)initWithMessageOperation:(int64_t)operation
{
  v5.receiver = self;
  v5.super_class = BADeveloperDebugClientMessage;
  result = [(BADeveloperDebugMessage *)&v5 init];
  if (result)
  {
    result->_messageOperation = operation;
  }

  return result;
}

+ (Class)classForMessageOperation:(int64_t)operation
{
  if ((operation - 1) > 3)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_10007A220[operation - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

@end