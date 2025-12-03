@interface TRIClientFactorPackUtils
+ (BOOL)_enumerateAssetFactorLevelsInFactorPack:(id)pack trialAssetBlock:(id)block maAssetBlock:(id)assetBlock;
+ (BOOL)enumerateMetadataForAssetsInFactorPack:(id)pack flatbufferFactorLevels:(id)levels assetStore:(id)store maProvider:(id)provider aliasToUnaliasMap:(id)map subscribedFactors:(id)factors ckBlock:(id)block maBlock:(id)self0;
+ (id)aliasesInNamespace:(id)namespace;
+ (id)requiredAssetsForInstallationWithFactorPack:(id)pack assetStore:(id)store maProvider:(id)provider subscriptionSettings:(id)settings aliasToUnaliasMap:(id)map;
+ (id)uniqueAssets:(id)assets;
+ (id)unlinkedOnDemandAssetsWithFactorPack:(id)pack flatbufferFactorLevels:(id)levels factorPackPath:(id)path assetStore:(id)store maProvider:(id)provider aliasToUnaliasMap:(id)map subscribedFactors:(id)factors unlinkedMAAssetsOnDisk:(id *)self0;
+ (void)_enumerateAssetFactorLevelsInFlatBufferStorage:(id)storage trialAssetBlock:(id)block maAssetBlock:(id)assetBlock;
@end

@implementation TRIClientFactorPackUtils

+ (BOOL)_enumerateAssetFactorLevelsInFactorPack:(id)pack trialAssetBlock:(id)block maAssetBlock:(id)assetBlock
{
  v27 = *MEMORY[0x277D85DE8];
  packCopy = pack;
  blockCopy = block;
  assetBlockCopy = assetBlock;
  v10 = objc_autoreleasePoolPush();
  selectedNamespace = [packCopy selectedNamespace];
  hasName = [selectedNamespace hasName];

  if (hasName)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v25 = 0x2020000000;
    v26 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __97__TRIClientFactorPackUtils__enumerateAssetFactorLevelsInFactorPack_trialAssetBlock_maAssetBlock___block_invoke;
    v19[3] = &unk_279DE51B8;
    v20 = packCopy;
    p_buf = &buf;
    v21 = blockCopy;
    v22 = assetBlockCopy;
    [v20 enumerateFactorLevelsWithBlock:v19];
    v13 = *(*(&buf + 1) + 24);

    v14 = v13 ^ 1;
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      factorPackId = [packCopy factorPackId];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = factorPackId;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has missing namespace name.", &buf, 0xCu);
    }

    v14 = 0;
  }

  objc_autoreleasePoolPop(v10);

  v16 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

void __97__TRIClientFactorPackUtils__enumerateAssetFactorLevelsInFactorPack_trialAssetBlock_maAssetBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (([v5 hasLevel] & 1) == 0)
  {
    v14 = TRILogCategory_Server();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v15 = [*(a1 + 32) factorPackId];
    *buf = 138543362;
    v22 = v15;
    v16 = "Factor pack %{public}@ has missing level.";
LABEL_19:
    _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);

    goto LABEL_10;
  }

  if ([v5 hasFactor])
  {
    v6 = [v5 factor];
    v7 = [v6 hasName];

    if (v7)
    {
      buf[0] = 0;
      v8 = [v5 level];
      v9 = [v8 fileOrDirectoryLevelWithIsDir:buf];
      if (v9)
      {
        v10 = *(a1 + 40);
        if (v10)
        {
          v20 = 0;
          v11 = [v5 factor];
          v12 = [v11 name];
          v13 = [v8 metadata];
          (*(v10 + 16))(v10, v12, v9, v13, buf[0], &v20);
          goto LABEL_15;
        }
      }

      else if ([v8 levelOneOfCase] == 104)
      {
        v18 = *(a1 + 48);
        if (v18)
        {
          v20 = 0;
          v11 = [v5 factor];
          v12 = [v11 name];
          v13 = [v8 mobileAssetReferenceValue];
          v19 = [v8 metadata];
          (*(v18 + 16))(v18, v12, v13, v19, &v20);

LABEL_15:
          if (v20 == 1)
          {
            *a3 = v20;
          }
        }
      }

      goto LABEL_11;
    }
  }

  v14 = TRILogCategory_Server();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = [*(a1 + 32) factorPackId];
    *buf = 138543362;
    v22 = v15;
    v16 = "Factor pack %{public}@ has missing factor name.";
    goto LABEL_19;
  }

LABEL_10:

  *(*(*(a1 + 56) + 8) + 24) = 1;
  *a3 = 1;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)_enumerateAssetFactorLevelsInFlatBufferStorage:(id)storage trialAssetBlock:(id)block maAssetBlock:(id)assetBlock
{
  storageCopy = storage;
  blockCopy = block;
  assetBlockCopy = assetBlock;
  v10 = objc_autoreleasePoolPush();
  levels = [storageCopy levels];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __104__TRIClientFactorPackUtils__enumerateAssetFactorLevelsInFlatBufferStorage_trialAssetBlock_maAssetBlock___block_invoke;
  v14[3] = &unk_279DE5208;
  v12 = blockCopy;
  v15 = v12;
  v13 = assetBlockCopy;
  v16 = v13;
  [levels enumerateObjectsUsingBlock:v14];

  objc_autoreleasePoolPop(v10);
}

void __104__TRIClientFactorPackUtils__enumerateAssetFactorLevelsInFlatBufferStorage_trialAssetBlock_maAssetBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if ([v6 levelType] == 5)
  {
    v7 = objc_opt_new();
    v8 = [v6 levelAsTrialAssetVal];
    v9 = [v8 path];
    [v7 setPath:v9];

    if ([v8 hasDownloadSize])
    {
      v10 = [v8 downloadSize];
      v11 = [v7 asset];
      [v11 setSize:v10];
    }

    if ([v8 hasIsOnDemand])
    {
      [v7 setIsOnDemand:{objc_msgSend(v8, "isOnDemand")}];
    }

    v12 = [v8 assetId];
    v13 = [v7 asset];
    [v13 setAssetId:v12];

    v14 = [v8 cloudKitMetadataType];
    if (v14 != 1)
    {
      if (v14)
      {
LABEL_31:
        v34 = [v8 fileType];
        if (!*(a1 + 32))
        {
LABEL_36:

          goto LABEL_37;
        }

        v35 = v34 == 0;
        v36 = objc_opt_new();
        v37 = [v6 metadataAsDict];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __104__TRIClientFactorPackUtils__enumerateAssetFactorLevelsInFlatBufferStorage_trialAssetBlock_maAssetBlock___block_invoke_318;
        v47[3] = &unk_279DE51E0;
        v22 = &v48;
        v48 = v36;
        v23 = v36;
        [v37 enumerateKeysAndObjectsUsingBlock:v47];

        buf[0] = 0;
        v38 = *(a1 + 32);
        v39 = [v6 name];
        (*(v38 + 16))(v38, v39, v7, v23, v35, buf);

LABEL_33:
        if (buf[0] == 1)
        {
          *a4 = buf[0];
        }

        goto LABEL_36;
      }

      v15 = TRILogCategory_Server();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_30:

        goto LABEL_31;
      }

      v16 = [v6 name];
      *buf = 138543618;
      v50 = v16;
      v51 = 2112;
      v52 = @"test";
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "cloud kit meta data type as none for: %{public}@: %@", buf, 0x16u);
LABEL_29:

      goto LABEL_30;
    }

    v15 = [v8 cloudKitMetadataAsTreatment];
    v26 = [v15 container];
    if (v26 == 2)
    {
      v28 = [v7 asset];
      v29 = v28;
      v30 = 2;
    }

    else if (v26 == 1)
    {
      v28 = [v7 asset];
      v29 = v28;
      v30 = 1;
    }

    else
    {
      if (v26)
      {
LABEL_26:
        if ([v15 hasAssetIndex])
        {
          v31 = [v15 assetIndex];
          v32 = [v7 asset];
          [v32 setCloudKitIndex:v31];
        }

        v16 = [v15 treatmentId];
        v33 = [v7 asset];
        [v33 setTreatmentId:v16];

        goto LABEL_29;
      }

      v27 = TRILogCategory_Server();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v41 = [v6 name];
        *buf = 138543362;
        v50 = v41;
        _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "cloudkit container unknown for: %{public}@", buf, 0xCu);
      }

      v28 = [v7 asset];
      v29 = v28;
      v30 = 0;
    }

    [v28 setCloudKitContainer:v30];

    goto LABEL_26;
  }

  if ([v6 levelType] == 6 && *(a1 + 40))
  {
    v7 = [v6 levelAsMaRefVal];
    v8 = objc_opt_new();
    if ([v7 hasIsOnDemand])
    {
      [v8 setIsOnDemand:{objc_msgSend(v7, "isOnDemand")}];
    }

    if ([v7 hasDownloadSize])
    {
      [v8 setSize:{objc_msgSend(v7, "downloadSize")}];
    }

    v17 = [v7 type];
    [v8 setAssetType:v17];

    v18 = [v7 specifier];
    [v8 setAssetSpecifier:v18];

    v19 = [v7 version];
    [v8 setAssetVersion:v19];

    v20 = objc_opt_new();
    v21 = [v6 metadataAsDict];
    v42 = MEMORY[0x277D85DD0];
    v43 = 3221225472;
    v44 = __104__TRIClientFactorPackUtils__enumerateAssetFactorLevelsInFlatBufferStorage_trialAssetBlock_maAssetBlock___block_invoke_2;
    v45 = &unk_279DE51E0;
    v22 = &v46;
    v46 = v20;
    v23 = v20;
    [v21 enumerateKeysAndObjectsUsingBlock:&v42];

    buf[0] = 0;
    v24 = *(a1 + 40);
    v25 = [v6 name];
    (*(v24 + 16))(v24, v25, v8, v23, buf);

    goto LABEL_33;
  }

LABEL_37:

  v40 = *MEMORY[0x277D85DE8];
}

void __104__TRIClientFactorPackUtils__enumerateAssetFactorLevelsInFlatBufferStorage_trialAssetBlock_maAssetBlock___block_invoke_318(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 val];
  [v4 setObject:v6 forKey:v5];
}

void __104__TRIClientFactorPackUtils__enumerateAssetFactorLevelsInFlatBufferStorage_trialAssetBlock_maAssetBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 val];
  [v4 setObject:v6 forKey:v5];
}

+ (BOOL)enumerateMetadataForAssetsInFactorPack:(id)pack flatbufferFactorLevels:(id)levels assetStore:(id)store maProvider:(id)provider aliasToUnaliasMap:(id)map subscribedFactors:(id)factors ckBlock:(id)block maBlock:(id)self0
{
  v91 = *MEMORY[0x277D85DE8];
  packCopy = pack;
  levelsCopy = levels;
  storeCopy = store;
  providerCopy = provider;
  mapCopy = map;
  factorsCopy = factors;
  blockCopy = block;
  maBlockCopy = maBlock;
  if (!(packCopy | levelsCopy))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientFactorPackUtils.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"factorLevels != nil || factorPack != nil"}];
  }

  context = objc_autoreleasePoolPush();
  v47 = objc_opt_new();
  v20 = objc_autoreleasePoolPush();
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = __Block_byref_object_copy__59;
  v85 = __Block_byref_object_dispose__59;
  v86 = objc_opt_new();
  *v75 = 0;
  v76 = v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__59;
  v79 = __Block_byref_object_dispose__59;
  v80 = objc_opt_new();
  if (packCopy)
  {
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __164__TRIClientFactorPackUtils_enumerateMetadataForAssetsInFactorPack_flatbufferFactorLevels_assetStore_maProvider_aliasToUnaliasMap_subscribedFactors_ckBlock_maBlock___block_invoke;
    v70[3] = &unk_279DE5230;
    v71 = mapCopy;
    v72 = factorsCopy;
    v73 = packCopy;
    v74 = &v81;
    v21 = [self _enumerateAssetFactorLevelsInFactorPack:v73 trialAssetBlock:0 maAssetBlock:v70];

    if ((v21 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (((levelsCopy != 0) & _os_feature_enabled_impl()) == 1)
  {
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __164__TRIClientFactorPackUtils_enumerateMetadataForAssetsInFactorPack_flatbufferFactorLevels_assetStore_maProvider_aliasToUnaliasMap_subscribedFactors_ckBlock_maBlock___block_invoke_337;
    v66[3] = &unk_279DE5258;
    v67 = mapCopy;
    v68 = factorsCopy;
    v69 = v75;
    [self _enumerateAssetFactorLevelsInFlatBufferStorage:levelsCopy trialAssetBlock:0 maAssetBlock:v66];
    if (packCopy && ([v82[5] isEqualToSet:*(v76 + 5)] & 1) == 0)
    {
      v24 = TRILogCategory_Server();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v39 = *(v76 + 5);
        v40 = v82[5];
        *buf = 138412546;
        v88 = v39;
        v89 = 2112;
        v90 = v40;
        _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "asset factor levels for flatbuffers: %@ and protobufs: %@ do not match", buf, 0x16u);
      }
    }

    else
    {
      if (!_os_feature_enabled_impl())
      {
LABEL_13:

        goto LABEL_14;
      }

      v22 = v82;
      v23 = *(v76 + 5);
      v24 = v22[5];
      v22[5] = v23;
    }

    goto LABEL_13;
  }

LABEL_14:
  if (v82[5])
  {
    v25 = [providerCopy installedAssetsMatchingFullAssetIds:?];
    if (v25)
    {
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __164__TRIClientFactorPackUtils_enumerateMetadataForAssetsInFactorPack_flatbufferFactorLevels_assetStore_maProvider_aliasToUnaliasMap_subscribedFactors_ckBlock_maBlock___block_invoke_339;
      v64[3] = &unk_279DE5280;
      v26 = v47;
      v65 = v26;
      [v25 enumerateKeysAndObjectsUsingBlock:v64];

      _Block_object_dispose(v75, 8);
      _Block_object_dispose(&v81, 8);

      objc_autoreleasePoolPop(v20);
      v81 = 0;
      v82 = &v81;
      v83 = 0x2020000000;
      LOBYTE(v84) = 0;
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __164__TRIClientFactorPackUtils_enumerateMetadataForAssetsInFactorPack_flatbufferFactorLevels_assetStore_maProvider_aliasToUnaliasMap_subscribedFactors_ckBlock_maBlock___block_invoke_2;
      v57[3] = &unk_279DE52A8;
      v27 = mapCopy;
      v58 = v27;
      v28 = levelsCopy;
      v59 = v28;
      v29 = packCopy;
      v60 = v29;
      v63 = &v81;
      v61 = storeCopy;
      v62 = blockCopy;
      v30 = MEMORY[0x2743948D0](v57);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __164__TRIClientFactorPackUtils_enumerateMetadataForAssetsInFactorPack_flatbufferFactorLevels_assetStore_maProvider_aliasToUnaliasMap_subscribedFactors_ckBlock_maBlock___block_invoke_345;
      v49[3] = &unk_279DE52D0;
      v50 = v27;
      v55 = a2;
      selfCopy = self;
      v31 = v28;
      v51 = v31;
      v32 = v29;
      v52 = v32;
      v53 = v26;
      v54 = maBlockCopy;
      v33 = MEMORY[0x2743948D0](v49);
      v34 = _os_feature_enabled_impl() ^ 1;
      if (!levelsCopy)
      {
        LOBYTE(v34) = 1;
      }

      if ((v34 & 1) == 0)
      {
        [self _enumerateAssetFactorLevelsInFlatBufferStorage:v31 trialAssetBlock:v30 maAssetBlock:v33];
LABEL_23:
        v35 = *(v82 + 24) ^ 1;
LABEL_28:

        _Block_object_dispose(&v81, 8);
        goto LABEL_29;
      }

      if (packCopy)
      {
        if ([self _enumerateAssetFactorLevelsInFactorPack:v32 trialAssetBlock:v30 maAssetBlock:v33])
        {
          goto LABEL_23;
        }
      }

      else
      {
        v36 = TRILogCategory_Server();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *v75 = 0;
          _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "Could not enumerate factor levels in factor pack since pack file is nil", v75, 2u);
        }
      }

      v35 = 0;
      goto LABEL_28;
    }
  }

LABEL_20:
  _Block_object_dispose(v75, 8);

  _Block_object_dispose(&v81, 8);
  objc_autoreleasePoolPop(v20);
  v35 = 0;
LABEL_29:

  objc_autoreleasePoolPop(context);
  v37 = *MEMORY[0x277D85DE8];
  return v35 & 1;
}

void __164__TRIClientFactorPackUtils_enumerateMetadataForAssetsInFactorPack_flatbufferFactorLevels_assetStore_maProvider_aliasToUnaliasMap_subscribedFactors_ckBlock_maBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  v14 = v13;

  if (![v8 isOnDemand] || objc_msgSend(*(a1 + 40), "containsObject:", v14))
  {
    if ([v8 hasAssetType] && objc_msgSend(v8, "hasAssetSpecifier") && (objc_msgSend(v8, "hasAssetVersion") & 1) != 0)
    {
      v15 = objc_alloc(MEMORY[0x277D73740]);
      v16 = [v8 assetType];
      v17 = [v8 assetSpecifier];
      v18 = [v8 assetVersion];
      v19 = [v15 initWithType:v16 specifier:v17 version:v18];

      [*(*(*(a1 + 56) + 8) + 40) addObject:v19];
    }

    else
    {
      v20 = TRILogCategory_Server();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v24 = [*(a1 + 48) factorPackId];
        v25 = 138543362;
        v26 = v24;
        _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has MA reference with missing information.", &v25, 0xCu);
      }

      v21 = *(*(a1 + 56) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = 0;

      *a5 = 1;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __164__TRIClientFactorPackUtils_enumerateMetadataForAssetsInFactorPack_flatbufferFactorLevels_assetStore_maProvider_aliasToUnaliasMap_subscribedFactors_ckBlock_maBlock___block_invoke_337(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  v14 = v13;

  if (![v8 isOnDemand] || objc_msgSend(*(a1 + 40), "containsObject:", v14))
  {
    if ([v8 hasAssetType] && objc_msgSend(v8, "hasAssetSpecifier") && (objc_msgSend(v8, "hasAssetVersion") & 1) != 0)
    {
      v15 = objc_alloc(MEMORY[0x277D73740]);
      v16 = [v8 assetType];
      v17 = [v8 assetSpecifier];
      v18 = [v8 assetVersion];
      v19 = [v15 initWithType:v16 specifier:v17 version:v18];

      [*(*(*(a1 + 48) + 8) + 40) addObject:v19];
    }

    else
    {
      v20 = TRILogCategory_Server();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v24 = 138543362;
        v25 = v14;
        _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has MA reference with missing information.", &v24, 0xCu);
      }

      v21 = *(*(a1 + 48) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = 0;

      *a5 = 1;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __164__TRIClientFactorPackUtils_enumerateMetadataForAssetsInFactorPack_flatbufferFactorLevels_assetStore_maProvider_aliasToUnaliasMap_subscribedFactors_ckBlock_maBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, _BYTE *a6)
{
  v52 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = *(a1 + 32);
  v14 = a2;
  v15 = [v13 objectForKeyedSubscript:v14];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v18 = v17;

  v19 = _os_feature_enabled_impl();
  v20 = *(a1 + 40);
  if (v20 && v19)
  {
    v21 = [v20 sourceAsFactorPackId];
  }

  else
  {
    v21 = [*(a1 + 48) factorPackId];
  }

  v22 = v21;
  if ([v11 hasAsset] && (objc_msgSend(v11, "asset"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "hasAssetId"), v23, (v24 & 1) != 0))
  {
    v44 = a6;
    v25 = [v11 asset];
    v26 = [v25 assetId];
    v27 = TRIValidateAssetId();

    v45 = v27;
    if (v27)
    {
      v28 = [TRIAssetMetadataReservedKeys isEncryptedForMetadata:v12];
      v42.var0 = [TRIAssetMetadataReservedKeys compressionModeForMetadata:v12];
      v29 = *(a1 + 40);
      if (((v29 != 0) & v19) == 1)
      {
        v30 = [v29 namespaceName];
      }

      else
      {
        v33 = [*(a1 + 48) selectedNamespace];
        v30 = [v33 name];
      }

      v34 = [TRICKAssetMetadata alloc];
      if (v28)
      {
        v35 = v30;
      }

      else
      {
        v35 = 0;
      }

      v36 = [v11 asset];
      v37 = -[TRICKAssetMetadata initWithType:namespaceNameForEncryptionKey:treatmentIndex:downloadSize:compressionMode:](v34, "initWithType:namespaceNameForEncryptionKey:treatmentIndex:downloadSize:compressionMode:", a5, v35, 0, [v36 size], v43);

      v38 = -[TRIRequiredCloudKitAsset initWithFactorName:isInstalled:isOnDemand:assetId:metadata:]([TRIRequiredCloudKitAsset alloc], "initWithFactorName:isInstalled:isOnDemand:assetId:metadata:", v18, [*(a1 + 56) hasAssetWithIdentifier:v45 type:0], objc_msgSend(v11, "isOnDemand"), v45, v37);
      buf[0] = 0;
      (*(*(a1 + 64) + 16))(*(a1 + 64), v38, [v11 hasPath], buf);
      if (buf[0] == 1)
      {
        *v44 = buf[0];
      }
    }

    else
    {
      v32 = TRILogCategory_Server();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v40 = [v11 asset];
        v41 = [v40 assetId];
        *buf = 138543874;
        v47 = v22;
        v48 = 2112;
        v49 = v41;
        v50 = 2114;
        v51 = v18;
        _os_log_error_impl(&dword_26F567000, v32, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has unsuitable asset id {public}%@ for factor %{public}@.", buf, 0x20u);
      }

      *(*(*(a1 + 72) + 8) + 24) = 1;
      *v44 = 1;
    }
  }

  else
  {
    v31 = TRILogCategory_Server();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v47 = v22;
      v48 = 2114;
      v49 = v18;
      _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has missing asset id for factor %{public}@.", buf, 0x16u);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
    *a6 = 1;
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __164__TRIClientFactorPackUtils_enumerateMetadataForAssetsInFactorPack_flatbufferFactorLevels_assetStore_maProvider_aliasToUnaliasMap_subscribedFactors_ckBlock_maBlock___block_invoke_345(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = a4;
  v10 = a2;
  v11 = [v8 objectForKeyedSubscript:v10];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  v14 = v13;

  if (([v7 hasAssetType] & 1) == 0)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:*(a1 + 72) object:*(a1 + 80) file:@"TRIClientFactorPackUtils.m" lineNumber:340 description:{@"Invalid parameter not satisfying: %@", @"maRef.hasAssetType"}];
  }

  if (([v7 hasAssetSpecifier] & 1) == 0)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:*(a1 + 72) object:*(a1 + 80) file:@"TRIClientFactorPackUtils.m" lineNumber:341 description:{@"Invalid parameter not satisfying: %@", @"maRef.hasAssetSpecifier"}];
  }

  if (([v7 hasAssetVersion] & 1) == 0)
  {
    v33 = [MEMORY[0x277CCA890] currentHandler];
    [v33 handleFailureInMethod:*(a1 + 72) object:*(a1 + 80) file:@"TRIClientFactorPackUtils.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"maRef.hasAssetVersion"}];
  }

  v15 = objc_alloc(MEMORY[0x277D73740]);
  v16 = [v7 assetType];
  v17 = [v7 assetSpecifier];
  v18 = [v7 assetVersion];
  v19 = [v15 initWithType:v16 specifier:v17 version:v18];

  v20 = [TRIAssetMetadataReservedKeys isEncryptedForMetadata:v9];
  if (*(a1 + 40) && _os_feature_enabled_impl())
  {
    v21 = [*(a1 + 40) namespaceName];
  }

  else
  {
    v22 = [*(a1 + 48) selectedNamespace];
    v21 = [v22 name];
  }

  v23 = [TRIMAAssetMetadata alloc];
  v24 = [v7 size];
  if (v20)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0;
  }

  v26 = [(TRIMAAssetMetadata *)v23 initWithDownloadSize:v24 namespaceNameForEncryptionKey:v25];
  v27 = [*(a1 + 56) containsObject:v19];
  v28 = [TRIRequiredMAAsset alloc];
  if ([v7 hasIsOnDemand])
  {
    v29 = [v7 isOnDemand];
  }

  else
  {
    v29 = 0;
  }

  v30 = [(TRIRequiredMAAsset *)v28 initWithFactorName:v14 isInstalled:v27 isOnDemand:v29 metadata:v26 fullAssetId:v19];
  (*(*(a1 + 64) + 16))();
}

+ (id)requiredAssetsForInstallationWithFactorPack:(id)pack assetStore:(id)store maProvider:(id)provider subscriptionSettings:(id)settings aliasToUnaliasMap:(id)map
{
  v43 = *MEMORY[0x277D85DE8];
  packCopy = pack;
  storeCopy = store;
  providerCopy = provider;
  settingsCopy = settings;
  mapCopy = map;
  selectedNamespace = [packCopy selectedNamespace];
  hasName = [selectedNamespace hasName];

  if (hasName)
  {
    v34 = storeCopy;
    v19 = MEMORY[0x277CBEBF8];
    selfCopy = self;
    if (settingsCopy)
    {
      selectedNamespace2 = [packCopy selectedNamespace];
      name = [selectedNamespace2 name];
      v22 = [settingsCopy subscribedFactorsForNamespaceName:name];

      if (v22)
      {
        v19 = v22;
      }
    }

    v23 = objc_opt_new();
    v24 = objc_opt_new();
    if (mapCopy)
    {
      v25 = mapCopy;
    }

    else
    {
      v25 = MEMORY[0x277CBEC10];
    }

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __133__TRIClientFactorPackUtils_requiredAssetsForInstallationWithFactorPack_assetStore_maProvider_subscriptionSettings_aliasToUnaliasMap___block_invoke;
    v38[3] = &unk_279DE52F8;
    v39 = v19;
    v26 = v23;
    v40 = v26;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __133__TRIClientFactorPackUtils_requiredAssetsForInstallationWithFactorPack_assetStore_maProvider_subscriptionSettings_aliasToUnaliasMap___block_invoke_2;
    v35[3] = &unk_279DE5320;
    v27 = v39;
    v36 = v27;
    v28 = v24;
    v37 = v28;
    storeCopy = v34;
    v29 = 0;
    if ([selfCopy enumerateMetadataForAssetsInFactorPack:packCopy flatbufferFactorLevels:0 assetStore:v34 maProvider:providerCopy aliasToUnaliasMap:v25 subscribedFactors:v27 ckBlock:v38 maBlock:v35])
    {
      v29 = [[TRIGenericRequiredAssets alloc] initWithCloudKit:v26 mobileAsset:v28];
    }
  }

  else
  {
    v27 = TRILogCategory_Server();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      factorPackId = [packCopy factorPackId];
      *buf = 138543362;
      v42 = factorPackId;
      _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has missing namespace name.", buf, 0xCu);
    }

    v29 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

void __133__TRIClientFactorPackUtils_requiredAssetsForInstallationWithFactorPack_assetStore_maProvider_subscriptionSettings_aliasToUnaliasMap___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (![v5 isOnDemand] || (v3 = *(a1 + 32), objc_msgSend(v5, "factorName"), v4 = objc_claimAutoreleasedReturnValue(), LODWORD(v3) = objc_msgSend(v3, "containsObject:", v4), v4, v3))
  {
    [*(a1 + 40) addObject:v5];
  }
}

void __133__TRIClientFactorPackUtils_requiredAssetsForInstallationWithFactorPack_assetStore_maProvider_subscriptionSettings_aliasToUnaliasMap___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (![v5 isOnDemand] || (v3 = *(a1 + 32), objc_msgSend(v5, "factorName"), v4 = objc_claimAutoreleasedReturnValue(), LODWORD(v3) = objc_msgSend(v3, "containsObject:", v4), v4, v3))
  {
    [*(a1 + 40) addObject:v5];
  }
}

+ (id)unlinkedOnDemandAssetsWithFactorPack:(id)pack flatbufferFactorLevels:(id)levels factorPackPath:(id)path assetStore:(id)store maProvider:(id)provider aliasToUnaliasMap:(id)map subscribedFactors:(id)factors unlinkedMAAssetsOnDisk:(id *)self0
{
  packCopy = pack;
  levelsCopy = levels;
  pathCopy = path;
  storeCopy = store;
  providerCopy = provider;
  mapCopy = map;
  factorsCopy = factors;
  v41 = packCopy;
  if (!(packCopy | levelsCopy))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientFactorPackUtils.m" lineNumber:448 description:{@"Invalid parameter not satisfying: %@", @"factorPack != nil || factorLevels != nil"}];
  }

  v21 = objc_opt_new();
  v36 = objc_opt_new();
  v22 = objc_opt_new();
  v23 = objc_opt_new();
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __184__TRIClientFactorPackUtils_unlinkedOnDemandAssetsWithFactorPack_flatbufferFactorLevels_factorPackPath_assetStore_maProvider_aliasToUnaliasMap_subscribedFactors_unlinkedMAAssetsOnDisk___block_invoke;
  v50[3] = &unk_279DDF658;
  v24 = v23;
  v51 = v24;
  [mapCopy enumerateKeysAndObjectsUsingBlock:v50];
  v37 = mapCopy;
  if (mapCopy)
  {
    v25 = mapCopy;
  }

  else
  {
    v25 = MEMORY[0x277CBEC10];
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __184__TRIClientFactorPackUtils_unlinkedOnDemandAssetsWithFactorPack_flatbufferFactorLevels_factorPackPath_assetStore_maProvider_aliasToUnaliasMap_subscribedFactors_unlinkedMAAssetsOnDisk___block_invoke_2;
  v48[3] = &unk_279DE5348;
  v26 = v21;
  v49 = v26;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __184__TRIClientFactorPackUtils_unlinkedOnDemandAssetsWithFactorPack_flatbufferFactorLevels_factorPackPath_assetStore_maProvider_aliasToUnaliasMap_subscribedFactors_unlinkedMAAssetsOnDisk___block_invoke_3;
  v42[3] = &unk_279DE5370;
  v27 = v24;
  v43 = v27;
  v28 = pathCopy;
  v44 = v28;
  v29 = providerCopy;
  v45 = v29;
  v30 = v22;
  v31 = v22;
  v46 = v31;
  v32 = v36;
  v47 = v32;
  if ([self enumerateMetadataForAssetsInFactorPack:v41 flatbufferFactorLevels:levelsCopy assetStore:storeCopy maProvider:v29 aliasToUnaliasMap:v25 subscribedFactors:v48 ckBlock:v42 maBlock:?])
  {
    objc_storeStrong(disk, v30);
    v33 = [[TRIGenericRequiredAssets alloc] initWithCloudKit:v26 mobileAsset:v32];
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

void __184__TRIClientFactorPackUtils_unlinkedOnDemandAssetsWithFactorPack_flatbufferFactorLevels_factorPackPath_assetStore_maProvider_aliasToUnaliasMap_subscribedFactors_unlinkedMAAssetsOnDisk___block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if ([v5 isOnDemand] && (a3 & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __184__TRIClientFactorPackUtils_unlinkedOnDemandAssetsWithFactorPack_flatbufferFactorLevels_factorPackPath_assetStore_maProvider_aliasToUnaliasMap_subscribedFactors_unlinkedMAAssetsOnDisk___block_invoke_3(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 factorName];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v3 factorName];
  }

  v9 = v8;

  v10 = [TRIFactorPackStorage relPathForMAReferenceWithFactorName:v9];
  v11 = [*(a1 + 40) stringByAppendingPathComponent:v10];
  if ([v3 isOnDemand])
  {
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v12 fileExistsAtPath:v11];

    if (v13)
    {
      v40 = 0;
      v14 = *(a1 + 48);
      v15 = [v3 fullAssetId];
      v16 = [v14 createAutoAssetWithId:v15 decryptionKey:0 error:&v40];

      if (!v16)
      {
        v29 = TRILogCategory_Server();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v34 = v40;
          v35 = [v3 fullAssetId];
          *buf = 138543618;
          v42 = v34;
          v43 = 2114;
          v44 = v35;
          _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Failed to init MAAutoAsset: %{public}@, treating as unlinked: %{public}@", buf, 0x16u);
        }

        [*(a1 + 64) addObject:v3];
        goto LABEL_32;
      }

      v17 = [v16 lockContentSync:@"test asset presence" withUsagePolicy:0 withTimeout:0 lockedAssetSelector:0 newerInProgress:0 error:0];
      v18 = v17;
      if (!v17)
      {
        v30 = TRILogCategory_Server();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v42 = v16;
          _os_log_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEFAULT, "Linked MAAutoAsset appears to be missing, treating as unlinked: %{public}@", buf, 0xCu);
        }

        [*(a1 + 64) addObject:v3];
        goto LABEL_31;
      }

      v38 = v17;
      v19 = [v16 endLockUsageSync:@"test asset presence"];
      v39 = 0;
      v20 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v11 encoding:4 error:&v39];
      v21 = v39;
      v22 = [v20 triTrim];

      if (!v22)
      {
        v31 = TRILogCategory_Server();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v42 = v11;
          _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Unable to read MA path, even though it should exist at path: %{public}@", buf, 0xCu);
        }

        goto LABEL_30;
      }

      if ([v22 length])
      {
        v37 = v21;
        v23 = [v38 path];
        v24 = [v23 isEqualToString:v22];

        if ((v24 & 1) == 0)
        {
          v32 = TRILogCategory_Server();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v36 = [v38 path];
            *buf = 138543618;
            v42 = v36;
            v43 = 2114;
            v44 = v22;
            _os_log_error_impl(&dword_26F567000, v32, OS_LOG_TYPE_ERROR, "Path vended by MA: %{public}@ differs from path held in cache: %{public}@, re-downloading", buf, 0x16u);
          }

          [*(a1 + 64) addObject:v3];
          v21 = v37;
          goto LABEL_30;
        }

        v25 = [MEMORY[0x277CCAA00] defaultManager];
        v26 = [v25 fileExistsAtPath:v22];

        v21 = v37;
        if (v26)
        {
LABEL_30:

          v18 = v38;
LABEL_31:

LABEL_32:
          goto LABEL_33;
        }

        v27 = TRILogCategory_Server();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v42 = v22;
          _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Asset at path held in cache: %{public}@ doesn't exist, re-downloading", buf, 0xCu);
        }

        v28 = *(a1 + 64);
      }

      else
      {
        v28 = *(a1 + 56);
      }

      [v28 addObject:v3];
      goto LABEL_30;
    }

    [*(a1 + 64) addObject:v3];
  }

LABEL_33:

  v33 = *MEMORY[0x277D85DE8];
}

+ (id)uniqueAssets:(id)assets
{
  assetsCopy = assets;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  cloudKit = [assetsCopy cloudKit];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __41__TRIClientFactorPackUtils_uniqueAssets___block_invoke;
  v18[3] = &unk_279DE3F30;
  v19 = v4;
  v7 = v4;
  [cloudKit enumerateObjectsUsingBlock:v18];

  mobileAsset = [assetsCopy mobileAsset];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __41__TRIClientFactorPackUtils_uniqueAssets___block_invoke_2;
  v16 = &unk_279DE3F58;
  v17 = v5;
  v9 = v5;
  [mobileAsset enumerateObjectsUsingBlock:&v13];

  v10 = [TRIGenericUniqueRequiredAssets alloc];
  v11 = [(TRIGenericUniqueRequiredAssets *)v10 initWithCloudKit:v7 mobileAsset:v9, v13, v14, v15, v16];

  return v11;
}

void __41__TRIClientFactorPackUtils_uniqueAssets___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 metadata];
  v4 = *(a1 + 32);
  v5 = [v3 assetId];

  [v4 setObject:v6 forKeyedSubscript:v5];
}

void __41__TRIClientFactorPackUtils_uniqueAssets___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 metadata];
  v4 = *(a1 + 32);
  v5 = [v3 fullAssetId];

  [v4 setObject:v6 forKeyedSubscript:v5];
}

+ (id)aliasesInNamespace:(id)namespace
{
  v54 = *MEMORY[0x277D85DE8];
  namespaceCopy = namespace;
  if (!namespaceCopy)
  {
    v30 = TRILogCategory_Server();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "Couldn't calculate aliases for namespace name. Provided namespace name is nil", buf, 2u);
    }

    goto LABEL_28;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x277D73750];
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  namespaceDescriptorsDefaultDir = [mEMORY[0x277D737E0] namespaceDescriptorsDefaultDir];
  v8 = [v5 loadWithNamespaceName:namespaceCopy fromDirectory:namespaceDescriptorsDefaultDir];

  if (!v8 || ([v8 namespaceName], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", namespaceCopy), v9, !v10))
  {
LABEL_27:

    objc_autoreleasePoolPop(v4);
    v30 = 0;
LABEL_28:
    v32 = 0;
    goto LABEL_29;
  }

  v11 = [v8 factorsAbsolutePathAsOwner:0];
  if (!v11)
  {
    v31 = TRILogCategory_Server();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v51 = namespaceCopy;
      _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Unable to read factors URL for namespace: %{public}@", buf, 0xCu);
    }

    goto LABEL_27;
  }

  v12 = v11;
  v48 = 0;
  v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v11 options:8 error:&v48];
  v14 = v48;
  if (v13)
  {
    v47 = v14;
    v15 = [MEMORY[0x277D73AF0] parseFromData:v13 error:&v47];
    v41 = v47;

    v16 = v15 != 0;
    if (v15)
    {
      v42 = objc_opt_new();
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      factorLevelArray = [v15 factorLevelArray];
      v18 = [factorLevelArray countByEnumeratingWithState:&v43 objects:v49 count:16];
      if (!v18)
      {
        goto LABEL_21;
      }

      v19 = v18;
      v35 = v15;
      v36 = v13;
      v37 = v12;
      v38 = v8;
      v39 = v4;
      v40 = namespaceCopy;
      v20 = *v44;
      while (1)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v44 != v20)
          {
            objc_enumerationMutation(factorLevelArray);
          }

          v22 = *(*(&v43 + 1) + 8 * i);
          factor = [v22 factor];
          if ([factor hasName])
          {
            factor2 = [v22 factor];
            if ([factor2 hasAlias])
            {
              factor3 = [v22 factor];
              alias = [factor3 alias];
              v27 = [alias isEqualToString:&stru_287FA0430];

              if (v27)
              {
                continue;
              }

              factor = [v22 factor];
              factor2 = [factor name];
              factor4 = [v22 factor];
              alias2 = [factor4 alias];
              [v42 setObject:factor2 forKey:alias2];
            }
          }
        }

        v19 = [factorLevelArray countByEnumeratingWithState:&v43 objects:v49 count:16];
        if (!v19)
        {
          v4 = v39;
          namespaceCopy = v40;
          v12 = v37;
          v8 = v38;
          v15 = v35;
          v13 = v36;
LABEL_21:
          v30 = v42;
          v16 = 1;
LABEL_37:
          v14 = v41;
          goto LABEL_38;
        }
      }
    }

    factorLevelArray = TRILogCategory_Server();
    if (!os_log_type_enabled(factorLevelArray, OS_LOG_TYPE_ERROR))
    {
      v30 = 0;
      goto LABEL_37;
    }

    *buf = 138543618;
    v51 = v12;
    v52 = 2114;
    v14 = v41;
    v53 = v41;
    _os_log_error_impl(&dword_26F567000, factorLevelArray, OS_LOG_TYPE_ERROR, "Failed to parse treatment from file %{public}@: %{public}@", buf, 0x16u);
    v30 = 0;
LABEL_38:
  }

  else
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v51 = v12;
      v52 = 2114;
      v53 = v14;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to read data from file %{public}@: %{public}@", buf, 0x16u);
    }

    v30 = 0;
    v16 = 0;
  }

  objc_autoreleasePoolPop(v4);
  if (!v16)
  {
    goto LABEL_28;
  }

  v30 = v30;
  v32 = v30;
LABEL_29:

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

@end