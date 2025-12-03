@interface BRCAccountOnlinePerformer
+ (BOOL)addPerformer:(id)performer;
+ (void)removePerformer:(id)performer;
- (BRCAccountOnlinePerformer)initWithDSID:(id)d;
- (id)_key;
- (void)_close;
- (void)networkReachabilityChanged:(BOOL)changed;
- (void)perform;
- (void)resumeAndAutoClose;
@end

@implementation BRCAccountOnlinePerformer

- (id)_key
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@/%@", v5, self->_dsid];

  return v6;
}

+ (BOOL)addPerformer:(id)performer
{
  performerCopy = performer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!g_performers)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    v7 = g_performers;
    g_performers = v6;
  }

  _key = [performerCopy _key];
  v9 = [g_performers objectForKey:_key];

  if (!v9)
  {
    [g_performers setObject:performerCopy forKey:_key];
  }

  objc_sync_exit(selfCopy);
  return v9 == 0;
}

+ (void)removePerformer:(id)performer
{
  performerCopy = performer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = g_performers;
  _key = [performerCopy _key];
  [v5 removeObjectForKey:_key];

  objc_sync_exit(selfCopy);
}

- (BRCAccountOnlinePerformer)initWithDSID:(id)d
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = BRCAccountOnlinePerformer;
  v6 = [(BRCAccountOnlinePerformer *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dsid, d);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(v8, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.bird.account-migrator", v9);

    queue = v7->_queue;
    v7->_queue = v10;
  }

  return v7;
}

- (void)networkReachabilityChanged:(BOOL)changed
{
  if (changed)
  {
    [(BRCThrottler *)self->_throttler reset];
    throttler = self->_throttler;

    [(BRCThrottler *)throttler scheduleNextEvent];
  }
}

- (void)resumeAndAutoClose
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(self + 8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)perform
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_fault_impl(&dword_223E7A000, v3, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: implemented by subclass%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_close
{
  v3 = +[BRCSystemResourcesManager manager];
  [v3 removeReachabilityObserver:self];

  [(BRCThrottler *)self->_throttler cancel];
  v4 = objc_opt_class();

  [v4 removePerformer:self];
}

@end