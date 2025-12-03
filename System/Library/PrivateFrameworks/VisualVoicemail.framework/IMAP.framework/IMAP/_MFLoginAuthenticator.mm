@interface _MFLoginAuthenticator
- (id)responseForServerData:(id)data;
@end

@implementation _MFLoginAuthenticator

- (id)responseForServerData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  *(&self->super._authenticationState + 4) = 0;
  if (!dataCopy)
  {
    goto LABEL_5;
  }

  bytes = [dataCopy bytes];
  if ([v5 length] < 4)
  {
    goto LABEL_5;
  }

  if (!strncasecmp(bytes, "user", 4uLL))
  {
    account = [(MFSASLAuthenticator *)self account];
    username = [account username];
  }

  else
  {
    if (strncasecmp(bytes, "pass", 4uLL))
    {
LABEL_5:
      v7 = 0;
      goto LABEL_6;
    }

    *(&self->super._authenticationState + 4) = 1;
    account = [(MFSASLAuthenticator *)self account];
    username = [account password];
  }

  v11 = username;
  v7 = [username dataUsingEncoding:4];

LABEL_6:

  return v7;
}

@end