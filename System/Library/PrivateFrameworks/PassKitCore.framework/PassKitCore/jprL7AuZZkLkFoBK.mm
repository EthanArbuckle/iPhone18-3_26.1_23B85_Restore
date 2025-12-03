@interface jprL7AuZZkLkFoBK
- (jprL7AuZZkLkFoBK)initWithServerEndpointIdentifier:(id)identifier;
@end

@implementation jprL7AuZZkLkFoBK

- (jprL7AuZZkLkFoBK)initWithServerEndpointIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = jprL7AuZZkLkFoBK;
  v6 = [(jprL7AuZZkLkFoBK *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverEndpointIdentifier, identifier);
  }

  return v7;
}

@end