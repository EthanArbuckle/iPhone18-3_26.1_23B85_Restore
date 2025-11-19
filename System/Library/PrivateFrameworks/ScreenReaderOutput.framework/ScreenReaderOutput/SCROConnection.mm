@interface SCROConnection
+ (BOOL)inUnitTests;
+ (void)_addConnectionToRunLoop:(id)a3;
+ (void)_configServer;
+ (void)_configServerWithMachServiceName:(char *)a3;
+ (void)_createConnectionRunLoop;
+ (void)_unconfigServerAndRetry:(BOOL)a3;
+ (void)initialize;
- (SCROConnection)initWithCoder:(id)a3;
- (SCROConnection)initWithHandlerType:(int)a3 delegate:(id)a4;
- (int)performHandlerActionForKey:(int)a3;
- (int)registerHandlerCallbackForKey:(int)a3;
- (int)sendEvent:(id)a3;
- (void)_ping;
- (void)_startConnection;
- (void)_stopConnection;
- (void)invalidate;
@end

@implementation SCROConnection

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v4 = _Lock_0;
    _Lock_0 = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v6 = _ConfigLock;
    _ConfigLock = v5;

    v7 = MEMORY[0x277CBF158];
    _PendingConnections = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
    _ActiveConnections = CFSetCreateMutable(0, 0, v7);
    v8 = MEMORY[0x277CCACC8];

    [v8 detachNewThreadSelector:sel__createConnectionRunLoop toTarget:a1 withObject:0];
  }
}

+ (void)_createConnectionRunLoop
{
  memset(&context, 0, 72);
  context.perform = _addConnections;
  v3 = CFRunLoopSourceCreate(0, 0, &context);
  v8.version = 0;
  memset(&v8.retain, 0, 24);
  v8.info = a1;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = CFRunLoopTimerCreate(0, Current + 630720000.0, 630720000.0, 0, 0, _retryHandler, &v8);
  [_Lock_0 lock];
  _RetryState_2 = 0xC1E6CEAF20000000;
  _ShouldLogDeath = 1;
  _ShouldLogRebirth = 0;
  _ConnectionSource = v3;
  _ConnectionRetryTimer = v5;
  _ConnectionRunLoop = CFRunLoopGetCurrent();
  CFRunLoopAddSource(_ConnectionRunLoop, _ConnectionSource, *MEMORY[0x277CBF058]);
  CFRunLoopAddTimer(_ConnectionRunLoop, _ConnectionRetryTimer, *MEMORY[0x277CBF048]);
  CFRunLoopSourceSignal(_ConnectionSource);
  CFRunLoopWakeUp(_ConnectionRunLoop);
  [_Lock_0 unlock];
  v6 = objc_autoreleasePoolPush();
  [a1 _configServer];
  objc_autoreleasePoolPop(v6);
  while (1)
  {
    v7 = objc_autoreleasePoolPush();
    CFRunLoopRun();
    objc_autoreleasePoolPop(v7);
  }
}

+ (BOOL)inUnitTests
{
  if (inUnitTests_onceToken != -1)
  {
    +[SCROConnection inUnitTests];
  }

  return inUnitTests_InUnitTests;
}

Class __29__SCROConnection_inUnitTests__block_invoke()
{
  result = NSClassFromString(&cfstr_Scrolocalconne.isa);
  inUnitTests_InUnitTests = result != 0;
  return result;
}

+ (void)_configServer
{
  if (NSClassFromString(&cfstr_Scrolocalconne.isa))
  {
    v3 = "com.apple.scrod.unittest";
  }

  else
  {
    v3 = "com.apple.scrod";
  }

  [a1 _configServerWithMachServiceName:v3];
}

+ (void)_configServerWithMachServiceName:(char *)a3
{
  if ([_ConfigLock tryLock])
  {
    if (_IsServerConfigured)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      if (_ConnectionRunLoop)
      {
        v6 = *MEMORY[0x277D85F48];
        HIDWORD(v14) = 0;
        v7 = bootstrap_look_up(*MEMORY[0x277D85F18], a3, &v14 + 1);
        [_Lock_0 lock];
        _ServerPort = HIDWORD(v14);
        [_Lock_0 unlock];
        if (v7)
        {
          if (v7 == 1102 && ([objc_opt_class() inUnitTests] & 1) == 0)
          {
            v8 = _SCROD_LOG();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              [(SCROConnection *)a3 _configServerWithMachServiceName:v8];
            }
          }
        }

        else
        {
          _DeathSource = MSHCreateMachServerSource();
          if (_DeathSource)
          {
            LODWORD(v14) = 0;
            v10 = _ServerPort;
            v11 = MSHGetMachPortFromSource();
            mach_port_request_notification(v6, v10, 72, 0, v11, 0x15u, &v14);
            CFRunLoopAddSource(_ConnectionRunLoop, _DeathSource, *MEMORY[0x277CBF048]);
            _IsServerConfigured = 1;
            v12 = _ConnectionRetryTimer;
            Current = CFAbsoluteTimeGetCurrent();
            CFRunLoopTimerSetNextFireDate(v12, Current + 630720000.0);
            CFSetApplyFunction(_ActiveConnections, _startConnection, 0);
            CFRunLoopSourceSignal(_ConnectionSource);
            CFRunLoopWakeUp(_ConnectionRunLoop);
            if (_ShouldLogRebirth == 1)
            {
              _ShouldLogRebirth = 0;
              fwrite("Screen Reader Output Server: CONNECTED\n", 0x27uLL, 1uLL, *MEMORY[0x277D85DF8]);
            }

            v5 = 0;
            _ShouldLogDeath = 1;
            goto LABEL_19;
          }

          NSLog(&cfstr_ErrorCouldNotC.isa);
        }

        v5 = 1;
      }
    }

LABEL_19:
    [_ConfigLock unlock];
    if (v5)
    {
      [a1 _unconfigServerAndRetry:1];
    }

    return;
  }

  if (*&_RetryState_1 < 10.0)
  {
    v9 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SCROConnection__configServerWithMachServiceName___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_after(v9, MEMORY[0x277D85CD0], block);
  }
}

+ (void)_unconfigServerAndRetry:(BOOL)a3
{
  v3 = a3;
  [_ConfigLock lock];
  if (_IsServerConfigured == 1)
  {
    CFSetApplyFunction(_ActiveConnections, _stopConnection, 0);
  }

  _IsServerConfigured = 0;
  if (_DeathSource)
  {
    CFRunLoopSourceInvalidate(_DeathSource);
    CFRelease(_DeathSource);
    _DeathSource = 0;
  }

  [_Lock_0 lock];
  if (_ServerPort)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], _ServerPort);
    _ServerPort = 0;
  }

  [_Lock_0 unlock];
  if (v3)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - *&_RetryState_2 <= 60.0)
    {
      ++_RetryState_0;
      HIDWORD(v5) = -858993459 * _RetryState_0;
      LODWORD(v5) = -858993459 * _RetryState_0;
      if ((v5 >> 1) <= 0x19999999)
      {
        _RetryState_0 = 0;
        v6 = *&_RetryState_1 + *&_RetryState_1;
        *&_RetryState_1 = *&_RetryState_1 + *&_RetryState_1;
        goto LABEL_12;
      }
    }

    else
    {
      _RetryState_1 = 0x3F847AE147AE147BLL;
      _RetryState_0 = 1;
    }

    v6 = *&_RetryState_1;
LABEL_12:
    if (v6 > 20.0)
    {
      _RetryState_1 = 0x4034000000000000;
    }

    _RetryState_2 = *&Current;
    v7 = _ConnectionRetryTimer;
    v8 = CFAbsoluteTimeGetCurrent();
    CFRunLoopTimerSetNextFireDate(v7, v8 + *&_RetryState_1);
    if (_ShouldLogDeath == 1)
    {
      _ShouldLogDeath = 0;
      fwrite("Screen Reader Output Server: NOT AVAILABLE\n", 0x2BuLL, 1uLL, *MEMORY[0x277D85DF8]);
    }
  }

  _ShouldLogRebirth = 1;
  [_ConfigLock unlock];
}

+ (void)_addConnectionToRunLoop:(id)a3
{
  v4 = a3;
  [a1 _configServer];
  [_Lock_0 lock];
  CFSetSetValue(_PendingConnections, v4);

  if (_ConnectionRunLoop)
  {
    CFRunLoopSourceSignal(_ConnectionSource);
    CFRunLoopWakeUp(_ConnectionRunLoop);
  }

  v5 = _Lock_0;

  [v5 unlock];
}

- (SCROConnection)initWithHandlerType:(int)a3 delegate:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SCROConnection;
  v7 = [(SCROConnection *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_handlerType = a3;
    objc_storeWeak(&v7->_delegate, v6);
    [objc_opt_class() _addConnectionToRunLoop:v8];
  }

  return v8;
}

- (void)invalidate
{
  invalidationSource = self->_invalidationSource;
  if (invalidationSource)
  {
    v3 = _ConnectionRunLoop == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    CFRunLoopSourceSignal(invalidationSource);
    v4 = _ConnectionRunLoop;

    CFRunLoopWakeUp(v4);
  }
}

- (void)_startConnection
{
  v2 = atomic_load(&self->_isConnectionStarted);
  if ((v2 & 1) == 0)
  {
    [_Lock_0 lock];
    if (!_ServerPort)
    {
      if (([objc_opt_class() inUnitTests] & 1) == 0)
      {
        v5 = _SCROD_LOG();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [(SCROConnection *)v5 _startConnection];
        }
      }

      [_Lock_0 unlock];
      goto LABEL_16;
    }

    v16 = 0;
    v4 = _SCRORegisterWithServer(_ServerPort, 19, &self->_pingPort, &self->_identifier, &v16);
    [_Lock_0 unlock];
    if (v4)
    {
      NSLog(&cfstr_ErrorCouldNotR.isa);
LABEL_16:
      [(SCROConnection *)self invalidate];
      return;
    }

    if (v16 == 3)
    {
      NSLog(&cfstr_ErrorVersionMi.isa);
      goto LABEL_16;
    }

    pingPort = self->_pingPort;
    v7 = MSHCreateMIGServerSource();
    self->_pingSource = v7;
    if (!v7)
    {
      NSLog(&cfstr_ErrorCouldNotC_0.isa);
      goto LABEL_16;
    }

    context.version = 0;
    memset(&context.copyDescription, 0, 40);
    context.info = self;
    context.retain = MEMORY[0x277CBE558];
    context.release = MEMORY[0x277CBE550];
    context.perform = _invalidateConnection;
    self->_invalidationSource = CFRunLoopSourceCreate(0, 0, &context);
    v8 = *MEMORY[0x277CBF048];
    CFRunLoopAddSource(_ConnectionRunLoop, self->_pingSource, *MEMORY[0x277CBF048]);
    CFRunLoopAddSource(_ConnectionRunLoop, self->_invalidationSource, v8);
    atomic_store(1u, &self->_isConnectionStarted);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      v11 = _ConnectionRunLoop;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __34__SCROConnection__startConnection__block_invoke;
      v13[3] = &unk_279B74088;
      v13[4] = self;
      v14 = v10;
      v12 = v10;
      CFRunLoopPerformBlock(v11, v8, v13);
      CFRunLoopWakeUp(_ConnectionRunLoop);
    }
  }
}

void __34__SCROConnection__startConnection__block_invoke(uint64_t a1)
{
  v2 = [[SCROCallback alloc] initWithKey:3 object:*(a1 + 32)];
  [(SCROCallback *)v2 postToHandler:*(a1 + 40)];
}

- (void)_stopConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = atomic_load(&self->_isConnectionStarted);
  v9 = WeakRetained;
  if ((v4 & 1) != 0 && WeakRetained)
  {
    v5 = [[SCROCallback alloc] initWithKey:4 object:self];
    [(SCROCallback *)v5 postToHandler:v9];
  }

  atomic_store(0, &self->_isConnectionStarted);
  pingSource = self->_pingSource;
  if (pingSource)
  {
    CFRunLoopSourceInvalidate(pingSource);
    CFRelease(self->_pingSource);
    self->_pingSource = 0;
  }

  invalidationSource = self->_invalidationSource;
  if (invalidationSource)
  {
    CFRunLoopSourceInvalidate(invalidationSource);
    CFRelease(self->_invalidationSource);
    self->_invalidationSource = 0;
  }

  pingPort = self->_pingPort;
  if (pingPort)
  {
    mach_port_mod_refs(*MEMORY[0x277D85F48], pingPort, 1u, -1);
    self->_pingPort = 0;
  }
}

- (int)sendEvent:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(v20, 0, 512);
  v18 = 0;
  *&v17[1] = 0;
  v17[0] = 0;
  memset(v19, 0, 512);
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v5 = [v4 mainDictionary];
  v6 = v5;
  v7 = atomic_load(&self->_isConnectionStarted);
  if ((v7 & 1) == 0)
  {
    v9 = 1;
    goto LABEL_28;
  }

  v8 = SCROSerializeWrapper(v5, 4096, v20, &v18, &v17[1], v17);
  LODWORD(v14) = v8;
  if (v8)
  {
    NSLog(&cfstr_ErrorWhileSeri.isa, v8);
LABEL_4:
    v9 = v14;
    goto LABEL_28;
  }

  [_Lock_0 lock];
  if (_ServerPort)
  {
    v10 = _SCROSendEvent(_ServerPort, 6000, self->_handlerType, v20, v18, *&v17[1], v17[0], v19, &v16, &v15, &v14 + 1, &v14);
    [_Lock_0 unlock];
    if (v17[0] && *&v17[1])
    {
      munmap(*&v17[1], v17[0]);
    }

    if (!v10)
    {
      if (v14)
      {
        NSLog(&cfstr_ErrorReturnedF.isa, v14);
        if (HIDWORD(v14) && v15)
        {
          munmap(v15, HIDWORD(v14));
        }
      }

      else
      {
        if (!(v16 | HIDWORD(v14)))
        {
          goto LABEL_26;
        }

        v11 = SCROUnserializeWrapper(v19, v16, v15, SHIDWORD(v14));
        LODWORD(v14) = v11;
        if (HIDWORD(v14) && v15)
        {
          munmap(v15, HIDWORD(v14));
          v11 = v14;
        }

        if (!v11)
        {
LABEL_26:
          v9 = 0;
          goto LABEL_28;
        }

        NSLog(&cfstr_ErrorWhileDese.isa, v11);
      }

      goto LABEL_4;
    }

    NSLog(&cfstr_ErrorWhileSend.isa, v10);
    v9 = 1;
    if (HIDWORD(v14) && v15)
    {
      munmap(v15, HIDWORD(v14));
    }
  }

  else
  {
    [_Lock_0 unlock];
    v9 = 1;
    if (v17[0] && *&v17[1])
    {
      munmap(*&v17[1], v17[0]);
    }
  }

LABEL_28:

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int)registerHandlerCallbackForKey:(int)a3
{
  v8 = 0;
  v3 = atomic_load(&self->_isConnectionStarted);
  if ((v3 & 1) == 0)
  {
    return 1;
  }

  [_Lock_0 lock];
  if (!_ServerPort)
  {
    [_Lock_0 unlock];
    return 1;
  }

  v6 = _SCRORegisterForCallback(_ServerPort, 0x1770u, self->_identifier, self->_handlerType, a3, &v8);
  [_Lock_0 unlock];
  if (v6)
  {
    NSLog(&cfstr_ErrorWhileSend_0.isa, v6);
    return 1;
  }

  if (!v8)
  {
    return 0;
  }

  NSLog(&cfstr_ErrorReturnedF_0.isa, v8);
  return v8;
}

- (int)performHandlerActionForKey:(int)a3
{
  v8 = 0;
  v3 = atomic_load(&self->_isConnectionStarted);
  if ((v3 & 1) == 0)
  {
    return 1;
  }

  [_Lock_0 lock];
  if (!_ServerPort)
  {
    [_Lock_0 unlock];
    return 1;
  }

  v6 = _SCROPerformAction(_ServerPort, 0x1770u, self->_identifier, self->_handlerType, a3, &v8);
  [_Lock_0 unlock];
  if (v6)
  {
    NSLog(&cfstr_ErrorWhileSend_2.isa, v6);
    return 1;
  }

  if (!v8)
  {
    return 0;
  }

  NSLog(&cfstr_ErrorReturnedF_4.isa, v8);
  return v8;
}

- (void)_ping
{
  v39 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = atomic_load(&self->_isConnectionStarted);
    if (v4)
    {
      [_Lock_0 lock];
      if (_ServerPort)
      {
        v5 = _SCROGetCallbacks(_ServerPort, 6000, self->_identifier);
        [_Lock_0 unlock];
        if (v5)
        {
          NSLog(&cfstr_ErrorWhileGett_1.isa, v5);
        }
      }

      else
      {
        [_Lock_0 unlock];
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (SCROConnection)initWithCoder:(id)a3
{
  v4 = a3;
  NSLog(&cfstr_NoteSecureCodi.isa);
  v5 = -[SCROConnection initWithHandlerType:delegate:](self, "initWithHandlerType:delegate:", [v4 decodeIntegerForKey:@"handlerType"], 0);

  return v5;
}

+ (void)_configServerWithMachServiceName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_error_impl(&dword_26490B000, a2, OS_LOG_TYPE_ERROR, "Could not find bootstrap server for Screen Reader Output Server. name:%s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end