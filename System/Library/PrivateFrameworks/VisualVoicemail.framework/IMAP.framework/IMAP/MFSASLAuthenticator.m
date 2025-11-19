@interface MFSASLAuthenticator
- (BOOL)isUsingSSL;
- (MFSASLAuthenticator)initWithAuthScheme:(id)a3 account:(id)a4 connection:(id)a5;
- (void)dealloc;
- (void)setMissingPasswordError;
@end

@implementation MFSASLAuthenticator

- (MFSASLAuthenticator)initWithAuthScheme:(id)a3 account:(id)a4 connection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MFSASLAuthenticator;
  v12 = [(MFSASLAuthenticator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_authScheme, a3);
    objc_storeStrong(&v13->_account, a4);
    objc_storeStrong(&v13->_connection, a5);
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
  v2 = [(MFConnection *)self->_connection securityProtocol];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 caseInsensitiveCompare:*MEMORY[0x277CBF0A0]] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMissingPasswordError
{
  v2 = [(MFSASLAuthenticator *)self account];
  v4 = [v2 missingPasswordErrorWithTitle:0];

  v3 = +[MFActivityMonitor currentMonitor];
  [v3 setError:v4];
}

@end