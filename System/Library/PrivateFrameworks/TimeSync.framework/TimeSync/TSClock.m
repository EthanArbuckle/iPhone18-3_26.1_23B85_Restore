@interface TSClock
+ (id)clockNameForClockIdentifier:(unint64_t)a3;
+ (id)diagnosticDescriptionForInfo:(id)a3 withIndent:(id)a4;
- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 machAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 withError:(id *)a7;
- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 timeSyncAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 withError:(id *)a7;
- (NSMutableArray)clients;
- (NSString)clockName;
- (TSClock)init;
- (TSClock)initWithClockIdentifier:(unint64_t)a3;
- (void)addClient:(id)a3;
- (void)removeClient:(id)a3;
@end

@implementation TSClock

- (TSClock)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSClock init]"];
  [v3 raise:v4 format:{@"Do not call %@", v5}];

  return 0;
}

- (TSClock)initWithClockIdentifier:(unint64_t)a3
{
  v15.receiver = self;
  v15.super_class = TSClock;
  v4 = [(TSClock *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_clockIdentifier = a3;
    v6 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    clients = v5->_clients;
    v5->_clients = v6;

    v8 = MEMORY[0x277CCACA8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"com.apple.TimeSync.%@.0x%016llx.notification", v10, a3];
    v12 = dispatch_queue_create([v11 UTF8String], 0);
    notificationsQueue = v5->_notificationsQueue;
    v5->_notificationsQueue = v12;

    if (!v5->_notificationsQueue)
    {

      return 0;
    }
  }

  return v5;
}

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 machAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 withError:(id *)a7
{
  if (a3)
  {
    *a3 = 1;
  }

  if (a4)
  {
    *a4 = 1;
  }

  if (a5)
  {
    *a5 = -1;
  }

  if (a6)
  {
    *a6 = -1;
  }

  if (a7)
  {
    *a7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TSErrorDomain" code:-536870201 userInfo:0];
  }

  return 0;
}

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 timeSyncAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 withError:(id *)a7
{
  if (a3)
  {
    *a3 = 1;
  }

  if (a4)
  {
    *a4 = 1;
  }

  if (a5)
  {
    *a5 = -1;
  }

  if (a6)
  {
    *a6 = -1;
  }

  if (a7)
  {
    *a7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TSErrorDomain" code:-536870201 userInfo:0];
  }

  return 0;
}

- (void)addClient:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v4 description];
    v6 = [v5 UTF8String];
    v7 = [(TSClock *)self description];
    *buf = 136315394;
    v14 = v6;
    v15 = 2080;
    v16 = [v7 UTF8String];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Adding Client %s to clock %s\n", buf, 0x16u);
  }

  v8 = [(TSClock *)self notificationQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __21__TSClock_addClient___block_invoke;
  v11[3] = &unk_279DBD738;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  dispatch_sync(v8, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __21__TSClock_addClient___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 8) compact];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(*(a1 + 32) + 8);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(a1 + 40) == *(*(&v9 + 1) + 8 * v7))
        {

          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  [*(*(a1 + 32) + 8) addPointer:{*(a1 + 40), v9}];
LABEL_11:
  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeClient:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v4 description];
    v6 = [v5 UTF8String];
    v7 = [(TSClock *)self description];
    *buf = 136315394;
    v14 = v6;
    v15 = 2080;
    v16 = [v7 UTF8String];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Removing Client %s from clock %s\n", buf, 0x16u);
  }

  v8 = [(TSClock *)self notificationQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __24__TSClock_removeClient___block_invoke;
  v11[3] = &unk_279DBD738;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  dispatch_sync(v8, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __24__TSClock_removeClient___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 8) compact];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(a1 + 32) + 8);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      v9 = v6;
      v6 += v5;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if (*(a1 + 40) == *(*(&v11 + 1) + 8 * v8))
        {

          [*(*(a1 + 32) + 8) removePointerAtIndex:{v9, v11}];
          goto LABEL_11;
        }

        ++v9;
        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x277D85DE8];
}

- (NSMutableArray)clients
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  [(NSPointerArray *)self->_clients compact];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_clients;
  v5 = [(NSPointerArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (*(*(&v11 + 1) + 8 * i))
        {
          [v3 addObject:v11];
        }
      }

      v6 = [(NSPointerArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)clockName
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ 0x%016llx", v5, -[TSClock clockIdentifier](self, "clockIdentifier")];

  return v6;
}

+ (id)diagnosticDescriptionForInfo:(id)a3 withIndent:(id)a4
{
  v5 = MEMORY[0x277CCAB68];
  v6 = a4;
  v7 = a3;
  v8 = [v5 string];
  v9 = [v7 objectForKeyedSubscript:@"ClockName"];
  [v8 appendFormat:@"%@%@\n", v6, v9];

  [v8 appendFormat:@"%@    Clock Identifier: ", v6];
  v10 = [v7 objectForKeyedSubscript:@"ClockIdentifier"];

  if (v10)
  {
    [v8 appendFormat:@"0x%016llx\n", objc_msgSend(v10, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  return v8;
}

+ (id)clockNameForClockIdentifier:(unint64_t)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"%@ 0x%016llx", v6, a3];

  return v7;
}

@end