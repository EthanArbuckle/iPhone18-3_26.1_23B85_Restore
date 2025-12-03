@interface NSError(RCErrorAdditions)
+ (id)rc_endpointErrorWithUnderlyingEndpointErrors:()RCErrorAdditions;
+ (id)rc_errorWithCode:()RCErrorAdditions description:additionalUserInfo:;
+ (id)rc_missingConfigErrorWithUnderlyingError:()RCErrorAdditions;
+ (id)rc_offlineErrorWithReason:()RCErrorAdditions;
@end

@implementation NSError(RCErrorAdditions)

+ (id)rc_errorWithCode:()RCErrorAdditions description:additionalUserInfo:
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
  }

  else
  {
    [MEMORY[0x277CBEB38] dictionary];
  }
  v9 = ;
  v10 = v9;
  if (v7)
  {
    [v9 setObject:v7 forKey:*MEMORY[0x277CCA450]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RCErrorDomain" code:a3 userInfo:v10];

  return v11;
}

+ (id)rc_offlineErrorWithReason:()RCErrorAdditions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"RCErrorOfflineReasonKey";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [self rc_errorWithCode:7 description:0 additionalUserInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)rc_missingConfigErrorWithUnderlyingError:()RCErrorAdditions
{
  v3 = a3;
  if (v3 && ([MEMORY[0x277CBEB68] null], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "isEqual:", v4), v4, (v5 & 1) == 0))
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:@"Failed to load the configuration." forKeyedSubscript:*MEMORY[0x277CCA450]];
    [dictionary setObject:v3 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RCErrorDomain" code:10 userInfo:dictionary];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)rc_endpointErrorWithUnderlyingEndpointErrors:()RCErrorAdditions
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v15 + 1) + 8 * i) description];
          [v4 appendString:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:@"The endpoint returned one or more errors." forKeyedSubscript:*MEMORY[0x277CCA450]];
    [dictionary setObject:v4 forKeyedSubscript:@"RCErrorEndpointErrorsKey"];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RCErrorDomain" code:14 userInfo:dictionary];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end