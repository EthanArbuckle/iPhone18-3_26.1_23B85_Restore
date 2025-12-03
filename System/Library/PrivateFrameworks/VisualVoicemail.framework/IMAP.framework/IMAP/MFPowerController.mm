@interface MFPowerController
+ (id)sharedInstance;
+ (void)powerlog:(id)powerlog eventData:(id)data;
- (BOOL)isBatterySaverModeEnabled;
- (MFPowerController)init;
- (VFObservable)lowPowerModeObservable;
- (VFObservable)pluggedInObservable;
- (id)copyDiagnosticInformation;
- (id)powerObservable;
- (void)_applicationForegroundStateChanged:(BOOL)changed;
- (void)_applicationForegroundStateChanged_nts:(BOOL)changed_nts;
- (void)_lowPowerModeChangedNotification:(id)notification;
- (void)_releasePowerAssertion_nts;
- (void)_releaseTaskAssertion_nts;
- (void)_retainPowerAssertion_nts;
- (void)_retainTaskAssertion_nts;
- (void)_setPluggedIn:(unsigned int)in;
- (void)_setupAssertionTimer:(double)timer;
- (void)dealloc;
- (void)releaseAssertionWithIdentifier:(id)identifier;
- (void)retainAssertionWithIdentifier:(id)identifier;
- (void)startListeningForBatterySaverNotifications;
@end

@implementation MFPowerController

- (MFPowerController)init
{
  v24.receiver = self;
  v24.super_class = MFPowerController;
  v2 = [(MFPowerController *)&v24 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.message.MFPowerController.state", 0);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = dispatch_queue_create("com.apple.message.MFPowerController.power", 0);
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    v7 = objc_alloc_init(MEMORY[0x277CCA940]);
    v8 = *(v2 + 4);
    *(v2 + 4) = v7;

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __25__MFPowerController_init__block_invoke;
    v22[3] = &unk_279E335B0;
    v9 = v2;
    v23 = v9;
    v10 = MEMORY[0x2743C3100](v22);
    if (notify_register_dispatch("com.apple.springboard.pluggedin", v9 + 7, *(v2 + 1), v10))
    {
      v9[7] = -1;
    }

    else
    {
      v10[2](v10, v9[7]);
    }

    __RootDomainConnect = IORegisterForSystemPower(0, v9 + 7, _powerChanged, v9 + 16);
    if (__RootDomainConnect)
    {
      IONotificationPortSetDispatchQueue(*(v9 + 7), *(v2 + 2));
    }

    else
    {
      v11 = vm_imap_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2720B1000, v11, OS_LOG_TYPE_DEFAULT, "could not register for power notifications", &buf, 2u);
      }
    }

    objc_initWeak(&buf, v9);
    v12 = +[MFAppStateMonitor sharedInstance];
    appStateObservable = [v12 appStateObservable];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __25__MFPowerController_init__block_invoke_13;
    v19[3] = &unk_279E35BF0;
    objc_copyWeak(&v20, &buf);
    v14 = [VFObserver observerWithResultBlock:v19];
    v15 = [appStateObservable subscribe:v14];
    v16 = *(v9 + 5);
    *(v9 + 5) = v15;

    mEMORY[0x277D24F10] = [MEMORY[0x277D24F10] sharedController];
    [mEMORY[0x277D24F10] addDiagnosticsGenerator:v9];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&buf);
  }

  return v2;
}

uint64_t __25__MFPowerController_init__block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  return [*(a1 + 32) _setPluggedIn:state64];
}

void __25__MFPowerController_init__block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 isForeground];

  [WeakRetained _applicationForegroundStateChanged:v4];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[MFPowerController sharedInstance];
  }

  v2 = sharedInstance_instance_1;
  if (!sharedInstance_instance_1)
  {
    +[MFPowerController sharedInstance];
  }

  return v2;
}

uint64_t __35__MFPowerController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MFPowerController);
  v1 = sharedInstance_instance_1;
  sharedInstance_instance_1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)dealloc
{
  powerToken = self->_powerToken;
  if (powerToken != -1)
  {
    notify_cancel(powerToken);
  }

  [(VFCancelable *)self->_appStateCancelable cancel];
  if (__RootDomainConnect)
  {
    IONotificationPortSetDispatchQueue(self->_pmPort, 0);
    IODeregisterForSystemPower(&self->_pmNotifier);
    IOServiceClose(__RootDomainConnect);
    IONotificationPortDestroy(self->_pmPort);
    __RootDomainConnect = 0;
  }

  v4.receiver = self;
  v4.super_class = MFPowerController;
  [(MFPowerController *)&v4 dealloc];
}

- (void)_setPluggedIn:(unsigned int)in
{
  v12 = *MEMORY[0x277D85DE8];
  pluggedIn = self->_pluggedIn;
  if (pluggedIn != in)
  {
    v5 = self->_pluggedIn;
    atomic_compare_exchange_strong(&self->_pluggedIn, &v5, in);
    if (v5 == pluggedIn)
    {
      v6 = vm_imap_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_pluggedIn)
        {
          v7 = @"plugged in";
        }

        else
        {
          v7 = @"unplugged";
        }

        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&dword_2720B1000, v6, OS_LOG_TYPE_DEFAULT, "device is now %@", &v10, 0xCu);
      }

      if (self->_pluggedIn)
      {
        if (_powerAssertion)
        {
          [(MFPowerController *)self _releasePowerAssertion_nts];
        }
      }

      else if ([(NSCountedSet *)self->_identifiers count]&& !self->_isForeground && !_powerAssertion)
      {
        [(MFPowerController *)self _retainPowerAssertion_nts];
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"MFPowerStateDidChange" object:self];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)powerlog:(id)powerlog eventData:(id)data
{
  powerlogCopy = powerlog;
  dataCopy = data;
  if ((softLinkPLShouldLogRegisteredEvent[0])(12, powerlogCopy))
  {
    softLinkPLLogRegisteredEvent(12, powerlogCopy, dataCopy, MEMORY[0x277CBEBF8]);
  }
}

- (void)startListeningForBatterySaverNotifications
{
  v3 = vm_imap_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2720B1000, v3, OS_LOG_TYPE_DEFAULT, "listening for low-power mode notifications", v5, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__lowPowerModeChangedNotification_ name:*MEMORY[0x277CCA5E8] object:0];
}

- (void)_lowPowerModeChangedNotification:(id)notification
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = vm_imap_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];
    v6 = @"OFF";
    if (isLowPowerModeEnabled)
    {
      v6 = @"ON";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2720B1000, v3, OS_LOG_TYPE_DEFAULT, "low-power mode changed to %@", &v9, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MFBatterySaverModeDidChange" object:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isBatterySaverModeEnabled
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  return isLowPowerModeEnabled;
}

- (void)_setupAssertionTimer:(double)timer
{
  v16 = *MEMORY[0x277D85DE8];
  if (_powerAssertionTimer)
  {
    v5 = vm_imap_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2720B1000, v5, OS_LOG_TYPE_DEFAULT, "#Assertions [*] cancel power assertion timer", buf, 2u);
    }

    dispatch_source_cancel(_powerAssertionTimer);
    v6 = _powerAssertionTimer;
    _powerAssertionTimer = 0;
  }

  if (timer > 0.0)
  {
    v7 = vm_imap_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      timerCopy = timer;
      _os_log_impl(&dword_2720B1000, v7, OS_LOG_TYPE_DEFAULT, "#Assertions [*] schedule %d sec power assertion timer", buf, 8u);
    }

    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
    v9 = _powerAssertionTimer;
    _powerAssertionTimer = v8;

    [(MFPowerController *)self _assertionTimeout];
    v11 = dispatch_time(0, (v10 * 1000000000.0));
    dispatch_source_set_timer(_powerAssertionTimer, v11, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __42__MFPowerController__setupAssertionTimer___block_invoke;
    handler[3] = &unk_279E33588;
    handler[4] = self;
    dispatch_source_set_event_handler(_powerAssertionTimer, handler);
    dispatch_resume(_powerAssertionTimer);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __42__MFPowerController__setupAssertionTimer___block_invoke(uint64_t a1)
{
  v2 = vm_imap_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2720B1000, v2, OS_LOG_TYPE_DEFAULT, "#Assertions [*] power assertion timer expired", v4, 2u);
  }

  [*(a1 + 32) _releasePowerAssertion_nts];
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_40);
  v3 = dispatch_get_global_queue(2, 0);
  dispatch_async(v3, &__block_literal_global_42);
}

void __42__MFPowerController__setupAssertionTimer___block_invoke_38()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"MFPowerAssertionDidExpire" object:0];
}

- (void)_retainPowerAssertion_nts
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = vm_imap_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = @"com.apple.voicemail.imap.preventSleep";
    _os_log_impl(&dword_2720B1000, v3, OS_LOG_TYPE_DEFAULT, "#Assertions [+] %@", &v5, 0xCu);
  }

  _powerAssertion = CPPowerAssertionCreate();
  [(MFPowerController *)self _assertionTimeout];
  [(MFPowerController *)self _setupAssertionTimer:?];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_releasePowerAssertion_nts
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = vm_imap_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = @"com.apple.voicemail.imap.preventSleep";
    _os_log_impl(&dword_2720B1000, v3, OS_LOG_TYPE_DEFAULT, "#Assertions [-] %@", &v5, 0xCu);
  }

  [(MFPowerController *)self _setupAssertionTimer:0.0];
  CFRelease(_powerAssertion);
  _powerAssertion = 0;
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_retainTaskAssertion_nts
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = MFUserAgent();
  isMobileMail = [v2 isMobileMail];

  if (isMobileMail)
  {
    v4 = vm_imap_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = @"com.apple.voicemail.imap.backgroundTaskAssertion";
      _os_log_impl(&dword_2720B1000, v4, OS_LOG_TYPE_DEFAULT, "#Assertions [+] %@", &v8, 0xCu);
    }

    v5 = [[MFTaskAssertion alloc] initWithName:@"com.apple.voicemail.imap.backgroundTaskAssertion"];
    v6 = _taskAssertion;
    _taskAssertion = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_releaseTaskAssertion_nts
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = vm_imap_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = @"com.apple.voicemail.imap.backgroundTaskAssertion";
    _os_log_impl(&dword_2720B1000, v2, OS_LOG_TYPE_DEFAULT, "#Assertions [-] %@", &v5, 0xCu);
  }

  v3 = _taskAssertion;
  _taskAssertion = 0;

  v4 = *MEMORY[0x277D85DE8];
}

- (void)retainAssertionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__MFPowerController_retainAssertionWithIdentifier___block_invoke;
  v7[3] = &unk_279E346E0;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_sync(queue, v7);
}

uint64_t __51__MFPowerController_retainAssertionWithIdentifier___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = vm_imap_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2720B1000, v2, OS_LOG_TYPE_DEFAULT, "#Assertions [+] %@", &v6, 0xCu);
  }

  [*(*(a1 + 40) + 32) addObject:*(a1 + 32)];
  result = *(a1 + 40);
  if ((*(result + 48) & 1) == 0)
  {
    result = [result isPluggedIn];
    if ((result & 1) == 0 && !_powerAssertion)
    {
      result = [*(a1 + 40) _retainPowerAssertion_nts];
    }
  }

  if (!_taskAssertion)
  {
    result = [*(a1 + 40) _retainTaskAssertion_nts];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)releaseAssertionWithIdentifier:(id)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = vm_imap_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = identifierCopy;
    _os_log_impl(&dword_2720B1000, v5, OS_LOG_TYPE_DEFAULT, "#Assertions [-] %@", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__MFPowerController_releaseAssertionWithIdentifier___block_invoke;
  v9[3] = &unk_279E346E0;
  v9[4] = self;
  v10 = identifierCopy;
  v7 = identifierCopy;
  dispatch_sync(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __52__MFPowerController_releaseAssertionWithIdentifier___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 32) count];
  if (!result)
  {
    if (_powerAssertion)
    {
      result = [*(a1 + 32) _releasePowerAssertion_nts];
    }

    if (_taskAssertion)
    {
      v3 = *(a1 + 32);

      return [v3 _releaseTaskAssertion_nts];
    }
  }

  return result;
}

- (void)_applicationForegroundStateChanged_nts:(BOOL)changed_nts
{
  if (self->_isForeground != changed_nts)
  {
    self->_isForeground = changed_nts;
    if (changed_nts)
    {
      if (_powerAssertion)
      {

        [(MFPowerController *)self _releasePowerAssertion_nts];
      }
    }

    else if ([(NSCountedSet *)self->_identifiers count]&& ![(MFPowerController *)self isPluggedIn]&& !_powerAssertion)
    {

      [(MFPowerController *)self _retainPowerAssertion_nts];
    }
  }
}

- (void)_applicationForegroundStateChanged:(BOOL)changed
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__MFPowerController__applicationForegroundStateChanged___block_invoke;
  v4[3] = &unk_279E34DA0;
  v4[4] = self;
  changedCopy = changed;
  dispatch_async(queue, v4);
}

- (id)powerObservable
{
  v2 = [VFObservable observableOnDefaultNotificationCenterWithName:@"MFPowerStateDidChange" object:self];
  v3 = [v2 map:&__block_literal_global_55];

  return v3;
}

- (VFObservable)pluggedInObservable
{
  v9[1] = *MEMORY[0x277D85DE8];
  powerObservable = [(MFPowerController *)self powerObservable];
  v9[0] = self;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v5 = [powerObservable startWith:v4];
  v6 = [v5 map:&__block_literal_global_59];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __40__MFPowerController_pluggedInObservable__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 isPluggedIn];

  return [v2 numberWithBool:v3];
}

- (VFObservable)lowPowerModeObservable
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [VFObservable observableOnDefaultNotificationCenterWithName:@"MFBatterySaverModeDidChange" object:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__MFPowerController_lowPowerModeObservable__block_invoke;
  v10[3] = &unk_279E35C58;
  v10[4] = self;
  v4 = [v3 map:v10];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[MFPowerController isBatterySaverModeEnabled](self, "isBatterySaverModeEnabled")}];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [v4 startWith:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __43__MFPowerController_lowPowerModeObservable__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) isBatterySaverModeEnabled];

  return [v1 numberWithBool:v2];
}

- (id)copyDiagnosticInformation
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendString:@"\n"];
  [v3 appendString:@"==== Power State ====\n"];
  if ([(MFPowerController *)self isPluggedIn])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"  charging: %@\n", v4];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];
  v7 = @"OFF";
  if (isLowPowerModeEnabled)
  {
    v7 = @"ON";
  }

  [v3 appendFormat:@"  low-power mode: %@\n", v7];

  if (_powerAssertion)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"  holding assertion: %@\n", v8];
  [v3 appendString:@"\n==== Internal Assertions ====\n"];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MFPowerController_copyDiagnosticInformation__block_invoke;
  block[3] = &unk_279E346E0;
  block[4] = self;
  v10 = v3;
  v15 = v10;
  dispatch_sync(queue, block);
  v11 = v15;
  v12 = v10;

  return v12;
}

void __46__MFPowerController_copyDiagnosticInformation__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 32) count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = *(*(a1 + 32) + 32);
    v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v14;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v13 + 1) + 8 * i);
          v8 = *(a1 + 40);
          v9 = [*(*(a1 + 32) + 32) countForObject:v7];
          [v8 appendFormat:@"  %@: %d\n", v7, v9, v13];
        }

        v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v4);
    }

    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = *MEMORY[0x277D85DE8];

    [v11 appendFormat:@"(empty)\n"];
  }
}

@end