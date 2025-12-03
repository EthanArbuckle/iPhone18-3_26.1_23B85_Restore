@interface _MFPlainAuthenticator
- (id)responseForServerData:(id)data;
@end

@implementation _MFPlainAuthenticator

- (id)responseForServerData:(id)data
{
  account = [(MFSASLAuthenticator *)self account];
  username = [account username];
  v6 = [username dataUsingEncoding:4];

  account2 = [(MFSASLAuthenticator *)self account];
  password = [account2 password];
  v9 = [password dataUsingEncoding:4];

  if (v9)
  {
    if (v6)
    {
      v12 = 0;
      v10 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(v6, "length") + objc_msgSend(v9, "length") + 2}];
      [v10 appendBytes:&v12 length:1];
      [v10 appendData:v6];
      [v10 appendBytes:&v12 length:1];
      [v10 appendData:v9];
      goto LABEL_6;
    }
  }

  else
  {
    [(MFSASLAuthenticator *)self setMissingPasswordError];
  }

  v10 = 0;
LABEL_6:

  return v10;
}

@end