@interface MFSASLAuthenticator
- (BOOL)isUsingSSL;
- (MFSASLAuthenticator)initWithAuthScheme:(id)scheme account:(id)account connection:(id)connection;
- (void)dealloc;
- (void)setMissingPasswordError;
@end

@implementation MFSASLAuthenticator

- (MFSASLAuthenticator)initWithAuthScheme:(id)scheme account:(id)account connection:(id)connection
{
  schemeCopy = scheme;
  accountCopy = account;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = MFSASLAuthenticator;
  v12 = [(MFSASLAuthenticator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_authScheme, scheme);
    objc_storeStrong(&v13->_account, account);
    objc_storeStrong(&v13->_connection, connection);
  }

  return v13;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFSASLAuthenticator;
  [(MFSASLAuthenticator *)&v2 dealloc];
}

- (BOOL)isUsingSSL
{
  securityProtocol = [(MFConnection *)self->_connection securityProtocol];
  v3 = securityProtocol;
  if (securityProtocol)
  {
    v4 = [securityProtocol caseInsensitiveCompare:*MEMORY[0x277CBF0A0]] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMissingPasswordError
{
  account = [(MFSASLAuthenticator *)self account];
  v4 = [account missingPasswordErrorWithTitle:0];

  v3 = +[MFActivityMonitor currentMonitor];
  [v3 setError:v4];
}

@end