@interface RBProcessMonitorObserverConnection
- (NSString)description;
- (RBProcessMonitorObserverConnection)initWithConnection:(id)a3;
@end

@implementation RBProcessMonitorObserverConnection

- (RBProcessMonitorObserverConnection)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RBProcessMonitorObserverConnection;
  v6 = [(RBProcessMonitorObserverConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| pid:%d>", v4, xpc_connection_get_pid(self->_connection)];

  return v5;
}

@end