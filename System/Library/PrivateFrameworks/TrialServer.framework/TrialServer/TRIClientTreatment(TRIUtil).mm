@interface TRIClientTreatment(TRIUtil)
- (TRIGenericRequiredAssets)requiredAssetsForInstallationForNamespace:()TRIUtil assetStore:maProvider:subscriptionSettings:aliasToUnaliasMap:;
- (id)_triCollectMetadataForAssetsWithTest:()TRIUtil;
- (id)_triRequiredCKAssetsForInstallationWithAssetStore:()TRIUtil subscriptionSettings:aliasToUnaliasMap:;
- (id)_triRequiredMAAssetsForInstallationWithAssetStore:()TRIUtil subscriptionSettings:maProvider:aliasToUnaliasMap:;
- (id)unlinkedOnDemandAssets;
- (uint64_t)_triEnumerateMAFactorLevelsWithBlock:()TRIUtil;
@end

@implementation TRIClientTreatment(TRIUtil)

- (id)_triCollectMetadataForAssetsWithTest:()TRIUtil
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v66 = a1;
  v7 = [a1 factorLevelArray];
  v70 = [v7 countByEnumeratingWithState:&v73 objects:v83 count:16];
  if (v70)
  {
    v8 = *v74;
    v63 = v6;
    v64 = v4;
    v65 = v7;
    v60 = v5;
    v69 = *v74;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v74 != v8)
      {
        objc_enumerationMutation(v7);
      }

      v10 = *(*(&v73 + 1) + 8 * v9);
      v11 = [v10 factor];
      v12 = [v11 hasName];

      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = [v10 factor];
      v14 = [v13 hasNamespaceName];

      if ((v14 & 1) == 0)
      {
        v49 = TRILogCategory_Server();
        if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_28;
        }

        v50 = [v66 treatmentId];
        *buf = 138412290;
        v78 = v50;
        v51 = "Treatment %@ has missing namespace name.";
        goto LABEL_37;
      }

      v72 = 0;
      v15 = [v10 level];
      v16 = [v15 fileOrDirectoryLevelWithIsDir:&v72];
      v17 = v16;
      if (v16)
      {
        if (![v16 hasAsset] || (objc_msgSend(v17, "asset"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "hasAssetId"), v18, (v19 & 1) == 0))
        {
          v45 = TRILogCategory_Server();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v46 = [v66 treatmentId];
            v47 = [v10 factor];
            v48 = [v47 name];
            *buf = 138412546;
            v78 = v46;
            v79 = 2114;
            v80 = v48;
            _os_log_error_impl(&dword_26F567000, v45, OS_LOG_TYPE_ERROR, "Treatment %@ has missing asset id for factor %{public}@.", buf, 0x16u);
          }

LABEL_31:
          v5 = v60;

LABEL_32:
          v44 = 0;
          goto LABEL_33;
        }

        v20 = [v17 asset];
        v21 = [v20 assetId];
        v22 = TRIValidateAssetId();

        if (!v22)
        {
          v45 = TRILogCategory_Server();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v54 = [v66 treatmentId];
            v55 = [v17 asset];
            [v55 assetId];
            v57 = v56 = v15;
            v58 = [v10 factor];
            v59 = [v58 name];
            *buf = 138412802;
            v78 = v54;
            v79 = 2114;
            v80 = v57;
            v81 = 2114;
            v82 = v59;
            _os_log_error_impl(&dword_26F567000, v45, OS_LOG_TYPE_ERROR, "Treatment %@ has unsuitable asset id %{public}@ for factor %{public}@.", buf, 0x20u);

            v7 = v65;
            v15 = v56;
          }

          goto LABEL_31;
        }

        v71 = v15;
        v23 = v72;
        v24 = objc_autoreleasePoolPush();
        if (v4[2](v4, v22, v10, v17))
        {
          v67 = v23;
          v68 = v24;
          v25 = [v15 metadata];
          v26 = [TRIAssetMetadataReservedKeys isEncryptedForMetadata:v25];

          v27 = [TRITreatmentQualifiedAssetIndex alloc];
          v28 = [v66 treatmentId];
          v29 = [v17 asset];
          v30 = -[TRITreatmentQualifiedAssetIndex initWithTreatmentId:index:](v27, "initWithTreatmentId:index:", v28, [v29 cloudKitIndex]);

          v31 = [v71 metadata];
          v32.var0 = [TRIAssetMetadataReservedKeys compressionModeForMetadata:v31];

          v33 = [TRICKAssetMetadata alloc];
          if (v26)
          {
            v62 = [v10 factor];
            v34 = [v62 namespaceName];
            v61 = v34;
          }

          else
          {
            v34 = 0;
          }

          v35 = [v17 asset];
          v36 = [v35 size];
          v37 = v33;
          v38 = v30;
          v39 = [(TRICKAssetMetadata *)v37 initWithType:v67 namespaceNameForEncryptionKey:v34 treatmentIndex:v30 downloadSize:v36 compressionMode:v32.var0];

          if (v26)
          {
          }

          v40 = [TRIRequiredCloudKitAsset alloc];
          v41 = [v10 factor];
          v42 = [v41 name];
          v43 = -[TRIRequiredCloudKitAsset initWithFactorName:isInstalled:isOnDemand:assetId:metadata:](v40, "initWithFactorName:isInstalled:isOnDemand:assetId:metadata:", v42, 0, [v17 isOnDemand], v22, v39);

          v6 = v63;
          [v63 addObject:v43];

          v4 = v64;
          v7 = v65;
          v24 = v68;
        }

        objc_autoreleasePoolPop(v24);

        v15 = v71;
        v8 = v69;
      }

      if (v70 == ++v9)
      {
        v5 = v60;
        v70 = [v7 countByEnumeratingWithState:&v73 objects:v83 count:16];
        if (v70)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }
    }

    v49 = TRILogCategory_Server();
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
LABEL_28:

      v5 = v60;
      goto LABEL_32;
    }

    v50 = [v66 treatmentId];
    *buf = 138412290;
    v78 = v50;
    v51 = "Treatment %@ has missing factor name.";
LABEL_37:
    _os_log_error_impl(&dword_26F567000, v49, OS_LOG_TYPE_ERROR, v51, buf, 0xCu);

    goto LABEL_28;
  }

LABEL_22:

  v44 = v6;
LABEL_33:

  objc_autoreleasePoolPop(v5);
  v52 = *MEMORY[0x277D85DE8];

  return v44;
}

- (id)_triRequiredCKAssetsForInstallationWithAssetStore:()TRIUtil subscriptionSettings:aliasToUnaliasMap:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __120__TRIClientTreatment_TRIUtil___triRequiredCKAssetsForInstallationWithAssetStore_subscriptionSettings_aliasToUnaliasMap___block_invoke;
  v16[3] = &unk_279DE5398;
  v17 = v9;
  v18 = v10;
  v19 = v8;
  v11 = v8;
  v12 = v10;
  v13 = v9;
  v14 = [a1 _triCollectMetadataForAssetsWithTest:v16];

  return v14;
}

- (TRIGenericRequiredAssets)requiredAssetsForInstallationForNamespace:()TRIUtil assetStore:maProvider:subscriptionSettings:aliasToUnaliasMap:
{
  if (a7)
  {
    v11 = a7;
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [a1 _triRequiredCKAssetsForInstallationWithAssetStore:v15 subscriptionSettings:v13 aliasToUnaliasMap:v11];
  v17 = [a1 _triRequiredMAAssetsForInstallationWithAssetStore:v15 subscriptionSettings:v13 maProvider:v14 aliasToUnaliasMap:v11];

  v18 = [TRIGenericRequiredAssets alloc];
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v20 = [(TRIGenericRequiredAssets *)v18 initWithCloudKit:v19 mobileAsset:v17];

  return v20;
}

- (id)_triRequiredMAAssetsForInstallationWithAssetStore:()TRIUtil subscriptionSettings:maProvider:aliasToUnaliasMap:
{
  v25 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v16 = objc_autoreleasePoolPush();
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__60;
  v40 = __Block_byref_object_dispose__60;
  v41 = objc_opt_new();
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __131__TRIClientTreatment_TRIUtil___triRequiredMAAssetsForInstallationWithAssetStore_subscriptionSettings_maProvider_aliasToUnaliasMap___block_invoke;
  v35[3] = &unk_279DE53C0;
  v35[4] = a1;
  v35[5] = &v36;
  if (([a1 _triEnumerateMAFactorLevelsWithBlock:v35] & 1) != 0 && v37[5])
  {
    v17 = [v11 installedAssetsMatchingFullAssetIds:?];
    if (v17)
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __131__TRIClientTreatment_TRIUtil___triRequiredMAAssetsForInstallationWithAssetStore_subscriptionSettings_maProvider_aliasToUnaliasMap___block_invoke_313;
      v33[3] = &unk_279DE5280;
      v34 = v15;
      [v17 enumerateKeysAndObjectsUsingBlock:v33];
    }

    else
    {
      v20 = v14;
    }

    _Block_object_dispose(&v36, 8);
    objc_autoreleasePoolPop(v16);
    v19 = v14;
    if (v17)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __131__TRIClientTreatment_TRIUtil___triRequiredMAAssetsForInstallationWithAssetStore_subscriptionSettings_maProvider_aliasToUnaliasMap___block_invoke_2;
      v26[3] = &unk_279DE53E8;
      v32 = a2;
      v27 = v12;
      v28 = a1;
      v29 = v15;
      v30 = v10;
      v21 = v14;
      v31 = v21;
      if ([a1 _triEnumerateMAFactorLevelsWithBlock:v26])
      {
        v22 = v21;
      }

      else
      {
        v22 = objc_opt_new();
      }

      v19 = v22;
    }
  }

  else
  {
    v18 = v14;
    _Block_object_dispose(&v36, 8);

    objc_autoreleasePoolPop(v16);
    v19 = v14;
  }

  objc_autoreleasePoolPop(v13);

  return v19;
}

- (uint64_t)_triEnumerateMAFactorLevelsWithBlock:()TRIUtil
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [a1 factorLevelArray];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = a1;
    v25 = v5;
    v9 = *v27;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        if (([v11 hasLevel] & 1) == 0)
        {
          v14 = TRILogCategory_Server();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v23 = [v24 treatmentId];
            *buf = 138543362;
            v31 = v23;
            _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Treatment %{public}@ has missing level.", buf, 0xCu);
          }

          v19 = 0;
          goto LABEL_23;
        }

        if (![v11 hasFactor] || (objc_msgSend(v11, "factor"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hasName"), v12, (v13 & 1) == 0))
        {
          v14 = TRILogCategory_Server();
          v5 = v25;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v22 = [v24 treatmentId];
            *buf = 138543362;
            v31 = v22;
            _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Treatment %{public}@ has missing factor name.", buf, 0xCu);

            v5 = v25;
          }

          v19 = 0;
          goto LABEL_24;
        }

        v14 = [v11 level];
        v15 = [v14 levelOneOfCase];
        if (v4)
        {
          if (v15 == 104)
          {
            buf[0] = 0;
            v16 = [v11 factor];
            v17 = [v14 mobileAssetReferenceValue];
            v18 = [v14 metadata];
            v4[2](v4, v16, v17, v18, buf);

            if (buf[0])
            {
              v19 = 1;
LABEL_23:
              v5 = v25;
LABEL_24:

              goto LABEL_25;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
      v19 = 1;
      v5 = v25;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 1;
  }

LABEL_25:

  objc_autoreleasePoolPop(v5);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)unlinkedOnDemandAssets
{
  v2 = objc_opt_new();
  v3 = [a1 _triCollectMetadataForAssetsWithTest:&__block_literal_global_45];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__TRIClientTreatment_TRIUtil__unlinkedOnDemandAssets__block_invoke_2;
  v6[3] = &unk_279DE3F30;
  v4 = v2;
  v7 = v4;
  [v3 enumerateObjectsUsingBlock:v6];

  return v4;
}

@end