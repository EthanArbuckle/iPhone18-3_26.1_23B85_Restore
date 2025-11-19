@interface ATXScoreNormalizationDriver
+ (void)deleteArchiveFile;
- (ATXScoreNormalizationDriver)init;
- (BOOL)addScoreForModelWithClientModelId:(id)a3 clientModelVersion:(id)a4 score:(id)a5;
- (BOOL)registerModelWithClientModelId:(id)a3 clientModelVersion:(id)a4 normalizationParameters:(id)a5;
- (id)_normalizeScoreHelper:(id)a3 modelKey:(id)a4;
- (id)getNormalizationModelWithClientModelId:(id)a3 clientModelVersion:(id)a4;
- (id)getOrMakeScoreNormalizationModelsDictionary;
- (id)getPayloadFromArchiveAtPath:(id)a3;
- (id)normalizeScore:(id)a3 clientModelId:(id)a4 clientModelVersion:(id)a5;
- (void)initStreamBookmark;
- (void)modelScoreHarvesting;
- (void)persistBookmark;
- (void)writeArchive:(id)a3 toFilePath:(id)a4;
- (void)writeArchiveFromDict:(id)a3;
@end

@implementation ATXScoreNormalizationDriver

- (ATXScoreNormalizationDriver)init
{
  v9.receiver = self;
  v9.super_class = ATXScoreNormalizationDriver;
  v2 = [(ATXScoreNormalizationDriver *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(ATXScoreNormalizationDriver *)v2 getOrMakeScoreNormalizationModelsDictionary];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 mutableCopy];
    }

    else
    {
      v6 = objc_opt_new();
    }

    v7 = v6;
    [(ATXScoreNormalizationDriver *)v3 setScoreNormalizationModelsDict:v6];

    [(ATXScoreNormalizationDriver *)v3 setScoreHarvestingStreamBookmark:0];
  }

  return v3;
}

- (BOOL)registerModelWithClientModelId:(id)a3 clientModelVersion:(id)a4 normalizationParameters:(id)a5
{
  v8 = a5;
  v9 = [(ATXScoreNormalizationDriver *)self getUniqueModelKeyForClientModelId:a3 clientModelVersion:a4];
  v10 = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
  v11 = [v10 objectForKey:v9];

  v12 = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
  v13 = v12;
  if (v11)
  {
    v14 = [v12 objectForKeyedSubscript:v9];
    [(ATXScoreNormalizationModel *)v14 setParameters:v8];
  }

  else
  {
    v14 = [[ATXScoreNormalizationModel alloc] initWithParameters:v8 circularBuffer:0 bufferHead:0 isBufferSorted:1];

    [v13 setValue:v14 forKey:v9];
  }

  return 1;
}

- (BOOL)addScoreForModelWithClientModelId:(id)a3 clientModelVersion:(id)a4 score:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ATXScoreNormalizationDriver *)self getUniqueModelKeyForClientModelId:v8 clientModelVersion:v9];
  v12 = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
  v13 = [v12 objectForKey:v11];

  if (v13)
  {
    v14 = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
    v15 = [v14 objectForKeyedSubscript:v11];

    [v15 addScore:v10];
  }

  else
  {
    v16 = __atxlog_handle_blending();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [ATXScoreNormalizationDriver addScoreForModelWithClientModelId:v8 clientModelVersion:v9 score:v16];
    }
  }

  return v13 != 0;
}

- (id)normalizeScore:(id)a3 clientModelId:(id)a4 clientModelVersion:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ATXScoreNormalizationDriver *)self getUniqueModelKeyForClientModelId:v9 clientModelVersion:v10];
  v12 = [(ATXScoreNormalizationDriver *)self _normalizeScoreHelper:v8 modelKey:v11];
  v13 = __atxlog_handle_blending();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138413058;
    v17 = v8;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_1DEFC4000, v13, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: score normalized(score : %@, normalized: %@) with model %@ with version %@", &v16, 0x2Au);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_normalizeScoreHelper:(id)a3 modelKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
  v9 = [v8 objectForKey:v7];

  if (v9)
  {
    v10 = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
    v11 = [v10 objectForKeyedSubscript:v7];

    v12 = [v11 normalizeScore:v6];
  }

  else
  {
    v12 = &unk_1F5A41278;
  }

  return v12;
}

- (id)getNormalizationModelWithClientModelId:(id)a3 clientModelVersion:(id)a4
{
  v5 = [(ATXScoreNormalizationDriver *)self getUniqueModelKeyForClientModelId:a3 clientModelVersion:a4];
  v6 = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
  v7 = [v6 objectForKeyedSubscript:v5];

  return v7;
}

- (id)getPayloadFromArchiveAtPath:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v15 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3 options:2 error:&v15];
  v5 = v15;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = v5;
    v8 = __atxlog_handle_blending();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1DEFC4000, v8, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: Error with reading from archived ATXScoreNormalizationArtifacts file with possible error %@", buf, 0xCu);
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v9 = objc_autoreleasePoolPush();
  v14 = 0;
  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v14];
  v7 = v14;
  objc_autoreleasePoolPop(v9);
  if (v7)
  {
    v10 = __atxlog_handle_blending();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: Error with unarchiving ATXScoreNormalizationArtifacts file.", buf, 2u);
    }

    goto LABEL_11;
  }

  v11 = [v8 scoreNormalizationModelsDict];
LABEL_12:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)getOrMakeScoreNormalizationModelsDictionary
{
  v3 = +[ATXScoreNormalizationDriver defaultArchivePath];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = [(ATXScoreNormalizationDriver *)self getPayloadFromArchiveAtPath:v3];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF20]);
    [(ATXScoreNormalizationDriver *)self writeArchiveFromDict:v6];
  }

  return v6;
}

- (void)writeArchiveFromDict:(id)a3
{
  v4 = a3;
  v6 = [[ATXScoreNormalizationArtifactsArchive alloc] initWithScoreNormalizationModelsDictionary:v4];

  v5 = +[ATXScoreNormalizationDriver defaultArchivePath];
  [(ATXScoreNormalizationDriver *)self writeArchive:v6 toFilePath:v5];
}

- (void)writeArchive:(id)a3 toFilePath:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = objc_autoreleasePoolPush();
    v19 = 0;
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v19];
    v10 = v19;
    objc_autoreleasePoolPop(v8);
    if (v10)
    {
LABEL_17:

      goto LABEL_18;
    }

    v11 = [v7 stringByDeletingLastPathComponent];
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v18 = 0;
    [v12 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v18];
    v10 = v18;

    if (v10)
    {
      v13 = __atxlog_handle_blending();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v10;
        v14 = "ATXScoreNormalizationDriver: Archiving fails with error %@";
LABEL_12:
        _os_log_impl(&dword_1DEFC4000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
      }
    }

    else
    {
      v17 = 0;
      [v9 writeToFile:v7 options:1 error:&v17];
      v10 = v17;
      v13 = __atxlog_handle_blending();
      v15 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (!v10)
      {
        if (v15)
        {
          *buf = 138412290;
          v21 = v7;
          _os_log_impl(&dword_1DEFC4000, v13, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: Successfully persisted dictionary: %@", buf, 0xCu);
        }

        v10 = 0;
        goto LABEL_16;
      }

      if (v15)
      {
        *buf = 138412290;
        v21 = v10;
        v14 = "ATXScoreNormalizationDriver: Persisting dictionary fails with error %@";
        goto LABEL_12;
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  v10 = __atxlog_handle_blending();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: Empty archive or filePath when trying to persist ATXScoreNormalizationArtifactsArchive.", buf, 2u);
  }

LABEL_18:

  v16 = *MEMORY[0x1E69E9840];
}

+ (void)deleteArchiveFile
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = +[ATXScoreNormalizationDriver defaultArchivePath];
  if ([v2 fileExistsAtPath:v3])
  {
    v11 = 0;
    [v2 removeItemAtPath:v3 error:&v11];
    v4 = v11;
    v5 = __atxlog_handle_blending();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *buf = 138412546;
        v13 = v3;
        v14 = 2112;
        v15 = v4;
        v7 = "ATXScoreNormalizationDriver: Error in deleting file %@: %@";
        v8 = v5;
        v9 = 22;
LABEL_7:
        _os_log_impl(&dword_1DEFC4000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }

    else if (v6)
    {
      *buf = 138412290;
      v13 = v3;
      v7 = "ATXScoreNormalizationDriver: File deleted: %@";
      v8 = v5;
      v9 = 12;
      goto LABEL_7;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)initStreamBookmark
{
  v7 = [MEMORY[0x1E698B010] scoreNormalizationModelFileWithFilename:@"clientModelStreamBookmark"];
  v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v7];
  v4 = [MEMORY[0x1E698AFE0] bookmarkFromURLPath:v3 maxFileSize:1000000 versionNumber:&unk_1F5A41290];
  [(ATXScoreNormalizationDriver *)self setScoreHarvestingStreamBookmark:v4];

  v5 = [(ATXScoreNormalizationDriver *)self scoreHarvestingStreamBookmark];

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E698AFE0]) initWithURLPath:v3 versionNumber:&unk_1F5A41290 bookmark:0 metadata:0];
    [(ATXScoreNormalizationDriver *)self setScoreHarvestingStreamBookmark:v6];
  }
}

- (void)modelScoreHarvesting
{
  v51 = *MEMORY[0x1E69E9840];
  [(ATXScoreNormalizationDriver *)self initStreamBookmark];
  v3 = __atxlog_handle_blending();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1DEFC4000, v3, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: Model score harvesting, starting...", &buf, 2u);
  }

  v4 = __atxlog_handle_blending();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(ATXScoreNormalizationDriver *)self scoreHarvestingStreamBookmark];
    v6 = [v5 bookmark];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1DEFC4000, v4, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: scoreHarvestingStreamBookmark %@", &buf, 0xCu);
  }

  v7 = objc_opt_new();
  v8 = [v7 publisherFromStartTime:0.0];

  v9 = [[ATXScoreNormalizationParameters alloc] initWithBufferSize:&unk_1F5A412A8];
  v10 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v49 = 0x2020000000;
  v50 = 0;
  objc_initWeak(&location, self);
  v11 = [(ATXScoreNormalizationDriver *)self scoreHarvestingStreamBookmark];
  v12 = [v11 bookmark];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __51__ATXScoreNormalizationDriver_modelScoreHarvesting__block_invoke;
  v38[3] = &unk_1E86A4BF0;
  objc_copyWeak(&v41, &location);
  p_buf = &buf;
  v13 = v10;
  v39 = v13;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __51__ATXScoreNormalizationDriver_modelScoreHarvesting__block_invoke_68;
  v35[3] = &unk_1E86A4C18;
  v35[4] = self;
  v14 = v9;
  v36 = v14;
  v37 = &buf;
  v15 = [v8 sinkWithBookmark:v12 completion:v38 receiveInput:v35];

  if ([MEMORY[0x1E69C5D10] waitForSemaphore:v13 timeoutSeconds:2.0] == 1)
  {
    v16 = __atxlog_handle_blending();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *v44 = 138412290;
      v45 = v18;
      _os_log_impl(&dword_1DEFC4000, v16, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: %@ - event processing timeout", v44, 0xCu);
    }
  }

  else
  {
    v19 = __atxlog_handle_blending();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = *(*(&buf + 1) + 24);
      *v44 = 138412546;
      v45 = v21;
      v46 = 2048;
      v47 = v22;
      _os_log_impl(&dword_1DEFC4000, v19, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: %@ - processed %ld events", v44, 0x16u);
    }

    if (*(*(&buf + 1) + 24) >= 1)
    {
      [(ATXScoreNormalizationDriver *)self persistBookmark];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
    v24 = [v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v24)
    {
      v25 = *v32;
      do
      {
        v26 = 0;
        do
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v31 + 1) + 8 * v26);
          v28 = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
          v29 = [v28 objectForKeyedSubscript:v27];

          [v29 getStateReadyForNormalization];
          ++v26;
        }

        while (v24 != v26);
        v24 = [v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v24);
    }

    v16 = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
    [(ATXScoreNormalizationDriver *)self writeArchiveFromDict:v16];
  }

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);

  v30 = *MEMORY[0x1E69E9840];
}

void __51__ATXScoreNormalizationDriver_modelScoreHarvesting__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(*(*(a1 + 40) + 8) + 24) >= 1)
    {
      v8 = __atxlog_handle_metrics();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v20 = 138412290;
        v21 = v10;
        _os_log_impl(&dword_1DEFC4000, v8, OS_LOG_TYPE_DEFAULT, "%@ - obtained new bookmark", &v20, 0xCu);
      }

      v11 = objc_alloc(MEMORY[0x1E698AFE0]);
      v12 = [WeakRetained[2] urlPath];
      v13 = [v11 initWithURLPath:v12 versionNumber:&unk_1F5A41290 bookmark:v6 metadata:0];
      v14 = WeakRetained[2];
      WeakRetained[2] = v13;
    }

    v15 = v5;
    v16 = [v15 state];
    v17 = __atxlog_handle_blending();
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __51__ATXScoreNormalizationDriver_modelScoreHarvesting__block_invoke_cold_1(v15, v18);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1DEFC4000, v18, OS_LOG_TYPE_INFO, "ATXScoreNormalizationDriver: Model score harvesting, stream sink complete.", &v20, 2u);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __51__ATXScoreNormalizationDriver_modelScoreHarvesting__block_invoke_68(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = [a2 eventBody];
  v4 = [v3 suggestions];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v24 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = a1[4];
        v10 = [v8 clientModelSpecification];
        v11 = [v10 clientModelId];
        v12 = [v8 clientModelSpecification];
        v13 = [v12 clientModelVersion];
        [v9 registerModelWithClientModelId:v11 clientModelVersion:v13 normalizationParameters:a1[5]];

        v14 = a1[4];
        v15 = [v8 clientModelSpecification];
        v16 = [v15 clientModelId];
        v17 = [v8 clientModelSpecification];
        v18 = [v17 clientModelVersion];
        v19 = MEMORY[0x1E696AD98];
        v20 = [v8 scoreSpecification];
        [v20 rawScore];
        v21 = [v19 numberWithDouble:?];
        [v14 addScoreForModelWithClientModelId:v16 clientModelVersion:v18 score:v21];

        ++*(*(a1[6] + 8) + 24);
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)persistBookmark
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(ATXScoreNormalizationDriver *)self scoreHarvestingStreamBookmark];
  v11 = 0;
  [v3 saveBookmarkWithError:&v11];
  v4 = v11;

  v5 = __atxlog_handle_blending();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(ATXScoreNormalizationDriver *)self scoreHarvestingStreamBookmark];
    v9 = [v8 urlPath];
    *buf = 138412802;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_1DEFC4000, v5, OS_LOG_TYPE_DEFAULT, "%@ - persisted score normalization bookmark to path %@ with error: %@", buf, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addScoreForModelWithClientModelId:(uint64_t)a1 clientModelVersion:(uint64_t)a2 score:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_FAULT, "ATXScoreNormalizationDriver: addScoreForModelWithClientModelId called with model ID %@ and version %@ that does not map to a registered model key", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __51__ATXScoreNormalizationDriver_modelScoreHarvesting__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a1 error];
  v4 = [v3 description];
  v6 = 136315138;
  v7 = [v4 UTF8String];
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "ATXScoreNormalizationDriver: Model score harvesting, Error: %s", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end