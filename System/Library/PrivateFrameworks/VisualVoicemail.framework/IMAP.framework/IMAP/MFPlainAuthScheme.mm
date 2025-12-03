@interface MFPlainAuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection;
- (id)authenticatorForAccount:(id)account connection:(id)connection;
@end

@implementation MFPlainAuthScheme

- (id)authenticatorForAccount:(id)account connection:(id)connection
{
  accountCopy = account;
  connectionCopy = connection;
  saslProfileName = [objc_opt_class() saslProfileName];
  if ([saslProfileName isEqualToString:@"imap"] & 1) != 0 || (objc_msgSend(saslProfileName, "isEqualToString:", @"pop"))
  {
    goto LABEL_10;
  }

  authenticationMechanisms = [connectionCopy authenticationMechanisms];
  if ([authenticationMechanisms indexOfObject:@"PLAIN"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([authenticationMechanisms indexOfObject:@"LOGIN"] == 0x7FFFFFFFFFFFFFFFLL)
    {

      goto LABEL_10;
    }

    v10 = off_279E32C18;
  }

  else
  {
    v10 = off_279E32C50;
  }

  v11 = *v10;
  v12 = objc_opt_class();

  if (v12)
  {
    v13 = [[v12 alloc] initWithAuthScheme:self account:accountCopy connection:connectionCopy];
    goto LABEL_11;
  }

LABEL_10:
  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = MFPlainAuthScheme;
  if ([(MFAuthScheme *)&v9 canAuthenticateAccountClass:class connection:connectionCopy])
  {
    v7 = [connectionCopy loginDisabled] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end