@interface _LTDMAAssetService
+ (BOOL)isInvalidPallasCatalog:(id)catalog;
+ (id)_errorFromDownloadResult:(int64_t)result;
+ (id)_errorFromQueryResult:(int64_t)result;
+ (id)_queue;
+ (id)maDownloadOptionsFrom:(unint64_t)from;
+ (id)queryAssetType:(id)type filter:(unint64_t)filter error:(id *)error;
+ (int64_t)_returnTypeForFilter:(unint64_t)filter;
+ (void)downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion;
+ (void)downloadCatalogForAssetType:(id)type completion:(id)completion;
+ (void)purgeAsset:(id)asset completion:(id)completion;
+ (void)queryAssetType:(id)type filter:(unint64_t)filter completion:(id)completion;
@end

@implementation _LTDMAAssetService

+ (id)_queue
{
  if (_queue_onceToken_0 != -1)
  {
    +[_LTDMAAssetService _queue];
  }

  v3 = _queue__queue_0;

  return v3;
}

+ (BOOL)isInvalidPallasCatalog:(id)catalog
{
  catalogCopy = catalog;
  if ([catalogCopy count] == 1)
  {
    firstObject = [catalogCopy firstObject];
    v5 = [firstObject assetType] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_errorFromQueryResult:(int64_t)result
{
  v3 = 0;
  v11[1] = *MEMORY[0x277D85DE8];
  switch(result)
  {
    case 0:
    case 14:
      goto LABEL_8;
    case 1:
    case 4:
    case 11:
      v3 = @"Mobile asset query failed due to XPC error";
      v4 = 13;
      goto LABEL_7;
    case 2:
      v3 = @"Mobile asset query failed due to catalog not downloaded";
      v4 = 14;
      goto LABEL_7;
    case 3:
    case 5:
    case 6:
    case 7:
    case 9:
    case 12:
      v3 = @"Mobile asset query failed due to query error";
      v4 = 21;
      goto LABEL_7;
    case 8:
    case 10:
    case 13:
      v3 = @"Mobile asset query failed due to encode error";
      v4 = 4;
      goto LABEL_7;
    default:
      v4 = 0;
LABEL_7:
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"MAQueryResult %zd: %@", result, v3];
      v6 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277CCA450];
      v11[0] = v5;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v3 = [v6 errorWithDomain:@"LTTranslationDaemonErrorDomain" code:v4 userInfo:v7];

LABEL_8:
      v8 = *MEMORY[0x277D85DE8];

      return v3;
  }
}

+ (int64_t)_returnTypeForFilter:(unint64_t)filter
{
  if (filter > 3)
  {
    return 0;
  }

  else
  {
    return qword_233005BD8[filter];
  }
}

+ (void)queryAssetType:(id)type filter:(unint64_t)filter completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  _queue = [self _queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55___LTDMAAssetService_queryAssetType_filter_completion___block_invoke;
  v13[3] = &unk_2789B5818;
  selfCopy = self;
  filterCopy = filter;
  v14 = typeCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = typeCopy;
  dispatch_async(_queue, v13);
}

+ (id)queryAssetType:(id)type filter:(unint64_t)filter error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v9 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:typeCopy];
  [v9 setDoNotBlockOnNetworkStatus:1];
  [v9 returnTypes:{objc_msgSend(self, "_returnTypeForFilter:", filter)}];
  v10 = [self _errorFromQueryResult:{objc_msgSend(v9, "queryMetaDataSync")}];
  if (v10)
  {
    if (error)
    {
      v10 = v10;
      v11 = 0;
      *error = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    results = [v9 results];
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(results, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = results;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [[_LTDMAAssetModel alloc] initWithProvider:*(*(&v25 + 1) + 8 * i)];
          v19 = [[_LTDAssetModel alloc] initWithProvider:v18];
          if (v19)
          {
            [v11 addObject:v19];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v15);
    }

    v20 = _LTOSLogAssets();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = v20;
      v22 = [v11 count];
      *buf = 134217984;
      v30 = v22;
      _os_log_impl(&dword_232E53000, v21, OS_LOG_TYPE_INFO, "Asset query sync found %zu assets", buf, 0xCu);
    }

    v10 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_errorFromDownloadResult:(int64_t)result
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (result > 47)
  {
    if ((result - 59) < 3)
    {
      v4 = @"Mobile asset failed to reach asset host";
      v5 = 22;
LABEL_17:
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"MAQueryResult %zd: %@", result, v4];
      v9 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA450];
      v14[0] = v8;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v6 = [v9 errorWithDomain:@"LTTranslationDaemonErrorDomain" code:v5 userInfo:v10];

      goto LABEL_18;
    }

    if (result == 48)
    {
      v4 = @"Mobile asset install cancelled";
      v5 = 17;
      goto LABEL_17;
    }

    if (result == 53)
    {
      v4 = @"Mobile asset timed out during download";
      v5 = 11;
      goto LABEL_17;
    }

LABEL_16:
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v7 localizedStringForKey:@"MOBILE_ASSET_DOWNLOAD_FAILURE_ERROR_DESCRIPTION" value:&stru_284834138 table:0];

    v5 = 0;
    goto LABEL_17;
  }

  if (result > 11)
  {
    if (result == 12)
    {
      v4 = @"Mobile asset failed to download due to missing entitlement";
      v5 = 5;
      goto LABEL_17;
    }

    if (result == 44)
    {
      v4 = @"Mobile asset failed to download since not found";
      v5 = 7;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v6 = 0;
  if (result && result != 10)
  {
    goto LABEL_16;
  }

LABEL_18:
  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)maDownloadOptionsFrom:(unint64_t)from
{
  v4 = objc_opt_new();
  [v4 setAllowsCellularAccess:from & 1];
  [v4 setDiscretionary:(from & 2) == 0];
  [v4 setRequiresPowerPluggedIn:(from >> 2) & 1];

  return v4;
}

+ (void)downloadCatalogForAssetType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v8 = objc_opt_new();
  [v8 setDiscretionary:0];
  [v8 setRequiresPowerPluggedIn:0];
  [v8 setAllowsCellularAccess:0];
  _queue = [self _queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61___LTDMAAssetService_downloadCatalogForAssetType_completion___block_invoke;
  v13[3] = &unk_2789B65B0;
  v14 = typeCopy;
  v15 = v8;
  v16 = completionCopy;
  selfCopy = self;
  v10 = completionCopy;
  v11 = v8;
  v12 = typeCopy;
  dispatch_async(_queue, v13);
}

+ (void)downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  progressCopy = progress;
  completionCopy = completion;
  v13 = assetCopy;
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = v13;
    if ([v13 managedAssetProvider] == 1)
    {
      v15 = [self maDownloadOptionsFrom:options];
      v16 = _LTOSLogAssets();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v37 = v13;
        _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Requested MobileAsset download of asset %{public}@", buf, 0xCu);
      }

      progress = [v13 progress];
      [progress setOfflineState:1];

      provider = [v13 provider];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __64___LTDMAAssetService_downloadAsset_options_progress_completion___block_invoke;
      v32[3] = &unk_2789B65D8;
      selfCopy = self;
      v19 = v13;
      v33 = v19;
      v20 = progressCopy;
      v34 = v20;
      [provider attachProgressCallBack:v32];

      _queue = [self _queue];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __64___LTDMAAssetService_downloadAsset_options_progress_completion___block_invoke_338;
      v26[3] = &unk_2789B6650;
      v14 = v19;
      v27 = v14;
      v28 = v15;
      selfCopy2 = self;
      v29 = completionCopy;
      v30 = v20;
      v22 = v15;
      dispatch_async(_queue, v26);

      v23 = v33;
      goto LABEL_11;
    }
  }

  else
  {

    v14 = 0;
  }

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"MA asset service unsupported asset type"];
  v23 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:16 description:v22 userInfo:0];
  v24 = _LTOSLogAssets();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [_LTDMAAssetService downloadAsset:v13 options:? progress:? completion:?];
  }

  (*(completionCopy + 2))(completionCopy, v23);
LABEL_11:

  v25 = *MEMORY[0x277D85DE8];
}

+ (void)purgeAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  v8 = assetCopy;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v8;
    if ([v8 managedAssetProvider] == 1)
    {
      _queue = [self _queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44___LTDMAAssetService_purgeAsset_completion___block_invoke;
      block[3] = &unk_2789B6300;
      v9 = v8;
      v15 = v9;
      selfCopy = self;
      v16 = completionCopy;
      dispatch_async(_queue, block);

      v11 = v15;
      goto LABEL_9;
    }
  }

  else
  {

    v9 = 0;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"MA asset service unsupported asset type"];
  v12 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:20 description:v11 userInfo:0];
  v13 = _LTOSLogAssets();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [_LTDMAAssetService purgeAsset:v8 completion:?];
  }

  (*(completionCopy + 2))(completionCopy, 0, v12);

LABEL_9:
}

+ (void)downloadAsset:(uint64_t)a1 options:progress:completion:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_232E53000, v1, v2, "MobileAsset failed to download asset %{public}@: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)purgeAsset:(uint64_t)a1 completion:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_232E53000, v1, v2, "MobileAsset failed to purge asset %{public}@: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

@end