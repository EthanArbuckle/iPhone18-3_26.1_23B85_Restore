@interface SYApplicationStateObserver
- (SYApplicationStateObserver)initWithBecomeActiveHandler:(id)a3 resignActiveHandler:(id)a4;
- (void)_handleAppBecomeActive:(id)a3;
- (void)_handleAppResignActive:(id)a3;
- (void)_updateAppStateOnMainThread;
- (void)_updateAppStateWithCompletion:(id)a3;
- (void)registerForAppStateNotifications;
@end

@implementation SYApplicationStateObserver

- (void)_updateAppStateOnMainThread
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (_localUIApplicationIsExtension())
  {
    v3 = 1;
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v4 = getUIApplicationClass_softClass_0;
    v11 = getUIApplicationClass_softClass_0;
    if (!getUIApplicationClass_softClass_0)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __getUIApplicationClass_block_invoke_0;
      v7[3] = &unk_27856B3C8;
      v7[4] = &v8;
      __getUIApplicationClass_block_invoke_0(v7);
      v4 = v9[3];
    }

    v5 = v4;
    _Block_object_dispose(&v8, 8);
    v6 = [v4 sharedApplication];
    v3 = [v6 applicationState] == 0;
  }

  atomic_store(v3, &self->_appStateIsActive);
}

- (void)registerForAppStateNotifications
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getUIApplicationDidBecomeActiveNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"SYApplicationStateObserver.m" lineNumber:22 description:{@"%s", dlerror()}];

  __break(1u);
}

- (SYApplicationStateObserver)initWithBecomeActiveHandler:(id)a3 resignActiveHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SYApplicationStateObserver;
  v8 = [(SYApplicationStateObserver *)&v15 init];
  v9 = v8;
  if (v8)
  {
    atomic_store(0, &v8->_appStateIsActive);
    v10 = [v6 copy];
    becomeActiveHandler = v9->_becomeActiveHandler;
    v9->_becomeActiveHandler = v10;

    v12 = [v7 copy];
    resignActiveHandler = v9->_resignActiveHandler;
    v9->_resignActiveHandler = v12;

    v9->_needsRegisterForAppStateNotifications = 1;
    [(SYApplicationStateObserver *)v9 _updateAppStateWithCompletion:0];
  }

  return v9;
}

- (void)_handleAppBecomeActive:(id)a3
{
  v4 = a3;
  becomeActiveHandler = self->_becomeActiveHandler;
  if (becomeActiveHandler)
  {
    v6 = [becomeActiveHandler copy];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__SYApplicationStateObserver__handleAppBecomeActive___block_invoke;
    v8[3] = &unk_27856B788;
    v10 = v6;
    v9 = v4;
    v7 = v6;
    [(SYApplicationStateObserver *)self _updateAppStateWithCompletion:v8];
  }
}

- (void)_handleAppResignActive:(id)a3
{
  v4 = a3;
  resignActiveHandler = self->_resignActiveHandler;
  if (resignActiveHandler)
  {
    v6 = [resignActiveHandler copy];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__SYApplicationStateObserver__handleAppResignActive___block_invoke;
    v8[3] = &unk_27856B788;
    v10 = v6;
    v9 = v4;
    v7 = v6;
    [(SYApplicationStateObserver *)self _updateAppStateWithCompletion:v8];
  }
}

- (void)_updateAppStateWithCompletion:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(SYApplicationStateObserver *)self _updateAppStateOnMainThread];
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __60__SYApplicationStateObserver__updateAppStateWithCompletion___block_invoke;
    v5[3] = &unk_27856B978;
    v5[4] = self;
    v6 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

uint64_t __60__SYApplicationStateObserver__updateAppStateWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateAppStateOnMainThread];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end