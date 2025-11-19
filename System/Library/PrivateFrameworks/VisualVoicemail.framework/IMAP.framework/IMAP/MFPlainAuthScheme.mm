@interface MFPlainAuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4;
- (id)authenticatorForAccount:(id)a3 connection:(id)a4;
@end

@implementation MFPlainAuthScheme

- (id)authenticatorForAccount:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() saslProfileName];
  if ([v8 isEqualToString:@"imap"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"pop"))
  {
    goto LABEL_10;
  }

  v9 = [v7 authenticationMechanisms];
  if ([v9 indexOfObject:@"PLAIN"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v9 indexOfObject:@"LOGIN"] == 0x7FFFFFFFFFFFFFFFLL)
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
    v13 = [[v12 alloc] initWithAuthScheme:self account:v6 connection:v7];
    goto LABEL_11;
  }

LABEL_10:
  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = MFPlainAuthScheme;
  if ([(MFAuthScheme *)&v9 canAuthenticateAccountClass:a3 connection:v6])
  {
    v7 = [v6 loginDisabled] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end