@interface TIKBDClientProxy
+ (id)KBDClientProxyWithConnection:(id)connection;
- (NSXPCConnection)connection;
- (TIKBDClientProxy)initWithConnection:(id)connection;
- (void)pushCandidateResultSet:(id)set requestToken:(id)token;
- (void)pushCandidates:(id)candidates requestToken:(id)token;
@end

@implementation TIKBDClientProxy

+ (id)KBDClientProxyWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [[self alloc] initWithConnection:connectionCopy];

  return v5;
}

- (TIKBDClientProxy)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = TIKBDClientProxy;
  v5 = [(TIKBDClientProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, connectionCopy);
  }

  return v6;
}

- (void)pushCandidates:(id)candidates requestToken:(id)token
{
  candidatesCopy = candidates;
  tokenCopy = token;
  connection = [(TIKBDClientProxy *)self connection];
  if (candidatesCopy && connection)
  {
    connection2 = [(TIKBDClientProxy *)self connection];
    remoteObjectProxy = [connection2 remoteObjectProxy];

    [remoteObjectProxy pushAutocorrections:candidatesCopy requestToken:tokenCopy];
  }
}

- (void)pushCandidateResultSet:(id)set requestToken:(id)token
{
  setCopy = set;
  tokenCopy = token;
  connection = [(TIKBDClientProxy *)self connection];
  if (setCopy && connection)
  {
    connection2 = [(TIKBDClientProxy *)self connection];
    remoteObjectProxy = [connection2 remoteObjectProxy];

    [remoteObjectProxy pushCandidateResultSet:setCopy requestToken:tokenCopy];
  }
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end