@interface PCAssetManager
+ (PCAssetManager)sharedInstance;
- (PCAssetManager)init;
- (id)alternateBundleForAssetType:(int64_t)type;
- (id)assetQueryForAssetType:(int64_t)type alternate:(BOOL)alternate;
- (id)assetRequestConfiguration:(int64_t)configuration alternate:(BOOL)alternate;
- (id)bundleForAssetType:(int64_t)type;
- (id)imageForAssetType:(int64_t)type;
- (id)imageNameForAssetType:(int64_t)type;
- (unsigned)colorCodeForAssetType:(int64_t)type;
- (unsigned)productVersionForAssetType:(int64_t)type;
- (void)dealloc;
- (void)handleDownloadCompletion:(id)completion assetType:(int64_t)type error:(id)error;
- (void)handleQueryResult:(id)result assetType:(int64_t)type productType:(id)productType isFallback:(BOOL)fallback error:(id)error isAlternateBundle:(BOOL)bundle;
- (void)initiateQuery:(id)query config:(id)config;
- (void)sfAssetManagerEnsureStarted;
@end

@implementation PCAssetManager

+ (PCAssetManager)sharedInstance
{
  if (sharedInstance_onceToken[0] != -1)
  {
    +[PCAssetManager sharedInstance];
  }

  v3 = sharedInstance_shared;

  return v3;
}

uint64_t __32__PCAssetManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PCAssetManager);
  v1 = sharedInstance_shared;
  sharedInstance_shared = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (PCAssetManager)init
{
  v9.receiver = self;
  v9.super_class = PCAssetManager;
  v2 = [(PCAssetManager *)&v9 init];
  if (v2)
  {
    v3 = LogCategoryCreateEx();
    v2->_ucat = v3;
    if (v3->var0 <= 30)
    {
      if (v3->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = v2->_ucat;
      }

      LogPrintF();
    }

LABEL_6:
    v4 = dispatch_queue_create("com.apple.ProximityControl.assetManager.queue", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    [(PCAssetManager *)v2 sfAssetManagerEnsureStarted];
    v6 = v2;
  }

  return v2;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = PCAssetManager;
  [(PCAssetManager *)&v4 dealloc];
}

- (id)bundleForAssetType:(int64_t)type
{
  if ((type - 1) >= 8)
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", type];
  }

  else
  {
    type = off_279AD1CB0[type - 1];
  }

  bundles = self->_bundles;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v8 = [(NSMutableDictionary *)bundles objectForKeyedSubscript:v7];

  var0 = self->_ucat->var0;
  if (v8)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_12:
    v10 = v8;
    goto LABEL_15;
  }

  if (var0 <= 60)
  {
    if (var0 != -1)
    {
LABEL_10:
      LogPrintF();
      [(PCAssetManager *)self prewarmBundleForAssetType:type, type];
      goto LABEL_15;
    }

    if (_LogCategory_Initialize())
    {
      v13 = self->_ucat;
      goto LABEL_10;
    }
  }

  [(PCAssetManager *)self prewarmBundleForAssetType:type, v14];
LABEL_15:

  return v8;
}

- (id)alternateBundleForAssetType:(int64_t)type
{
  if ((type - 1) >= 8)
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", type];
  }

  else
  {
    type = off_279AD1CB0[type - 1];
  }

  alternateBundles = self->_alternateBundles;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v8 = [(NSMutableDictionary *)alternateBundles objectForKeyedSubscript:v7];

  var0 = self->_ucat->var0;
  if (v8)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_12:
    v10 = v8;
    goto LABEL_15;
  }

  if (var0 <= 60)
  {
    if (var0 != -1)
    {
LABEL_10:
      LogPrintF();
      [(PCAssetManager *)self prewarmAlternateBundleForAssetType:type, type];
      goto LABEL_15;
    }

    if (_LogCategory_Initialize())
    {
      v13 = self->_ucat;
      goto LABEL_10;
    }
  }

  [(PCAssetManager *)self prewarmAlternateBundleForAssetType:type, v14];
LABEL_15:

  return v8;
}

- (id)imageForAssetType:(int64_t)type
{
  if ((type - 1) >= 8)
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", type];
  }

  else
  {
    type = off_279AD1CB0[type - 1];
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_6:
      v16 = type;
      LogPrintF();
      goto LABEL_8;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_6;
    }
  }

LABEL_8:
  v7 = [(PCAssetManager *)self bundleForAssetType:type, v16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_22;
  }

  v8 = [(PCAssetManager *)self imageNameForAssetType:type];
  if (!v8)
  {
    v11 = self->_ucat->var0;
    if (v11 <= 60)
    {
      if (v11 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_20;
        }

        v15 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_20:
    v9 = 0;
    goto LABEL_21;
  }

  v9 = [MEMORY[0x277D755B8] imageNamed:v8 inBundle:v7 withConfiguration:0];
  v10 = self->_ucat->var0;
  if (v10 <= 30)
  {
    if (v10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_21;
      }

      v12 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_21:

LABEL_22:

  return v9;
}

- (id)assetQueryForAssetType:(int64_t)type alternate:(BOOL)alternate
{
  alternateCopy = alternate;
  if ((type - 1) >= 8)
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", type];
  }

  else
  {
    type = off_279AD1CB0[type - 1];
  }

  v8 = [(PCAssetManager *)self colorCodeForAssetType:type];
  if (v8 == *MEMORY[0x277D54D48])
  {
    var0 = self->_ucat->var0;
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_23;
        }

        ucat = self->_ucat;
      }

      goto LABEL_14;
    }

    goto LABEL_23;
  }

  v10 = v8;
  v11 = [(PCAssetManager *)self productVersionForAssetType:type];
  v12 = self->_ucat->var0;
  if (v11)
  {
    if (v12 <= 30)
    {
      if (v12 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        v18 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_18:
    v14 = objc_alloc(MEMORY[0x277D54C58]);
    if (alternateCopy)
    {
      v15 = [v14 initWithHomePodColor:v10 version:v11];
    }

    else
    {
      v15 = [v14 initWithSingleHomePodColor:v10 version:v11];
    }

    v16 = v15;
    goto LABEL_24;
  }

  if (v12 <= 60)
  {
    if (v12 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_23;
      }

      v19 = self->_ucat;
    }

LABEL_14:
    LogPrintF();
  }

LABEL_23:
  v16 = 0;
LABEL_24:

  return v16;
}

- (id)assetRequestConfiguration:(int64_t)configuration alternate:(BOOL)alternate
{
  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x277D54C60]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__PCAssetManager_assetRequestConfiguration_alternate___block_invoke;
  v11[3] = &unk_279AD1C68;
  objc_copyWeak(v12, &location);
  v12[1] = configuration;
  alternateCopy = alternate;
  v7 = [v6 initWithQueryResultHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__PCAssetManager_assetRequestConfiguration_alternate___block_invoke_2;
  v9[3] = &unk_279AD1C90;
  objc_copyWeak(v10, &location);
  v10[1] = configuration;
  [v7 setDownloadCompletionHandler:v9];
  objc_destroyWeak(v10);
  objc_destroyWeak(v12);
  objc_destroyWeak(&location);

  return v7;
}

void __54__PCAssetManager_assetRequestConfiguration_alternate___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  objc_copyWeak(&to, (a1 + 32));
  v12 = objc_loadWeakRetained(&to);
  [v12 handleQueryResult:v9 assetType:*(a1 + 40) productType:v10 isFallback:a4 error:v11 isAlternateBundle:*(a1 + 48)];

  objc_destroyWeak(&to);
}

void __54__PCAssetManager_assetRequestConfiguration_alternate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 32));
  v7 = objc_loadWeakRetained(&to);
  [v7 handleDownloadCompletion:v5 assetType:*(a1 + 40) error:v6];

  objc_destroyWeak(&to);
}

- (unsigned)colorCodeForAssetType:(int64_t)type
{
  v3 = *MEMORY[0x277D54D48];
  if ((type - 1) < 8)
  {
    return 0x201210807090201uLL >> (8 * (type - 1));
  }

  return v3;
}

- (void)handleDownloadCompletion:(id)completion assetType:(int64_t)type error:(id)error
{
  completionCopy = completion;
  errorCopy = error;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      if ((type - 1) >= 8)
      {
        type = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", type];
      }

      else
      {
        type = off_279AD1CB0[type - 1];
      }

      LogPrintF();

      goto LABEL_9;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v12 = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_9:
}

- (void)initiateQuery:(id)query config:(id)config
{
  queryCopy = query;
  configCopy = config;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v9 = queryCopy;
      v10 = configCopy;
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(PCAssetManager *)self sfAssetManagerEnsureStarted:v9];
  [(SFDeviceAssetManager *)self->_sfAssetManager getAssetBundleForDeviceQuery:queryCopy withRequestConfiguration:configCopy];
}

- (void)handleQueryResult:(id)result assetType:(int64_t)type productType:(id)productType isFallback:(BOOL)fallback error:(id)error isAlternateBundle:(BOOL)bundle
{
  bundleCopy = bundle;
  fallbackCopy = fallback;
  resultCopy = result;
  productTypeCopy = productType;
  errorCopy = error;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v19 = self->_ucat;
    }

    if ((type - 1) >= 8)
    {
      type = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", type];
    }

    else
    {
      type = off_279AD1CB0[type - 1];
    }

    v20 = "no";
    if (fallbackCopy)
    {
      v20 = "yes";
    }

    v39 = v20;
    v40 = errorCopy;
    v36 = type;
    v37 = resultCopy;
    v38 = productTypeCopy;
    LogPrintF();
  }

LABEL_11:
  dispatch_assert_queue_V2(self->_internalQueue);
  if (!resultCopy || errorCopy)
  {
    v30 = self->_ucat->var0;
    if (v30 > 60)
    {
      goto LABEL_32;
    }

    if (v30 == -1)
    {
      v33 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_32;
      }

      v34 = self->_ucat;
    }

    if ((type - 1) >= 8)
    {
      type2 = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", type];
    }

    else
    {
      type2 = off_279AD1CB0[type - 1];
    }

    LogPrintF();
    goto LABEL_31;
  }

  if (type)
  {
    if (bundleCopy)
    {
      alternateBundles = self->_alternateBundles;
      p_alternateBundles = &self->_alternateBundles;
      v22 = alternateBundles;
      if (alternateBundles)
      {
LABEL_17:
        v26 = [MEMORY[0x277CCABB0] numberWithInteger:{type, v36, v37, v38, v39, v40}];
        [(NSMutableDictionary *)v22 setObject:resultCopy forKeyedSubscript:v26];

        v27 = MEMORY[0x277CCAB98];
        v28 = kPCAssetManagerNotificationNameQueryDidComplete;
        type2 = [v27 defaultCenter];
        [(__CFString *)type2 postNotificationName:v28 object:0];

LABEL_31:
        goto LABEL_32;
      }
    }

    else
    {
      bundles = self->_bundles;
      p_alternateBundles = &self->_bundles;
      v22 = bundles;
      if (bundles)
      {
        goto LABEL_17;
      }
    }

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v25 = *p_alternateBundles;
    *p_alternateBundles = v24;

    v22 = *p_alternateBundles;
    goto LABEL_17;
  }

  v31 = self->_ucat->var0;
  if (v31 > 60)
  {
    goto LABEL_32;
  }

  if (v31 != -1)
  {
LABEL_24:
    LogPrintF();
    goto LABEL_32;
  }

  if (_LogCategory_Initialize())
  {
    v35 = self->_ucat;
    goto LABEL_24;
  }

LABEL_32:
}

- (id)imageNameForAssetType:(int64_t)type
{
  v5 = *MEMORY[0x277D54D40];
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  userInterfaceStyle = [currentTraitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v8 = *MEMORY[0x277D54D38];

    v5 = v8;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_5:
      if ((type - 1) >= 8)
      {
        type = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", type];
      }

      else
      {
        type = off_279AD1CB0[type - 1];
      }

      if (userInterfaceStyle >= 3)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", userInterfaceStyle];
      }

      else
      {
        v13 = off_279AD1CF0[userInterfaceStyle];
      }

      LogPrintF();

      goto LABEL_14;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v12 = self->_ucat;
      goto LABEL_5;
    }
  }

LABEL_14:

  return v5;
}

- (unsigned)productVersionForAssetType:(int64_t)type
{
  if ((type - 1) > 7)
  {
    return 0;
  }

  else
  {
    return dword_26118DD60[type - 1];
  }
}

- (void)sfAssetManagerEnsureStarted
{
  if (self->_sfAssetManager)
  {
    return;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_6:
  v5 = objc_alloc_init(MEMORY[0x277D54C50]);
  sfAssetManager = self->_sfAssetManager;
  self->_sfAssetManager = v5;

  [(SFDeviceAssetManager *)self->_sfAssetManager setDispatchQueue:self->_internalQueue];
  v7 = self->_sfAssetManager;

  [(SFDeviceAssetManager *)v7 activate];
}

@end