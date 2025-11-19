@interface SREMusicRetrievalModel
+ (id)sharedInstance;
+ (void)sharedInstance;
- (BOOL)_loadModelWithError:(id *)a3;
- (SREMusicRetrievalModel)initWithError:(id *)a3;
- (id)inferenceWithSequence:(id)a3 query:(id)a4 error:(id *)a5;
@end

@implementation SREMusicRetrievalModel

+ (id)sharedInstance
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = sharedInstance_sharedInstance;
  if (!sharedInstance_sharedInstance)
  {
    v11 = 0;
    v4 = [[SREMusicRetrievalModel alloc] initWithError:&v11];
    v5 = v11;
    v6 = sharedInstance_sharedInstance;
    sharedInstance_sharedInstance = v4;

    if (sharedInstance_sharedInstance)
    {
      v7 = logForCSLogCategoryRecs();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_26B806000, v7, OS_LOG_TYPE_DEFAULT, "Created shared SREMusicRetrievalModel instance.", v10, 2u);
      }
    }

    else
    {
      v7 = logForCSLogCategoryRecs();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[SREMusicRetrievalModel sharedInstance];
      }
    }

    v3 = sharedInstance_sharedInstance;
  }

  v8 = v3;
  objc_sync_exit(v2);

  return v8;
}

- (SREMusicRetrievalModel)initWithError:(id *)a3
{
  v10.receiver = self;
  v10.super_class = SREMusicRetrievalModel;
  v3 = [(SREMusicRetrievalModel *)&v10 init];
  v4 = v3;
  if (v3)
  {
    [(SREMusicRetrievalModel *)v3 setModelMMap:0];
    v5 = [MEMORY[0x277D657E8] sharedResourcesManager];
    v6 = [MEMORY[0x277CBEAF8] currentLocale];
    [v5 loadAllParametersForClient:@"Spotlight" locale:v6];

    v7 = [MEMORY[0x277CBEAF8] currentLocale];
    v8 = [v5 resourcesForClient:@"Spotlight" locale:v7 options:&unk_287C44DC8];
    [(SREMusicRetrievalModel *)v4 setResources:v8];
  }

  return v4;
}

- (id)inferenceWithSequence:(id)a3 query:(id)a4 error:(id *)a5
{
  v56[100] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (![(SREMusicRetrievalModel *)self _loadModelWithError:a5])
  {
    v18 = 0;
    goto LABEL_32;
  }

  bzero(v56, 0x320uLL);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v11)
  {
    v12 = v11;
    v35 = v9;
    v36 = v8;
    v13 = 0;
    v14 = *v43;
    while (2)
    {
      v15 = 0;
      if (v13 <= 0x64)
      {
        v16 = 100 - v13;
      }

      else
      {
        v16 = 0;
      }

      v17 = v13;
      do
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(v10);
        }

        if (v16 == v15)
        {
          v13 = v17;
          goto LABEL_16;
        }

        v13 = v17 + 1;
        v56[v17++] = [*(*(&v42 + 1) + 8 * v15++) adamID];
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v42 objects:v55 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

LABEL_16:

    v9 = v35;
    v8 = v36;
    if (v13 > 0x63)
    {
      goto LABEL_20;
    }
  }

  else
  {

    v13 = 0;
  }

  bzero(&v56[v13], 800 - 8 * v13);
LABEL_20:
  bzero(v54, 0x320uLL);
  v38 = 0u;
  v39 = 0;
  DWORD1(v38) = 15;
  v37 = 0x2000000019;
  v19 = [v9 genreID];
  v20 = [v19 UTF8String];
  v40 = v20;

  v21 = [v9 genreID];
  v41 = strlen([v21 UTF8String]);

  v22 = logForCSLogCategoryRecs();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = v20;
    _os_log_impl(&dword_26B806000, v22, OS_LOG_TYPE_DEFAULT, "Calling music retrieval model. input_len=%zu preferred_genre_name=%s", buf, 0x16u);
  }

  memset(buf, 0, sizeof(buf));
  v53 = 0;
  v23 = [(SREMusicRetrievalModel *)self modelMMap];
  v24 = retrieval_flatbuffer(v56, v13, 100, v54, [v23 buffer], &v37, buf);

  if (v24)
  {
    v25 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SREMusicRetrievalModel inferenceWithSequence:query:error:];
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SREMusicRetrievalModel" code:v24 userInfo:0];
    *a5 = v18 = 0;
  }

  else
  {
    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    for (i = 0; i != 100; ++i)
    {
      if (i >= *&buf[4] + *buf)
      {
        break;
      }

      v28 = [MEMORY[0x277CCABB0] numberWithLongLong:v54[i]];
      [v18 addObject:v28];

      v29 = [MEMORY[0x277CCABB0] numberWithLongLong:v54[i]];
      v30 = [v29 stringValue];
      [v26 addObject:v30];
    }

    v31 = [v26 componentsJoinedByString:{@", ", v35, v36}];
    v32 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v46 = 67109634;
      v47 = *buf;
      v48 = 1024;
      v49 = *&buf[4];
      v50 = 2112;
      v51 = v31;
      _os_log_impl(&dword_26B806000, v32, OS_LOG_TYPE_DEFAULT, "Music retrieval output (genre:%d, ann:%d):%@", v46, 0x18u);
    }
  }

LABEL_32:

  v33 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)_loadModelWithError:(id *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(SREMusicRetrievalModel *)self resources];
  if ([v5 hasUpdates])
  {
  }

  else
  {
    v6 = [(SREMusicRetrievalModel *)self modelMMap];

    if (v6)
    {
      v7 = 1;
      goto LABEL_17;
    }
  }

  v8 = [(SREMusicRetrievalModel *)self resources];
  v9 = [v8 filePathArrayForKey:@"MusicRetrieval" didFailWithError:a3];

  if (v9 && [v9 count])
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v10;
      _os_log_impl(&dword_26B806000, v11, OS_LOG_TYPE_DEFAULT, "Loading music retrieval model file:%@", &v20, 0xCu);
    }

    v12 = [MMapStruct mMapStructWithFilepath:v10];
    [(SREMusicRetrievalModel *)self setModelMMap:v12];

    v13 = [(SREMusicRetrievalModel *)self modelMMap];

    v14 = logForCSLogCategoryRecs();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(SREMusicRetrievalModel *)self modelMMap];
        v17 = [v16 size];
        v20 = 134217984;
        v21 = v17;
        _os_log_impl(&dword_26B806000, v15, OS_LOG_TYPE_DEFAULT, "Music Retrieval LSH model mmap done. mmap size: %ld", &v20, 0xCu);
      }

      v7 = 1;
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SREMusicRetrievalModel _loadModelWithError:];
      }

      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SREMusicRetrievalModel" code:-3001 userInfo:0];
      *a3 = v7 = 0;
    }
  }

  else
  {
    v10 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SREMusicRetrievalModel _loadModelWithError:a3];
    }

    v7 = 0;
  }

LABEL_17:
  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (void)sharedInstance
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)inferenceWithSequence:query:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_loadModelWithError:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end