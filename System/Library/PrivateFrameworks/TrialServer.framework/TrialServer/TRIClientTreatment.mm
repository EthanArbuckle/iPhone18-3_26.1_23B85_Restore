@interface TRIClientTreatment
@end

@implementation TRIClientTreatment

void __67__TRIClientTreatment_CloudKit__assetURLsFromCKRecord_assetIndexes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277CBC5A0] keyForListField:*MEMORY[0x277D739B8] withIndexRange:{a2, a3}];
  v9 = TRILogCategory_Server();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v44 = v8;
    _os_log_debug_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEBUG, "asset key: %@", buf, 0xCu);
  }

  v10 = [*(a1 + 32) triArrayValueForField:v8 isNestedValue:0];

  v11 = TRILogCategory_Server();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v44 = v10;
    _os_log_debug_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEBUG, "assetRange: %@", buf, 0xCu);
  }

  v12 = [MEMORY[0x277CBC5A0] keyForListField:*MEMORY[0x277D739B0] withIndexRange:{a2, a3}];
  v13 = TRILogCategory_Server();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v44 = v12;
    _os_log_debug_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEBUG, "sig key: %@", buf, 0xCu);
  }

  v14 = [*(a1 + 32) triArrayValueForField:v12 isNestedValue:0];

  v15 = TRILogCategory_Server();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v44 = v14;
    _os_log_debug_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEBUG, "sigRange: %@", buf, 0xCu);
  }

  if ([v10 count] == a3 && objc_msgSend(v14, "count") == a3)
  {
    v40 = a4;
    if (a3)
    {
      v16 = 0;
      v42 = v10;
      while (1)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = [v10 objectAtIndexedSubscript:v16];
        v19 = [v18 fileURL];

        if (!v19)
        {
          v28 = [MEMORY[0x277CCA890] currentHandler];
          [v28 handleFailureInMethod:*(a1 + 64) object:*(a1 + 72) file:@"TRIClientTreatment+CloudKit.m" lineNumber:115 description:{@"Expression was unexpectedly nil/false: %@", @"assetRange[i].fileURL"}];
        }

        v20 = a1;
        v21 = *(a1 + 40);
        v22 = v14;
        v23 = [v14 objectAtIndexedSubscript:v16];
        v24 = [v19 path];
        if (!v24)
        {
          v39 = [MEMORY[0x277CCA890] currentHandler];
          [v39 handleFailureInMethod:*(v20 + 64) object:*(v20 + 72) file:@"TRIClientTreatment+CloudKit.m" lineNumber:118 description:{@"Expression was unexpectedly nil/false: %@", @"assetURL.path"}];
        }

        v25 = [v21 validateBase64Signature:v23 forFile:v24];

        if ((v25 & 1) == 0)
        {
          break;
        }

        v26 = *(*(*(v20 + 56) + 8) + 40);
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
        [v26 setObject:v19 forKeyedSubscript:v27];

        objc_autoreleasePoolPop(v17);
        ++v16;
        ++a2;
        --a3;
        v10 = v42;
        v14 = v22;
        a1 = v20;
        if (!a3)
        {
          goto LABEL_23;
        }
      }

      v33 = TRILogCategory_Server();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v38 = [*(v20 + 48) recordID];
        *buf = 138412290;
        v44 = v38;
        _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "Bad assetSignature in Treatment record with CKRecordID %@", buf, 0xCu);
      }

      v34 = *(*(v20 + 56) + 8);
      v35 = *(v34 + 40);
      *(v34 + 40) = 0;

      *v40 = 1;
      objc_autoreleasePoolPop(v17);
      v10 = v42;
      v14 = v22;
    }
  }

  else
  {
    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v36 = [v10 count];
      v37 = [v14 count];
      *buf = 134218496;
      v44 = v36;
      v45 = 2048;
      v46 = v37;
      v47 = 2048;
      v48 = a3;
      _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "assetRange and sigRange have unexpected counts (%tu, %tu; expected %tu)", buf, 0x20u);
    }

    v30 = *(*(a1 + 56) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = 0;

    *a4 = 1;
  }

LABEL_23:

  objc_autoreleasePoolPop(context);
  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __120__TRIClientTreatment_TRIUtil___triRequiredCKAssetsForInstallationWithAssetStore_subscriptionSettings_aliasToUnaliasMap___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (![a4 isOnDemand])
  {
    goto LABEL_9;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = [v8 factor];
    v11 = [v10 namespaceName];
    v12 = [v9 subscribedFactorsForNamespaceName:v11];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = [v8 factor];
  v14 = [v13 name];

  v15 = [*(a1 + 40) objectForKeyedSubscript:v14];
  v16 = v15;
  v17 = v15 ? v15 : v14;
  v18 = v17;

  v19 = [v12 containsObject:v18];
  if (!v19)
  {
    v20 = 0;
  }

  else
  {
LABEL_9:
    v20 = [*(a1 + 48) hasAssetWithIdentifier:v7 type:0] ^ 1;
  }

  return v20;
}

void __131__TRIClientTreatment_TRIUtil___triRequiredMAAssetsForInstallationWithAssetStore_subscriptionSettings_maProvider_aliasToUnaliasMap___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [a2 name];
  if ([v8 hasAssetType] && objc_msgSend(v8, "hasAssetSpecifier") && (objc_msgSend(v8, "hasAssetVersion") & 1) != 0)
  {
    v10 = objc_alloc(MEMORY[0x277D73740]);
    v11 = [v8 assetType];
    v12 = [v8 assetSpecifier];
    v13 = [v8 assetVersion];
    v14 = [v10 initWithType:v11 specifier:v12 version:v13];

    [*(*(*(a1 + 40) + 8) + 40) addObject:v14];
  }

  else
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = [*(a1 + 32) treatmentId];
      v20 = 138543618;
      v21 = v19;
      v22 = 2114;
      v23 = v9;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Treatment %{public}@ has MA reference with missing information for factor %{public}@.", &v20, 0x16u);
    }

    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;

    *a5 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __131__TRIClientTreatment_TRIUtil___triRequiredMAAssetsForInstallationWithAssetStore_subscriptionSettings_maProvider_aliasToUnaliasMap___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v33 name];
  v10 = [*(a1 + 32) objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12;

  if (([v7 hasAssetType] & 1) == 0)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:*(a1 + 72) object:*(a1 + 40) file:@"TRIClientTreatment+TRIUtil.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"maRef.hasAssetType"}];
  }

  if (([v7 hasAssetSpecifier] & 1) == 0)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:*(a1 + 72) object:*(a1 + 40) file:@"TRIClientTreatment+TRIUtil.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"maRef.hasAssetSpecifier"}];
  }

  if (([v7 hasAssetVersion] & 1) == 0)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:*(a1 + 72) object:*(a1 + 40) file:@"TRIClientTreatment+TRIUtil.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"maRef.hasAssetVersion"}];
  }

  v14 = objc_alloc(MEMORY[0x277D73740]);
  v15 = [v7 assetType];
  v16 = [v7 assetSpecifier];
  v17 = [v7 assetVersion];
  v18 = [v14 initWithType:v15 specifier:v16 version:v17];

  LOBYTE(v16) = [TRIAssetMetadataReservedKeys isEncryptedForMetadata:v8];
  v19 = [TRIMAAssetMetadata alloc];
  v20 = [v7 size];
  if (v16)
  {
    v21 = [v33 namespaceName];
    v22 = [(TRIMAAssetMetadata *)v19 initWithDownloadSize:v20 namespaceNameForEncryptionKey:v21];
  }

  else
  {
    v22 = [(TRIMAAssetMetadata *)v19 initWithDownloadSize:v20 namespaceNameForEncryptionKey:0];
  }

  v23 = [*(a1 + 48) containsObject:v18];
  v24 = [TRIRequiredMAAsset alloc];
  if ([v7 hasIsOnDemand])
  {
    v25 = [v7 isOnDemand];
  }

  else
  {
    v25 = 0;
  }

  v26 = [(TRIRequiredMAAsset *)v24 initWithFactorName:v13 isInstalled:v23 isOnDemand:v25 metadata:v22 fullAssetId:v18];
  v27 = *(a1 + 56);
  if (v27)
  {
    v28 = [v33 namespaceName];
    v29 = [v27 subscribedFactorsForNamespaceName:v28];
  }

  else
  {
    v29 = MEMORY[0x277CBEBF8];
  }

  if (!-[TRIRequiredMAAsset isOnDemand](v26, "isOnDemand") || [v29 containsObject:v13])
  {
    [*(a1 + 64) addObject:v26];
  }
}

uint64_t __53__TRIClientTreatment_TRIUtil__unlinkedOnDemandAssets__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  if ([v4 isOnDemand])
  {
    v5 = [v4 hasPath] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __53__TRIClientTreatment_TRIUtil__unlinkedOnDemandAssets__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 metadata];
  v4 = *(a1 + 32);
  v5 = [v3 assetId];

  [v4 setObject:v6 forKeyedSubscript:v5];
}

@end