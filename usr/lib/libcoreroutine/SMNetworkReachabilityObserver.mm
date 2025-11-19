@interface SMNetworkReachabilityObserver
+ (id)sharedNetworkReachabilityObserver;
- (BOOL)isNetworkReachable;
- (SMNetworkReachabilityObserver)init;
- (void)_startPathMonitor;
- (void)_stopPathMonitor;
- (void)dealloc;
@end

@implementation SMNetworkReachabilityObserver

+ (id)sharedNetworkReachabilityObserver
{
  if (qword_2814A7D18 != -1)
  {
    dispatch_once(&qword_2814A7D18, &__block_literal_global_58);
  }

  v3 = _MergedGlobals_114;

  return v3;
}

- (BOOL)isNetworkReachable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  observerQueue = self->_observerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SMNetworkReachabilityObserver_isNetworkReachable__block_invoke;
  v5[3] = &unk_2788C7FB0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(observerQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __50__SMNetworkReachabilityObserver__startPathMonitor__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = (nw_path_get_status(v3) & 0xFFFFFFFD) == 1 && nw_path_has_dns(v3);
    v6 = WeakRetained[24];
    WeakRetained[24] = v5;
    if (v6 != v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = @"NO";
        if (v5)
        {
          v8 = @"YES";
        }

        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "Network reachability updated, reachable, %@", &v9, 0xCu);
      }
    }
  }
}

- (SMNetworkReachabilityObserver)init
{
  v6.receiver = self;
  v6.super_class = SMNetworkReachabilityObserver;
  v2 = [(SMNetworkReachabilityObserver *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.routined.SMNetworkReachabilityObserver", 0);
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v3;

    [(SMNetworkReachabilityObserver *)v2 _startPathMonitor];
  }

  return v2;
}

- (void)dealloc
{
  [(SMNetworkReachabilityObserver *)self _stopPathMonitor];
  v3.receiver = self;
  v3.super_class = SMNetworkReachabilityObserver;
  [(SMNetworkReachabilityObserver *)&v3 dealloc];
}

uint64_t __66__SMNetworkReachabilityObserver_sharedNetworkReachabilityObserver__block_invoke()
{
  _MergedGlobals_114 = objc_alloc_init(SMNetworkReachabilityObserver);

  return MEMORY[0x2821F96F8]();
}

- (void)_startPathMonitor
{
  pathMonitor = self->_pathMonitor;
  if (!pathMonitor)
  {
    v4 = nw_path_monitor_create();
    v5 = self->_pathMonitor;
    self->_pathMonitor = v4;

    pathMonitor = self->_pathMonitor;
  }

  nw_path_monitor_set_queue(pathMonitor, self->_observerQueue);
  objc_initWeak(&location, self);
  v6 = self->_pathMonitor;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SMNetworkReachabilityObserver__startPathMonitor__block_invoke;
  v7[3] = &unk_2788CACF8;
  objc_copyWeak(&v8, &location);
  nw_path_monitor_set_update_handler(v6, v7);
  nw_path_monitor_start(self->_pathMonitor);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_stopPathMonitor
{
  pathMonitor = self->_pathMonitor;
  if (pathMonitor)
  {
    nw_path_monitor_cancel(pathMonitor);
    v4 = self->_pathMonitor;
    self->_pathMonitor = 0;
  }
}

@end