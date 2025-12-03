@interface MFCRAM_MD5Authenticator
- (id)responseForServerData:(id)data;
@end

@implementation MFCRAM_MD5Authenticator

- (id)responseForServerData:(id)data
{
  v25 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    account = [(MFSASLAuthenticator *)self account];
    username = [account username];
    v7 = [username dataUsingEncoding:4];

    account2 = [(MFSASLAuthenticator *)self account];
    password = [account2 password];
    v10 = [password dataUsingEncoding:4];

    v11 = 0;
    if (v7 && v10)
    {
      memset(c, 0, 220);
      bytes = 32;
      Mutable = CFDataCreateMutable(0, [v7 length] + 33);
      CFDataAppendBytes(Mutable, [v7 bytes], objc_msgSend(v7, "length"));
      CFDataAppendBytes(Mutable, &bytes, 1);
      MF_MD5HMAC_Init();
      v13 = dataCopy;
      v14 = dataCopy;
      bytes = [v14 bytes];
      v16 = [v14 length];

      CC_MD5_Update(c, bytes, v16);
      v17 = Mutable;
      MF_MD5HMAC_Output();
      v11 = v17;
      v18 = 0;
      do
      {
        v19 = v18 + 1;
        snprintf(__str, 3uLL, "%02x", *(&c[116] + v18));
        [(__CFData *)v11 appendBytes:__str length:2];
        v18 = v19;
      }

      while (v19 != 16);
    }
  }

  else
  {
    v11 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

@end