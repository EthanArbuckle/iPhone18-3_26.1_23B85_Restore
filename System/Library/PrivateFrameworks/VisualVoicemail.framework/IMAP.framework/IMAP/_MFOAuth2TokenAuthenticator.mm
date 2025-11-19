@interface _MFOAuth2TokenAuthenticator
- (id)responseForServerData:(id)a3;
@end

@implementation _MFOAuth2TokenAuthenticator

- (id)responseForServerData:(id)a3
{
  v4 = a3;
  if ([(MFSASLAuthenticator *)self authenticationState]> 1)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_16;
  }

  if (*(&self->super._authenticationState + 4) == 1)
  {
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    [(MFSASLAuthenticator *)self setAuthenticationState:v6];

    goto LABEL_7;
  }

  v8 = [(MFSASLAuthenticator *)self account];
  if ([v8 conformsToProtocol:&unk_288196A08])
  {
    v9 = [v8 username];
    v10 = [v8 oauth2Token];
    v11 = v10;
    if (v9 && v10)
    {
      v7 = [MEMORY[0x277CBEB28] data];
      v17 = 1;
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"user=%@", v9];
      v13 = [v12 dataUsingEncoding:4];
      [v7 appendData:v13];

      [v7 appendBytes:&v17 length:1];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"auth=Bearer %@", v11];
      v15 = [v14 dataUsingEncoding:4];
      [v7 appendData:v15];

      [v7 appendBytes:&v17 length:1];
      [v7 appendBytes:&v17 length:1];
      *(&self->super._authenticationState + 4) = 1;
    }

    else
    {
      [(MFSASLAuthenticator *)self setMissingPasswordError];
      v7 = 0;
    }
  }

  else
  {
    [(MFSASLAuthenticator *)self setAuthenticationState:3];
    v7 = 0;
  }

LABEL_16:

  return v7;
}

@end