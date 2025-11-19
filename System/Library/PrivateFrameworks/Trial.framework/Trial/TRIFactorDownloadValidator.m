@interface TRIFactorDownloadValidator
+ (BOOL)validateDownloadForFactors:(id)a3 withNamespace:(id)a4 paths:(id)a5 container:(int *)a6 factorsState:(id)a7 assetIndexesByTreatment:(id *)a8 experimentIds:(id *)a9 assetIdsByFactorPack:(id *)a10 rolloutFactorNames:(id *)location rolloutDeployments:(id *)a12 error:(id *)a13;
@end

@implementation TRIFactorDownloadValidator

+ (BOOL)validateDownloadForFactors:(id)a3 withNamespace:(id)a4 paths:(id)a5 container:(int *)a6 factorsState:(id)a7 assetIndexesByTreatment:(id *)a8 experimentIds:(id *)a9 assetIdsByFactorPack:(id *)a10 rolloutFactorNames:(id *)location rolloutDeployments:(id *)a12 error:(id *)a13
{
  v82[1] = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v48 = a7;
  context = objc_autoreleasePoolPush();
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__9;
  v71 = __Block_byref_object_dispose__9;
  v72 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v61 = 0;
  v62 = 0;
  obj = 0;
  v60 = 0;
  v57[4] = &v67;
  v58 = 0;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __203__TRIFactorDownloadValidator_validateDownloadForFactors_withNamespace_paths_container_factorsState_assetIndexesByTreatment_experimentIds_assetIdsByFactorPack_rolloutFactorNames_rolloutDeployments_error___block_invoke;
  v57[3] = &unk_27885F630;
  v21 = MEMORY[0x2318F2490](v57);
  v22 = a13;
  if (![v18 count])
  {
    v32 = objc_alloc(MEMORY[0x277CCA9B8]);
    v81 = *MEMORY[0x277CCA450];
    v82[0] = @"Factors must be non-empty.";
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:&v81 count:1];
    v33 = [v32 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v31];
LABEL_12:
    v35 = v33;
LABEL_14:
    v29 = 0;
    goto LABEL_15;
  }

  if (!v19)
  {
    v34 = objc_alloc(MEMORY[0x277CCA9B8]);
    v79 = *MEMORY[0x277CCA450];
    v80 = @"Namespace name must be non-nil.";
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    v33 = [v34 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v31];
    goto LABEL_12;
  }

  if (![TRIXPCUtils validateSafeASCIISubsetIdentifier:v19])
  {
    v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"namespaceName(%@) can only contain alphanumeric characters, underscore (_), hyphen (-) or period (.)", v19];
    v36 = objc_alloc(MEMORY[0x277CCA9B8]);
    v77 = *MEMORY[0x277CCA450];
    v78 = v31;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    v35 = [v36 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v37];

    goto LABEL_14;
  }

  v23 = [[TRINamespaceResolver alloc] initWithPaths:v20 factorsState:v48];
  v24 = v23;
  if (v23)
  {
    v56 = 0;
    v25 = [(TRINamespaceResolver *)v23 resolveFactorProviderChainForNamespaceName:v19 faultOnMissingInstalledFactors:0 installedFactorsAccessible:&v56];
    v26 = v25;
    if ((v56 & 1) == 0)
    {
      v27 = [v25 _pas_filteredArrayWithTest:&__block_literal_global_19];

      v28 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v74 = v19;
        _os_log_impl(&dword_22EA6B000, v28, OS_LOG_TYPE_DEFAULT, "encountered inaccessible installed factors during on-demand validation for namespace %@", buf, 0xCu);
      }

      v26 = v27;
    }

    v29 = [[TRINamespaceFactorProviderChain alloc] initWithNamespaceName:v19 typedProviderChain:v26 paths:v20];

    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __203__TRIFactorDownloadValidator_validateDownloadForFactors_withNamespace_paths_container_factorsState_assetIndexesByTreatment_experimentIds_assetIdsByFactorPack_rolloutFactorNames_rolloutDeployments_error___block_invoke_110;
    v49[3] = &unk_27885F678;
    v52 = &v67;
    v54 = a2;
    v55 = a1;
    v50 = v19;
    v53 = &v63;
    v51 = v21;
    [(TRINamespaceFactorProviderChain *)v29 computeTreatmentAssetIndexes:&v62 withAssociatedExperimentIds:&v61 andFactorPackAssetIds:&v60 withAssociatedRolloutDeployments:&v58 withExperimentFactorNames:0 andRolloutFactorNames:&obj forFactors:v18 usingFilter:v49];

    v30 = 0;
    v31 = 0;
  }

  else
  {
    v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unable to resolve namespaces for stale factorsState: %@", v48];
    v41 = objc_alloc(MEMORY[0x277CCA9B8]);
    v75 = *MEMORY[0x277CCA450];
    v76 = v40;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    v31 = [v41 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v42];

    v29 = 0;
    v30 = 2;
  }

  [(TRINamespaceFactorProviderChain *)v29 dispose];
  if (v30 == 2)
  {
    v35 = v31;
    if (!a13)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (location)
  {
    objc_storeStrong(location, obj);
  }

  v43 = v68[5];
  if (v43)
  {
    v35 = v43;
LABEL_15:

    if (!a13)
    {
LABEL_17:
      v31 = v35;
      goto LABEL_18;
    }

LABEL_16:
    objc_storeStrong(a13, v35);
    v22 = 0;
    goto LABEL_17;
  }

  if (a13)
  {
    v44 = *a13;
    *a13 = 0;
  }

  if (a8)
  {
    objc_storeStrong(a8, v62);
  }

  if (a9)
  {
    objc_storeStrong(a9, v61);
  }

  if (a10)
  {
    objc_storeStrong(a10, v60);
  }

  if (a12)
  {
    objc_storeStrong(a12, v58);
  }

  if (a6)
  {
    *a6 = *(v64 + 6);
  }

  v22 = 1;
LABEL_18:

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);

  objc_autoreleasePoolPop(context);
  v38 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

void __203__TRIFactorDownloadValidator_validateDownloadForFactors_withNamespace_paths_container_factorsState_assetIndexesByTreatment_experimentIds_assetIdsByFactorPack_rolloutFactorNames_rolloutDeployments_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = a2;
    v7 = [v5 alloc];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a3 userInfo:v8];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __203__TRIFactorDownloadValidator_validateDownloadForFactors_withNamespace_paths_container_factorsState_assetIndexesByTreatment_experimentIds_assetIdsByFactorPack_rolloutFactorNames_rolloutDeployments_error___block_invoke_110(void *a1, void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v32 = [v9 localizedDescription];
      *buf = 138412290;
      v35 = v32;
      _os_log_error_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_ERROR, "Error downloading on-demand asset, %@", buf, 0xCu);
    }

    v11 = *(a1[6] + 8);
    v13 = *(v11 + 40);
    v12 = (v11 + 40);
    if (!v13)
    {
      objc_storeStrong(v12, a4);
    }

    goto LABEL_25;
  }

  if ([v8 isOnDemand])
  {
    if (![v8 hasPath])
    {
      goto LABEL_16;
    }

    v14 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = [v8 path];
    if (!v15)
    {
      v33 = [MEMORY[0x277CCA890] currentHandler];
      [v33 handleFailureInMethod:a1[8] object:a1[9] file:@"TRIFactorDownloadValidator.m" lineNumber:146 description:{@"Expression was unexpectedly nil/false: %@", @"fileLevel.path"}];
    }

    v16 = [v14 fileExistsAtPath:v15];

    if (!v16)
    {
LABEL_16:
      v22 = [v8 asset];
      v23 = [v22 hasCloudKitContainer];

      if (v23)
      {
        v24 = [v8 asset];
        v25 = [v24 cloudKitContainer];
      }

      else
      {
        v25 = 1;
      }

      v26 = *(a1[7] + 8);
      v27 = *(v26 + 24);
      if (v27)
      {
        if (v27 != v25)
        {
          v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Factor %@ in namespace %@ has mismatched cloudKitContainer (%d, %d) and cannot be downloaded on-demand.", v7, a1[4], *(*(a1[7] + 8) + 24), v25];
          v28 = TRILogCategory_ClientFramework();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v35 = v17;
            _os_log_error_impl(&dword_22EA6B000, v28, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }

          (*(a1[5] + 16))();
          goto LABEL_24;
        }
      }

      else
      {
        *(v26 + 24) = v25;
      }

      v29 = 1;
      goto LABEL_26;
    }

    v17 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = a1[4];
      v19 = [v8 path];
      *buf = 138412802;
      v35 = v7;
      v36 = 2112;
      v37 = v18;
      v38 = 2112;
      v39 = v19;
      v20 = "Skipping on-demand fetch of factor %@ in namespace %@ which already has local path: %@";
LABEL_15:
      _os_log_impl(&dword_22EA6B000, v17, OS_LOG_TYPE_DEFAULT, v20, buf, 0x20u);
    }
  }

  else
  {
    v17 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v21 = a1[4];
      v19 = [v8 path];
      *buf = 138412802;
      v35 = v7;
      v36 = 2112;
      v37 = v21;
      v38 = 2112;
      v39 = v19;
      v20 = "Skipping on-demand fetch of factor %@ in namespace %@ which is not on-demand: %@";
      goto LABEL_15;
    }
  }

LABEL_24:

LABEL_25:
  v29 = 0;
LABEL_26:

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

@end