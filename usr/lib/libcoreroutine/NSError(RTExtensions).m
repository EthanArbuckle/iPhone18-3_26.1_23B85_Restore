@interface NSError(RTExtensions)
+ (id)rt_errorWithCode:()RTExtensions description:;
- (id)_detailedErrors;
- (id)_underlyingErrorsRTMultiError;
- (id)flattenErrors;
- (uint64_t)hasAOIInferenceError;
- (uint64_t)hasStorageFullError;
- (uint64_t)isBluePOITileNotAvailableError;
- (uint64_t)isOnlyThrottlingError;
- (uint64_t)isOnlyTimeoutError;
@end

@implementation NSError(RTExtensions)

+ (id)rt_errorWithCode:()RTExtensions description:
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D01448];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = a4;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a4;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v5 errorWithDomain:v6 code:a3 userInfo:v9];

  return v10;
}

- (uint64_t)isOnlyThrottlingError
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v1 = [a1 flattenErrors];
  v2 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v2)
  {
    v13 = 1;
    goto LABEL_19;
  }

  v3 = v2;
  v4 = *v16;
  v5 = *MEMORY[0x277D0E7D8];
  while (2)
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v16 != v4)
      {
        objc_enumerationMutation(v1);
      }

      v7 = *(*(&v15 + 1) + 8 * i);
      v8 = [v7 domain];
      v9 = GEOErrorDomain();
      if (([v8 isEqualToString:v9] & 1) == 0)
      {

LABEL_18:
        v13 = 0;
        goto LABEL_19;
      }

      if ([v7 code] == -7)
      {
        v10 = [v7 userInfo];
        v11 = [v10 objectForKeyedSubscript:v5];
        if ([v11 integerValue] == 429)
        {

          continue;
        }

        v12 = [v7 code];
      }

      else
      {
        v12 = [v7 code];
      }

      if (v12 != -3)
      {
        goto LABEL_18;
      }
    }

    v3 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
    v13 = 1;
    if (v3)
    {
      continue;
    }

    break;
  }

LABEL_19:

  return v13;
}

- (uint64_t)isOnlyTimeoutError
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = [a1 flattenErrors];
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    v5 = *MEMORY[0x277D01448];
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 domain];
        if (![v8 isEqualToString:v5])
        {

LABEL_13:
          v10 = 0;
          goto LABEL_14;
        }

        v9 = [v7 code];

        if (v9 != 15)
        {
          goto LABEL_13;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 1;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_14:

  return v10;
}

- (uint64_t)isBluePOITileNotAvailableError
{
  v2 = [a1 userInfo];
  v3 = [v2 objectForKey:@"HTTPStatus"];
  if (v3)
  {
    v4 = [a1 userInfo];
    v5 = [v4 objectForKey:@"HTTPStatus"];
    v6 = [v5 isEqual:&unk_2845A0770];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)hasAOIInferenceError
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [a1 flattenErrors];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) code] == 111)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (uint64_t)hasStorageFullError
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [a1 flattenErrors];
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 domain];
        if ([v7 isEqualToString:@"NSPOSIXErrorDomain"])
        {
          v8 = [v6 code];

          if (v8 == 28)
          {
            v9 = 1;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (id)_underlyingErrorsRTMultiError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277D01448]] && objc_msgSend(a1, "code") == 9)
  {
    v3 = [a1 userInfo];
    v4 = *MEMORY[0x277D01440];
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D01440]];

    if (v5)
    {
      v6 = [a1 userInfo];
      v7 = [v6 objectForKeyedSubscript:v4];

      goto LABEL_7;
    }
  }

  else
  {
  }

  v7 = [MEMORY[0x277CBEA60] array];
LABEL_7:

  return v7;
}

- (id)_detailedErrors
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [a1 _underlyingErrorsRTMultiError];
  [v2 addObjectsFromArray:v3];

  v4 = [a1 underlyingErrors];
  [v2 addObjectsFromArray:v4];

  return v2;
}

- (id)flattenErrors
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [a1 _detailedErrors];
  if ([v3 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) flattenErrors];
          [v2 addObjectsFromArray:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [v2 addObject:a1];
  }

  return v2;
}

@end