@interface NSError(WelcomeKit)
+ (id)_wl_encodableArrayFromArray:()WelcomeKit;
+ (id)_wl_encodableDictionaryFromDictionary:()WelcomeKit;
+ (id)_wl_encodableObjectFromObject:()WelcomeKit;
+ (id)_wl_encodableSetFromSet:()WelcomeKit;
+ (id)wl_encodableErrorSupportedClasses;
+ (uint64_t)_wl_objectIsKindOfNonCollectionPlistClass:()WelcomeKit;
- (id)wl_encodableError;
- (uint64_t)wk_representsTransientConnectivityIssueForAttempt:()WelcomeKit;
@end

@implementation NSError(WelcomeKit)

- (uint64_t)wk_representsTransientConnectivityIssueForAttempt:()WelcomeKit
{
  if (a3 <= 2)
  {
    v5 = [a1 domain];
    if ([v5 isEqualToString:*MEMORY[0x277CCA738]])
    {
      if ([a1 code] == -1001 || objc_msgSend(a1, "code") == -1005)
      {
        v3 = 1;
LABEL_11:

        return v3;
      }

      v7 = [a1 code];

      if (v7 == -1003)
      {
        return 1;
      }
    }

    else
    {
    }

    v5 = [a1 domain];
    if ([v5 isEqualToString:*MEMORY[0x277D6A110]])
    {
      v3 = [a1 code] == 110;
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_11;
  }

  return 0;
}

- (id)wl_encodableError
{
  v2 = [a1 userInfo];
  v3 = [v2 count];

  if (v3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = [a1 userInfo];
    v6 = [v4 _wl_encodableDictionaryFromDictionary:v5];

    v7 = MEMORY[0x277CCA9B8];
    v8 = [a1 domain];
    v9 = [v7 errorWithDomain:v8 code:objc_msgSend(a1 userInfo:{"code"), v6}];
  }

  else
  {
    v9 = a1;
  }

  return v9;
}

+ (id)wl_encodableErrorSupportedClasses
{
  if (wl_encodableErrorSupportedClasses_onceToken != -1)
  {
    +[NSError(WelcomeKit) wl_encodableErrorSupportedClasses];
  }

  v1 = wl_encodableErrorSupportedClasses_supportedClasses;

  return v1;
}

+ (id)_wl_encodableObjectFromObject:()WelcomeKit
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 wl_encodableError];
LABEL_11:
    v6 = v5;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 _wl_encodableArrayFromArray:v4];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 _wl_encodableSetFromSet:v4];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 _wl_encodableDictionaryFromDictionary:v4];
    goto LABEL_11;
  }

  if ([MEMORY[0x277CCA9B8] _wl_objectIsKindOfNonCollectionPlistClass:v4])
  {
    v5 = v4;
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

+ (id)_wl_encodableArrayFromArray:()WelcomeKit
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 _wl_encodableObjectFromObject:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_wl_encodableSetFromSet:()WelcomeKit
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 _wl_encodableObjectFromObject:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_wl_encodableDictionaryFromDictionary:()WelcomeKit
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__NSError_WelcomeKit___wl_encodableDictionaryFromDictionary___block_invoke;
  v9[3] = &unk_279EB6488;
  v11 = a1;
  v7 = v6;
  v10 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

+ (uint64_t)_wl_objectIsKindOfNonCollectionPlistClass:()WelcomeKit
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (_wl_objectIsKindOfNonCollectionPlistClass__onceToken != -1)
  {
    +[NSError(WelcomeKit) _wl_objectIsKindOfNonCollectionPlistClass:];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = _wl_objectIsKindOfNonCollectionPlistClass__nonCollectionPlistClasses;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v5 = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

@end