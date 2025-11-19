@interface NSError
@end

@implementation NSError

void __58__NSError_SafariCoreExtras__safari_privacyPreservingError__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __92__NSError_SafariSharedCloudKitExtras__safari_setUpCloudKitPrivacyPreservingUserInfoProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 userInfo];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = *MEMORY[0x1E695B810];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695B810]];
  [v4 setObject:v6 forKeyedSubscript:v5];

  v7 = *MEMORY[0x1E695B720];
  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695B720]];
  [v4 setObject:v8 forKeyedSubscript:v7];

  v9 = *MEMORY[0x1E695B748];
  v10 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695B748]];
  [v4 setObject:v10 forKeyedSubscript:v9];

  v11 = *MEMORY[0x1E695B840];
  v12 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695B840]];
  v13 = [v12 safari_privacyPreservingError];
  [v4 setObject:v13 forKeyedSubscript:v11];

  v14 = [v2 code];
  v15 = stringForCKErrorCode();
  [v4 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696A578]];

  if (v14 == 26)
  {
    v19 = *MEMORY[0x1E695B760];
    v17 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695B760]];
    [v4 setObject:v17 forKeyedSubscript:v19];
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_6;
    }

    v16 = *MEMORY[0x1E695B798];
    v17 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695B798]];
    v18 = [v17 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_3_0];
    [v4 setObject:v18 forKeyedSubscript:v16];
  }

LABEL_6:
  v20 = [v4 copy];

  return v20;
}

void __80__NSError_SafariSharedCloudKitExtras___safari_enumerateCloudKitErrorsWithBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) objectForKey:a2];
  v3 = [v5 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x1E695B740]];

  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __86__NSError_SafariSharedCloudKitExtras__safari_hasOrContainsErrorWithCloudKitErrorCode___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 code];
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void __97__NSError_SafariSharedCloudKitExtras__safari_errorOrAnyPartialErrorHasCloudKitInternalErrorCode___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = [v9 code] == 1;
  v6 = v9;
  if (v5)
  {
    v7 = [v9 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if ([v8 code] == *(a1 + 40))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }

    v6 = v9;
  }
}

void __94__NSError_SafariSharedCloudKitExtras__safari_containsCloudKitMissingZoneErrorForRecordZoneID___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v10 zoneID];
    v9 = [v8 isEqual:*(a1 + 32)];

    if (v9)
    {
      if ([v7 safari_isCloudKitMissingZoneError])
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }
}

void __103__NSError_SafariSharedCloudKitExtras___safari_isOrContainsCloudKitErrorOfCodes_checkInternalErrorCode___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  v13 = v6;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "code")}];
  LODWORD(v7) = [v7 containsObject:v8];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  else if (*(a1 + 48) == 1)
  {
    v9 = [v13 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "code")}];
      LODWORD(v11) = [v11 containsObject:v12];

      if (v11)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }
}

void __102__NSError_SafariSharedCloudKitExtras__safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AEC0];
  v6 = a2;
  v8 = [a3 safari_privacyPreservingDescription];
  v7 = [v5 stringWithFormat:@"RecordID: %@, Error: %@", v6, v8];

  [v4 addObject:v7];
}

void __85__NSError_SafariCoreExtras___safari_getPrivacyPreservingUserInfoProvidersUsingBlock___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = _safari_getPrivacyPreservingUserInfoProvidersUsingBlock__privacyPreservingUserInfoProviders;
  _safari_getPrivacyPreservingUserInfoProvidersUsingBlock__privacyPreservingUserInfoProviders = v0;
}

void __91__NSError_SafariCoreExtras__safari_setPrivacyPreservingUserInfoProviderForDomain_provider___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = _Block_copy(v3);
  [v4 setObject:v5 forKeyedSubscript:*(a1 + 32)];
}

void __79__NSError_SafariCoreExtras__safari_privacyPreservingUserInfoProviderForDomain___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end