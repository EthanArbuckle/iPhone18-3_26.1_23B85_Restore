@interface TRIDiffableAssetBuilder
+ (id)buildAndSaveDiffableAssetsWithAssetIds:(id)a3 metadataForAssetId:(id)a4 artifactProvider:(id)a5 options:(id)a6 paths:(id)a7 assetsDownloadSize:(unint64_t *)a8 perAssetIdCompletionBlockOnSuccess:(id)a9 perAssetIdCompletionBlockOnError:(id)a10 retryAfter:(id *)a11 error:(id *)a12;
@end

@implementation TRIDiffableAssetBuilder

+ (id)buildAndSaveDiffableAssetsWithAssetIds:(id)a3 metadataForAssetId:(id)a4 artifactProvider:(id)a5 options:(id)a6 paths:(id)a7 assetsDownloadSize:(unint64_t *)a8 perAssetIdCompletionBlockOnSuccess:(id)a9 perAssetIdCompletionBlockOnError:(id)a10 retryAfter:(id *)a11 error:(id *)a12
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v51 = a9;
  v53 = a10;
  v56 = v18;
  if (!v18)
  {
    v42 = [MEMORY[0x277CCA890] currentHandler];
    [v42 handleFailureInMethod:a2 object:a1 file:@"TRIDiffableAssetBuilder.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"assetIds"}];
  }

  v23 = v19;
  if (v19)
  {
    if (v20)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v43 = [MEMORY[0x277CCA890] currentHandler];
    [v43 handleFailureInMethod:a2 object:a1 file:@"TRIDiffableAssetBuilder.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"metadataForAssetId"}];

    if (v20)
    {
LABEL_5:
      if (a8)
      {
        goto LABEL_6;
      }

LABEL_14:
      v45 = [MEMORY[0x277CCA890] currentHandler];
      [v45 handleFailureInMethod:a2 object:a1 file:@"TRIDiffableAssetBuilder.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"assetsDownloadSize"}];

      if (v21)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  v44 = [MEMORY[0x277CCA890] currentHandler];
  [v44 handleFailureInMethod:a2 object:a1 file:@"TRIDiffableAssetBuilder.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"artifactProvider"}];

  if (!a8)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v21)
  {
    goto LABEL_7;
  }

LABEL_15:
  v46 = [MEMORY[0x277CCA890] currentHandler];
  [v46 handleFailureInMethod:a2 object:a1 file:@"TRIDiffableAssetBuilder.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"options"}];

LABEL_7:
  v24 = v20;
  v25 = v22;
  if (!v22)
  {
    v47 = [MEMORY[0x277CCA890] currentHandler];
    [v47 handleFailureInMethod:a2 object:a1 file:@"TRIDiffableAssetBuilder.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"paths"}];
  }

  *a8 = 0;
  v26 = [TRIAssetStore alloc];
  v27 = [v21 downloadOptions];
  v28 = [v27 activity];
  v49 = v25;
  v29 = [(TRIAssetStore *)v26 initWithPaths:v25 monitoredActivity:v28];

  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __220__TRIDiffableAssetBuilder_buildAndSaveDiffableAssetsWithAssetIds_metadataForAssetId_artifactProvider_options_paths_assetsDownloadSize_perAssetIdCompletionBlockOnSuccess_perAssetIdCompletionBlockOnError_retryAfter_error___block_invoke;
  v82[3] = &unk_279DE28B0;
  v30 = v29;
  v83 = v30;
  v50 = MEMORY[0x2743948D0](v82);
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__30;
  v80 = __Block_byref_object_dispose__30;
  v81 = 0;
  v31 = dispatch_semaphore_create(0);
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __220__TRIDiffableAssetBuilder_buildAndSaveDiffableAssetsWithAssetIds_metadataForAssetId_artifactProvider_options_paths_assetsDownloadSize_perAssetIdCompletionBlockOnSuccess_perAssetIdCompletionBlockOnError_retryAfter_error___block_invoke_39;
  v62[3] = &unk_279DE29C8;
  v32 = v24;
  v63 = v32;
  v33 = v21;
  v64 = v33;
  v52 = v51;
  v68 = v52;
  v48 = v53;
  v69 = v48;
  v71 = a11;
  v72 = a12;
  v54 = v23;
  v65 = v54;
  v73 = a2;
  v74 = a1;
  v34 = v30;
  v75 = a8;
  v66 = v34;
  v70 = &v76;
  v35 = v31;
  v67 = v35;
  v36 = MEMORY[0x2743948D0](v62);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __220__TRIDiffableAssetBuilder_buildAndSaveDiffableAssetsWithAssetIds_metadataForAssetId_artifactProvider_options_paths_assetsDownloadSize_perAssetIdCompletionBlockOnSuccess_perAssetIdCompletionBlockOnError_retryAfter_error___block_invoke_58;
  v57[3] = &unk_279DE29F0;
  v60 = a11;
  v61 = a12;
  v37 = v35;
  v58 = v37;
  v38 = v36;
  v59 = v38;
  v39 = [v32 fetchDiffSourceRecordIdsWithTargetAssetIds:v56 isAcceptableSourceAssetId:v50 options:v33 completion:v57];
  [MEMORY[0x277D425A0] waitForSemaphore:v37];
  v40 = v77[5];

  _Block_object_dispose(&v76, 8);

  return v40;
}

void __220__TRIDiffableAssetBuilder_buildAndSaveDiffableAssetsWithAssetIds_metadataForAssetId_artifactProvider_options_paths_assetsDownloadSize_perAssetIdCompletionBlockOnSuccess_perAssetIdCompletionBlockOnError_retryAfter_error___block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __220__TRIDiffableAssetBuilder_buildAndSaveDiffableAssetsWithAssetIds_metadataForAssetId_artifactProvider_options_paths_assetsDownloadSize_perAssetIdCompletionBlockOnSuccess_perAssetIdCompletionBlockOnError_retryAfter_error___block_invoke_2;
  v21[3] = &unk_279DE2900;
  v22 = v3;
  v23 = *(a1 + 72);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __220__TRIDiffableAssetBuilder_buildAndSaveDiffableAssetsWithAssetIds_metadataForAssetId_artifactProvider_options_paths_assetsDownloadSize_perAssetIdCompletionBlockOnSuccess_perAssetIdCompletionBlockOnError_retryAfter_error___block_invoke_4;
  v18[3] = &unk_279DE2950;
  v19 = v22;
  v20 = *(a1 + 80);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __220__TRIDiffableAssetBuilder_buildAndSaveDiffableAssetsWithAssetIds_metadataForAssetId_artifactProvider_options_paths_assetsDownloadSize_perAssetIdCompletionBlockOnSuccess_perAssetIdCompletionBlockOnError_retryAfter_error___block_invoke_6;
  v10[3] = &unk_279DE29A0;
  v15 = *(a1 + 96);
  v11 = *(a1 + 48);
  v16 = *(a1 + 112);
  v6 = *(a1 + 56);
  v17 = *(a1 + 128);
  v7 = *(a1 + 88);
  v12 = v6;
  v14 = v7;
  v13 = *(a1 + 64);
  v8 = v22;
  v9 = [v5 fetchDiffsWithRecordIds:v8 options:v4 perRecordProgress:0 perRecordCompletionBlockOnSuccess:v21 perRecordCompletionBlockOnError:v18 completion:v10];
}

void __220__TRIDiffableAssetBuilder_buildAndSaveDiffableAssetsWithAssetIds_metadataForAssetId_artifactProvider_options_paths_assetsDownloadSize_perAssetIdCompletionBlockOnSuccess_perAssetIdCompletionBlockOnError_retryAfter_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __220__TRIDiffableAssetBuilder_buildAndSaveDiffableAssetsWithAssetIds_metadataForAssetId_artifactProvider_options_paths_assetsDownloadSize_perAssetIdCompletionBlockOnSuccess_perAssetIdCompletionBlockOnError_retryAfter_error___block_invoke_3;
  v7[3] = &unk_279DE28D8;
  v8 = v4;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __220__TRIDiffableAssetBuilder_buildAndSaveDiffableAssetsWithAssetIds_metadataForAssetId_artifactProvider_options_paths_assetsDownloadSize_perAssetIdCompletionBlockOnSuccess_perAssetIdCompletionBlockOnError_retryAfter_error___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = *(a1 + 32);
  v8 = [a3 recordId];
  LODWORD(v7) = [v7 isEqual:v8];

  if (v7)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, v10);
    }

    *a4 = 1;
  }
}

void __220__TRIDiffableAssetBuilder_buildAndSaveDiffableAssetsWithAssetIds_metadataForAssetId_artifactProvider_options_paths_assetsDownloadSize_perAssetIdCompletionBlockOnSuccess_perAssetIdCompletionBlockOnError_retryAfter_error___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __220__TRIDiffableAssetBuilder_buildAndSaveDiffableAssetsWithAssetIds_metadataForAssetId_artifactProvider_options_paths_assetsDownloadSize_perAssetIdCompletionBlockOnSuccess_perAssetIdCompletionBlockOnError_retryAfter_error___block_invoke_5;
  v12[3] = &unk_279DE2928;
  v13 = v6;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v7;
  v15 = v9;
  v10 = v7;
  v11 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:v12];
}

void __220__TRIDiffableAssetBuilder_buildAndSaveDiffableAssetsWithAssetIds_metadataForAssetId_artifactProvider_options_paths_assetsDownloadSize_perAssetIdCompletionBlockOnSuccess_perAssetIdCompletionBlockOnError_retryAfter_error___block_invoke_5(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a1[4];
  v8 = [a3 recordId];
  LODWORD(v7) = [v7 isEqual:v8];

  if (v7)
  {
    v9 = a1[6];
    if (v9)
    {
      (*(v9 + 16))(v9, v10, a1[5]);
    }

    *a4 = 1;
  }
}

void __220__TRIDiffableAssetBuilder_buildAndSaveDiffableAssetsWithAssetIds_metadataForAssetId_artifactProvider_options_paths_assetsDownloadSize_perAssetIdCompletionBlockOnSuccess_perAssetIdCompletionBlockOnError_retryAfter_error___block_invoke_6(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 == 4 && v9)
      {
        v15 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v9, "count")}];
        *&buf = 0;
        *(&buf + 1) = &buf;
        v32 = 0x2020000000;
        v33 = 1;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __220__TRIDiffableAssetBuilder_buildAndSaveDiffableAssetsWithAssetIds_metadataForAssetId_artifactProvider_options_paths_assetsDownloadSize_perAssetIdCompletionBlockOnSuccess_perAssetIdCompletionBlockOnError_retryAfter_error___block_invoke_44;
        v23[3] = &unk_279DE2978;
        v24 = *(a1 + 32);
        v28 = *(a1 + 80);
        v25 = *(a1 + 40);
        v16 = v15;
        v17 = *(a1 + 72);
        v29 = *(a1 + 96);
        v30 = v17;
        v26 = v16;
        p_buf = &buf;
        [v9 enumerateKeysAndObjectsUsingBlock:v23];
        v18 = *(*(a1 + 56) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v16;
        v20 = v16;

        _Block_object_dispose(&buf, 8);
      }

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (a2 < 2)
  {
LABEL_14:
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v11;
      _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Failing request for asset diff records without retry: %{public}@", &buf, 0xCu);
    }

    v14 = *(a1 + 72);
    if (v14)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (a2 == 2)
  {
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v11;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failing request for asset diff records with retry: %{public}@", &buf, 0xCu);
    }

    v13 = *(a1 + 64);
    if (v13)
    {
      objc_storeStrong(v13, a4);
    }

    v14 = *(a1 + 72);
    if (v14)
    {
LABEL_17:
      objc_storeStrong(v14, a5);
    }
  }

LABEL_18:
  dispatch_semaphore_signal(*(a1 + 48));

  v22 = *MEMORY[0x277D85DE8];
}

void __220__TRIDiffableAssetBuilder_buildAndSaveDiffableAssetsWithAssetIds_metadataForAssetId_artifactProvider_options_paths_assetsDownloadSize_perAssetIdCompletionBlockOnSuccess_perAssetIdCompletionBlockOnError_retryAfter_error___block_invoke_44(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = [v4 destAssetId];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:*(a1 + 64) object:*(a1 + 72) file:@"TRIDiffableAssetBuilder.m" lineNumber:109 description:{@"Expression was unexpectedly nil/false: %@", @"metadataForAssetId[artifact.destAssetId]"}];
  }

  obj = 0;
  v8 = *(a1 + 40);
  v9 = [v4 destAssetId];
  v10 = [v4 sourceAssetId];
  v11 = [v4 diff];
  v12 = [v11 path];

  if (!v12)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:*(a1 + 64) object:*(a1 + 72) file:@"TRIDiffableAssetBuilder.m" lineNumber:113 description:{@"Expression was unexpectedly nil/false: %@", @"artifact.diff.path"}];
  }

  v13 = [v8 saveAssetWithIdentifier:v9 builtFromAssetWithIdentifier:v10 patchFilename:v12 metadata:v7 error:&obj];

  if (v13)
  {
    v14 = *(a1 + 48);
    v15 = [v4 destAssetId];
    [v14 addObject:v15];

    **(a1 + 80) += [v4 diffSize];
  }

  else
  {
    v16 = *(a1 + 88);
    if (v16)
    {
      objc_storeStrong(v16, obj);
    }
  }

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = [v4 diff];
  v31 = 0;
  v19 = [v17 removeItemAtURL:v18 error:&v31];
  v20 = v31;

  if ((v19 & 1) == 0)
  {
    v21 = [v20 domain];
    v22 = v21;
    if (v21 != *MEMORY[0x277CCA050])
    {

      goto LABEL_13;
    }

    v23 = [v20 code];

    if (v23 != 4)
    {
LABEL_13:
      v24 = *(*(*(a1 + 56) + 8) + 24);
      v25 = TRILogCategory_Server();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      if (v24 == 1)
      {
        if (v26)
        {
          goto LABEL_19;
        }
      }

      else if (v26)
      {
LABEL_19:
        v28 = [v4 diff];
        *buf = 138412546;
        v34 = v28;
        v35 = 2114;
        v36 = v20;
        _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "Failed to clean up CK cached asset %@: %{public}@", buf, 0x16u);
      }

      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __220__TRIDiffableAssetBuilder_buildAndSaveDiffableAssetsWithAssetIds_metadataForAssetId_artifactProvider_options_paths_assetsDownloadSize_perAssetIdCompletionBlockOnSuccess_perAssetIdCompletionBlockOnError_retryAfter_error___block_invoke_58(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v13 = a3;
  v9 = a4;
  v10 = a5;
  if (a2 <= 2)
  {
    if (a2 >= 2)
    {
      if (a2 != 2)
      {
        goto LABEL_13;
      }

      v11 = *(a1 + 48);
      if (v11)
      {
        objc_storeStrong(v11, a4);
      }
    }

    goto LABEL_10;
  }

  if (a2 == 3)
  {
LABEL_10:
    v12 = *(a1 + 56);
    if (v12)
    {
      objc_storeStrong(v12, a5);
    }

    goto LABEL_12;
  }

  if (a2 != 4)
  {
    goto LABEL_13;
  }

  if (v13)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_13;
  }

LABEL_12:
  dispatch_semaphore_signal(*(a1 + 32));
LABEL_13:
}

@end