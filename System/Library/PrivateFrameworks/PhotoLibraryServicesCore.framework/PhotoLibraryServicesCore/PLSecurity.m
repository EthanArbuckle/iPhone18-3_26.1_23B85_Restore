@interface PLSecurity
+ (BOOL)auditToken:(id *)a3 hasEntitlement:(id)a4;
+ (BOOL)clientIsAllowedToFetchCollectionShares;
+ (BOOL)connection:(id)a3 hasEntitlement:(id)a4;
+ (BOOL)hasXPCStoreEntitlementOptInForToken:(id *)a3;
+ (BOOL)isEntitledForPhotoKit;
+ (BOOL)isEntitledForPhotoKitOrPrivatePhotosTCCForToken:(id *)a3;
+ (BOOL)secTask:(__SecTask *)a3 hasEntitlement:(id)a4;
+ (id)_secTask:(__SecTask *)a3 grantedEntitlements:(id)a4;
+ (id)connection:(id)a3 grantedEntitlements:(id)a4;
+ (id)connection:(id)a3 valueForEntitlement:(id)a4;
+ (id)connection:(id)a3 valuesForEntitlements:(id)a4;
@end

@implementation PLSecurity

+ (BOOL)hasXPCStoreEntitlementOptInForToken:(id *)a3
{
  [@"com.apple.private.photos.XPCStoreOptIn" UTF8String];
  v3 = xpc_copy_entitlement_for_token();
  v4 = v3;
  if (v3)
  {
    value = xpc_BOOL_get_value(v3);
  }

  else
  {
    value = 0;
  }

  return value;
}

+ (BOOL)isEntitledForPhotoKitOrPrivatePhotosTCCForToken:(id *)a3
{
  [@"com.apple.photos.bourgeoisie" UTF8String];
  v12 = 0uLL;
  v13 = 0uLL;
  v3 = xpc_copy_entitlement_for_token();
  v4 = v3;
  if (v3 && xpc_BOOL_get_value(v3))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(*MEMORY[0x1E69D55C8], 0x8000100u);
    v7 = xpc_copy_entitlement_for_token();
    v8 = v7;
    if (v7)
    {
      v9 = CStringPtr == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __62__PLSecurity_isEntitledForPhotoKitOrPrivatePhotosTCCForToken___block_invoke;
      applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
      applier[4] = CStringPtr;
      v5 = !xpc_array_apply(v7, applier);
    }
  }

  return v5;
}

BOOL __62__PLSecurity_isEntitledForPhotoKitOrPrivatePhotosTCCForToken___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = 1;
  if (object_getClass(v4) == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(v4);
    if (!strcmp(string_ptr, *(a1 + 32)))
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (BOOL)clientIsAllowedToFetchCollectionShares
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__PLSecurity_clientIsAllowedToFetchCollectionShares__block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = a1;
  pl_dispatch_once(&clientIsAllowedToFetchCollectionShares_onceToken, v3);
  return clientIsAllowedToFetchCollectionShares_collectionShareFetchAllowed;
}

void __52__PLSecurity_clientIsAllowedToFetchCollectionShares__block_invoke(uint64_t a1)
{
  v2 = SecTaskCreateFromSelf(0);
  if (v2)
  {
    v3 = v2;
    clientIsAllowedToFetchCollectionShares_collectionShareFetchAllowed = [*(a1 + 32) secTask:v2 hasEntitlement:@"com.apple.private.photos.allowcollectionshare"];

    CFRelease(v3);
  }
}

+ (BOOL)isEntitledForPhotoKit
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__PLSecurity_isEntitledForPhotoKit__block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = a1;
  pl_dispatch_once(&isEntitledForPhotoKit_onceToken, v3);
  return isEntitledForPhotoKit_selfEntitled;
}

void __35__PLSecurity_isEntitledForPhotoKit__block_invoke(uint64_t a1)
{
  v2 = SecTaskCreateFromSelf(0);
  if (v2)
  {
    v3 = v2;
    isEntitledForPhotoKit_selfEntitled = [*(a1 + 32) secTask:v2 hasEntitlement:@"com.apple.photos.bourgeoisie"];

    CFRelease(v3);
  }
}

+ (id)connection:(id)a3 grantedEntitlements:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DFD8] set];
  if (v5)
  {
    v13 = 0u;
    v14 = 0u;
    xpc_connection_get_audit_token();
    memset(&v12, 0, sizeof(v12));
    v8 = SecTaskCreateWithAuditToken(0, &v12);
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_class() _secTask:v8 grantedEntitlements:v6];

      CFRelease(v9);
      v7 = v10;
    }
  }

  return v7;
}

+ (BOOL)connection:(id)a3 hasEntitlement:(id)a4
{
  v6 = a4;
  if (a3 && (v12 = 0u, v13 = 0u, xpc_connection_get_audit_token(), memset(&v11, 0, sizeof(v11)), (v7 = SecTaskCreateWithAuditToken(0, &v11)) != 0))
  {
    v8 = v7;
    v9 = [a1 secTask:v7 hasEntitlement:v6];
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)connection:(id)a3 valueForEntitlement:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v14 count:1];

  v10 = [a1 connection:v8 valuesForEntitlements:{v9, v14, v15}];

  v11 = [v10 allValues];
  v12 = [v11 firstObject];

  return v12;
}

+ (id)connection:(id)a3 valuesForEntitlements:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  if (v5)
  {
    v25 = 0u;
    v26 = 0u;
    xpc_connection_get_audit_token();
    memset(&token, 0, sizeof(token));
    v8 = SecTaskCreateWithAuditToken(0, &token);
    if (v8)
    {
      v9 = v8;
      v10 = SecTaskCopyValuesForEntitlements(v8, v6, 0);
      if (v10)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v19 = v6;
        v11 = v6;
        v12 = [(__CFArray *)v11 countByEnumeratingWithState:&v20 objects:v27 count:16];
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
              v17 = [(__CFDictionary *)v10 objectForKey:v16];
              if (v17)
              {
                [v7 setObject:v17 forKey:v16];
              }
            }

            v13 = [(__CFArray *)v11 countByEnumeratingWithState:&v20 objects:v27 count:16];
          }

          while (v13);
        }

        v6 = v19;
      }

      CFRelease(v9);
    }
  }

  return v7;
}

+ (BOOL)auditToken:(id *)a3 hasEntitlement:(id)a4
{
  v5 = a4;
  v6 = *&a3->var0[4];
  *v11.val = *a3->var0;
  *&v11.val[4] = v6;
  v7 = SecTaskCreateWithAuditToken(0, &v11);
  if (v7)
  {
    v8 = v7;
    v9 = [PLSecurity secTask:v7 hasEntitlement:v5];
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)secTask:(__SecTask *)a3 hasEntitlement:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_opt_class();
  v10[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v8 = [v6 _secTask:a3 grantedEntitlements:v7];

  LOBYTE(a3) = [v8 count] != 0;
  return a3;
}

+ (id)_secTask:(__SecTask *)a3 grantedEntitlements:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
  if (a3)
  {
    v7 = SecTaskCopyValuesForEntitlements(a3, v5, 0);
    if (v7)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v17 + 1) + 8 * i);
            v14 = [(__CFDictionary *)v7 objectForKeyedSubscript:v13, v17];
            v15 = [v14 BOOLValue];

            if (v15)
            {
              [v6 addObject:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }
    }
  }

  return v6;
}

@end