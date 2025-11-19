@interface _SBExternalDisplayServiceClient
- (_SBExternalDisplayServiceClient)initWithConnection:(id)a3 remoteProcess:(id)a4;
- (id)description;
- (int)pid;
@end

@implementation _SBExternalDisplayServiceClient

- (_SBExternalDisplayServiceClient)initWithConnection:(id)a3 remoteProcess:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_SBExternalDisplayServiceClient initWithConnection:remoteProcess:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [_SBExternalDisplayServiceClient initWithConnection:remoteProcess:];
LABEL_3:
  v13.receiver = self;
  v13.super_class = _SBExternalDisplayServiceClient;
  v10 = [(_SBExternalDisplayServiceClient *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_connection, a3);
    objc_storeStrong(&v11->_remoteProcess, a4);
  }

  return v11;
}

- (int)pid
{
  v2 = [(_SBExternalDisplayServiceClient *)self auditToken];
  v3 = [v2 pid];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p connection: <%p> pid:%i>", v5, self, self->_connection, -[_SBExternalDisplayServiceClient pid](self, "pid")];;

  return v6;
}

- (void)initWithConnection:remoteProcess:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"connection" object:? file:? lineNumber:? description:?];
}

- (void)initWithConnection:remoteProcess:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"remoteProcess" object:? file:? lineNumber:? description:?];
}

@end