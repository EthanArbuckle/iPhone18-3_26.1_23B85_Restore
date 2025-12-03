@interface TRIFlatbufferUtils
+ (id)_maAutoAssetReferencedInDir:(id)dir byFactorName:(id)name;
+ (id)convertFBFactorLevelToProtoFactorLevel:(id)level parentDir:(id)dir namespaceName:(id)name isRelativePath:(BOOL)path;
@end

@implementation TRIFlatbufferUtils

+ (id)convertFBFactorLevelToProtoFactorLevel:(id)level parentDir:(id)dir namespaceName:(id)name isRelativePath:(BOOL)path
{
  pathCopy = path;
  v111 = *MEMORY[0x277D85DE8];
  levelCopy = level;
  dirCopy = dir;
  nameCopy = name;
  v12 = objc_autoreleasePoolPush();
  v102 = objc_opt_new();
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  levelType = [levelCopy levelType];
  v16 = 0;
  v17 = 0x277CBE000;
  v100 = v12;
  if (levelType > 2)
  {
    if (levelType <= 4)
    {
      if (levelType == 3)
      {
        levelAsInt64Val = [levelCopy levelAsInt64Val];
        [v13 setLongValue:{objc_msgSend(levelAsInt64Val, "val")}];

        v16 = 13;
      }

      else
      {
        levelAsDoubleVal = [levelCopy levelAsDoubleVal];
        [levelAsDoubleVal val];
        [v13 setDoubleValue:?];

        v16 = 15;
      }

      goto LABEL_64;
    }

    if (levelType != 5)
    {
      if (levelType == 6)
      {
        context = v13;
        v20 = objc_opt_new();
        levelAsMaRefVal = [levelCopy levelAsMaRefVal];
        if ([levelAsMaRefVal hasIsOnDemand])
        {
          [v20 setIsOnDemand:{objc_msgSend(levelAsMaRefVal, "isOnDemand")}];
        }

        if ([levelAsMaRefVal hasDownloadSize])
        {
          downloadSize = [levelAsMaRefVal downloadSize];
          asset = [v20 asset];
          [asset setSize:downloadSize];
        }

        v98 = dirCopy;
        assetName = [levelAsMaRefVal assetName];
        v25 = [assetName length];

        if (v25)
        {
          assetName2 = [levelAsMaRefVal assetName];
          asset2 = [v20 asset];
          [asset2 setName:assetName2];
        }

        v28 = objc_alloc(MEMORY[0x277CCACA8]);
        type = [levelAsMaRefVal type];
        specifier = [levelAsMaRefVal specifier];
        version = [levelAsMaRefVal version];
        v32 = [v28 initWithFormat:@"%@-%@-%@", type, specifier, version];
        asset3 = [v20 asset];
        [asset3 setAssetId:v32];

        name = [levelCopy name];
        dirCopy = v98;
        v35 = [self _maAutoAssetReferencedInDir:v98 byFactorName:name];

        if (v35)
        {
          [v20 setPath:v35];
        }

        v17 = 0x277CBE000;
        if ([levelAsMaRefVal hasFileType] && objc_msgSend(levelAsMaRefVal, "fileType") == 1)
        {
          [context setFileValue:v20];
          v16 = 100;
        }

        else
        {
          [context setDirectoryValue:v20];
          v16 = 101;
        }

        v13 = context;
      }

      goto LABEL_64;
    }

    v99 = dirCopy;
    contexta = objc_autoreleasePoolPush();
    v38 = objc_opt_new();
    levelAsTrialAssetVal = [levelCopy levelAsTrialAssetVal];
    path = [levelAsTrialAssetVal path];
    v41 = [path length];

    if (v41)
    {
      path2 = [levelAsTrialAssetVal path];
      if (pathCopy)
      {
        v43 = [v99 stringByAppendingPathComponent:path2];
        [v38 setPath:v43];
      }

      else
      {
        [v38 setPath:path2];
      }
    }

    else
    {
      [v38 setHasPath:0];
    }

    if ([levelAsTrialAssetVal hasDownloadSize])
    {
      downloadSize2 = [levelAsTrialAssetVal downloadSize];
      asset4 = [v38 asset];
      [asset4 setSize:downloadSize2];
    }

    if ([levelAsTrialAssetVal hasOnDemandFlag])
    {
      [v38 setIsOnDemand:{objc_msgSend(levelAsTrialAssetVal, "isOnDemand")}];
    }

    assetName3 = [levelAsTrialAssetVal assetName];
    v48 = [assetName3 length];

    if (v48)
    {
      assetName4 = [levelAsTrialAssetVal assetName];
      asset5 = [v38 asset];
      [asset5 setName:assetName4];
    }

    assetId = [levelAsTrialAssetVal assetId];
    asset6 = [v38 asset];
    [asset6 setAssetId:assetId];

    cloudKitMetadataType = [levelAsTrialAssetVal cloudKitMetadataType];
    if (cloudKitMetadataType != 1)
    {
      if (cloudKitMetadataType)
      {
LABEL_60:
        v95 = v38;
        if ([levelAsTrialAssetVal fileType] == 1)
        {
          [v13 setFileValue:v38];
          v16 = 100;
        }

        else
        {
          [v13 setDirectoryValue:v38];
          v16 = 101;
        }

        v66 = objc_autoreleasePoolPush();
        v17 = 0x277CBE000uLL;
        v67 = objc_alloc(MEMORY[0x277CBEB38]);
        metadata = [levelCopy metadata];
        v69 = [v67 initWithCapacity:{objc_msgSend(metadata, "count")}];

        metadata2 = [levelCopy metadata];
        v107[0] = MEMORY[0x277D85DD0];
        v107[1] = 3221225472;
        v107[2] = __100__TRIFlatbufferUtils_convertFBFactorLevelToProtoFactorLevel_parentDir_namespaceName_isRelativePath___block_invoke;
        v107[3] = &unk_27885ED68;
        v108 = v69;
        v71 = v69;
        [metadata2 enumerateObjectsUsingBlock:v107];

        [v13 setMetadata:v71];
        objc_autoreleasePoolPop(v66);

        objc_autoreleasePoolPop(contexta);
        dirCopy = v99;
        goto LABEL_64;
      }

      cloudKitMetadataAsTreatment = TRILogCategory_ClientFramework();
      if (!os_log_type_enabled(cloudKitMetadataAsTreatment, OS_LOG_TYPE_ERROR))
      {
LABEL_59:

        goto LABEL_60;
      }

      name2 = [levelCopy name];
      *buf = 138543362;
      v110 = name2;
      _os_log_error_impl(&dword_22EA6B000, cloudKitMetadataAsTreatment, OS_LOG_TYPE_ERROR, "CloudKit metadata type as none for: %{public}@", buf, 0xCu);
LABEL_58:

      goto LABEL_59;
    }

    cloudKitMetadataAsTreatment = [levelAsTrialAssetVal cloudKitMetadataAsTreatment];
    container = [cloudKitMetadataAsTreatment container];
    if (container == 2)
    {
      asset7 = [v38 asset];
      v57 = asset7;
      v60 = 2;
    }

    else
    {
      if (container != 1)
      {
        if (container)
        {
LABEL_54:
          if ([cloudKitMetadataAsTreatment hasCkIndex])
          {
            assetIndex = [cloudKitMetadataAsTreatment assetIndex];
            asset8 = [v38 asset];
            [asset8 setCloudKitIndex:assetIndex];
          }

          treatmentId = [cloudKitMetadataAsTreatment treatmentId];
          v64 = [treatmentId length];

          if (!v64)
          {
            goto LABEL_59;
          }

          name2 = [cloudKitMetadataAsTreatment treatmentId];
          asset9 = [v38 asset];
          [asset9 setTreatmentId:name2];

          goto LABEL_58;
        }

        v57 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          name3 = [levelCopy name];
          *buf = 138543362;
          v110 = name3;
          _os_log_impl(&dword_22EA6B000, v57, OS_LOG_TYPE_INFO, "CloudKit container unknown for: %{public}@", buf, 0xCu);
        }

LABEL_53:

        goto LABEL_54;
      }

      asset7 = [v38 asset];
      v57 = asset7;
      v60 = 1;
    }

    [asset7 setCloudKitContainer:v60];
    goto LABEL_53;
  }

  if (levelType)
  {
    if (levelType == 1)
    {
      levelAsBoolVal = [levelCopy levelAsBoolVal];
      [v13 setBooleanValue:{objc_msgSend(levelAsBoolVal, "val")}];

      v16 = 10;
    }

    else if (levelType == 2)
    {
      levelAsStringVal = [levelCopy levelAsStringVal];
      [v13 setStringValue:levelAsStringVal];

      v16 = 11;
    }
  }

  else
  {
    v36 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      name4 = [levelCopy name];
      *buf = 138543362;
      v110 = name4;
      _os_log_error_impl(&dword_22EA6B000, v36, OS_LOG_TYPE_ERROR, "Factor level type set to none: %{public}@", buf, 0xCu);
    }

    v16 = 0;
  }

LABEL_64:
  v72 = objc_autoreleasePoolPush();
  v73 = *(v17 + 2872);
  v74 = [objc_opt_new() init];
  metadata3 = [levelCopy metadata];
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = __100__TRIFlatbufferUtils_convertFBFactorLevelToProtoFactorLevel_parentDir_namespaceName_isRelativePath___block_invoke_2;
  v105[3] = &unk_27885ED68;
  v76 = v74;
  v106 = v76;
  [metadata3 enumerateObjectsUsingBlock:v105];

  if ([v76 count])
  {
    [v13 setMetadata:v76];
  }

  objc_autoreleasePoolPop(v72);
  [v102 setLevel:v13];
  factorNamespaceName = [levelCopy factorNamespaceName];
  v78 = [factorNamespaceName length];

  if (v78)
  {
    factorNamespaceName2 = [levelCopy factorNamespaceName];
    [v14 setNamespaceName:factorNamespaceName2];

    v80 = nameCopy;
  }

  else
  {
    v80 = nameCopy;
    [v14 setNamespaceName:nameCopy];
  }

  if ([levelCopy hasNamespaceId])
  {
    [v14 setNamespaceId:{objc_msgSend(levelCopy, "namespaceId")}];
  }

  else
  {
    v81 = MEMORY[0x277D73B50];
    namespaceName = [v14 namespaceName];
    [v14 setNamespaceId:{objc_msgSend(v81, "namespaceIdFromName:", namespaceName)}];
  }

  name5 = [levelCopy name];
  [v14 setName:name5];

  alias = [levelCopy alias];
  [v14 setAlias:alias];

  [v14 setType:v16];
  factorId = [levelCopy factorId];
  v86 = [factorId length];

  if (v86)
  {
    factorId2 = [levelCopy factorId];
    [v14 setId_p:factorId2];
  }

  v88 = objc_autoreleasePoolPush();
  v89 = objc_opt_new();
  metadata4 = [levelCopy metadata];
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __100__TRIFlatbufferUtils_convertFBFactorLevelToProtoFactorLevel_parentDir_namespaceName_isRelativePath___block_invoke_3;
  v103[3] = &unk_27885ED68;
  v104 = v89;
  v91 = v89;
  [metadata4 enumerateObjectsUsingBlock:v103];

  [v14 setMetadataKeysArray:v91];
  objc_autoreleasePoolPop(v88);
  [v102 setFactor:v14];

  objc_autoreleasePoolPop(v100);
  v92 = *MEMORY[0x277D85DE8];

  return v102;
}

void __100__TRIFlatbufferUtils_convertFBFactorLevelToProtoFactorLevel_parentDir_namespaceName_isRelativePath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 val];
  v4 = [v3 key];

  [v2 setObject:v5 forKey:v4];
}

void __100__TRIFlatbufferUtils_convertFBFactorLevelToProtoFactorLevel_parentDir_namespaceName_isRelativePath___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 val];
  v4 = [v3 key];

  [v2 setObject:v5 forKey:v4];
}

void __100__TRIFlatbufferUtils_convertFBFactorLevelToProtoFactorLevel_parentDir_namespaceName_isRelativePath___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 key];
  [v2 addObject:v3];
}

+ (id)_maAutoAssetReferencedInDir:(id)dir byFactorName:(id)name
{
  v27 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  nameCopy = name;
  v7 = objc_autoreleasePoolPush();
  triFilenameForFactorName = [nameCopy triFilenameForFactorName];
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/maRefs/%@", dirCopy, triFilenameForFactorName];
  v22 = 0;
  v10 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v9 encoding:4 error:&v22];
  v11 = v22;
  triTrim = [v10 triTrim];

  if (!triTrim)
  {
    if (v11)
    {
      domain = [v11 domain];
      if ([domain isEqualToString:*MEMORY[0x277CCA050]])
      {
        code = [v11 code];

        if (code == 260)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    v19 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v24 = v9;
      v25 = 2112;
      v26 = v11;
      _os_log_error_impl(&dword_22EA6B000, v19, OS_LOG_TYPE_ERROR, "Unable to read MA path from reference path: %{public}@: %@", buf, 0x16u);
    }

LABEL_17:

LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  if (![triTrim length])
  {
    v19 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = nameCopy;
      _os_log_impl(&dword_22EA6B000, v19, OS_LOG_TYPE_DEFAULT, "Path for factor %{public}@ is empty. This usually means that the level is about to be deleted.", buf, 0xCu);
    }

    goto LABEL_17;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [defaultManager fileExistsAtPath:triTrim];

  if ((v14 & 1) == 0)
  {
    v15 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = triTrim;
      _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "Trial asset path does not exist on disk: %{public}@.", buf, 0xCu);
    }
  }

  v16 = triTrim;
LABEL_19:

  objc_autoreleasePoolPop(v7);
  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

@end