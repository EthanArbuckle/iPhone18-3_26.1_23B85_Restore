@interface PXCloudQuotaOfferProvider
+ (PXCloudQuotaOfferProvider)currentOfferProvider;
- (PXCloudQuotaOfferProvider)init;
- (void)_currentOfferChangedNotification:(id)notification;
- (void)_queue_getCurrentOffer;
- (void)_queue_initialSetup;
- (void)_updateCurrentOffer:(id)offer;
- (void)dealloc;
- (void)performChanges:(id)changes;
- (void)setDismissibleOffer:(id)offer;
- (void)setOffer:(id)offer;
@end

@implementation PXCloudQuotaOfferProvider

- (void)_currentOfferChangedNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = PLUserStatusGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = objc_opt_class();
    v12 = 2048;
    selfCopy = self;
    v6 = v11;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Current offer did change notification", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7 = PXCloudQuotaOfferSerialQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PXCloudQuotaOfferProvider__currentOfferChangedNotification___block_invoke;
  block[3] = &unk_1E774C318;
  objc_copyWeak(&v9, buf);
  dispatch_async(v7, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __62__PXCloudQuotaOfferProvider__currentOfferChangedNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_getCurrentOffer];
}

- (void)_queue_initialSetup
{
  if (_queue_initialSetup_predicate != -1)
  {
    dispatch_once(&_queue_initialSetup_predicate, &__block_literal_global_69602);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = getICQCurrentOfferChangedNotification();
  [defaultCenter addObserver:self selector:sel__currentOfferChangedNotification_ name:v4 object:0];

  [(PXCloudQuotaOfferProvider *)self _queue_getCurrentOffer];
}

id __48__PXCloudQuotaOfferProvider__queue_initialSetup__block_invoke()
{
  getICQBannerViewClass();
  getICQOfferManagerClass();
  getICQCurrentOfferChangedNotification();
  return v0;
}

- (void)_queue_getCurrentOffer
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = PLUserStatusGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v9 = objc_opt_class();
    v10 = 2048;
    selfCopy = self;
    v4 = v9;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> Will get current cloud offer", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  sharedOfferManager = [getICQOfferManagerClass() sharedOfferManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__PXCloudQuotaOfferProvider__queue_getCurrentOffer__block_invoke;
  v6[3] = &unk_1E7734B98;
  v6[4] = self;
  objc_copyWeak(&v7, buf);
  [sharedOfferManager getOfferWithCompletion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __51__PXCloudQuotaOfferProvider__queue_getCurrentOffer__block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Did get current cloud offer:%{public}@", buf, 0x20u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__PXCloudQuotaOfferProvider__queue_getCurrentOffer__block_invoke_40;
  v10[3] = &unk_1E774B248;
  objc_copyWeak(&v12, (a1 + 40));
  v11 = v3;
  v9 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v12);
}

void __51__PXCloudQuotaOfferProvider__queue_getCurrentOffer__block_invoke_40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateCurrentOffer:*(a1 + 32)];
}

- (void)_updateCurrentOffer:(id)offer
{
  offerCopy = offer;
  ICQBannerViewClass = getICQBannerViewClass();
  if ([ICQBannerViewClass shouldShowForOffer:offerCopy])
  {
    v6 = offerCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if ([ICQBannerViewClass shouldShowForDismissibleOffer:offerCopy])
  {
    v8 = offerCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__PXCloudQuotaOfferProvider__updateCurrentOffer___block_invoke;
  v12[3] = &unk_1E7734B70;
  v13 = v7;
  v14 = v9;
  v10 = v9;
  v11 = v7;
  [(PXCloudQuotaOfferProvider *)self performChanges:v12];
}

void __49__PXCloudQuotaOfferProvider__updateCurrentOffer___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setOffer:v3];
  [v4 setDismissibleOffer:*(a1 + 40)];
}

- (void)setDismissibleOffer:(id)offer
{
  v20 = *MEMORY[0x1E69E9840];
  offerCopy = offer;
  if (self->_dismissibleOffer != offerCopy)
  {
    objc_storeStrong(&self->_dismissibleOffer, offer);
    dismissibleOffer = self->_dismissibleOffer;
    v7 = PLUserStatusGetLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (dismissibleOffer)
    {
      if (v8)
      {
        v9 = objc_opt_class();
        offer = self->_offer;
        v11 = v9;
        v12 = PXCloudQuotaOfferDebugDescription(offer);
        v14 = 138543874;
        v15 = v9;
        v16 = 2048;
        selfCopy2 = self;
        v18 = 2114;
        v19 = v12;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Did set dismissible offer:%{public}@", &v14, 0x20u);
      }
    }

    else if (v8)
    {
      v14 = 138543618;
      v15 = objc_opt_class();
      v16 = 2048;
      selfCopy2 = self;
      v13 = v15;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Did clear dismissible offer", &v14, 0x16u);
    }

    [(PXCloudQuotaOfferProvider *)self signalChange:2];
  }
}

- (void)setOffer:(id)offer
{
  v24 = *MEMORY[0x1E69E9840];
  offerCopy = offer;
  offer = self->_offer;
  if (offer != offerCopy)
  {
    v7 = offer != 0;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    PXCloudQuotaSendAnalyticsForOfferChange(offerCopy != 0, v7, v9);

    objc_storeStrong(&self->_offer, offer);
    v10 = self->_offer;
    v11 = PLUserStatusGetLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = objc_opt_class();
        v14 = self->_offer;
        v15 = v13;
        v16 = PXCloudQuotaOfferDebugDescription(v14);
        v18 = 138543874;
        v19 = v13;
        v20 = 2048;
        selfCopy2 = self;
        v22 = 2114;
        v23 = v16;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Did set offer:%{public}@", &v18, 0x20u);
      }
    }

    else if (v12)
    {
      v18 = 138543618;
      v19 = objc_opt_class();
      v20 = 2048;
      selfCopy2 = self;
      v17 = v19;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Did clear offer", &v18, 0x16u);
    }

    [(PXCloudQuotaOfferProvider *)self signalChange:1];
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXCloudQuotaOfferProvider;
  [(PXCloudQuotaOfferProvider *)&v3 performChanges:changes];
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
    selfCopy = self;
    v4 = v7;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> dealloc", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = PXCloudQuotaOfferProvider;
  [(PXCloudQuotaOfferProvider *)&v5 dealloc];
}

- (PXCloudQuotaOfferProvider)init
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = PLUserStatusGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v10 = objc_opt_class();
    v11 = 2048;
    selfCopy = self;
    v4 = v10;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> init", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = PXCloudQuotaOfferProvider;
  v5 = [(PXCloudQuotaOfferProvider *)&v8 init];
  if (v5)
  {
    objc_initWeak(buf, v5);
    objc_copyWeak(&v7, buf);
    px_dispatch_on_main_queue_when_idle_after_delay();
  }

  return 0;
}

void __33__PXCloudQuotaOfferProvider_init__block_invoke(uint64_t a1)
{
  v2 = PXCloudQuotaOfferSerialQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PXCloudQuotaOfferProvider_init__block_invoke_2;
  block[3] = &unk_1E774C318;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __33__PXCloudQuotaOfferProvider_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_initialSetup];
}

+ (PXCloudQuotaOfferProvider)currentOfferProvider
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&currentOfferProvider__lock);
  WeakRetained = objc_loadWeakRetained(&currentOfferProvider__sharedOfferProvider);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = PLUserStatusGetLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v10 = 138412546;
    selfCopy2 = self;
    v12 = 2048;
    v13 = v4;
    v6 = "%@ Reusing existing offer provider: %p";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v4 = objc_alloc_init(self);
    objc_storeWeak(&currentOfferProvider__sharedOfferProvider, v4);
    v5 = PLUserStatusGetLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v10 = 138412546;
    selfCopy2 = self;
    v12 = 2048;
    v13 = v4;
    v6 = "%@ Creating new offer provider: %p";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1A3C1C000, v7, v8, v6, &v10, 0x16u);
LABEL_7:

  os_unfair_lock_unlock(&currentOfferProvider__lock);

  return v4;
}

@end