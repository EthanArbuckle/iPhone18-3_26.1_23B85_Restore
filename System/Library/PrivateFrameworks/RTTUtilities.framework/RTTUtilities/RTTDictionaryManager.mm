@interface RTTDictionaryManager
+ (id)_availableDictionaryAssetsUsingRemoteInfo:(BOOL)info;
- (RTTDictionaryManager)init;
- (id)_ttyDictionaryAsset;
- (void)_downloadAsset:(id)asset;
- (void)dealloc;
- (void)deleteIfNeeded;
- (void)downloadIfNeeded;
@end

@implementation RTTDictionaryManager

- (RTTDictionaryManager)init
{
  v5.receiver = self;
  v5.super_class = RTTDictionaryManager;
  v2 = [(RTTDictionaryManager *)&v5 init];
  if (v2)
  {
    v3 = [RTTDictionaryManager _availableDictionaryAssetsUsingRemoteInfo:1];
    [(RTTDictionaryManager *)v2 setAvailableDictionaries:v3];
  }

  return v2;
}

- (void)dealloc
{
  [(RTTDictionaryManager *)self setAvailableDictionaries:0];
  v3.receiver = self;
  v3.super_class = RTTDictionaryManager;
  [(RTTDictionaryManager *)&v3 dealloc];
}

- (void)downloadIfNeeded
{
  v9 = *MEMORY[0x277D85DE8];
  _ttyDictionaryAsset = [(RTTDictionaryManager *)self _ttyDictionaryAsset];
  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = _ttyDictionaryAsset;
    _os_log_impl(&dword_261754000, v4, OS_LOG_TYPE_INFO, "Downloading dictionary: %@", &v7, 0xCu);
  }

  if (_ttyDictionaryAsset && [_ttyDictionaryAsset state] == 1)
  {
    v5 = AXLogRTT();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Asset not present - downloading", &v7, 2u);
    }

    [(RTTDictionaryManager *)self _downloadAsset:_ttyDictionaryAsset];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteIfNeeded
{
  v9 = *MEMORY[0x277D85DE8];
  _ttyDictionaryAsset = [(RTTDictionaryManager *)self _ttyDictionaryAsset];
  if (_ttyDictionaryAsset)
  {
    v3 = AXLogRTT();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = _ttyDictionaryAsset;
      _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Deleting dictionary %@", buf, 0xCu);
    }

    if ([_ttyDictionaryAsset state] == 4)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __38__RTTDictionaryManager_deleteIfNeeded__block_invoke;
      v5[3] = &unk_279AE7B18;
      v6 = _ttyDictionaryAsset;
      [v6 cancelDownload:v5];
    }

    else if ([_ttyDictionaryAsset state] == 2)
    {
      [_ttyDictionaryAsset purgeWithError:&__block_literal_global_287];
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __38__RTTDictionaryManager_deleteIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&dword_261754000, v4, OS_LOG_TYPE_INFO, "Cancelled asset download with result %li", &v7, 0xCu);
  }

  result = [*(a1 + 32) purgeWithError:&__block_literal_global_1];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __38__RTTDictionaryManager_deleteIfNeeded__block_invoke_282(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134218242;
    v8 = a2;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Purged asset with result %li, error? %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __38__RTTDictionaryManager_deleteIfNeeded__block_invoke_285(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134218242;
    v8 = a2;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Purged asset with result %li, error? %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_downloadAsset:(id)asset
{
  v9 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v6 = 0;
  if ([assetCopy spaceCheck:&v6])
  {
    v4 = objc_opt_new();
    [v4 setAllowsCellularAccess:1];
    [v4 setDiscretionary:0];
    [assetCopy startDownload:v4 completionWithError:&__block_literal_global_289];
  }

  else
  {
    v4 = AXLogRTT();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v8 = v6;
      _os_log_impl(&dword_261754000, v4, OS_LOG_TYPE_INFO, "Space not available to download asset %lli", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __39__RTTDictionaryManager__downloadAsset___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134218242;
    v8 = a2;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Downloaded asset with result %li, error? %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_ttyDictionaryAsset
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_availableDictionaries;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        attributes = [v7 attributes];
        v9 = [attributes objectForKey:@"DictionaryPackageName"];

        if ([v9 isEqualToString:@"TTY Abbreviations Dictionary.dictionary"])
        {
          v10 = v7;

          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_availableDictionaryAssetsUsingRemoteInfo:(BOOL)info
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.DictionaryServices.dictionary2"];
  queryMetaDataSync = [v3 queryMetaDataSync];
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = queryMetaDataSync;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Queried asset metadata with result: %ld", &v9, 0xCu);
  }

  results = [v3 results];

  v7 = *MEMORY[0x277D85DE8];

  return results;
}

@end