@interface TLPreferencesUtilities
+ (BOOL)_valueForEntitlement:(id)entitlement task:(__SecTask *)task;
+ (BOOL)canAccessNanoRegistry;
+ (__CFDictionary)_copyAllKeysAndValuesFromDomain:(__CFString *)domain usingPreferencesScope:(int)scope;
+ (__CFString)copySharedResourcesPreferencesDomain;
+ (id)_existingPerTopicPreferenceKeyPrefixesWithRegularPreferenceKeys:(const void *)keys regularPreferenceKeysCount:(unint64_t)count;
+ (void)_setValue:(void *)value forKey:(__CFString *)key inDomain:(__CFString *)domain usingPreferencesScope:(int)scope;
+ (void)_synchronizeDomain:(__CFString *)domain usingPreferencesScope:(int)scope;
@end

@implementation TLPreferencesUtilities

+ (__CFString)copySharedResourcesPreferencesDomain
{
  preferencesDomain = [self preferencesDomain];

  return [self copySharedResourcesPreferencesDomainForDomain:preferencesDomain];
}

void __175__TLPreferencesUtilities_migratePerTopicPreferencesInDomain_withRegularPreferenceKeys_regularPreferenceKeysCount_intoSinglePerTopicPreferenceWithSuffix_usingPreferencesScope___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v11 substringFromIndex:{objc_msgSend(v8, "length")}];
  v10 = [*(a1 + 32) objectForKey:v8];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [*(a1 + 32) setObject:v10 forKey:v8];
  }

  [v10 setObject:v7 forKey:v9];
  [*(a1 + 48) _setValue:0 forKey:v11 inDomain:*(a1 + 56) usingPreferencesScope:*(a1 + 64)];
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void __175__TLPreferencesUtilities_migratePerTopicPreferencesInDomain_withRegularPreferenceKeys_regularPreferenceKeysCount_intoSinglePerTopicPreferenceWithSuffix_usingPreferencesScope___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [v6 substringToIndex:{objc_msgSend(v6, "length") - 1}];

  v7 = [v8 stringByAppendingString:*(a1 + 32)];
  [*(a1 + 48) _setValue:v5 forKey:v7 inDomain:*(a1 + 56) usingPreferencesScope:*(a1 + 64)];

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

+ (BOOL)canAccessNanoRegistry
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__TLPreferencesUtilities_canAccessNanoRegistry__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (canAccessNanoRegistry__TLPreferenceUtilitiesCanAccessNanoRegistryOnceToken != -1)
  {
    dispatch_once(&canAccessNanoRegistry__TLPreferenceUtilitiesCanAccessNanoRegistryOnceToken, block);
  }

  return canAccessNanoRegistry__TLPreferenceUtilitiesCanAccessNanoRegistry;
}

void __47__TLPreferencesUtilities_canAccessNanoRegistry__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = SecTaskCreateFromSelf(0);
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) _valueForEntitlement:@"com.apple.nano.nanoregistry.generalaccess" task:v2];
    v5 = [*(a1 + 32) _valueForEntitlement:@"com.apple.nano.nanoregistry" task:v3];
    CFRelease(v3);
    canAccessNanoRegistry__TLPreferenceUtilitiesCanAccessNanoRegistry = (v4 | v5) & 1;
    v6 = TLLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = canAccessNanoRegistry__TLPreferenceUtilitiesCanAccessNanoRegistry;
      _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "Can access NanoRegistry: %{BOOL}u.", v8, 8u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_valueForEntitlement:(id)entitlement task:(__SecTask *)task
{
  v17 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  error = 0;
  v6 = SecTaskCopyValueForEntitlement(task, entitlementCopy, &error);
  v7 = TLLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = entitlementCopy;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "Value of %{public}@ entitlement for current process: %{public}@.", buf, 0x16u);
  }

  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 == CFBooleanGetTypeID())
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    CFRelease(v6);
  }

  else
  {
    bOOLValue = 0;
  }

  if (error)
  {
    CFRelease(error);
  }

  v10 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

+ (id)_existingPerTopicPreferenceKeyPrefixesWithRegularPreferenceKeys:(const void *)keys regularPreferenceKeysCount:(unint64_t)count
{
  for (i = objc_alloc_init(MEMORY[0x1E695DF70]); count; --count)
  {
    if (*keys)
    {
      v7 = [*keys stringByAppendingString:@"-"];
      [i addObject:v7];
    }

    ++keys;
  }

  return i;
}

void __114__TLPreferencesUtilities__enumerateKeysAndValuesWithEligibleKeyPrefixes_inDomain_usingPreferencesScope_withBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      v8 = v6;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = *(a1 + 32);
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            if ([v7 hasPrefix:{*(*(&v15 + 1) + 8 * i), v15}])
            {
              (*(*(a1 + 40) + 16))();
              goto LABEL_13;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (__CFDictionary)_copyAllKeysAndValuesFromDomain:(__CFString *)domain usingPreferencesScope:(int)scope
{
  if (!scope)
  {
    v4 = MEMORY[0x1E695E898];
    return CFPreferencesCopyMultiple(0, domain, *MEMORY[0x1E695E8B8], *v4);
  }

  if (scope == 1)
  {
    v4 = MEMORY[0x1E695E8B0];
    return CFPreferencesCopyMultiple(0, domain, *MEMORY[0x1E695E8B8], *v4);
  }

  return 0;
}

+ (void)_setValue:(void *)value forKey:(__CFString *)key inDomain:(__CFString *)domain usingPreferencesScope:(int)scope
{
  if (scope == 1)
  {
    CFPreferencesSetValue(key, value, domain, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  }

  else if (!scope)
  {
    CFPreferencesSetAppValue(key, value, domain);
  }
}

+ (void)_synchronizeDomain:(__CFString *)domain usingPreferencesScope:(int)scope
{
  if (scope)
  {
    if (scope != 1)
    {
      return;
    }

    v4 = MEMORY[0x1E695E8B0];
  }

  else
  {
    v4 = MEMORY[0x1E695E898];
  }

  CFPreferencesSynchronize(domain, *MEMORY[0x1E695E8B8], *v4);
}

@end