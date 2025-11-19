@interface RMModelPayloadUtilities
+ (BOOL)_isCurrentVariantSupportedForDetails:(id)a3;
+ (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4 enrollmentType:(int64_t)a5 supportedOS:(id)a6;
+ (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4 supportedOS:(id)a5;
+ (id)_walkObject:(id)a3 keyPath:(id)a4 fullKeyPath:(id)a5;
+ (id)valueFromKeyPath:(id)a3 payload:(id)a4;
@end

@implementation RMModelPayloadUtilities

+ (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4 supportedOS:(id)a5
{
  v8 = MEMORY[0x277CCABB0];
  v9 = a5;
  v10 = [v8 numberWithInteger:a3];
  v11 = [v9 objectForKeyedSubscript:v10];

  if ([a1 _isCurrentVariantSupportedForDetails:v11])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v13 = [v11 objectAtIndexedSubscript:0];
    v14 = [v13 containsObject:v12];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)isSupportedForPlatform:(int64_t)a3 scope:(int64_t)a4 enrollmentType:(int64_t)a5 supportedOS:(id)a6
{
  v10 = MEMORY[0x277CCABB0];
  v11 = a6;
  v12 = [v10 numberWithInteger:a3];
  v13 = [v11 objectForKeyedSubscript:v12];

  if ([a1 _isCurrentVariantSupportedForDetails:v13])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    v16 = [v13 objectAtIndexedSubscript:0];
    if ([v16 containsObject:v14])
    {
      v17 = [v13 objectAtIndexedSubscript:1];
      v18 = [v17 containsObject:v15];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (BOOL)_isCurrentVariantSupportedForDetails:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D034F8] isAppleInternal];
  if ([v3 count] < 3)
  {
    v7 = 1;
  }

  else
  {
    v5 = [v3 objectAtIndexedSubscript:2];
    v6 = [v5 containsObject:&unk_28746B858];

    v7 = v6 ^ 1;
  }

  v8 = v4 | v7;

  return v8 & 1;
}

+ (id)valueFromKeyPath:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 componentsSeparatedByString:@"."];
  v9 = [v8 firstObject];
  v10 = [v9 isEqualToString:@"$"];

  if (v10)
  {
    v11 = [v8 subarrayWithRange:{1, objc_msgSend(v8, "count") - 1}];
    v12 = [a1 _walkObject:v7 keyPath:v11 fullKeyPath:v6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_walkObject:(id)a3 keyPath:(id)a4 fullKeyPath:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v9 firstObject];
    v12 = [v8 valueForKey:v11];

    if ([v9 count] == 1)
    {
      v13 = v12;
    }

    else if (v12)
    {
      v16 = [v9 subarrayWithRange:{1, objc_msgSend(v9, "count") - 1}];
      v13 = [a1 _walkObject:v12 keyPath:v16 fullKeyPath:v10];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v9 firstObject], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", @"*"), v14, v15))
    {
      if ([v9 count] == 1)
      {
        v13 = v8;
      }

      else
      {
        v13 = objc_opt_new();
        v26 = v9;
        v19 = [v9 subarrayWithRange:{1, objc_msgSend(v9, "count") - 1}];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v20 = v8;
        v21 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v28;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v28 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = [a1 _walkObject:*(*(&v27 + 1) + 8 * i) keyPath:v19 fullKeyPath:v10];
              if (v25)
              {
                [v13 addObject:v25];
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v22);
        }

        v9 = v26;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [RMModelPayloadUtilities _walkObject:v9 keyPath:v10 fullKeyPath:?];
      }

      v13 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (void)_walkObject:(uint64_t)a1 keyPath:(uint64_t)a2 fullKeyPath:.cold.1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_261DAE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Key path lookup failed: %{public}@ at %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end