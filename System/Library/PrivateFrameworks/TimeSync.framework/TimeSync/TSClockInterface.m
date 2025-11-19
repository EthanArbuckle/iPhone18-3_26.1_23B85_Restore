@interface TSClockInterface
- (TSClockInterface)initWithClockIdentifier:(unint64_t)a3;
- (void)didChangeClockMasterForClock:(id)a3;
- (void)didChangeLocalPortWithGrandmasterID:(unint64_t)a3 localPort:(unsigned __int16)a4 forClock:(id)a5;
- (void)didChangeLockStateTo:(int)a3 forClock:(id)a4;
- (void)didEndClockGrandmasterChangeForClock:(id)a3;
- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)a3 localPort:(unsigned __int16)a4 forClock:(id)a5;
- (void)setLockStateNotificationCallback:(void *)a3 refcon:(void *)a4;
- (void)setMasterChangeNotificationCallback:(void *)a3 refcon:(void *)a4;
- (void)setTimeSyncTimeChangeNotificationCallback:(void *)a3 refcon:(void *)a4;
- (void)setgPTPGrandmasterIDAndPortNotificationCallback:(void *)a3 refcon:(void *)a4;
- (void)setgPTPGrandmasterNotificationCallback:(void *)a3 refcon:(void *)a4;
- (void)setgPTPLocalPortNotificationCallback:(void *)a3 refcon:(void *)a4;
@end

@implementation TSClockInterface

- (TSClockInterface)initWithClockIdentifier:(unint64_t)a3
{
  v15.receiver = self;
  v15.super_class = TSClockInterface;
  v4 = [(TSClockInterface *)&v15 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.timesync.TSClockInterface.0x%016llx.notifications", a3];
    v6 = dispatch_queue_create([v5 UTF8String], 0);
    notificationsQueue = v4->_notificationsQueue;
    v4->_notificationsQueue = v6;

    v8 = 20;
    while (1)
    {
      v9 = +[TSClockManager sharedClockManager];
      v10 = [v9 clockWithClockIdentifier:a3];
      clock = v4->_clock;
      v4->_clock = v10;

      [(TSClock *)v4->_clock addClient:v4];
      if (v4->_clock)
      {
        break;
      }

      usleep(0x186A0u);
      v12 = v4->_clock;
      v13 = v8-- != 0;
      if (v12 || v8 == 0 || !v13)
      {
        if (!v12)
        {
          [TSClockInterface initWithClockIdentifier:v4];
          return 0;
        }

        return v4;
      }
    }
  }

  return v4;
}

- (void)setLockStateNotificationCallback:(void *)a3 refcon:(void *)a4
{
  notificationsQueue = self->_notificationsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__TSClockInterface_setLockStateNotificationCallback_refcon___block_invoke;
  block[3] = &unk_279DBDF78;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(notificationsQueue, block);
}

void *__60__TSClockInterface_setLockStateNotificationCallback_refcon___block_invoke(void *result)
{
  *(result[4] + 16) = result[5];
  *(result[4] + 24) = result[6];
  return result;
}

- (void)setMasterChangeNotificationCallback:(void *)a3 refcon:(void *)a4
{
  notificationsQueue = self->_notificationsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__TSClockInterface_setMasterChangeNotificationCallback_refcon___block_invoke;
  block[3] = &unk_279DBDF78;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(notificationsQueue, block);
}

void *__63__TSClockInterface_setMasterChangeNotificationCallback_refcon___block_invoke(void *result)
{
  *(result[4] + 32) = result[5];
  *(result[4] + 40) = result[6];
  return result;
}

- (void)setTimeSyncTimeChangeNotificationCallback:(void *)a3 refcon:(void *)a4
{
  notificationsQueue = self->_notificationsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__TSClockInterface_setTimeSyncTimeChangeNotificationCallback_refcon___block_invoke;
  block[3] = &unk_279DBDF78;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(notificationsQueue, block);
}

void __69__TSClockInterface_setTimeSyncTimeChangeNotificationCallback_refcon___block_invoke(void *a1)
{
  v2 = +[TSClockManager sharedClockManager];
  v7 = [v2 translationClock];

  v3 = a1[4];
  v4 = a1[5];
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    [v7 removeClient:?];
    v3 = a1[4];
    v4 = a1[5];
  }

  *(v3 + 48) = v4;
  *(a1[4] + 56) = a1[6];
  if (a1[5] && !v5)
  {
    [v7 addClient:a1[4]];
  }
}

- (void)setgPTPGrandmasterNotificationCallback:(void *)a3 refcon:(void *)a4
{
  notificationsQueue = self->_notificationsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__TSClockInterface_setgPTPGrandmasterNotificationCallback_refcon___block_invoke;
  block[3] = &unk_279DBDF78;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(notificationsQueue, block);
}

void *__66__TSClockInterface_setgPTPGrandmasterNotificationCallback_refcon___block_invoke(void *result)
{
  *(result[4] + 64) = result[5];
  *(result[4] + 72) = result[6];
  return result;
}

- (void)setgPTPGrandmasterIDAndPortNotificationCallback:(void *)a3 refcon:(void *)a4
{
  notificationsQueue = self->_notificationsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__TSClockInterface_setgPTPGrandmasterIDAndPortNotificationCallback_refcon___block_invoke;
  block[3] = &unk_279DBDF78;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(notificationsQueue, block);
}

void *__75__TSClockInterface_setgPTPGrandmasterIDAndPortNotificationCallback_refcon___block_invoke(void *result)
{
  *(result[4] + 80) = result[5];
  *(result[4] + 88) = result[6];
  return result;
}

- (void)setgPTPLocalPortNotificationCallback:(void *)a3 refcon:(void *)a4
{
  notificationsQueue = self->_notificationsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__TSClockInterface_setgPTPLocalPortNotificationCallback_refcon___block_invoke;
  block[3] = &unk_279DBDF78;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(notificationsQueue, block);
}

void *__64__TSClockInterface_setgPTPLocalPortNotificationCallback_refcon___block_invoke(void *result)
{
  *(result[4] + 96) = result[5];
  *(result[4] + 104) = result[6];
  return result;
}

- (void)didChangeClockMasterForClock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(TSClockInterface *)self description];
    *buf = 136315394;
    v13 = [v5 UTF8String];
    v14 = 2048;
    v15 = [(TSClock *)v4 clockIdentifier];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s didChangeClockMasterForClock:0x%016llx\n", buf, 0x16u);
  }

  notificationsQueue = self->_notificationsQueue;
  if (self->_clock == v4)
  {
    v7 = block;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v8 = __49__TSClockInterface_didChangeClockMasterForClock___block_invoke;
  }

  else
  {
    v7 = v10;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v8 = __49__TSClockInterface_didChangeClockMasterForClock___block_invoke_71;
  }

  v7[2] = v8;
  v7[3] = &unk_279DBD538;
  v7[4] = self;
  dispatch_async(notificationsQueue, v7);

  v9 = *MEMORY[0x277D85DE8];
}

void __49__TSClockInterface_didChangeClockMasterForClock___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 32))
  {
    v2 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) description];
      v4 = [v3 UTF8String];
      v5 = *(a1 + 32);
      v7 = *(v5 + 32);
      v6 = *(v5 + 40);
      v14 = 136315650;
      v15 = v4;
      v16 = 2048;
      v17 = v7;
      v18 = 2048;
      v19 = v6;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s calling master changed callback function %p refcon %p\n", &v14, 0x20u);
    }

    (*(*(a1 + 32) + 32))(*(a1 + 32), *(*(a1 + 32) + 40));
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) description];
      v9 = [v8 UTF8String];
      v10 = *(a1 + 32);
      v12 = *(v10 + 32);
      v11 = *(v10 + 40);
      v14 = 136315650;
      v15 = v9;
      v16 = 2048;
      v17 = v12;
      v18 = 2048;
      v19 = v11;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s finished master changed callback function %p refcon %p\n", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __49__TSClockInterface_didChangeClockMasterForClock___block_invoke_71(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 48))
  {
    v2 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) description];
      v4 = [v3 UTF8String];
      v5 = *(a1 + 32);
      v7 = *(v5 + 48);
      v6 = *(v5 + 56);
      v14 = 136315650;
      v15 = v4;
      v16 = 2048;
      v17 = v7;
      v18 = 2048;
      v19 = v6;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s calling tiesynctime changed callback function %p refcon %p\n", &v14, 0x20u);
    }

    (*(*(a1 + 32) + 48))(*(a1 + 32), *(*(a1 + 32) + 56));
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) description];
      v9 = [v8 UTF8String];
      v10 = *(a1 + 32);
      v12 = *(v10 + 48);
      v11 = *(v10 + 56);
      v14 = 136315650;
      v15 = v9;
      v16 = 2048;
      v17 = v12;
      v18 = 2048;
      v19 = v11;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s finished tiesynctime changed callback function %p refcon %p\n", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didChangeLockStateTo:(int)a3 forClock:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(TSClockInterface *)self description];
    *buf = 136315650;
    v16 = [v7 UTF8String];
    v17 = 1024;
    *v18 = a3;
    *&v18[4] = 2048;
    *&v18[6] = [v6 clockIdentifier];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s didChangeLockStateTo:%d forClock:0x%016llx\n", buf, 0x1Cu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(TSClockInterface *)self description];
    v9 = [v8 UTF8String];
    v10 = [v6 clockIdentifier];
    *buf = 136315650;
    v16 = v9;
    v17 = 2048;
    *v18 = v10;
    *&v18[8] = 1024;
    *&v18[10] = a3;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[Lock state] Client %s received lock state change for clock 0x%016llx to %d", buf, 0x1Cu);
  }

  notificationsQueue = self->_notificationsQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__TSClockInterface_didChangeLockStateTo_forClock___block_invoke;
  v13[3] = &unk_279DBD7D0;
  v13[4] = self;
  v14 = a3;
  dispatch_async(notificationsQueue, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __50__TSClockInterface_didChangeLockStateTo_forClock___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 16))
  {
    v2 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) description];
      v4 = [v3 UTF8String];
      v5 = *(a1 + 32);
      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      v8 = *(a1 + 40);
      v16 = 136315906;
      v17 = v4;
      v18 = 2048;
      v19 = v7;
      v20 = 2048;
      v21 = v6;
      v22 = 1024;
      v23 = v8;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s calling lock state callback function %p refcon %p lockstate %d\n", &v16, 0x26u);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(a1 + 32) + 24), *(a1 + 40));
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) description];
      v10 = [v9 UTF8String];
      v11 = *(a1 + 32);
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      v14 = *(a1 + 40);
      v16 = 136315906;
      v17 = v10;
      v18 = 2048;
      v19 = v13;
      v20 = 2048;
      v21 = v12;
      v22 = 1024;
      v23 = v14;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s finished lock state callback function %p refcon %p lockstate %d\n", &v16, 0x26u);
    }

    objc_autoreleasePoolPop(v2);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)didEndClockGrandmasterChangeForClock:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(TSClockInterface *)self description];
    *buf = 136315394;
    v16 = [v5 UTF8String];
    v17 = 2048;
    v18 = [v4 clockIdentifier];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s didEndClockGrandmasterChangeForClock:0x%016llx\n", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(TSClockInterface *)self description];
    v7 = [v6 UTF8String];
    v8 = [v4 clockIdentifier];
    v9 = [v4 grandmasterIdentity];
    *buf = 136315650;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    v19 = 2048;
    v20 = v9;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[GM Change] Client %s received GM change callback for clock 0x%016llx to GMID 0x%016llx", buf, 0x20u);
  }

  notificationsQueue = self->_notificationsQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__TSClockInterface_didEndClockGrandmasterChangeForClock___block_invoke;
  v13[3] = &unk_279DBD738;
  v13[4] = self;
  v14 = v4;
  v11 = v4;
  dispatch_async(notificationsQueue, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __57__TSClockInterface_didEndClockGrandmasterChangeForClock___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 64))
  {
    v2 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) description];
      v4 = [v3 UTF8String];
      v5 = *(a1 + 32);
      v6 = *(v5 + 64);
      v7 = *(v5 + 72);
      v8 = [*(a1 + 40) clockIdentifier];
      v9 = [*(a1 + 40) grandmasterIdentity];
      v18 = 136316162;
      v19 = v4;
      v20 = 2048;
      v21 = v6;
      v22 = 2048;
      v23 = v7;
      v24 = 2048;
      v25 = v8;
      v26 = 2048;
      v27 = v9;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s calling end grandmaster changed callback function %p refcon %p clock 0x%016llx grandmaster 0x%016llx\n", &v18, 0x34u);
    }

    (*(*(a1 + 32) + 64))(*(a1 + 32), *(*(a1 + 32) + 72), [*(a1 + 40) grandmasterIdentity]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) description];
      v11 = [v10 UTF8String];
      v12 = *(a1 + 32);
      v13 = *(v12 + 64);
      v14 = *(v12 + 72);
      v15 = [*(a1 + 40) clockIdentifier];
      v16 = [*(a1 + 40) grandmasterIdentity];
      v18 = 136316162;
      v19 = v11;
      v20 = 2048;
      v21 = v13;
      v22 = 2048;
      v23 = v14;
      v24 = 2048;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s finished end grandmaster changed callback function %p refcon %p clock 0x%016llx grandmaster 0x%016llx\n", &v18, 0x34u);
    }

    objc_autoreleasePoolPop(v2);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)a3 localPort:(unsigned __int16)a4 forClock:(id)a5
{
  v5 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(TSClockInterface *)self description];
    *buf = 136315906;
    v21 = [v9 UTF8String];
    v22 = 2048;
    v23 = a3;
    v24 = 1024;
    v25 = v5;
    v26 = 2048;
    v27 = [v8 clockIdentifier];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s didEndClockGrandmasterChangeWithGrandmasterID:0x%016llx localPort:%hu forClock:0x%016llx\n", buf, 0x26u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(TSClockInterface *)self description];
    v11 = [v10 UTF8String];
    v12 = [v8 clockIdentifier];
    *buf = 136315906;
    v21 = v11;
    v22 = 2048;
    v23 = v12;
    v24 = 1024;
    v25 = v5;
    v26 = 2048;
    v27 = a3;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[GM Change] Client %s received GM change callback for clock 0x%016llx, port %hu, to GMID 0x%016llx", buf, 0x26u);
  }

  notificationsQueue = self->_notificationsQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__TSClockInterface_didEndClockGrandmasterChangeWithGrandmasterID_localPort_forClock___block_invoke;
  v16[3] = &unk_279DBDFA0;
  v16[4] = self;
  v17 = v8;
  v18 = a3;
  v19 = v5;
  v14 = v8;
  dispatch_async(notificationsQueue, v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __85__TSClockInterface_didEndClockGrandmasterChangeWithGrandmasterID_localPort_forClock___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 80))
  {
    v2 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) description];
      v4 = [v3 UTF8String];
      v5 = *(a1 + 32);
      v6 = *(v5 + 80);
      v7 = *(v5 + 88);
      v8 = [*(a1 + 40) clockIdentifier];
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v20 = 136316418;
      v21 = v4;
      v22 = 2048;
      v23 = v6;
      v24 = 2048;
      v25 = v7;
      v26 = 2048;
      v27 = v8;
      v28 = 2048;
      v29 = v9;
      v30 = 1024;
      v31 = v10;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s calling end grandmaster and port changed callback function %p refcon %p clock 0x%016llx grandmaster 0x%016llx localport %hu\n", &v20, 0x3Au);
    }

    (*(*(a1 + 32) + 80))(*(a1 + 32), *(*(a1 + 32) + 88), *(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) description];
      v12 = [v11 UTF8String];
      v13 = *(a1 + 32);
      v14 = *(v13 + 80);
      v15 = *(v13 + 88);
      v16 = [*(a1 + 40) clockIdentifier];
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      v20 = 136316418;
      v21 = v12;
      v22 = 2048;
      v23 = v14;
      v24 = 2048;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      v28 = 2048;
      v29 = v17;
      v30 = 1024;
      v31 = v18;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s finished end grandmaster and port changed callback function %p refcon %p clock 0x%016llx grandmaster 0x%016llx localport %hu\n", &v20, 0x3Au);
    }

    objc_autoreleasePoolPop(v2);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)didChangeLocalPortWithGrandmasterID:(unint64_t)a3 localPort:(unsigned __int16)a4 forClock:(id)a5
{
  v5 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(TSClockInterface *)self description];
    *buf = 136315906;
    v18 = [v9 UTF8String];
    v19 = 2048;
    v20 = a3;
    v21 = 1024;
    v22 = v5;
    v23 = 2048;
    v24 = [v8 clockIdentifier];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s didChangeLocalPortWithGrandmasterID:0x%016llx localPort:%hu forClock:0x%016llx\n", buf, 0x26u);
  }

  notificationsQueue = self->_notificationsQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__TSClockInterface_didChangeLocalPortWithGrandmasterID_localPort_forClock___block_invoke;
  v13[3] = &unk_279DBDFA0;
  v13[4] = self;
  v14 = v8;
  v15 = a3;
  v16 = v5;
  v11 = v8;
  dispatch_async(notificationsQueue, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __75__TSClockInterface_didChangeLocalPortWithGrandmasterID_localPort_forClock___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 96))
  {
    v2 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) description];
      v4 = [v3 UTF8String];
      v5 = *(a1 + 32);
      v6 = *(v5 + 96);
      v7 = *(v5 + 104);
      v8 = [*(a1 + 40) clockIdentifier];
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v20 = 136316418;
      v21 = v4;
      v22 = 2048;
      v23 = v6;
      v24 = 2048;
      v25 = v7;
      v26 = 2048;
      v27 = v8;
      v28 = 2048;
      v29 = v9;
      v30 = 1024;
      v31 = v10;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s calling local port changed callback function %p refcon %p clock 0x%016llx grandmaster 0x%016llx localport %hu\n", &v20, 0x3Au);
    }

    (*(*(a1 + 32) + 96))(*(a1 + 32), *(*(a1 + 32) + 104), *(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) description];
      v12 = [v11 UTF8String];
      v13 = *(a1 + 32);
      v14 = *(v13 + 96);
      v15 = *(v13 + 104);
      v16 = [*(a1 + 40) clockIdentifier];
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      v20 = 136316418;
      v21 = v12;
      v22 = 2048;
      v23 = v14;
      v24 = 2048;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      v28 = 2048;
      v29 = v17;
      v30 = 1024;
      v31 = v18;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s finished local port changed callback function %p refcon %p clock 0x%016llx grandmaster 0x%016llx localport %hu\n", &v20, 0x3Au);
    }

    objc_autoreleasePoolPop(v2);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)initWithClockIdentifier:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end