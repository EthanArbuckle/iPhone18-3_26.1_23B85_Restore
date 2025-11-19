@interface WLAuthenticationUtilities
+ (id)dataFromPEMFormattedData:(id)a3;
+ (id)hashWithString:(id)a3;
+ (id)pemFormattedCertificateData:(id)a3;
+ (void)_appendBase64Data:(id)a3 toString:(id)a4;
+ (void)generateSelfSignedCertificateWithOrganization:(id)a3 commonName:(id)a4 completion:(id)a5;
@end

@implementation WLAuthenticationUtilities

+ (id)hashWithString:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a3 dataUsingEncoding:4];
  CC_SHA1([v3 bytes], objc_msgSend(v3, "length"), md);
  v4 = [MEMORY[0x277CCAB68] string];
  for (i = 0; i != 20; ++i)
  {
    [v4 appendFormat:@"%02x", md[i]];
  }

  v6 = [v4 copy];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)generateSelfSignedCertificateWithOrganization:(id)a3 commonName:(id)a4 completion:(id)a5
{
  values[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CBEAC0];
  v11 = *MEMORY[0x277CDC060];
  v12 = *MEMORY[0x277CDC028];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:2048];
  v14 = [v10 dictionaryWithObjectsAndKeys:{v11, v12, v13, *MEMORY[0x277CDC018], 0}];

  RandomKey = SecKeyCreateRandomKey(v14, 0);
  v16 = SecKeyCopyPublicKey(RandomKey);
  values[0] = *MEMORY[0x277CDC458];
  values[1] = v7;
  v27[0] = *MEMORY[0x277CDC448];
  v27[1] = v8;
  v17 = *MEMORY[0x277CBECE8];
  v24 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 2, 0);
  v23 = CFArrayCreate(v17, v27, 2, 0);
  cf = CFArrayCreate(v17, &v24, 1, 0);
  v26 = CFArrayCreate(v17, &v23, 1, 0);
  v18 = CFArrayCreate(v17, &cf, 2, 0);
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:127];
  [v19 setObject:v20 forKey:*MEMORY[0x277CDC210]];

  [v19 setObject:*MEMORY[0x277CDC1C0] forKey:*MEMORY[0x277CDC1E0]];
  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v9)
  {
    v9[2](v9, SelfSignedCertificate, v16, RandomKey);
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (id)pemFormattedCertificateData:(id)a3
{
  v4 = MEMORY[0x277CCAB68];
  v5 = a3;
  v6 = [v4 string];
  [v6 appendString:@"-----BEGIN CERTIFICATE-----\n"];
  [a1 _appendBase64Data:v5 toString:v6];

  [v6 appendString:@"\n-----END CERTIFICATE-----\n"];
  v7 = [v6 dataUsingEncoding:4];

  return v7;
}

+ (void)_appendBase64Data:(id)a3 toString:(id)a4
{
  v5 = a4;
  v6 = [a3 base64EncodedStringWithOptions:33];
  [v5 appendString:v6];
}

+ (id)dataFromPEMFormattedData:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
  v5 = [v4 componentsSeparatedByString:@"\n"];
  v6 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(v3, "length")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (([v12 hasPrefix:{@"-----", v16}] & 1) == 0)
        {
          [v6 appendString:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v6 options:1];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end