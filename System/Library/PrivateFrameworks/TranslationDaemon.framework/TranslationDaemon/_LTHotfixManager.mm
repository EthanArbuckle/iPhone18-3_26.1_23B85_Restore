@interface _LTHotfixManager
+ (_LTHotfixManager)shared;
+ (void)_enableTestFixture:(BOOL)fixture;
+ (void)initialize;
- (_LTHotfixManager)init;
- (id)_CDNURL:(id)l;
- (id)_versionedHotfixDirectoryNameFromBasePath:(id)path;
- (void)_decompressArchive:(id)archive to:(id)to error:(id *)error;
- (void)_downloadHotfix:(id)hotfix completion:(id)completion;
- (void)_downloadMappingPlist:(id)plist;
- (void)_downloadWithURL:(id)l completion:(id)completion;
- (void)_replaceHotfix:(int64_t)hotfix completion:(id)completion;
- (void)_updateHotfixInternal:(id)internal;
- (void)deleteHotfix:(id)hotfix;
- (void)refreshHotfix:(id)hotfix;
- (void)setHotfixURL:(id)l;
- (void)updateHotfix:(id)hotfix;
@end

@implementation _LTHotfixManager

+ (_LTHotfixManager)shared
{
  if (shared_onceToken_1 != -1)
  {
    +[_LTHotfixManager shared];
  }

  v3 = shared_shared;

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v4 = +[_LTDAssetService assetDirectoryURL];
    v2 = [v4 URLByAppendingPathComponent:@"Hotfix"];
    v3 = hotfixBasePath;
    hotfixBasePath = v2;
  }
}

+ (void)_enableTestFixture:(BOOL)fixture
{
  if (fixture)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    temporaryDirectory = [defaultManager temporaryDirectory];
  }

  else
  {
    temporaryDirectory = +[_LTDAssetService assetDirectoryURL];
  }

  v4 = [temporaryDirectory URLByAppendingPathComponent:@"Hotfix"];
  v5 = hotfixBasePath;
  hotfixBasePath = v4;
}

- (_LTHotfixManager)init
{
  v10.receiver = self;
  v10.super_class = _LTHotfixManager;
  v2 = [(_LTHotfixManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Translator.HotfixManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    path = [hotfixBasePath path];
    v6 = [(_LTHotfixManager *)v2 _versionedHotfixDirectoryNameFromBasePath:path];

    if (v6)
    {
      v7 = [hotfixBasePath URLByAppendingPathComponent:v6];
      [(_LTHotfixManager *)v2 setHotfixURL:v7];
    }

    v8 = v2;
  }

  return v2;
}

- (void)setHotfixURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [lCopy path];
    v17 = 0;
    v7 = [defaultManager contentsOfDirectoryAtPath:path error:&v17];
    v8 = v17;

    v9 = [lCopy URLByAppendingPathComponent:@"mt-quasar-config.json"];
    if (!v8 && [v7 count] && (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "path"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "fileExistsAtPath:", v14), v14, v13, (v15 & 1) != 0))
    {
      v16 = lCopy;
      hotfixURL = self->_hotfixURL;
      self->_hotfixURL = v16;
    }

    else
    {
      v10 = _LTOSLogHotfix();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(_LTHotfixManager *)v10 setHotfixURL:lCopy, v8];
      }

      hotfixURL = self->_hotfixURL;
      self->_hotfixURL = 0;
    }
  }

  else
  {
    v12 = self->_hotfixURL;
    self->_hotfixURL = 0;
  }
}

- (void)refreshHotfix:(id)hotfix
{
  hotfixCopy = hotfix;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34___LTHotfixManager_refreshHotfix___block_invoke;
  block[3] = &unk_2789B5F18;
  objc_copyWeak(&v9, &location);
  v8 = hotfixCopy;
  v6 = hotfixCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_replaceHotfix:(int64_t)hotfix completion:(id)completion
{
  v6 = hotfixBasePath;
  completionCopy = completion;
  path = [v6 path];
  v9 = [path stringByAppendingString:@"-rollback"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  switch(hotfix)
  {
    case 3:
      v17 = _LTOSLogHotfix();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [_LTHotfixManager _replaceHotfix:completion:];
      }

      if (![defaultManager fileExistsAtPath:path])
      {
        goto LABEL_29;
      }

      if (![defaultManager fileExistsAtPath:v9])
      {
        goto LABEL_29;
      }

      v23 = 0;
      [defaultManager removeItemAtPath:v9 error:&v23];
      v12 = v23;
      if (!v12)
      {
        goto LABEL_29;
      }

      break;
    case 2:
      v13 = _LTOSLogHotfix();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [_LTHotfixManager _replaceHotfix:completion:];
      }

      if (![defaultManager fileExistsAtPath:path] || (v25 = 0, objc_msgSend(defaultManager, "removeItemAtPath:error:", path, &v25), (v12 = v25) == 0))
      {
        if (![defaultManager fileExistsAtPath:v9])
        {
          goto LABEL_29;
        }

        v24 = 0;
        [defaultManager moveItemAtPath:v9 toPath:path error:&v24];
        v12 = v24;
        if (!v12)
        {
          v14 = [(_LTHotfixManager *)self _versionedHotfixDirectoryNameFromBasePath:path];
          if (v14)
          {
            v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
            v16 = [v15 URLByAppendingPathComponent:v14];
            [(_LTHotfixManager *)self setHotfixURL:v16];
          }

          else
          {
            v20 = _LTOSLogHotfix();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              [_LTHotfixManager _replaceHotfix:completion:];
            }
          }

          goto LABEL_29;
        }
      }

      break;
    case 1:
      v11 = _LTOSLogHotfix();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [_LTHotfixManager _replaceHotfix:completion:];
      }

      if (![defaultManager fileExistsAtPath:path])
      {
        goto LABEL_29;
      }

      if (![defaultManager fileExistsAtPath:v9] || (v27 = 0, objc_msgSend(defaultManager, "removeItemAtPath:error:", v9, &v27), (v12 = v27) == 0))
      {
        v26 = 0;
        [defaultManager moveItemAtPath:path toPath:v9 error:&v26];
        v12 = v26;
        if (!v12)
        {
          [(_LTHotfixManager *)self setHotfixURL:0];
LABEL_29:
          v21 = _LTOSLogHotfix();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *v22 = 0;
            _os_log_impl(&dword_232E53000, v21, OS_LOG_TYPE_INFO, "Hotfix manager refresh completed", v22, 2u);
          }

          v18 = 0;
          goto LABEL_32;
        }
      }

      break;
    default:
      goto LABEL_29;
  }

  v18 = v12;
  v19 = _LTOSLogHotfix();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [_LTHotfixManager _replaceHotfix:completion:];
  }

LABEL_32:
  completionCopy[2](completionCopy, v18);
}

- (void)updateHotfix:(id)hotfix
{
  hotfixCopy = hotfix;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33___LTHotfixManager_updateHotfix___block_invoke;
  v7[3] = &unk_2789B6B60;
  v7[4] = self;
  v8 = hotfixCopy;
  v6 = hotfixCopy;
  dispatch_async(queue, v7);
}

- (void)_updateHotfixInternal:(id)internal
{
  internalCopy = internal;
  dispatch_assert_queue_V2(self->_queue);
  [(_LTHotfixManager *)self setHotfixURL:0];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42___LTHotfixManager__updateHotfixInternal___block_invoke;
  v6[3] = &unk_2789B6B88;
  objc_copyWeak(&v8, &location);
  v5 = internalCopy;
  v7 = v5;
  [(_LTHotfixManager *)self _downloadMappingPlist:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)deleteHotfix:(id)hotfix
{
  hotfixCopy = hotfix;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33___LTHotfixManager_deleteHotfix___block_invoke;
  v7[3] = &unk_2789B6B60;
  v7[4] = self;
  v8 = hotfixCopy;
  v6 = hotfixCopy;
  dispatch_async(queue, v7);
}

- (void)_downloadWithURL:(id)l completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  v7 = _LTOSLogHotfix();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v21 = lCopy;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Downloading hotfix from URL: %{public}@", buf, 0xCu);
  }

  defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [defaultSessionConfiguration set_sourceApplicationBundleIdentifier:@"com.apple.Translate"];
  [defaultSessionConfiguration setAllowsCellularAccess:1];
  v9 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __48___LTHotfixManager__downloadWithURL_completion___block_invoke;
  v17 = &unk_2789B6BB0;
  v18 = lCopy;
  v19 = completionCopy;
  v10 = completionCopy;
  v11 = lCopy;
  v12 = [v9 dataTaskWithURL:v11 completionHandler:&v14];
  [v12 resume];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_CDNURL:(id)l
{
  if (l)
  {
    lCopy = l;
    v4 = _LTPreferencesHotfixEndpointURL();
    v5 = [v4 URLByAppendingPathComponent:lCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_downloadMappingPlist:(id)plist
{
  plistCopy = plist;
  v5 = [(_LTHotfixManager *)self _CDNURL:@"mapping-info-plist"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42___LTHotfixManager__downloadMappingPlist___block_invoke;
  v7[3] = &unk_2789B6BD8;
  v8 = plistCopy;
  v6 = plistCopy;
  [(_LTHotfixManager *)self _downloadWithURL:v5 completion:v7];
}

- (void)_downloadHotfix:(id)hotfix completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  hotfixCopy = hotfix;
  completionCopy = completion;
  v7 = _LTOSLogHotfix();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v36 = hotfixCopy;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Select hotfix: %@", buf, 0xCu);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [hotfixCopy objectForKeyedSubscript:@"FormatVersion"];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v26 = v10;

  v11 = [hotfixCopy objectForKeyedSubscript:@"HotfixAssetVersion"];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v26, v13];
  v15 = [hotfixBasePath URLByAppendingPathComponent:v14];
  v16 = [v15 URLByAppendingPathComponent:@"mt-quasar-config.json"];
  path = [v16 path];
  v18 = [defaultManager fileExistsAtPath:path];

  if (v18)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47___LTHotfixManager__downloadHotfix_completion___block_invoke;
    block[3] = &unk_2789B6C00;
    block[4] = self;
    v33 = v15;
    v34 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v20 = [hotfixCopy objectForKeyedSubscript:@"HotfixAssetName"];
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    v23 = [(_LTHotfixManager *)self _CDNURL:v22];
    objc_initWeak(buf, self);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __47___LTHotfixManager__downloadHotfix_completion___block_invoke_67;
    v27[3] = &unk_2789B6C50;
    objc_copyWeak(&v31, buf);
    v30 = completionCopy;
    v28 = defaultManager;
    v29 = v15;
    [(_LTHotfixManager *)self _downloadWithURL:v23 completion:v27];

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_decompressArchive:(id)archive to:(id)to error:(id *)error
{
  v36[1] = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  toCopy = to;
  archive_read_new();
  if (archive_read_support_filter_all())
  {
    v9 = _LTOSLogHotfix();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_LTHotfixManager _decompressArchive:v9 to:? error:?];
    }

    archive_read_free();
    v10 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36[0] = @"Failed to specify compression algorithm";
    v11 = MEMORY[0x277CBEAC0];
    v12 = v36;
    v13 = &v35;
LABEL_15:
    path = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
    *error = [v10 errorWithDomain:@"LTDHotfixManagerError" code:1 userInfo:path];
    goto LABEL_16;
  }

  support_format_all = archive_read_support_format_all();
  v15 = _LTOSLogHotfix();
  v16 = v15;
  if (support_format_all)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_LTHotfixManager _decompressArchive:v16 to:? error:?];
    }

    archive_read_free();
    v10 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v34 = @"Failed to specify format";
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v34;
    v13 = &v33;
    goto LABEL_15;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Start extracting archive", buf, 2u);
  }

  [archiveCopy bytes];
  [archiveCopy length];
  if (archive_read_open_memory())
  {
    v17 = _LTOSLogHotfix();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_LTHotfixManager _decompressArchive:v17 to:? error:?];
    }

    archive_read_free();
    v10 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32 = @"Failed to open archive for reading";
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v32;
    v13 = &v31;
    goto LABEL_15;
  }

  path = [toCopy path];
  if (archive_read_next_header())
  {
LABEL_18:
    archive_read_free();
    v20 = _LTOSLogHotfix();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v30 = toCopy;
      _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_INFO, "Finished extracting archive to: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    while (1)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:archive_entry_pathname()];
      v22 = [path stringByAppendingPathComponent:v21];

      v23 = _LTOSLogHotfix();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v30 = v22;
        _os_log_debug_impl(&dword_232E53000, v23, OS_LOG_TYPE_DEBUG, "Entry extraction path: %{public}@", buf, 0xCu);
      }

      [v22 UTF8String];
      archive_entry_set_pathname();
      if (archive_read_extract())
      {
        break;
      }

      if (archive_read_next_header())
      {
        goto LABEL_18;
      }
    }

    v24 = _LTOSLogHotfix();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_LTHotfixManager _decompressArchive:v24 to:? error:?];
    }

    archive_read_free();
    v25 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v28 = @"Unable to extract file";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *error = [v25 errorWithDomain:@"LTDHotfixManagerError" code:1 userInfo:v26];
  }

LABEL_16:

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_versionedHotfixDirectoryNameFromBasePath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:&v10];
  v6 = v10;

  if (v6)
  {
    v7 = _LTOSLogHotfix();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_LTHotfixManager _versionedHotfixDirectoryNameFromBasePath:];
    }
  }

  firstObject = [v5 firstObject];

  return firstObject;
}

- (void)setHotfixURL:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 path];
  OUTLINED_FUNCTION_1_2();
  v9 = 2112;
  v10 = a3;
  _os_log_error_impl(&dword_232E53000, v5, OS_LOG_TYPE_ERROR, "Hotfix asset preflight from %{public}@ failure: %@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_replaceHotfix:completion:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Hotfix manager refresh failure: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_decompressArchive:(void *)a1 to:error:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v3, v4, "Failed to specify compression algorithm: %s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_decompressArchive:(void *)a1 to:error:.cold.2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v3, v4, "Failed to specify format: %s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_decompressArchive:(void *)a1 to:error:.cold.3(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v3, v4, "Failed to open archive for reading: %s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_decompressArchive:(void *)a1 to:error:.cold.4(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v3, v4, "Unable to extract file: %s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_versionedHotfixDirectoryNameFromBasePath:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to lookup child folders of Hotfix base path %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end