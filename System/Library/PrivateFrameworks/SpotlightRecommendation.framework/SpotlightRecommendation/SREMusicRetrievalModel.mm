@interface SREMusicRetrievalModel
+ (id)sharedInstance;
+ (void)sharedInstance;
- (BOOL)_loadModelWithError:(id *)error;
- (SREMusicRetrievalModel)initWithError:(id *)error;
- (id)inferenceWithSequence:(id)sequence query:(id)query error:(id *)error;
@end

@implementation SREMusicRetrievalModel

+ (id)sharedInstance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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
  objc_sync_exit(selfCopy);

  return v8;
}

- (SREMusicRetrievalModel)initWithError:(id *)error
{
  v10.receiver = self;
  v10.super_class = SREMusicRetrievalModel;
  v3 = [(SREMusicRetrievalModel *)&v10 init];
  v4 = v3;
  if (v3)
  {
    [(SREMusicRetrievalModel *)v3 setModelMMap:0];
    mEMORY[0x277D657E8] = [MEMORY[0x277D657E8] sharedResourcesManager];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    [mEMORY[0x277D657E8] loadAllParametersForClient:@"Spotlight" locale:currentLocale];

    currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
    v8 = [mEMORY[0x277D657E8] resourcesForClient:@"Spotlight" locale:currentLocale2 options:&unk_287C44DC8];
    [(SREMusicRetrievalModel *)v4 setResources:v8];
  }

  return v4;
}

- (id)inferenceWithSequence:(id)sequence query:(id)query error:(id *)error
{
  v56[100] = *MEMORY[0x277D85DE8];
  sequenceCopy = sequence;
  queryCopy = query;
  if (![(SREMusicRetrievalModel *)self _loadModelWithError:error])
  {
    v18 = 0;
    goto LABEL_32;
  }

  bzero(v56, 0x320uLL);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = sequenceCopy;
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v11)
  {
    v12 = v11;
    v35 = queryCopy;
    v36 = sequenceCopy;
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

    queryCopy = v35;
    sequenceCopy = v36;
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
  genreID = [queryCopy genreID];
  uTF8String = [genreID UTF8String];
  v40 = uTF8String;

  genreID2 = [queryCopy genreID];
  v41 = strlen([genreID2 UTF8String]);

  v22 = logForCSLogCategoryRecs();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = uTF8String;
    _os_log_impl(&dword_26B806000, v22, OS_LOG_TYPE_DEFAULT, "Calling music retrieval model. input_len=%zu preferred_genre_name=%s", buf, 0x16u);
  }

  memset(buf, 0, sizeof(buf));
  v53 = 0;
  modelMMap = [(SREMusicRetrievalModel *)self modelMMap];
  v24 = retrieval_flatbuffer(v56, v13, 100, v54, [modelMMap buffer], &v37, buf);

  if (v24)
  {
    v25 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SREMusicRetrievalModel inferenceWithSequence:query:error:];
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SREMusicRetrievalModel" code:v24 userInfo:0];
    *error = v18 = 0;
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
      stringValue = [v29 stringValue];
      [v26 addObject:stringValue];
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

- (BOOL)_loadModelWithError:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  resources = [(SREMusicRetrievalModel *)self resources];
  if ([resources hasUpdates])
  {
  }

  else
  {
    modelMMap = [(SREMusicRetrievalModel *)self modelMMap];

    if (modelMMap)
    {
      v7 = 1;
      goto LABEL_17;
    }
  }

  resources2 = [(SREMusicRetrievalModel *)self resources];
  v9 = [resources2 filePathArrayForKey:@"MusicRetrieval" didFailWithError:error];

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

    modelMMap2 = [(SREMusicRetrievalModel *)self modelMMap];

    v14 = logForCSLogCategoryRecs();
    v15 = v14;
    if (modelMMap2)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        modelMMap3 = [(SREMusicRetrievalModel *)self modelMMap];
        v17 = [modelMMap3 size];
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
      *error = v7 = 0;
    }
  }

  else
  {
    v10 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SREMusicRetrievalModel _loadModelWithError:error];
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