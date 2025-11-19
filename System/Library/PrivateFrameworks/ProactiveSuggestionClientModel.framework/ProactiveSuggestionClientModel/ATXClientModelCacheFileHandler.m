@interface ATXClientModelCacheFileHandler
+ (id)readSuggestionsFromCacheFromReadOnlyFileHandle:(id)a3;
+ (id)unarchiveCacheFileFromReadOnlyFileHandle:(id)a3;
- (ATXClientModelCacheFileHandler)initWithCacheFileBasePath:(id)a3 clientModelId:(id)a4;
- (BOOL)createCacheFileForClientModelCacheUpdate:(id)a3;
- (BOOL)deleteCachedSuggestionsFile;
- (BOOL)writeSerializedDataToCacheFile:(id)a3;
- (id)readOnlyFileHandleForSuggestionsCache;
- (id)readSuggestionsFromCache;
- (id)serializeSuggestionsData:(id)a3;
@end

@implementation ATXClientModelCacheFileHandler

- (id)readSuggestionsFromCache
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = __atxlog_handle_blending();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    clientModelId = self->_clientModelId;
    v10 = 138412290;
    v11 = clientModelId;
    _os_log_impl(&dword_1DEFC4000, v3, OS_LOG_TYPE_DEFAULT, "Blending: Retrieving suggestions for client model: %@", &v10, 0xCu);
  }

  v5 = objc_opt_class();
  v6 = [(ATXClientModelCacheFileHandler *)self readOnlyFileHandleForSuggestionsCache];
  v7 = [v5 readSuggestionsFromCacheFromReadOnlyFileHandle:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)readOnlyFileHandleForSuggestionsCache
{
  v2 = MEMORY[0x1E696AC00];
  v3 = [(ATXClientModelCacheFileHandler *)self cacheFilePath];
  v4 = [v2 fileHandleForReadingAtPath:v3];

  return v4;
}

- (ATXClientModelCacheFileHandler)initWithCacheFileBasePath:(id)a3 clientModelId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXClientModelCacheFileHandler;
  v9 = [(ATXClientModelCacheFileHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cacheFileBasePath, a3);
    objc_storeStrong(&v10->_clientModelId, a4);
  }

  return v10;
}

- (BOOL)deleteCachedSuggestionsFile
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(ATXClientModelCacheFileHandler *)self cacheFilePath];
  v17 = 0;
  v5 = [v3 removeItemAtPath:v4 error:&v17];
  v6 = v17;
  v7 = v6;
  if (!v6)
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = __atxlog_handle_blending();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v4;
      v9 = "Blending: Deleted file at path: %@";
      v10 = v8;
      v11 = 12;
LABEL_9:
      _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v12 = [v6 userInfo];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  v14 = [v13 code];

  if (v14 != 2)
  {
    v8 = __atxlog_handle_blending();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v4;
      v20 = 2112;
      v21 = v7;
      v9 = "Blending: Failed to delete file at path: %@ with error: %@";
      v10 = v8;
      v11 = 22;
      goto LABEL_9;
    }

LABEL_10:
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)createCacheFileForClientModelCacheUpdate:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(ATXClientModelCacheFileHandler *)self serializeSuggestionsData:v4];
  if (v6)
  {
    v7 = [(ATXClientModelCacheFileHandler *)self writeSerializedDataToCacheFile:v6];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

- (id)serializeSuggestionsData:(id)a3
{
  v4 = a3;
  [v4 setFeedbackMetadata:0];
  v5 = [v4 encodeAsProto];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = __atxlog_handle_blending();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ATXClientModelCacheFileHandler *)self serializeSuggestionsData:v7];
    }
  }

  return v5;
}

- (BOOL)writeSerializedDataToCacheFile:(id)a3
{
  v4 = a3;
  v5 = [(ATXClientModelCacheFileHandler *)self cacheFilePath];
  v10 = 0;
  v6 = [v4 writeToFile:v5 options:1073741825 error:&v10];

  v7 = v10;
  if ((v6 & 1) == 0)
  {
    v8 = __atxlog_handle_blending();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(ATXClientModelCacheFileHandler *)self writeSerializedDataToCacheFile:v7, v8];
    }
  }

  return v6;
}

+ (id)unarchiveCacheFileFromReadOnlyFileHandle:(id)a3
{
  v9 = 0;
  v3 = [a3 readDataToEndOfFileAndReturnError:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    v6 = v3;
  }

  else if ([v4 code] != 260)
  {
    v7 = __atxlog_handle_blending();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ATXClientModelCacheFileHandler *)v5 unarchiveCacheFileFromReadOnlyFileHandle:v7];
    }
  }

  return v3;
}

+ (id)readSuggestionsFromCacheFromReadOnlyFileHandle:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_opt_class() unarchiveCacheFileFromReadOnlyFileHandle:v3];
    if (v4)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [[ATXClientModelCacheUpdate alloc] initWithProtoData:v4];
      objc_autoreleasePoolPop(v5);
      v7 = __atxlog_handle_blending();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          v9 = [(ATXClientModelCacheUpdate *)v6 suggestions];
          v13 = 134217984;
          v14 = [v9 count];
          _os_log_impl(&dword_1DEFC4000, v7, OS_LOG_TYPE_DEFAULT, "Blending: Deserialized to get %lu suggestions.", &v13, 0xCu);
        }

        v6 = v6;
        v10 = v6;
      }

      else
      {
        if (v8)
        {
          LOWORD(v13) = 0;
          _os_log_impl(&dword_1DEFC4000, v7, OS_LOG_TYPE_DEFAULT, "Blending: Unable to deserialize data retrieved from the cache file.", &v13, 2u);
        }

        v10 = 0;
      }
    }

    else
    {
      v6 = __atxlog_handle_blending();
      if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1DEFC4000, &v6->super, OS_LOG_TYPE_DEFAULT, "Blending: Unable to unarchive cache file.", &v13, 2u);
      }

      v10 = 0;
    }
  }

  else
  {
    v4 = __atxlog_handle_blending();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1DEFC4000, v4, OS_LOG_TYPE_DEFAULT, "Blending: Unable to acquire readonly handle to cache file. Not reading suggestions from cache.", &v13, 2u);
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)serializeSuggestionsData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "Blending: <<%@>> Unable to serialize proactive suggestion data.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)writeSerializedDataToCacheFile:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_fault_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_FAULT, "Blending: <<%@>> Could not write client model cache update data for client model. Error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

+ (void)unarchiveCacheFileFromReadOnlyFileHandle:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "Blending: Error reading the read only handle: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end