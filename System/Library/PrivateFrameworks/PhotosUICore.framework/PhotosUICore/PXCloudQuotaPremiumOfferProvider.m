@interface PXCloudQuotaPremiumOfferProvider
+ (PXCloudQuotaPremiumOfferProvider)currentPremiumOfferProvider;
- (PXCloudQuotaPremiumOfferProvider)init;
- (void)_currentPremiumOfferChangedNotification:(id)a3;
- (void)_queue_getCurrentPremiumOffer;
- (void)_queue_initialSetup;
- (void)_updateCurrentPremiumOffer:(id)a3;
- (void)dealloc;
- (void)performChanges:(id)a3;
- (void)setPremiumOffer:(id)a3;
@end

@implementation PXCloudQuotaPremiumOfferProvider

- (void)_currentPremiumOfferChangedNotification:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUserStatusGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = objc_opt_class();
    v12 = 2048;
    v13 = self;
    v6 = v11;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Current premium offer did change notification", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7 = PXCloudQuotaOfferSerialQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PXCloudQuotaPremiumOfferProvider__currentPremiumOfferChangedNotification___block_invoke;
  block[3] = &unk_1E774C318;
  objc_copyWeak(&v9, buf);
  dispatch_async(v7, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __76__PXCloudQuotaPremiumOfferProvider__currentPremiumOfferChangedNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_getCurrentPremiumOffer];
}

- (void)_queue_initialSetup
{
  if (_queue_initialSetup_predicate_198997 != -1)
  {
    dispatch_once(&_queue_initialSetup_predicate_198997, &__block_literal_global_198998);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = getICQCurrentPremiumOfferChangedNotification();
  [v3 addObserver:self selector:sel__currentPremiumOfferChangedNotification_ name:v4 object:0];

  [(PXCloudQuotaPremiumOfferProvider *)self _queue_getCurrentPremiumOffer];
}

id __55__PXCloudQuotaPremiumOfferProvider__queue_initialSetup__block_invoke()
{
  getICQTileViewClass();
  getICQOfferManagerClass_199016();
  getICQCurrentPremiumOfferChangedNotification();
  return v0;
}

- (void)_queue_getCurrentPremiumOffer
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = PLUserStatusGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v9 = objc_opt_class();
    v10 = 2048;
    v11 = self;
    v4 = v9;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> Will get current cloud premium offer", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v5 = [getICQOfferManagerClass_199016() sharedOfferManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PXCloudQuotaPremiumOfferProvider__queue_getCurrentPremiumOffer__block_invoke;
  v6[3] = &unk_1E7743288;
  v6[4] = self;
  objc_copyWeak(&v7, buf);
  [v5 getPremiumOfferWithCompletion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __65__PXCloudQuotaPremiumOfferProvider__queue_getCurrentPremiumOffer__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLUserStatusGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = PXCloudQuotaOfferDebugDescription(v3);
    *buf = 138543874;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Did get current cloud premium offer:%{public}@", buf, 0x20u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__PXCloudQuotaPremiumOfferProvider__queue_getCurrentPremiumOffer__block_invoke_40;
  v10[3] = &unk_1E774B248;
  objc_copyWeak(&v12, (a1 + 40));
  v11 = v3;
  v9 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v12);
}

void __65__PXCloudQuotaPremiumOfferProvider__queue_getCurrentPremiumOffer__block_invoke_40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateCurrentPremiumOffer:*(a1 + 32)];
}

- (void)_updateCurrentPremiumOffer:(id)a3
{
  v5 = a3;
  if ([getICQTileViewClass() shouldShowForPremiumOffer:v5])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PXCloudQuotaPremiumOfferProvider__updateCurrentPremiumOffer___block_invoke;
  v9[3] = &unk_1E7743260;
  v11 = self;
  v12 = a2;
  v10 = v7;
  v8 = v7;
  [(PXCloudQuotaPremiumOfferProvider *)self performChanges:v9];
}

- (void)setPremiumOffer:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  premiumOffer = self->_premiumOffer;
  if (premiumOffer != v5)
  {
    v7 = premiumOffer != 0;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    PXCloudQuotaSendAnalyticsForOfferChange(v5 != 0, v7, v9);

    objc_storeStrong(&self->_premiumOffer, a3);
    v10 = self->_premiumOffer;
    v11 = PLUserStatusGetLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = objc_opt_class();
        v14 = self->_premiumOffer;
        v15 = v13;
        v16 = PXCloudQuotaOfferDebugDescription(v14);
        v18 = 138543874;
        v19 = v13;
        v20 = 2048;
        v21 = self;
        v22 = 2114;
        v23 = v16;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Did set premium offer:%{public}@", &v18, 0x20u);
      }
    }

    else if (v12)
    {
      v18 = 138543618;
      v19 = objc_opt_class();
      v20 = 2048;
      v21 = self;
      v17 = v19;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Did clear premium offer", &v18, 0x16u);
    }

    [(PXCloudQuotaPremiumOfferProvider *)self signalChange:1];
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXCloudQuotaPremiumOfferProvider;
  [(PXCloudQuotaPremiumOfferProvider *)&v3 performChanges:a3];
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = PLUserStatusGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v7 = objc_opt_class();
    v8 = 2048;
    v9 = self;
    v4 = v7;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> dealloc", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = PXCloudQuotaPremiumOfferProvider;
  [(PXCloudQuotaPremiumOfferProvider *)&v5 dealloc];
}

- (PXCloudQuotaPremiumOfferProvider)init
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = PLUserStatusGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v10 = objc_opt_class();
    v11 = 2048;
    v12 = self;
    v4 = v10;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> init", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = PXCloudQuotaPremiumOfferProvider;
  v5 = [(PXCloudQuotaPremiumOfferProvider *)&v8 init];
  if (v5)
  {
    objc_initWeak(buf, v5);
    objc_copyWeak(&v7, buf);
    px_dispatch_on_main_queue_when_idle_after_delay();
  }

  return 0;
}

void __40__PXCloudQuotaPremiumOfferProvider_init__block_invoke(uint64_t a1)
{
  v2 = PXCloudQuotaOfferSerialQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PXCloudQuotaPremiumOfferProvider_init__block_invoke_2;
  block[3] = &unk_1E774C318;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __40__PXCloudQuotaPremiumOfferProvider_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_initialSetup];
}

+ (PXCloudQuotaPremiumOfferProvider)currentPremiumOfferProvider
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&currentPremiumOfferProvider__lock);
  WeakRetained = objc_loadWeakRetained(&currentPremiumOfferProvider__sharedPremiumOfferProvider);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = PLUserStatusGetLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v10 = 138412546;
    v11 = a1;
    v12 = 2048;
    v13 = v4;
    v6 = "%@ Reusing existing premium offer provider: %p";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v4 = objc_alloc_init(a1);
    objc_storeWeak(&currentPremiumOfferProvider__sharedPremiumOfferProvider, v4);
    v5 = PLUserStatusGetLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v10 = 138412546;
    v11 = a1;
    v12 = 2048;
    v13 = v4;
    v6 = "%@ Creating new premium offer provider: %p";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1A3C1C000, v7, v8, v6, &v10, 0x16u);
LABEL_7:

  os_unfair_lock_unlock(&currentPremiumOfferProvider__lock);

  return v4;
}

@end