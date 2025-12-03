@interface _SBKeyboardServiceClient
- (BSAuditToken)auditToken;
- (_SBKeyboardServiceClient)initWithConnectionContext:(id)context;
- (id)description;
- (int)pid;
@end

@implementation _SBKeyboardServiceClient

- (_SBKeyboardServiceClient)initWithConnectionContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = _SBKeyboardServiceClient;
  v6 = [(_SBKeyboardServiceClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connectionContext, context);
  }

  return v7;
}

- (int)pid
{
  auditToken = [(_SBKeyboardServiceClient *)self auditToken];
  v3 = [auditToken pid];

  return v3;
}

- (BSAuditToken)auditToken
{
  remoteProcess = [(BSServiceConnectionContext *)self->_connectionContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  return auditToken;
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