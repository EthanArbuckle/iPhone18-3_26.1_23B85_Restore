@interface NSError(SafariCoreExtras)
+ (id)safari_errorWithDomain:()SafariCoreExtras code:privacyPreservingDescription:;
+ (id)safari_privacyPreservingUserInfoProviderForDomain:()SafariCoreExtras;
+ (void)_safari_getPrivacyPreservingUserInfoProvidersUsingBlock:()SafariCoreExtras;
+ (void)safari_setPrivacyPreservingUserInfoProviderForDomain:()SafariCoreExtras provider:;
- (id)safari_privacyPreservingDescription;
- (id)safari_privacyPreservingError;
- (uint64_t)safari_initWithDomain:()SafariCoreExtras code:privacyPreservingDescription:;
- (uint64_t)safari_isOrContainsClientSideNetworkError;
- (uint64_t)safari_isOrContainsNetworkUnavailableError;
- (uint64_t)safari_isSQLiteCorruptionError;
- (uint64_t)safari_isSQLiteError;
- (uint64_t)safari_matchesErrorDomain:()SafariCoreExtras;
- (uint64_t)safari_matchesErrorDomain:()SafariCoreExtras andCode:;
- (uint64_t)safari_matchesErrorDomainsAndCodes:()SafariCoreExtras;
@end

@implementation NSError(SafariCoreExtras)

- (id)safari_privacyPreservingDescription
{
  v1 = [a1 safari_privacyPreservingError];
  v2 = [v1 description];

  return v2;
}

- (id)safari_privacyPreservingError
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [a1 userInfo];
  v4 = *MEMORY[0x1E696AA08];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  v6 = [v5 safari_privacyPreservingError];
  [v2 setObject:v6 forKeyedSubscript:v4];

  v7 = *MEMORY[0x1E696A750];
  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696A750]];
  v9 = [v8 safari_mapObjectsUsingBlock:&__block_literal_global_9];
  [v2 setObject:v9 forKeyedSubscript:v7];

  v10 = [a1 domain];
  v11 = v10;
  v12 = &stru_1F3064D08;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__9;
  v34 = __Block_byref_object_dispose__9;
  v35 = 0;
  v14 = objc_opt_class();
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __58__NSError_SafariCoreExtras__safari_privacyPreservingError__block_invoke_2;
  v27 = &unk_1E7CF2898;
  v29 = &v30;
  v15 = v13;
  v28 = v15;
  [v14 _safari_getPrivacyPreservingUserInfoProvidersUsingBlock:&v24];
  v16 = v31[5];
  if (v16)
  {
    v17 = (*(v16 + 16))(v16, a1);
    [v2 addEntriesFromDictionary:{v17, v24, v25, v26, v27}];
  }

  v18 = [a1 userInfo];
  v19 = [v18 safari_stringForKey:@"WBSPrivacyPreservingDescription"];

  if (v19)
  {
    goto LABEL_6;
  }

  if (-[__CFString length](v15, "length") && ([MEMORY[0x1E696ABC0] userInfoValueProviderForDomain:v15], v20 = objc_claimAutoreleasedReturnValue(), (v21 = v20) != 0))
  {
    v19 = (*(v20 + 16))(v20, a1, @"WBSPrivacyPreservingDescription");

    if (v19)
    {
LABEL_6:
      [v2 setObject:v19 forKeyedSubscript:@"WBSPrivacyPreservingDescription"];
    }
  }

  else
  {
    v19 = 0;
  }

  v22 = [MEMORY[0x1E696ABC0] errorWithDomain:v15 code:objc_msgSend(a1 userInfo:{"code"), v2}];

  _Block_object_dispose(&v30, 8);

  return v22;
}

+ (void)_safari_getPrivacyPreservingUserInfoProvidersUsingBlock:()SafariCoreExtras
{
  v3 = _safari_getPrivacyPreservingUserInfoProvidersUsingBlock__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[NSError(SafariCoreExtras) _safari_getPrivacyPreservingUserInfoProvidersUsingBlock:];
  }

  os_unfair_lock_lock(&_safari_getPrivacyPreservingUserInfoProvidersUsingBlock__lock);
  v4[2](v4, _safari_getPrivacyPreservingUserInfoProvidersUsingBlock__privacyPreservingUserInfoProviders);

  os_unfair_lock_unlock(&_safari_getPrivacyPreservingUserInfoProvidersUsingBlock__lock);
}

+ (void)safari_setPrivacyPreservingUserInfoProviderForDomain:()SafariCoreExtras provider:
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__NSError_SafariCoreExtras__safari_setPrivacyPreservingUserInfoProviderForDomain_provider___block_invoke;
  v10[3] = &unk_1E7CF2870;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [a1 _safari_getPrivacyPreservingUserInfoProvidersUsingBlock:v10];
}

+ (id)safari_privacyPreservingUserInfoProviderForDomain:()SafariCoreExtras
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__NSError_SafariCoreExtras__safari_privacyPreservingUserInfoProviderForDomain___block_invoke;
  v8[3] = &unk_1E7CF2898;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [a1 _safari_getPrivacyPreservingUserInfoProvidersUsingBlock:v8];
  v6 = _Block_copy(v12[5]);

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (uint64_t)safari_isOrContainsClientSideNetworkError
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x1E696A978]];

  if (v3)
  {
    v4 = [a1 code] + 1020;
    if (v4 < 0x14 && ((0x88803u >> v4) & 1) != 0)
    {
      return 1;
    }
  }

  v6 = [a1 underlyingErrors];
  v7 = [v6 safari_containsObjectPassingTest:&__block_literal_global_5];

  return v7;
}

- (uint64_t)safari_initWithDomain:()SafariCoreExtras code:privacyPreservingDescription:
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (a5)
  {
    v14 = @"WBSPrivacyPreservingDescription";
    v15[0] = a5;
    v9 = MEMORY[0x1E695DF20];
    v10 = a5;
    a5 = [v9 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  v11 = [a1 initWithDomain:v8 code:a4 userInfo:a5];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (id)safari_errorWithDomain:()SafariCoreExtras code:privacyPreservingDescription:
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] safari_initWithDomain:v9 code:a4 privacyPreservingDescription:v8];

  return v10;
}

- (uint64_t)safari_isSQLiteError
{
  v1 = [a1 domain];
  v2 = [v1 isEqualToString:@"com.apple.Safari.SQLite"];

  return v2;
}

- (uint64_t)safari_isSQLiteCorruptionError
{
  result = [a1 safari_isSQLiteError];
  if (result)
  {
    return [a1 code] == 11;
  }

  return result;
}

- (uint64_t)safari_isOrContainsNetworkUnavailableError
{
  if ([a1 safari_isOrContainsClientSideNetworkError])
  {
    return 1;
  }

  return [a1 safari_hasOrContainsErrorWithCloudKitErrorCode:3];
}

- (uint64_t)safari_matchesErrorDomain:()SafariCoreExtras
{
  v4 = a3;
  v5 = [a1 domain];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

- (uint64_t)safari_matchesErrorDomain:()SafariCoreExtras andCode:
{
  result = [a1 safari_matchesErrorDomain:?];
  if (result)
  {
    return [a1 code] == a4;
  }

  return result;
}

- (uint64_t)safari_matchesErrorDomainsAndCodes:()SafariCoreExtras
{
  v4 = a3;
  v5 = [a1 domain];
  v6 = [v4 objectForKeyedSubscript:v5];

  if ([v6 count])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "code")}];
    v8 = [v6 containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end