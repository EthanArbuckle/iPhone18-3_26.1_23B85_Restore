@interface PLSecurity
+ (BOOL)auditToken:(id *)token hasEntitlement:(id)entitlement;
+ (BOOL)clientIsAllowedToFetchCollectionShares;
+ (BOOL)connection:(id)connection hasEntitlement:(id)entitlement;
+ (BOOL)hasXPCStoreEntitlementOptInForToken:(id *)token;
+ (BOOL)isEntitledForPhotoKit;
+ (BOOL)isEntitledForPhotoKitOrPrivatePhotosTCCForToken:(id *)token;
+ (BOOL)secTask:(__SecTask *)task hasEntitlement:(id)entitlement;
+ (id)_secTask:(__SecTask *)task grantedEntitlements:(id)entitlements;
+ (id)connection:(id)connection grantedEntitlements:(id)entitlements;
+ (id)connection:(id)connection valueForEntitlement:(id)entitlement;
+ (id)connection:(id)connection valuesForEntitlements:(id)entitlements;
@end

@implementation PLSecurity

+ (BOOL)hasXPCStoreEntitlementOptInForToken:(id *)token
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

+ (BOOL)isEntitledForPhotoKitOrPrivatePhotosTCCForToken:(id *)token
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
  v3[4] = self;
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
  v3[4] = self;
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

+ (id)connection:(id)connection grantedEntitlements:(id)entitlements
{
  connectionCopy = connection;
  entitlementsCopy = entitlements;
  v7 = [MEMORY[0x1E695DFD8] set];
  if (connectionCopy)
  {
    v13 = 0u;
    v14 = 0u;
    xpc_connection_get_audit_token();
    memset(&v12, 0, sizeof(v12));
    v8 = SecTaskCreateWithAuditToken(0, &v12);
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_class() _secTask:v8 grantedEntitlements:entitlementsCopy];

      CFRelease(v9);
      v7 = v10;
    }
  }

  return v7;
}

+ (BOOL)connection:(id)connection hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  if (connection && (v12 = 0u, v13 = 0u, xpc_connection_get_audit_token(), memset(&v11, 0, sizeof(v11)), (v7 = SecTaskCreateWithAuditToken(0, &v11)) != 0))
  {
    v8 = v7;
    v9 = [self secTask:v7 hasEntitlement:entitlementCopy];
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)connection:(id)connection valueForEntitlement:(id)entitlement
{
  v15 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  v6 = MEMORY[0x1E695DEC8];
  entitlementCopy2 = entitlement;
  connectionCopy = connection;
  v9 = [v6 arrayWithObjects:&entitlementCopy count:1];

  v10 = [self connection:connectionCopy valuesForEntitlements:{v9, entitlementCopy, v15}];

  allValues = [v10 allValues];
  firstObject = [allValues firstObject];

  return firstObject;
}

+ (id)connection:(id)connection valuesForEntitlements:(id)entitlements
{
  v28 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  entitlementsCopy = entitlements;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (connectionCopy)
  {
    v25 = 0u;
    v26 = 0u;
    xpc_connection_get_audit_token();
    memset(&token, 0, sizeof(token));
    v8 = SecTaskCreateWithAuditToken(0, &token);
    if (v8)
    {
      v9 = v8;
      v10 = SecTaskCopyValuesForEntitlements(v8, entitlementsCopy, 0);
      if (v10)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v19 = entitlementsCopy;
        v11 = entitlementsCopy;
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
                [dictionary setObject:v17 forKey:v16];
              }
            }

            v13 = [(__CFArray *)v11 countByEnumeratingWithState:&v20 objects:v27 count:16];
          }

          while (v13);
        }

        entitlementsCopy = v19;
      }

      CFRelease(v9);
    }
  }

  return dictionary;
}

+ (BOOL)auditToken:(id *)token hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v6 = *&token->var0[4];
  *v11.val = *token->var0;
  *&v11.val[4] = v6;
  v7 = SecTaskCreateWithAuditToken(0, &v11);
  if (v7)
  {
    v8 = v7;
    v9 = [PLSecurity secTask:v7 hasEntitlement:entitlementCopy];
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)secTask:(__SecTask *)task hasEntitlement:(id)entitlement
{
  v10[1] = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  v6 = objc_opt_class();
  v10[0] = entitlementCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v8 = [v6 _secTask:task grantedEntitlements:v7];

  LOBYTE(task) = [v8 count] != 0;
  return task;
}

+ (id)_secTask:(__SecTask *)task grantedEntitlements:(id)entitlements
{
  v22 = *MEMORY[0x1E69E9840];
  entitlementsCopy = entitlements;
  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(entitlementsCopy, "count")}];
  if (task)
  {
    v7 = SecTaskCopyValuesForEntitlements(task, entitlementsCopy, 0);
    if (v7)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = entitlementsCopy;
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
            bOOLValue = [v14 BOOLValue];

            if (bOOLValue)
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