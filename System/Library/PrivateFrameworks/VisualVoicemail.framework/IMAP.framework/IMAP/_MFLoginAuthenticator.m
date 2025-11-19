@interface _MFLoginAuthenticator
- (id)responseForServerData:(id)a3;
@end

@implementation _MFLoginAuthenticator

- (id)responseForServerData:(id)a3
{
  v4 = a3;
  v5 = v4;
  *(&self->super._authenticationState + 4) = 0;
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = [v4 bytes];
  if ([v5 length] < 4)
  {
    goto LABEL_5;
  }

  if (!strncasecmp(v6, "user", 4uLL))
  {
    v9 = [(MFSASLAuthenticator *)self account];
    v10 = [v9 username];
  }

  else
  {
    if (strncasecmp(v6, "pass", 4uLL))
    {
LABEL_5:
      v7 = 0;
      goto LABEL_6;
    }

    *(&self->super._authenticationState + 4) = 1;
    v9 = [(MFSASLAuthenticator *)self account];
    v10 = [v9 password];
  }

  v11 = v10;
  v7 = [v10 dataUsingEncoding:4];

LABEL_6:

  return v7;
}

@end