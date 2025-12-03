@interface WLKRestrictionsObserver
+ (id)sharedObserver;
- (WLKRestrictionsObserver)init;
- (void)_evaluateRestrictionsChange;
- (void)dealloc;
- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation WLKRestrictionsObserver

+ (id)sharedObserver
{
  if (sharedObserver_onceToken != -1)
  {
    +[WLKRestrictionsObserver sharedObserver];
  }

  v3 = sharedObserver__observer;

  return v3;
}

uint64_t __41__WLKRestrictionsObserver_sharedObserver__block_invoke()
{
  sharedObserver__observer = objc_alloc_init(WLKRestrictionsObserver);

  return MEMORY[0x2821F96F8]();
}

- (WLKRestrictionsObserver)init
{
  v11.receiver = self;
  v11.super_class = WLKRestrictionsObserver;
  v2 = [(WLKRestrictionsObserver *)&v11 init];
  if (v2)
  {
    v3 = WLKRestrictionsMaximumEffectiveTVShowRanking();
    TVRanking = v2->_TVRanking;
    v2->_TVRanking = v3;

    v5 = WLKRestrictionsMaximumEffectiveMovieRanking();
    movieRanking = v2->_movieRanking;
    v2->_movieRanking = v5;

    v7 = objc_alloc_init(WLKDebouncingQueue);
    debounceQueue = v2->_debounceQueue;
    v2->_debounceQueue = v7;

    [(WLKDebouncingQueue *)v2->_debounceQueue setDelay:500000];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = WLKRestrictionsObserver;
  [(WLKRestrictionsObserver *)&v4 dealloc];
}

- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)notification userInfo:(id)info
{
  notificationCopy = notification;
  infoCopy = info;
  objc_initWeak(&location, self);
  debounceQueue = self->_debounceQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __94__WLKRestrictionsObserver_profileConnectionDidReceiveRestrictionChangedNotification_userInfo___block_invoke;
  v9[3] = &unk_279E5EC50;
  objc_copyWeak(&v10, &location);
  [(WLKDebouncingQueue *)debounceQueue addOperationWithBlock:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __94__WLKRestrictionsObserver_profileConnectionDidReceiveRestrictionChangedNotification_userInfo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _evaluateRestrictionsChange];
}

- (void)_evaluateRestrictionsChange
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = WLKRestrictionsMaximumEffectiveTVShowRanking();
  v4 = WLKRestrictionsMaximumEffectiveMovieRanking();
  v5 = WLKSystemLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    TVRanking = self->_TVRanking;
    movieRanking = self->_movieRanking;
    v21 = 138412546;
    v22 = TVRanking;
    v23 = 2112;
    v24 = movieRanking;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKRestrictionsObserver - current: %@-%@", &v21, 0x16u);
  }

  v8 = self->_TVRanking;
  v9 = v3;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if (!v9 || !v10)
    {
      defaultCenter = v9;
LABEL_15:

LABEL_16:
      objc_storeStrong(&self->_TVRanking, v3);
      objc_storeStrong(&self->_movieRanking, v4);
      v17 = WLKSystemLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_TVRanking;
        v19 = self->_movieRanking;
        v21 = 138412546;
        v22 = v18;
        v23 = 2112;
        v24 = v19;
        _os_log_impl(&dword_272A0F000, v17, OS_LOG_TYPE_DEFAULT, "WLKRestrictionsObserver - new: %@-%@; posting notification", &v21, 0x16u);
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [(NSNumber *)defaultCenter postNotificationName:@"WLKRestrictionsDidChangeNotification" object:self userInfo:0];
      goto LABEL_20;
    }

    v12 = [(NSNumber *)v9 isEqual:v10];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  v13 = self->_movieRanking;
  defaultCenter = v4;
  v15 = v13;
  v11 = v15;
  if (defaultCenter != v15)
  {
    if (defaultCenter && v15)
    {
      v16 = [(NSNumber *)defaultCenter isEqual:v15];

      if (v16)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_20:
LABEL_21:

  v20 = *MEMORY[0x277D85DE8];
}

@end