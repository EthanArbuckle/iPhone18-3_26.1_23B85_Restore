@interface PESCAPReviewManager
+ (PESCAPReviewManager)sharedReviewManager;
- (PESCAPReviewManager)init;
- (id)lastPasteBreadcrumb;
- (id)payloadForAsset:(id)a3;
- (void)clearAll;
- (void)registerPayload:(id)a3 forAsset:(id)a4;
@end

@implementation PESCAPReviewManager

- (id)lastPasteBreadcrumb
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  assetsMap = self->_assetsMap;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__PESCAPReviewManager_lastPasteBreadcrumb__block_invoke;
  v7[3] = &unk_279A308A0;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)assetsMap enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __42__PESCAPReviewManager_lastPasteBreadcrumb__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = [v5 filename];
  if (v6)
  {
    v7 = [v5 filename];
  }

  else
  {
    v7 = v17;
  }

  v8 = v7;

  v9 = *(a1 + 32);
  v10 = [v5 actionType];
  v11 = @"Smart C&P";
  if (!v10)
  {
    v11 = @"Legacy C&P";
  }

  v12 = v11;
  v13 = [v5 reason];
  if ((v13 - 1) > 6)
  {
    v14 = @"Unknown";
  }

  else
  {
    v14 = off_279A308C0[v13 - 1];
  }

  v15 = v14;
  [v5 score];
  [v9 appendFormat:@"%@ - %@ - %@ (%f)\n", v8, v12, v15, v16];
}

- (void)clearAll
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  assetsMap = self->_assetsMap;
  self->_assetsMap = v3;

  MEMORY[0x2821F96F8](v3, assetsMap);
}

- (id)payloadForAsset:(id)a3
{
  assetsMap = self->_assetsMap;
  v4 = [a3 uuid];
  v5 = [(NSMutableDictionary *)assetsMap objectForKeyedSubscript:v4];

  return v5;
}

- (void)registerPayload:(id)a3 forAsset:(id)a4
{
  v10 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 originalFilename];
    [v10 setFilename:v7];
  }

  assetsMap = self->_assetsMap;
  v9 = [v6 uuid];
  [(NSMutableDictionary *)assetsMap setObject:v10 forKeyedSubscript:v9];
}

- (PESCAPReviewManager)init
{
  v6.receiver = self;
  v6.super_class = PESCAPReviewManager;
  v2 = [(PESCAPReviewManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assetsMap = v2->_assetsMap;
    v2->_assetsMap = v3;
  }

  return v2;
}

+ (PESCAPReviewManager)sharedReviewManager
{
  if (sharedReviewManager_onceToken != -1)
  {
    dispatch_once(&sharedReviewManager_onceToken, &__block_literal_global_1264);
  }

  v3 = sharedReviewManager_reviewManager;

  return v3;
}

uint64_t __42__PESCAPReviewManager_sharedReviewManager__block_invoke()
{
  v0 = objc_alloc_init(PESCAPReviewManager);
  v1 = sharedReviewManager_reviewManager;
  sharedReviewManager_reviewManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end