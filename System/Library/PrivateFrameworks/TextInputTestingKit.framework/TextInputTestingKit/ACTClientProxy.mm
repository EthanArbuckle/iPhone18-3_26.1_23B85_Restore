@interface ACTClientProxy
- (ACTClientProtocol)client;
- (ACTClientProxy)initWithClient:(id)client;
- (void)closeRequestToken:(id)token;
- (void)pushCandidateResultSet:(id)set requestToken:(id)token;
- (void)pushCandidates:(id)candidates requestToken:(id)token;
@end

@implementation ACTClientProxy

- (ACTClientProtocol)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

- (void)closeRequestToken:(id)token
{
  tokenCopy = token;
  client = [(ACTClientProxy *)self client];
  if (client && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [client closeRequestToken:tokenCopy];
  }
}

- (void)pushCandidateResultSet:(id)set requestToken:(id)token
{
  setCopy = set;
  tokenCopy = token;
  client = [(ACTClientProxy *)self client];
  v8 = client;
  if (client)
  {
    [client pushCandidateResultSet:setCopy requestToken:tokenCopy];
  }
}

- (void)pushCandidates:(id)candidates requestToken:(id)token
{
  candidatesCopy = candidates;
  tokenCopy = token;
  client = [(ACTClientProxy *)self client];
  v8 = client;
  if (client)
  {
    [client pushAutocorrections:candidatesCopy requestToken:tokenCopy];
  }
}

- (ACTClientProxy)initWithClient:(id)client
{
  clientCopy = client;
  v8.receiver = self;
  v8.super_class = ACTClientProxy;
  v5 = [(ACTClientProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_client, clientCopy);
  }

  return v6;
}

@end