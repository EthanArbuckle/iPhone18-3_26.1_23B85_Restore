@interface APOdmlAllowList
+ (id)sharedInstance;
- (APOdmlAllowList)init;
- (BOOL)isAllowed:(id)allowed;
- (unint64_t)count;
- (void)reinitializeAllowList;
@end

@implementation APOdmlAllowList

+ (id)sharedInstance
{
  if (qword_280CCF548 != -1)
  {
    sub_260EF80D8();
  }

  v3 = qword_280CCF540;

  return v3;
}

- (APOdmlAllowList)init
{
  v7.receiver = self;
  v7.super_class = APOdmlAllowList;
  v2 = [(APOdmlAllowList *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_reinitializeAllowList(v2, v3, v4);
  }

  return v5;
}

- (void)reinitializeAllowList
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_sharedAssetManagerCoordinator(APOdmlAssetManagerCoordinator, a2, v2);
  v6 = objc_msgSend_assetManagerForPlacementType_assetManagerType_(v4, v5, 0, 0);

  v8 = objc_msgSend_pathForFactor_isDirectory_(v6, v7, @"AllowList", 0);
  if (v8)
  {
    v9 = objc_alloc_init(APOdmlAllowListReader);
    v13 = objc_msgSend_openForReadingContentsOfURL_(v9, v10, v8);
    if (v13)
    {
      v14 = OdmlLogForCategory(7uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v26 = 138412546;
        *&v26[4] = objc_opt_class();
        *&v26[12] = 2112;
        *&v26[14] = v13;
        v15 = *&v26[4];
        _os_log_impl(&dword_260ECB000, v14, OS_LOG_TYPE_ERROR, "[%@] Error initializing AllowList: %@", v26, 0x16u);
      }

      objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsReranking, v16, v13, 0);
      v17 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    else
    {
      v17 = objc_msgSend_readFile(v9, v11, v12);
    }

    v24 = v17;
    objc_msgSend_setAllowList_(self, v18, v17, *v26, *&v26[16]);
  }

  else
  {
    v19 = OdmlLogForCategory(7uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v26 = 138412290;
      *&v26[4] = objc_opt_class();
      v20 = *&v26[4];
      _os_log_impl(&dword_260ECB000, v19, OS_LOG_TYPE_ERROR, "[%@] Bad path for AllowList asset.", v26, 0xCu);
    }

    v9 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v21, @"APOdmlRerankingErrorDomain", 3004, 0);
    objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsReranking, v22, v9, 0);
    v13 = objc_alloc_init(MEMORY[0x277CBEB98]);
    objc_msgSend_setAllowList_(self, v23, v13);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAllowed:(id)allowed
{
  allowedCopy = allowed;
  v7 = objc_msgSend_allowList(self, v5, v6);
  v9 = objc_msgSend_containsObject_(v7, v8, allowedCopy);

  return v9;
}

- (unint64_t)count
{
  v3 = objc_msgSend_allowList(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5);

  return v6;
}

@end