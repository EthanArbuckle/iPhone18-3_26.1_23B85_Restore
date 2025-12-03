@interface STStorageDiskMonitor
+ (id)sharedMonitor;
- (STStorageDiskMonitor)init;
- (void)_sendNotify:(id)notify;
- (void)sendNotify:(id)notify;
- (void)startMonitor;
- (void)stopMonitor;
- (void)sync;
- (void)updateDiskSpace;
@end

@implementation STStorageDiskMonitor

+ (id)sharedMonitor
{
  if (sharedMonitor_onceMonitorToken != -1)
  {
    +[STStorageDiskMonitor sharedMonitor];
  }

  v3 = sharedMonitor_gSharedMonitor;

  return v3;
}

uint64_t __37__STStorageDiskMonitor_sharedMonitor__block_invoke()
{
  sharedMonitor_gSharedMonitor = objc_alloc_init(STStorageDiskMonitor);

  return MEMORY[0x2821F96F8]();
}

- (STStorageDiskMonitor)init
{
  v7.receiver = self;
  v7.super_class = STStorageDiskMonitor;
  v2 = [(STStorageDiskMonitor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(STStorageDiskMonitor *)v2 updateDiskSpace];
    v6 = 0;
    GetDeviceSpace(&v6, &v5);
    v3->_deviceSize = 1000000000 * rint(v6 / 1000000000.0);
    v3->_updateDelta = 104857600;
  }

  return v3;
}

- (void)_sendNotify:(id)notify
{
  v3 = MEMORY[0x277CCAB98];
  notifyCopy = notify;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter postNotificationName:notifyCopy object:0];
}

- (void)sendNotify:(id)notify
{
  notifyCopy = notify;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__STStorageDiskMonitor_sendNotify___block_invoke;
  v6[3] = &unk_279D1CEB0;
  v6[4] = self;
  v7 = notifyCopy;
  v5 = notifyCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __35__STStorageDiskMonitor_sendNotify___block_invoke(uint64_t a1)
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel__sendNotify_ object:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 performSelector:sel__sendNotify_ withObject:v3 afterDelay:0.1];
}

- (void)sync
{
  v3 = objc_autoreleasePoolPush();
  deviceSize = self->_deviceSize;
  v17 = deviceSize;
  GetDeviceSpace(&v17, &deviceSize);
  v4 = +[STStorageCacheDelete sharedMonitor];
  totalPurgeable = [v4 totalPurgeable];

  v7 = deviceSize;
  v6 = v17;
  STLog(1, @"disk space tot: %lld, free: %lld, purge: %lld", v8, v9, v10, v11, v12, v13, v17);
  v14 = [[STStorageSpace alloc] initWithTotal:v6 free:v7 purgeable:totalPurgeable];
  storageSpace = self->_storageSpace;
  self->_storageSpace = v14;

  objc_autoreleasePoolPop(v3);
}

- (void)updateDiskSpace
{
  availableBytes = [(STStorageSpace *)self->_storageSpace availableBytes];
  [(STStorageDiskMonitor *)self sync];
  availableBytes2 = [(STStorageSpace *)self->_storageSpace availableBytes];
  v5 = availableBytes2 - availableBytes;
  if (availableBytes2 - availableBytes < 0)
  {
    v5 = availableBytes - availableBytes2;
  }

  if (v5 > self->_updateDelta)
  {

    [(STStorageDiskMonitor *)self sendNotify:@"STStorageUsageChangedNotification"];
  }
}

- (void)startMonitor
{
  diskSizeTimer = [(STStorageDiskMonitor *)self diskSizeTimer];
  if (!diskSizeTimer)
  {
    v4 = dispatch_get_global_queue(9, 0);
    diskSizeTimer = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);

    [(STStorageDiskMonitor *)self setDiskSizeTimer:diskSizeTimer];
    dispatch_source_set_timer(diskSizeTimer, 0, 0xB2D05E00uLL, 0x1DCD6500uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __36__STStorageDiskMonitor_startMonitor__block_invoke;
    handler[3] = &unk_279D1CE88;
    handler[4] = self;
    dispatch_source_set_event_handler(diskSizeTimer, handler);
    dispatch_resume(diskSizeTimer);
  }

  v5 = +[STStorageCacheDelete sharedMonitor];
  [v5 startMonitor];
}

- (void)stopMonitor
{
  source = [(STStorageDiskMonitor *)self diskSizeTimer];
  if (source)
  {
    [(STStorageDiskMonitor *)self setDiskSizeTimer:0];
    dispatch_source_cancel(source);
  }

  v3 = +[STStorageCacheDelete sharedMonitor];
  [v3 stopMonitor];
}

@end