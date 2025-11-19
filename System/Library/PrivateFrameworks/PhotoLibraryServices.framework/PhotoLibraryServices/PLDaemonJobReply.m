@interface PLDaemonJobReply
- (PLDaemonJobReply)initWithCoder:(id)a3;
- (PLDaemonJobReply)initWithReply:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLDaemonJobReply

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  objc_opt_isKindOfClass();
  [v4 encodeXPCObject:self->_xpcReply forKey:@"PL.jobreply"];
}

- (PLDaemonJobReply)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  objc_opt_isKindOfClass();
  v5 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"PL.jobreply"];

  v6 = [(PLDaemonJobReply *)self initWithReply:v5];
  return v6;
}

- (PLDaemonJobReply)initWithReply:(id)a3
{
  v5.receiver = self;
  v5.super_class = PLDaemonJobReply;
  result = [(PLDaemonJobReply *)&v5 init];
  if (a3)
  {
    if (result)
    {
      result->_xpcReply = a3;
    }
  }

  return result;
}

@end