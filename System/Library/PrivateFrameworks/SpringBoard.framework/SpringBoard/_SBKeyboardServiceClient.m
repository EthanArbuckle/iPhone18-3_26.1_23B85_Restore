@interface _SBKeyboardServiceClient
- (BSAuditToken)auditToken;
- (_SBKeyboardServiceClient)initWithConnectionContext:(id)a3;
- (id)description;
- (int)pid;
@end

@implementation _SBKeyboardServiceClient

- (_SBKeyboardServiceClient)initWithConnectionContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SBKeyboardServiceClient;
  v6 = [(_SBKeyboardServiceClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connectionContext, a3);
  }

  return v7;
}

- (int)pid
{
  v2 = [(_SBKeyboardServiceClient *)self auditToken];
  v3 = [v2 pid];

  return v3;
}

- (BSAuditToken)auditToken
{
  v2 = [(BSServiceConnectionContext *)self->_connectionContext remoteProcess];
  v3 = [v2 auditToken];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p connection: <%p> pid:%i>", v5, self, self->_connectionContext, -[_SBKeyboardServiceClient pid](self, "pid")];;

  return v6;
}

@end