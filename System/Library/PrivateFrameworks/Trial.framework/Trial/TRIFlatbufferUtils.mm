@interface TRIFlatbufferUtils
+ (id)_maAutoAssetReferencedInDir:(id)a3 byFactorName:(id)a4;
+ (id)convertFBFactorLevelToProtoFactorLevel:(id)a3 parentDir:(id)a4 namespaceName:(id)a5 isRelativePath:(BOOL)a6;
@end

@implementation TRIFlatbufferUtils

+ (id)convertFBFactorLevelToProtoFactorLevel:(id)a3 parentDir:(id)a4 namespaceName:(id)a5 isRelativePath:(BOOL)a6
{
  v6 = a6;
  v111 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v101 = a5;
  v12 = objc_autoreleasePoolPush();
  v102 = objc_opt_new();
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v15 = [v10 levelType];
  v16 = 0;
  v17 = 0x277CBE000;
  v100 = v12;
  if (v15 > 2)
  {
    if (v15 <= 4)
    {
      if (v15 == 3)
      {
        v37 = [v10 levelAsInt64Val];
        [v13 setLongValue:{objc_msgSend(v37, "val")}];

        v16 = 13;
      }

      else
      {
        v18 = [v10 levelAsDoubleVal];
        [v18 val];
        [v13 setDoubleValue:?];

        v16 = 15;
      }

      goto LABEL_64;
    }

    if (v15 != 5)
    {
      if (v15 == 6)
      {
        context = v13;
        v20 = objc_opt_new();
        v21 = [v10 levelAsMaRefVal];
        if ([v21 hasIsOnDemand])
        {
          [v20 setIsOnDemand:{objc_msgSend(v21, "isOnDemand")}];
        }

        if ([v21 hasDownloadSize])
        {
          v22 = [v21 downloadSize];
          v23 = [v20 asset];
          [v23 setSize:v22];
        }

        v98 = v11;
        v24 = [v21 assetName];
        v25 = [v24 length];

        if (v25)
        {
          v26 = [v21 assetName];
          v27 = [v20 asset];
          [v27 setName:v26];
        }

        v28 = objc_alloc(MEMORY[0x277CCACA8]);
        v29 = [v21 type];
        v30 = [v21 specifier];
        v31 = [v21 version];
        v32 = [v28 initWithFormat:@"%@-%@-%@", v29, v30, v31];
        v33 = [v20 asset];
        [v33 setAssetId:v32];

        v34 = [v10 name];
        v11 = v98;
        v35 = [a1 _maAutoAssetReferencedInDir:v98 byFactorName:v34];

        if (v35)
        {
          [v20 setPath:v35];
        }

        v17 = 0x277CBE000;
        if ([v21 hasFileType] && objc_msgSend(v21, "fileType") == 1)
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

    v99 = v11;
    contexta = objc_autoreleasePoolPush();
    v38 = objc_opt_new();
    v39 = [v10 levelAsTrialAssetVal];
    v40 = [v39 path];
    v41 = [v40 length];

    if (v41)
    {
      v42 = [v39 path];
      if (v6)
      {
        v43 = [v99 stringByAppendingPathComponent:v42];
        [v38 setPath:v43];
      }

      else
      {
        [v38 setPath:v42];
      }
    }

    else
    {
      [v38 setHasPath:0];
    }

    if ([v39 hasDownloadSize])
    {
      v45 = [v39 downloadSize];
      v46 = [v38 asset];
      [v46 setSize:v45];
    }

    if ([v39 hasOnDemandFlag])
    {
      [v38 setIsOnDemand:{objc_msgSend(v39, "isOnDemand")}];
    }

    v47 = [v39 assetName];
    v48 = [v47 length];

    if (v48)
    {
      v49 = [v39 assetName];
      v50 = [v38 asset];
      [v50 setName:v49];
    }

    v51 = [v39 assetId];
    v52 = [v38 asset];
    [v52 setAssetId:v51];

    v53 = [v39 cloudKitMetadataType];
    if (v53 != 1)
    {
      if (v53)
      {
LABEL_60:
        v95 = v38;
        if ([v39 fileType] == 1)
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
        v68 = [v10 metadata];
        v69 = [v67 initWithCapacity:{objc_msgSend(v68, "count")}];

        v70 = [v10 metadata];
        v107[0] = MEMORY[0x277D85DD0];
        v107[1] = 3221225472;
        v107[2] = __100__TRIFlatbufferUtils_convertFBFactorLevelToProtoFactorLevel_parentDir_namespaceName_isRelativePath___block_invoke;
        v107[3] = &unk_27885ED68;
        v108 = v69;
        v71 = v69;
        [v70 enumerateObjectsUsingBlock:v107];

        [v13 setMetadata:v71];
        objc_autoreleasePoolPop(v66);

        objc_autoreleasePoolPop(contexta);
        v11 = v99;
        goto LABEL_64;
      }

      v54 = TRILogCategory_ClientFramework();
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
LABEL_59:

        goto LABEL_60;
      }

      v55 = [v10 name];
      *buf = 138543362;
      v110 = v55;
      _os_log_error_impl(&dword_22EA6B000, v54, OS_LOG_TYPE_ERROR, "CloudKit metadata type as none for: %{public}@", buf, 0xCu);
LABEL_58:

      goto LABEL_59;
    }

    v54 = [v39 cloudKitMetadataAsTreatment];
    v56 = [v54 container];
    if (v56 == 2)
    {
      v59 = [v38 asset];
      v57 = v59;
      v60 = 2;
    }

    else
    {
      if (v56 != 1)
      {
        if (v56)
        {
LABEL_54:
          if ([v54 hasCkIndex])
          {
            v61 = [v54 assetIndex];
            v62 = [v38 asset];
            [v62 setCloudKitIndex:v61];
          }

          v63 = [v54 treatmentId];
          v64 = [v63 length];

          if (!v64)
          {
            goto LABEL_59;
          }

          v55 = [v54 treatmentId];
          v65 = [v38 asset];
          [v65 setTreatmentId:v55];

          goto LABEL_58;
        }

        v57 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = [v10 name];
          *buf = 138543362;
          v110 = v58;
          _os_log_impl(&dword_22EA6B000, v57, OS_LOG_TYPE_INFO, "CloudKit container unknown for: %{public}@", buf, 0xCu);
        }

LABEL_53:

        goto LABEL_54;
      }

      v59 = [v38 asset];
      v57 = v59;
      v60 = 1;
    }

    [v59 setCloudKitContainer:v60];
    goto LABEL_53;
  }

  if (v15)
  {
    if (v15 == 1)
    {
      v44 = [v10 levelAsBoolVal];
      [v13 setBooleanValue:{objc_msgSend(v44, "val")}];

      v16 = 10;
    }

    else if (v15 == 2)
    {
      v19 = [v10 levelAsStringVal];
      [v13 setStringValue:v19];

      v16 = 11;
    }
  }

  else
  {
    v36 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v94 = [v10 name];
      *buf = 138543362;
      v110 = v94;
      _os_log_error_impl(&dword_22EA6B000, v36, OS_LOG_TYPE_ERROR, "Factor level type set to none: %{public}@", buf, 0xCu);
    }

    v16 = 0;
  }

LABEL_64:
  v72 = objc_autoreleasePoolPush();
  v73 = *(v17 + 2872);
  v74 = [objc_opt_new() init];
  v75 = [v10 metadata];
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = __100__TRIFlatbufferUtils_convertFBFactorLevelToProtoFactorLevel_parentDir_namespaceName_isRelativePath___block_invoke_2;
  v105[3] = &unk_27885ED68;
  v76 = v74;
  v106 = v76;
  [v75 enumerateObjectsUsingBlock:v105];

  if ([v76 count])
  {
    [v13 setMetadata:v76];
  }

  objc_autoreleasePoolPop(v72);
  [v102 setLevel:v13];
  v77 = [v10 factorNamespaceName];
  v78 = [v77 length];

  if (v78)
  {
    v79 = [v10 factorNamespaceName];
    [v14 setNamespaceName:v79];

    v80 = v101;
  }

  else
  {
    v80 = v101;
    [v14 setNamespaceName:v101];
  }

  if ([v10 hasNamespaceId])
  {
    [v14 setNamespaceId:{objc_msgSend(v10, "namespaceId")}];
  }

  else
  {
    v81 = MEMORY[0x277D73B50];
    v82 = [v14 namespaceName];
    [v14 setNamespaceId:{objc_msgSend(v81, "namespaceIdFromName:", v82)}];
  }

  v83 = [v10 name];
  [v14 setName:v83];

  v84 = [v10 alias];
  [v14 setAlias:v84];

  [v14 setType:v16];
  v85 = [v10 factorId];
  v86 = [v85 length];

  if (v86)
  {
    v87 = [v10 factorId];
    [v14 setId_p:v87];
  }

  v88 = objc_autoreleasePoolPush();
  v89 = objc_opt_new();
  v90 = [v10 metadata];
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __100__TRIFlatbufferUtils_convertFBFactorLevelToProtoFactorLevel_parentDir_namespaceName_isRelativePath___block_invoke_3;
  v103[3] = &unk_27885ED68;
  v104 = v89;
  v91 = v89;
  [v90 enumerateObjectsUsingBlock:v103];

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

+ (id)_maAutoAssetReferencedInDir:(id)a3 byFactorName:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 triFilenameForFactorName];
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/maRefs/%@", v5, v8];
  v22 = 0;
  v10 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v9 encoding:4 error:&v22];
  v11 = v22;
  v12 = [v10 triTrim];

  if (!v12)
  {
    if (v11)
    {
      v17 = [v11 domain];
      if ([v17 isEqualToString:*MEMORY[0x277CCA050]])
      {
        v18 = [v11 code];

        if (v18 == 260)
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

  if (![v12 length])
  {
    v19 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v6;
      _os_log_impl(&dword_22EA6B000, v19, OS_LOG_TYPE_DEFAULT, "Path for factor %{public}@ is empty. This usually means that the level is about to be deleted.", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [v13 fileExistsAtPath:v12];

  if ((v14 & 1) == 0)
  {
    v15 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v12;
      _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "Trial asset path does not exist on disk: %{public}@.", buf, 0xCu);
    }
  }

  v16 = v12;
LABEL_19:

  objc_autoreleasePoolPop(v7);
  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

@end