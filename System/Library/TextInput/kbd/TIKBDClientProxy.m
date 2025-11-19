@interface TIKBDClientProxy
+ (id)KBDClientProxyWithConnection:(id)a3;
- (NSXPCConnection)connection;
- (TIKBDClientProxy)initWithConnection:(id)a3;
- (void)pushCandidateResultSet:(id)a3 requestToken:(id)a4;
- (void)pushCandidates:(id)a3 requestToken:(id)a4;
@end

@implementation TIKBDClientProxy

+ (id)KBDClientProxyWithConnection:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithConnection:v4];

  return v5;
}

- (TIKBDClientProxy)initWithConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TIKBDClientProxy;
  v5 = [(TIKBDClientProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, v4);
  }

  return v6;
}

- (void)pushCandidates:(id)a3 requestToken:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(TIKBDClientProxy *)self connection];
  if (v10 && v7)
  {
    v8 = [(TIKBDClientProxy *)self connection];
    v9 = [v8 remoteObjectProxy];

    [v9 pushAutocorrections:v10 requestToken:v6];
  }
}

- (void)pushCandidateResultSet:(id)a3 requestToken:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(TIKBDClientProxy *)self connection];
  if (v10 && v7)
  {
    v8 = [(TIKBDClientProxy *)self connection];
    v9 = [v8 remoteObjectProxy];

    [v9 pushCandidateResultSet:v10 requestToken:v6];
  }
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end