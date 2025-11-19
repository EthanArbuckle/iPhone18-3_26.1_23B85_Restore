@interface TSClockManager
+ (id)clockManager;
+ (id)diagnosticDescriptionForClockIdentifier:(unint64_t)a3 withIndent:(id)a4;
+ (id)diagnosticDescriptionForInfo:(id)a3 withIndent:(id)a4;
+ (id)diagnosticInfo;
+ (id)diagnosticInfoForClockIdentifier:(unint64_t)a3;
+ (id)frameworkClassNameForDaemonClassName:(id)a3;
+ (id)sharedClockManager;
+ (id)sharedClockManagerSyncWithTimeout:(unint64_t)a3;
+ (void)initialize;
- (BOOL)getConnectionForClockWithClockIdentifier:(unint64_t)a3 daemonClockClassName:(id *)a4 endpoint:(id *)a5;
- (BOOL)getConnectionForPortWithClockIdentifier:(unint64_t)a3 portNumber:(unsigned __int16)a4 daemonPortClassName:(id *)a5 endpoint:(id *)a6;
- (TSClockManager)init;
- (id)availableClockIdentifiers;
- (id)clockWithClockIdentifier:(unint64_t)a3;
- (unint64_t)machAbsoluteNanosecondsToTicks:(unint64_t)a3;
- (unint64_t)machAbsoluteTicksToNanoseconds:(unint64_t)a3;
- (void)addClient:(id)a3;
- (void)init;
- (void)interruptedClockManager;
- (void)removeClient:(id)a3;
@end

@implementation TSClockManager

+ (id)frameworkClassNameForDaemonClassName:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"_TSF_TSD" withString:@"TS"];

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    _sharedClockManagerLock = 0;
  }
}

+ (id)sharedClockManager
{
  os_unfair_lock_lock(&_sharedClockManagerLock);
  v3 = _sharedClockManager;
  if (!_sharedClockManager)
  {
    v4 = [a1 clockManager];
    v5 = _sharedClockManager;
    _sharedClockManager = v4;

    v3 = _sharedClockManager;
  }

  v6 = v3;
  os_unfair_lock_unlock(&_sharedClockManagerLock);

  return v6;
}

+ (id)sharedClockManagerSyncWithTimeout:(unint64_t)a3
{
  v5 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__TSClockManager_sharedClockManagerSyncWithTimeout___block_invoke;
  v11[3] = &unk_279DBD658;
  v6 = v5;
  v12 = v6;
  [a1 notifyWhenClockManagerIsAvailable:v11];
  v7 = dispatch_time(0, 1000000 * a3);
  if (dispatch_semaphore_wait(v6, v7))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to find clock manager within the timeout period.\n", v10, 2u);
    }

    v8 = 0;
  }

  else
  {
    v8 = [a1 sharedClockManager];
  }

  return v8;
}

+ (id)clockManager
{
  v2 = objc_alloc_init(TSClockManager);
  if (!v2)
  {
    v3 = 10;
    do
    {
      usleep(0x2710u);
      v2 = objc_alloc_init(TSClockManager);
      if (v3 < 2)
      {
        break;
      }

      --v3;
    }

    while (!v2);
  }

  return v2;
}

- (TSClockManager)init
{
  v17.receiver = self;
  v17.super_class = TSClockManager;
  v2 = [(TSClockManager *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_clientLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    clients = v3->_clients;
    v3->_clients = v4;

    mach_timebase_info(&v3->_timebaseInfo);
    v6 = objc_alloc_init(_TSF_TSDClockManager);
    impl = v3->_impl;
    v3->_impl = v6;

    if (v3->_impl)
    {
      v8 = [[_TSF_TSDKernelClock alloc] initWithClockIdentifier:[(_TSF_TSDClockManager *)v3->_impl translationClockIdentifier]];
      if (v8)
      {
        v9 = [[TSDCTranslationClock alloc] initWithClockIdentifier:[(_TSF_TSDClockManager *)v3->_impl translationClockIdentifier]];
        if (v9)
        {
          objc_storeStrong(&v3->_translationClockDC, v9);
          v10 = [TSTranslationClock alloc];
          v11 = [(TSDCTranslationClock *)v9 translationClock];
          v12 = [(TSTranslationClock *)v10 initWithTranslationClock:v11];
          translationClock = v3->_translationClock;
          v3->_translationClock = v12;

          v14 = [[TSTimeSyncClock alloc] initWithClockIdentifier:[(_TSF_TSDClockManager *)v3->_impl timeSyncTimeClockIdentifier] translationClock:v3->_translationClock];
          timeSyncClock = v3->_timeSyncClock;
          v3->_timeSyncClock = &v14->super;
        }

        else
        {
          [(TSClockManager *)v3 init];
          v3 = 0;
        }

        goto LABEL_7;
      }

      [(TSClockManager *)v3 init];
    }

    else
    {
      [(TSClockManager *)v3 init];
    }

    v8 = v18;
    v3 = v19;
LABEL_7:
  }

  return v3;
}

- (id)availableClockIdentifiers
{
  v2 = [(_TSF_TSDClockManager *)self->_impl availableClockIdentifiers];

  return v2;
}

- (id)clockWithClockIdentifier:(unint64_t)a3
{
  if ([(TSClockManager *)self timeSyncTimeClockIdentifier]== a3)
  {
    v5 = [(TSClockManager *)self timeSyncClock];
LABEL_5:
    v6 = v5;
    goto LABEL_11;
  }

  if ([(TSClockManager *)self translationClockIdentifier]== a3)
  {
    v5 = [(TSClockManager *)self translationClock];
    goto LABEL_5;
  }

  v7 = [TSDCKernelClock clockWithIdentifier:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = off_279DBD2D8;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = off_279DBD238;
    if (isKindOfClass)
    {
      v8 = off_279DBD2B8;
    }
  }

  v6 = [objc_alloc(*v8) initWithImplDC:v7];

LABEL_11:

  return v6;
}

- (BOOL)getConnectionForClockWithClockIdentifier:(unint64_t)a3 daemonClockClassName:(id *)a4 endpoint:(id *)a5
{
  *a4 = 0;
  *a5 = 0;
  return 0;
}

- (BOOL)getConnectionForPortWithClockIdentifier:(unint64_t)a3 portNumber:(unsigned __int16)a4 daemonPortClassName:(id *)a5 endpoint:(id *)a6
{
  *a5 = 0;
  *a6 = 0;
  return 0;
}

- (unint64_t)machAbsoluteTicksToNanoseconds:(unint64_t)a3
{
  numer = self->_timebaseInfo.numer;
  if (numer != self->_timebaseInfo.denom)
  {
    v10[4] = v3;
    v10[5] = v4;
    *&v9 = IOTS_uint64mul(a3, numer);
    *(&v9 + 1) = v7;
    v10[0] = self->_timebaseInfo.denom;
    v10[1] = 0;
    return IOTS_U128::operator/(&v9, v10);
  }

  return a3;
}

- (unint64_t)machAbsoluteNanosecondsToTicks:(unint64_t)a3
{
  denom = self->_timebaseInfo.denom;
  if (self->_timebaseInfo.numer != denom)
  {
    v10[4] = v3;
    v10[5] = v4;
    *&v9 = IOTS_uint64mul(a3, denom);
    *(&v9 + 1) = v7;
    v10[0] = self->_timebaseInfo.numer;
    v10[1] = 0;
    return IOTS_U128::operator/(&v9, v10);
  }

  return a3;
}

+ (id)diagnosticDescriptionForInfo:(id)a3 withIndent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAB68] string];
  v8 = [v5 objectForKeyedSubscript:@"ClassName"];
  [v7 appendFormat:@"%@+%@\n", v6, v8];

  [v7 appendFormat:@"%@    TimeSyncTime Clock Identifier: ", v6];
  v9 = [v5 objectForKeyedSubscript:@"TimeSyncTimeClockID"];
  v10 = v9;
  if (v9)
  {
    [v7 appendFormat:@"0x%016llx\n", objc_msgSend(v9, "unsignedLongLongValue")];
  }

  else
  {
    [v7 appendString:@"Could not read property\n"];
  }

  [v7 appendFormat:@"%@    TimeSyncTime CoreAudio Clock Domain: ", v6];
  v11 = [v5 objectForKeyedSubscript:@"TimeSyncTimeCoreAudioClockDomain"];

  if (v11)
  {
    [v7 appendFormat:@"0x%08x\n", objc_msgSend(v11, "unsignedIntValue")];
  }

  else
  {
    [v7 appendString:@"Could not read property\n"];
  }

  return v7;
}

+ (id)diagnosticInfo
{
  v2 = +[_TSF_TSDClockManager diagnosticInfo];

  return v2;
}

+ (id)diagnosticDescriptionForClockIdentifier:(unint64_t)a3 withIndent:(id)a4
{
  v6 = a4;
  v13 = 0;
  v7 = [_TSF_TSDClockManager diagnosticInfoForClockIdentifier:a3 daemonClassName:&v13];
  v8 = v13;
  v9 = [a1 frameworkClassNameForDaemonClassName:v8];
  v10 = v9;
  if (v9)
  {
    [NSClassFromString(v9) diagnosticDescriptionForInfo:v7 withIndent:v6];
  }

  else
  {
    [MEMORY[0x277CCAB68] stringWithFormat:@"Could not find class to describe service\n"];
  }
  v11 = ;

  return v11;
}

+ (id)diagnosticInfoForClockIdentifier:(unint64_t)a3
{
  v3 = [_TSF_TSDClockManager diagnosticInfoForClockIdentifier:a3 daemonClassName:0];

  return v3;
}

- (void)addClient:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_clients;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v10 + 1) + 8 * v8) == v4)
        {

          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  [(NSPointerArray *)self->_clients addPointer:v4, v10];
LABEL_11:
  os_unfair_lock_unlock(&self->_clientLock);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeClient:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_clients;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      v7 += v6;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v12 + 1) + 8 * v9) == v4)
        {

          [(NSPointerArray *)self->_clients removePointerAtIndex:v10, v12];
          goto LABEL_11;
        }

        ++v10;
        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  os_unfair_lock_unlock(&self->_clientLock);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)interruptedClockManager
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_clients;
  v4 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        if (v7)
        {
          v8 = *(*(&v12 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 interruptedConnectionForClockManager:self];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&self->_clientLock);
  v9 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__TSClockManager_interruptedClockManager__block_invoke;
  block[3] = &unk_279DBD658;
  block[4] = self;
  dispatch_async(v9, block);

  v10 = *MEMORY[0x277D85DE8];
}

void __41__TSClockManager_interruptedClockManager__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&_sharedClockManagerLock);
  v3 = _sharedClockManager;
  if (*(a1 + 32) == _sharedClockManager)
  {
    _sharedClockManager = 0;
  }

  os_unfair_lock_unlock(&_sharedClockManagerLock);

  objc_autoreleasePoolPop(v2);
}

- (void)init
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v6, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v7, v8, v9, v10, 2u);
  }

  *a3 = 0;
  *a2 = a1;
  v11 = *MEMORY[0x277D85DE8];
}

@end