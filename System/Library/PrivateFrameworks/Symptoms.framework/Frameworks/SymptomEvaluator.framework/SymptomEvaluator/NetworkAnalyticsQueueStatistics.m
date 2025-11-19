@interface NetworkAnalyticsQueueStatistics
+ (id)schedulerToString:(unsigned int)a3;
+ (id)slotToString:(unsigned __int8)a3;
- (NetworkAnalyticsQueueStatistics)initWithInterfaceName:(id)a3;
- (id)description;
- (void)cleanupIoctlSocket;
- (void)createIoctlSocket;
- (void)dealloc;
- (void)update;
@end

@implementation NetworkAnalyticsQueueStatistics

- (void)update
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSince1970];
  v5 = v4;

  lastUpdateTime = self->_lastUpdateTime;
  if (v5 <= lastUpdateTime)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v5 - lastUpdateTime;
  }

  if (v7 < 1.0)
  {
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v15 = 134218240;
      v16 = v7;
      v17 = 1024;
      v18 = 1;
      v9 = "Not updating queue statistics, elapsed time %f less than minimum %d seconds";
      v10 = v8;
      v11 = 18;
LABEL_17:
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, v9, &v15, v11);
    }

LABEL_18:
    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  if (!self->_interfaceName)
  {
    v13 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    LOWORD(v15) = 0;
    v9 = "Not updating queue statistics, no interface name";
LABEL_16:
    v10 = v13;
    v11 = 2;
    goto LABEL_17;
  }

  if (self->_ioctlSocket < 0)
  {
    v13 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    LOWORD(v15) = 0;
    v9 = "Not updating queue statistics, no socket";
    goto LABEL_16;
  }

  [(NetworkAnalyticsQueueStatistics *)self _updateForSlot:7];
  [(NetworkAnalyticsQueueStatistics *)self _updateForSlot:2];
  [(NetworkAnalyticsQueueStatistics *)self _updateForSlot:1];
  v12 = *MEMORY[0x277D85DE8];

  [(NetworkAnalyticsQueueStatistics *)self _updateForSlot:4];
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<QueueStatistics %@ slots: %@>", self->_interfaceName, self->_slots];

  return v2;
}

- (NetworkAnalyticsQueueStatistics)initWithInterfaceName:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NetworkAnalyticsQueueStatistics;
  v6 = [(NetworkAnalyticsQueueStatistics *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interfaceName, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    slots = v7->_slots;
    v7->_slots = v8;

    v7->_ioctlSocket = -1;
    [(NetworkAnalyticsQueueStatistics *)v7 createIoctlSocket];
  }

  return v7;
}

- (void)dealloc
{
  [(NetworkAnalyticsQueueStatistics *)self cleanupIoctlSocket];
  v3.receiver = self;
  v3.super_class = NetworkAnalyticsQueueStatistics;
  [(NetworkAnalyticsQueueStatistics *)&v3 dealloc];
}

- (void)createIoctlSocket
{
  v9 = *MEMORY[0x277D85DE8];
  [(NetworkAnalyticsQueueStatistics *)self cleanupIoctlSocket];
  v3 = socket(2, 2, 0);
  self->_ioctlSocket = v3;
  if (v3 < 0)
  {
    v4 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = *__error();
      v8[0] = 67109120;
      v8[1] = v6;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Unable to open a socket queue statistics ioctl to kernel: %{errno}d", v8, 8u);
    }

    self->_ioctlSocket = -1;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cleanupIoctlSocket
{
  ioctlSocket = self->_ioctlSocket;
  if ((ioctlSocket & 0x80000000) == 0)
  {
    close(ioctlSocket);
    self->_ioctlSocket = -1;
  }
}

+ (id)schedulerToString:(unsigned int)a3
{
  if (a3 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_27898D768[a3];
  }
}

+ (id)slotToString:(unsigned __int8)a3
{
  if (a3 > 9u)
  {
    return @"Unknown";
  }

  else
  {
    return off_27898D7A8[a3];
  }
}

@end