@interface _MFOAuth2TokenAuthenticator
- (id)responseForServerData:(id)data;
@end

@implementation _MFOAuth2TokenAuthenticator

- (id)responseForServerData:(id)data
{
  dataCopy = data;
  if ([(MFSASLAuthenticator *)self authenticationState]> 1)
  {
LABEL_7:
    data = 0;
    goto LABEL_16;
  }

  if (*(&self->super._authenticationState + 4) == 1)
  {
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:0];
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

  account = [(MFSASLAuthenticator *)self account];
  if ([account conformsToProtocol:&unk_288196A08])
  {
    username = [account username];
    oauth2Token = [account oauth2Token];
    v11 = oauth2Token;
    if (username && oauth2Token)
    {
      data = [MEMORY[0x277CBEB28] data];
      v17 = 1;
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"user=%@", username];
      v13 = [v12 dataUsingEncoding:4];
      [data appendData:v13];

      [data appendBytes:&v17 length:1];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"auth=Bearer %@", v11];
      v15 = [v14 dataUsingEncoding:4];
      [data appendData:v15];

      [data appendBytes:&v17 length:1];
      [data appendBytes:&v17 length:1];
      *(&self->super._authenticationState + 4) = 1;
    }

    else
    {
      [(MFSASLAuthenticator *)self setMissingPasswordError];
      data = 0;
    }
  }

  else
  {
    [(MFSASLAuthenticator *)self setAuthenticationState:3];
    data = 0;
  }

LABEL_16:

  return data;
}

@end