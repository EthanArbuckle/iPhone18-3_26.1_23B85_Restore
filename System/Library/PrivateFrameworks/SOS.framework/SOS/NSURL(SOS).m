@interface NSURL(SOS)
- (id)sos_urlActivationReason;
- (uint64_t)isSOS;
@end

@implementation NSURL(SOS)

- (uint64_t)isSOS
{
  v1 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:a1 resolvingAgainstBaseURL:0];
  v2 = [v1 scheme];
  v3 = [v2 isEqualToString:@"telSOS"];

  return v3;
}

- (id)sos_urlActivationReason
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:a1 resolvingAgainstBaseURL:0];
  v2 = [v1 scheme];
  v3 = [v2 isEqualToString:@"telSOS"];

  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [v1 queryItems];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 name];
          v11 = [v10 isEqualToString:@"reason"];

          if (v11)
          {
            v12 = [v9 value];
            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_13:
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end