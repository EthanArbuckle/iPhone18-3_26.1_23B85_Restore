@interface PLSearchIndexingEmbeddingsFetcher
- (PLSearchIndexingEmbeddingsFetcher)init;
- (id)embeddingForAsset:(id)a3 indexingContext:(id)a4 allowFetchIfMissing:(BOOL)a5;
- (void)prefetchEmbeddingsForAssets:(id)a3 indexingContext:(id)a4;
@end

@implementation PLSearchIndexingEmbeddingsFetcher

- (id)embeddingForAsset:(id)a3 indexingContext:(id)a4 allowFetchIfMissing:(BOOL)a5
{
  v5 = a5;
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 uuid];
  if ((PLSearchSemanticSearchIndexingSupported() & 1) == 0)
  {
    v13 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v41 = v8;
      v14 = "Embedding donations not supported. Skipping embedding donation for asset UUID: %{public}@";
LABEL_9:
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, v14, buf, 0xCu);
    }

LABEL_10:

    v15 = MEMORY[0x1E69BF2D0];
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46309 userInfo:0];
    v12 = [v15 failureWithError:v11];
    goto LABEL_11;
  }

  PLSearchIndexingShouldFetchEmbeddingsForAsset(v7);
  if ((v9 & 1) == 0)
  {
    v13 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v41 = v8;
      v14 = "Embedding fetch pre-gating returned NO for asset UUID: %{public}@. Skipping embedding fetch.";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v10 = [(NSMutableDictionary *)self->_mutableEmbeddingsByUUID objectForKeyedSubscript:v8];
  if (v10)
  {
    v11 = v10;
    v12 = [MEMORY[0x1E69BF2D0] successWithResult:v10];
LABEL_11:
    v16 = v12;
    goto LABEL_12;
  }

  v18 = *MEMORY[0x1E69BFF48];
  if ((PLErrorOrUnderlyingErrorHasDomainAndCode() & 1) != 0 || v5)
  {
    v21 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v41 = v8;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_INFO, "Embedding not in pre-fetch cache for asset UUID: %{public}@. Using slower single asset fetch.", buf, 0xCu);
    }

    MADEmbeddingClass = getMADEmbeddingClass();
    v23 = [v7 photoLibrary];
    v24 = [v23 pathManager];
    v25 = [v24 libraryURL];
    v37 = 0;
    v26 = [MADEmbeddingClass fetchEmbeddingWithAssetUUID:v8 photoLibraryURL:v25 options:0 error:&v37];
    v27 = v37;

    if (v27)
    {
      v28 = PLSearchBackendModelTranslationGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v41 = v8;
        v42 = 2112;
        v43 = v26;
        v44 = 2112;
        v45 = v27;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Error while fetching embedding from MediaAnalysis for asset UUID: %{public}@, MADEmbedding: %@, Error: %@", buf, 0x20u);
      }
    }

    if (v26)
    {
      v16 = [MEMORY[0x1E69BF2D0] successWithResult:v26];
    }

    else
    {
      v29 = PLSearchBackendModelTranslationGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v41 = v8;
        _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Missing embedding for asset UUID: %{public}@", buf, 0xCu);
      }

      v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing embedding for asset UUID: %@", v8];
      [v30 setObject:v31 forKeyedSubscript:*MEMORY[0x1E696A278]];

      [v30 setObject:v27 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      v32 = MEMORY[0x1E69BF2D0];
      v33 = [MEMORY[0x1E696ABC0] errorWithDomain:v18 code:46502 userInfo:v30];
      v16 = [v32 failureWithError:v33];
    }
  }

  else
  {
    prefetchError = self->_prefetchError;
    if (prefetchError)
    {
      v20 = prefetchError;
    }

    else
    {
      v34 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A278];
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing embedding for asset UUID: %@", v8];
      v39 = v35;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v20 = [v34 errorWithDomain:v18 code:46502 userInfo:v36];
    }

    v16 = [MEMORY[0x1E69BF2D0] failureWithError:v20];
  }

  v11 = 0;
LABEL_12:

  return v16;
}

- (void)prefetchEmbeddingsForAssets:(id)a3 indexingContext:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (PLSearchSemanticSearchIndexingSupported())
  {
    v39 = self;
    v40 = v7;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v41 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v45;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v44 + 1) + 8 * i);
          PLSearchIndexingShouldFetchEmbeddingsForAsset(v15);
          if (v16)
          {
            v17 = [v15 photoLibrary];
            v18 = [v17 pathManager];
            v19 = [v18 libraryURL];

            v20 = [v15 uuid];
            [v8 addObject:v20];
            v12 = v19;
          }

          else
          {
            v20 = PLSearchBackendModelTranslationGetLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v21 = [v15 uuid];
              *buf = 138412290;
              v51 = v21;
              _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "Embedding fetch pre-gating returned NO for asset UUID: %@. Skipping embedding fetch.", buf, 0xCu);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    MADEmbeddingClass = getMADEmbeddingClass();
    v23 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v43 = 0;
    v24 = [MADEmbeddingClass fetchEmbeddingsWithAssetUUIDs:v23 photoLibraryURL:v12 options:0 error:&v43];
    v25 = v43;
    v26 = v43;

    if (v24)
    {
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __81__PLSearchIndexingEmbeddingsFetcher_prefetchEmbeddingsForAssets_indexingContext___block_invoke;
      v42[3] = &unk_1E7569DE8;
      v42[4] = v39;
      [v24 enumerateKeysAndObjectsUsingBlock:v42];
LABEL_28:

      v7 = v40;
      v6 = v41;
      goto LABEL_29;
    }

    v27 = *MEMORY[0x1E69BFF48];
    HasDomainAndCode = PLErrorOrUnderlyingErrorHasDomainAndCode();
    v29 = PLSearchBackendModelTranslationGetLog();
    v30 = v29;
    if (HasDomainAndCode)
    {
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v31 = "Batch fetch embeddings API unsupported";
      v32 = v30;
      v33 = OS_LOG_TYPE_DEBUG;
      v34 = 2;
    }

    else
    {
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 138543618;
      v51 = v8;
      v52 = 2112;
      v53 = v26;
      v31 = "Error while fetching CSEmbeddings from MediaAnalysis for asset UUIDs: %{public}@, Error: %@";
      v32 = v30;
      v33 = OS_LOG_TYPE_ERROR;
      v34 = 22;
    }

    _os_log_impl(&dword_19BF1F000, v32, v33, v31, buf, v34);
LABEL_25:

    if (v26)
    {
      objc_storeStrong(&v39->_prefetchError, v25);
    }

    else
    {
      v35 = MEMORY[0x1E696ABC0];
      v48 = *MEMORY[0x1E696A278];
      v49 = @"fetch embeddings failed with unknown error";
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v37 = [v35 errorWithDomain:v27 code:46502 userInfo:v36];
      prefetchError = v39->_prefetchError;
      v39->_prefetchError = v37;
    }

    goto LABEL_28;
  }

  v12 = PLSearchBackendModelTranslationGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v51 = v6;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "Embedding donations not supported. Skipping embedding donation for assets: %@", buf, 0xCu);
  }

LABEL_29:
}

- (PLSearchIndexingEmbeddingsFetcher)init
{
  v7.receiver = self;
  v7.super_class = PLSearchIndexingEmbeddingsFetcher;
  v2 = [(PLSearchIndexingEmbeddingsFetcher *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mutableEmbeddingsByUUID = v2->_mutableEmbeddingsByUUID;
    v2->_mutableEmbeddingsByUUID = v3;

    prefetchError = v2->_prefetchError;
    v2->_prefetchError = 0;
  }

  return v2;
}

@end