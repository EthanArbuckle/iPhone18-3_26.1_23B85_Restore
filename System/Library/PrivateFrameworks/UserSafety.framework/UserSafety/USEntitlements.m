@interface USEntitlements
+ (id)_setValueForEntitlement:(__CFString *)a3 expectedElementClass:(Class)a4;
+ (id)_valueForEntitlement:(__CFString *)a3 expectedClass:(Class)a4;
+ (id)_valueForEntitlement:(__CFString *)a3 secTask:(__SecTask *)a4;
+ (id)readCurrentBundleIdentifier;
+ (id)readCurrentServices;
@end

@implementation USEntitlements

+ (id)readCurrentServices
{
  v3 = objc_opt_class();

  return [a1 _setValueForEntitlement:@"com.apple.usersafety.service" expectedElementClass:v3];
}

+ (id)readCurrentBundleIdentifier
{
  v3 = objc_opt_class();

  return [a1 _valueForEntitlement:@"application-identifier" expectedClass:v3];
}

+ (id)_setValueForEntitlement:(__CFString *)a3 expectedElementClass:(Class)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = SecTaskCreateFromSelf(0);
  if (v6)
  {
    v7 = v6;
    v8 = [a1 _valueForEntitlement:a3 secTask:v6];
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x277CBEB98] setWithObject:v8];
    }

    else
    {
      v9 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [MEMORY[0x277CBEB58] set];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            if (objc_opt_isKindOfClass())
            {
              [v10 addObject:{v16, v20}];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }

      v17 = [v10 copy];
      v9 = v17;
    }

    CFRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_valueForEntitlement:(__CFString *)a3 expectedClass:(Class)a4
{
  v6 = SecTaskCreateFromSelf(0);
  if (v6)
  {
    v7 = v6;
    v8 = [a1 _valueForEntitlement:a3 secTask:v6];
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_valueForEntitlement:(__CFString *)a3 secTask:(__SecTask *)a4
{
  v4 = SecTaskCopyValueForEntitlement(a4, a3, 0);

  return v4;
}

@end