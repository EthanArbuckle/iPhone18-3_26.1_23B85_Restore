@interface ATXUICacheManager
- (ATXUICacheManager)init;
- (ATXUICacheManager)initWithCacheBasePath:(id)path;
- (BOOL)writeSerializedDataToCacheFile:(id)file path:(id)path;
- (double)cacheAgeForConsumerSubTypeString:(id)string;
- (id)consumerSubTypeStringsWithNonEmptyCachedLayout;
- (id)dataFromFileHandle:(id)handle;
- (id)serializeLayout:(id)layout;
@end

@implementation ATXUICacheManager

- (ATXUICacheManager)init
{
  uiCachesRootDirectory = [MEMORY[0x1E698B010] uiCachesRootDirectory];
  v4 = [(ATXUICacheManager *)self initWithCacheBasePath:uiCachesRootDirectory];

  return v4;
}

- (ATXUICacheManager)initWithCacheBasePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = ATXUICacheManager;
  v5 = [(ATXUICacheManager *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    cacheBasePath = v5->_cacheBasePath;
    v5->_cacheBasePath = v6;
  }

  return v5;
}

- (id)consumerSubTypeStringsWithNonEmptyCachedLayout
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager contentsOfDirectoryAtPath:self->_cacheBasePath error:0];

  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v16 = 0;
          [MEMORY[0x1E698B028] consumerSubtypeForString:v11 found:&v16];
          if (v16 == 1)
          {
            [v3 addObject:v11];
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v13 = v3;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (double)cacheAgeForConsumerSubTypeString:(id)string
{
  v3 = [(ATXUICacheManager *)self cacheFilePathForConsumerSubTypeString:string];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager attributesOfItemAtPath:v3 error:0];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A350]];
  [v6 timeIntervalSinceNow];
  v8 = -v7;

  return v8;
}

- (BOOL)writeSerializedDataToCacheFile:(id)file path:(id)path
{
  v10 = 0;
  v4 = [file writeToFile:path options:1073741825 error:&v10];
  v5 = v10;
  v6 = __atxlog_handle_blending();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1DEFC4000, v7, OS_LOG_TYPE_DEFAULT, "Blending: Finished writing layout data.", v9, 2u);
    }

    notify_post([@"kATXUICacheManagerDidUpdateDarwinNotification" UTF8String]);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [ATXUICacheManager writeSerializedDataToCacheFile:path:];
    }
  }

  return v4;
}

- (id)dataFromFileHandle:(id)handle
{
  handleCopy = handle;
  v4 = __atxlog_handle_blending();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEFC4000, v4, OS_LOG_TYPE_DEFAULT, "Blending: Reading cache file to retrieve UI layout", buf, 2u);
  }

  if (handleCopy)
  {
    v11 = 0;
    v5 = [handleCopy readDataToEndOfFileAndReturnError:&v11];
    v6 = v11;
    v7 = v6;
    if (!v5 || v6)
    {
      v9 = __atxlog_handle_blending();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ATXUICacheManager dataFromFileHandle:];
      }

      v8 = 0;
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v7 = __atxlog_handle_blending();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1DEFC4000, v7, OS_LOG_TYPE_DEFAULT, "Blending: Not reading UI layout from cache because fileHandle is nil. The file could have been deleted if there are no valid layouts for the consumer.", v12, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)serializeLayout:(id)layout
{
  encodeAsProto = [layout encodeAsProto];
  v4 = encodeAsProto;
  if (encodeAsProto)
  {
    v5 = encodeAsProto;
  }

  else
  {
    v6 = __atxlog_handle_blending();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ATXUICacheManager serializeLayout:v6];
    }
  }

  return v4;
}

- (void)updateCachedLayout:consumerSubType:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_ERROR, "Blending: Failed to write suggestion to cache file for consumer %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)updateCachedLayout:consumerSubType:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_ERROR, "Blending: Failed to serialize suggestion for consumer %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)writeSerializedDataToCacheFile:path:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_FAULT, "Blending: Could not write layout data. Error: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)dataFromFileHandle:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1DEFC4000, v1, OS_LOG_TYPE_ERROR, "Blending: Unable to read data from file handle %@ - %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end