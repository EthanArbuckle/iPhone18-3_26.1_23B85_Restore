@interface APOdmlAssetManagersForPlacement
- (APOdmlAssetManagersForPlacement)initWithPlacementType:(unint64_t)type trialClient:(id)client;
- (id)assetManagerForType:(unint64_t)type;
@end

@implementation APOdmlAssetManagersForPlacement

- (APOdmlAssetManagersForPlacement)initWithPlacementType:(unint64_t)type trialClient:(id)client
{
  v33 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v28.receiver = self;
  v28.super_class = APOdmlAssetManagersForPlacement;
  v7 = [(APOdmlAssetManagersForPlacement *)&v28 init];
  if (v7)
  {
    if (type == 1)
    {
      v16 = [APOdmlAssetManager alloc];
      v18 = objc_msgSend_initWithNamespace_andClient_(v16, v17, @"SLP_ADS_RUNTIME", clientCopy);
      runtimeAssetManager = v7->_runtimeAssetManager;
      v7->_runtimeAssetManager = v18;

      v20 = [APOdmlAssetManager alloc];
      v22 = objc_msgSend_initWithNamespace_andClient_(v20, v21, @"SLP_ADS_COUNTERFACTUAL", clientCopy);
      counterfactualAssetManager = v7->_counterfactualAssetManager;
      v7->_counterfactualAssetManager = v22;
    }

    else if (!type)
    {
      v8 = [APOdmlAssetManager alloc];
      v10 = objc_msgSend_initWithNamespace_andClient_(v8, v9, @"AD_PLATFORMS_ODML", clientCopy);
      v11 = v7->_runtimeAssetManager;
      v7->_runtimeAssetManager = v10;

      v12 = [APOdmlAssetManager alloc];
      v14 = objc_msgSend_initWithNamespace_andClient_(v12, v13, @"SEARCH_ADS_COUNTERFACTUAL", clientCopy);
      p_super = &v7->_counterfactualAssetManager->super;
      v7->_counterfactualAssetManager = v14;
LABEL_8:

      goto LABEL_9;
    }

    p_super = OdmlLogForCategory(0);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      *buf = 138412546;
      v30 = v24;
      v31 = 2048;
      typeCopy = type;
      v25 = v24;
      _os_log_impl(&dword_260ECB000, p_super, OS_LOG_TYPE_ERROR, "[%@] The following placement type is not supported: %lu", buf, 0x16u);
    }

    goto LABEL_8;
  }

LABEL_9:

  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)assetManagerForType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    v4 = objc_msgSend_counterfactualAssetManager(self, a2, 1);
  }

  else if (type)
  {
    v5 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = objc_opt_class();
      v11 = 2048;
      typeCopy = type;
      v6 = v10;
      _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_ERROR, "[%@] The following asset manager type is not supported: %lu", &v9, 0x16u);
    }
  }

  else
  {
    v4 = objc_msgSend_runtimeAssetManager(self, a2, 0);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

@end