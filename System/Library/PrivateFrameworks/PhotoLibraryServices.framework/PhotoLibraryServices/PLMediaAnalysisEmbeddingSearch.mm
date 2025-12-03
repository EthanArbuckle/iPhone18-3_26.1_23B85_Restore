@interface PLMediaAnalysisEmbeddingSearch
+ (BOOL)prewarmSearchWithConcurrencyLimit:(unint64_t)limit photoLibraryURL:(id)l error:(id *)error;
+ (double)_scalingFactorForNumberOfProbes;
+ (id)_numberOfProbesForEmbeddingSearchWithLimit:(int)limit;
+ (id)_searchWithEmbeddings:(id)embeddings photoLibraryURL:(id)l searchOptions:(id)options numberOfProbes:(id)probes error:(id *)error;
+ (id)fetchEmbeddingsWithAssetUUIDs:(id)ds photoLibraryURL:(id)l error:(id *)error;
+ (id)searchWithEmbeddings:(id)embeddings photoLibraryURL:(id)l searchOptions:(id)options error:(id *)error;
+ (unint64_t)_minimumNumberOfProbes;
@end

@implementation PLMediaAnalysisEmbeddingSearch

+ (id)fetchEmbeddingsWithAssetUUIDs:(id)ds photoLibraryURL:(id)l error:(id *)error
{
  lCopy = l;
  dsCopy = ds;
  v9 = [getMADEmbeddingClass_114193() fetchEmbeddingsWithAssetUUIDs:dsCopy photoLibraryURL:lCopy options:0 error:error];

  if (!error)
  {
    if (!v9)
    {
      v10 = 0;
      goto LABEL_8;
    }

LABEL_6:
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __86__PLMediaAnalysisEmbeddingSearch_fetchEmbeddingsWithAssetUUIDs_photoLibraryURL_error___block_invoke;
    v13[3] = &unk_1E7577E78;
    v10 = v11;
    v14 = v10;
    [v9 enumerateKeysAndObjectsUsingBlock:v13];

    goto LABEL_8;
  }

  v10 = 0;
  if (!*error && v9)
  {
    goto LABEL_6;
  }

LABEL_8:

  return v10;
}

void __86__PLMediaAnalysisEmbeddingSearch_fetchEmbeddingsWithAssetUUIDs_photoLibraryURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[PLMediaAnalysisEmbedding alloc] initWithMADEmbedding:v5];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

+ (BOOL)prewarmSearchWithConcurrencyLimit:(unint64_t)limit photoLibraryURL:(id)l error:(id *)error
{
  lCopy = l;
  [getMADEmbeddingClass_114193() prewarmSearchWithConcurrencyLimit:limit photoLibraryURL:lCopy error:error];

  return 1;
}

+ (id)_searchWithEmbeddings:(id)embeddings photoLibraryURL:(id)l searchOptions:(id)options numberOfProbes:(id)probes error:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  embeddingsCopy = embeddings;
  lCopy = l;
  optionsCopy = options;
  probesCopy = probes;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2050000000;
  v11 = getMADEmbeddingSearchOptionsClass_softClass;
  v58 = getMADEmbeddingSearchOptionsClass_softClass;
  if (!getMADEmbeddingSearchOptionsClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v62 = __getMADEmbeddingSearchOptionsClass_block_invoke;
    v63 = &unk_1E7577EA0;
    v64 = &v55;
    __getMADEmbeddingSearchOptionsClass_block_invoke(&buf);
    v11 = v56[3];
  }

  v12 = v11;
  _Block_object_dispose(&v55, 8);
  defaultOptions = [v11 defaultOptions];
  [defaultOptions setResultLimit:{objc_msgSend(optionsCopy, "resultLimit")}];
  assetUUIDsForPrefilter = [optionsCopy assetUUIDsForPrefilter];
  [defaultOptions setAssetUUIDs:assetUUIDsForPrefilter];
  if ([assetUUIDsForPrefilter count])
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [assetUUIDsForPrefilter count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "[PLMediaAnalysisEmbeddingSearch] Using %lu assets for prefiltering", &buf, 0xCu);
    }
  }

  fullScan = [optionsCopy fullScan];
  [defaultOptions setFullScan:fullScan];
  if (fullScan)
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "[PLMediaAnalysisEmbeddingSearch] Using full scan (brute force) for embedding search.", &buf, 2u);
    }

    numConcurrentReaders = [optionsCopy numConcurrentReaders];
    [defaultOptions setNumConcurrentReaders:numConcurrentReaders];
  }

  else
  {
    numConcurrentReaders2 = [optionsCopy numConcurrentReaders];
    [defaultOptions setNumConcurrentReaders:numConcurrentReaders2];

    [defaultOptions setNumberOfProbes:v35];
    numConcurrentReaders = PLBackendGetLog();
    if (os_log_type_enabled(numConcurrentReaders, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v35;
      _os_log_impl(&dword_19BF1F000, numConcurrentReaders, OS_LOG_TYPE_DEFAULT, "[PLMediaAnalysisEmbeddingSearch] Using number of probes = %@", &buf, 0xCu);
    }
  }

  v38 = [getMADEmbeddingClass_114193() searchWithEmbeddings:embeddingsCopy photoLibraryURL:lCopy options:defaultOptions error:error];
  if (error)
  {
    v44 = 0;
    if (*error || !v38)
    {
      goto LABEL_34;
    }
  }

  else if (!v38)
  {
    v44 = 0;
    goto LABEL_34;
  }

  v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v38, "count")}];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v38;
  v45 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v45)
  {
    v43 = *v52;
    do
    {
      v19 = 0;
      do
      {
        if (*v52 != v43)
        {
          v20 = v19;
          objc_enumerationMutation(obj);
          v19 = v20;
        }

        v46 = v19;
        v21 = *(*(&v51 + 1) + 8 * v19);
        v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v21, "count")}];
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v23 = v21;
        v24 = [v23 countByEnumeratingWithState:&v47 objects:v59 count:16];
        if (v24)
        {
          v25 = *v48;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v48 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v27 = *(*(&v47 + 1) + 8 * i);
              v28 = [PLMediaAnalysisEmbeddingSearchResult alloc];
              assetUUID = [v27 assetUUID];
              metric = [v27 metric];
              distance = [v27 distance];
              v32 = [(PLMediaAnalysisEmbeddingSearchResult *)v28 initWithAssetUUID:assetUUID metric:metric metricValue:distance];
              [v22 addObject:v32];
            }

            v24 = [v23 countByEnumeratingWithState:&v47 objects:v59 count:16];
          }

          while (v24);
        }

        [v44 addObject:v22];
        v19 = v46 + 1;
      }

      while (v46 + 1 != v45);
      v45 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v45);
  }

LABEL_34:

  return v44;
}

+ (id)searchWithEmbeddings:(id)embeddings photoLibraryURL:(id)l searchOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  lCopy = l;
  embeddingsCopy = embeddings;
  v13 = [self _numberOfProbesForEmbeddingSearchWithLimit:{objc_msgSend(optionsCopy, "resultLimit")}];
  v14 = [self _searchWithEmbeddings:embeddingsCopy photoLibraryURL:lCopy searchOptions:optionsCopy numberOfProbes:v13 error:error];

  return v14;
}

+ (id)_numberOfProbesForEmbeddingSearchWithLimit:(int)limit
{
  _minimumNumberOfProbes = [self _minimumNumberOfProbes];
  v6 = limit / 100.0;
  if (v6 >= _minimumNumberOfProbes)
  {
    [self _scalingFactorForNumberOfProbes];
    _minimumNumberOfProbes = (v6 * v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:_minimumNumberOfProbes];

  return v8;
}

+ (double)_scalingFactorForNumberOfProbes
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PLVectorSearchKitScalingFactorForNumberOfProbes"];
  v4 = v3;

  result = 1.0;
  if (v4 > 0.0)
  {
    return v4;
  }

  return result;
}

+ (unint64_t)_minimumNumberOfProbes
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PLVectorSearchKitMinimumNumberOfProbes"];

  if (v3 <= 0)
  {
    return 40;
  }

  else
  {
    return v3;
  }
}

@end