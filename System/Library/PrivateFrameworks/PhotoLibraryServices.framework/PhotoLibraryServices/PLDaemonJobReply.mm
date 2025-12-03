@interface PLDaemonJobReply
- (PLDaemonJobReply)initWithCoder:(id)coder;
- (PLDaemonJobReply)initWithReply:(id)reply;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLDaemonJobReply

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  objc_opt_isKindOfClass();
  [coderCopy encodeXPCObject:self->_xpcReply forKey:@"PL.jobreply"];
}

- (PLDaemonJobReply)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  objc_opt_isKindOfClass();
  v5 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"PL.jobreply"];

  v6 = [(PLDaemonJobReply *)self initWithReply:v5];
  return v6;
}

- (PLDaemonJobReply)initWithReply:(id)reply
{
  v5.receiver = self;
  v5.super_class = PLDaemonJobReply;
  result = [(PLDaemonJobReply *)&v5 init];
  if (reply)
  {
    if (result)
    {
      result->_xpcReply = reply;
    }
  }

  return result;
}

@end