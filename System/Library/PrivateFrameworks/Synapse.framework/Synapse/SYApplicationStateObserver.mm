@interface SYApplicationStateObserver
- (SYApplicationStateObserver)initWithBecomeActiveHandler:(id)handler resignActiveHandler:(id)activeHandler;
- (void)_handleAppBecomeActive:(id)active;
- (void)_handleAppResignActive:(id)active;
- (void)_updateAppStateOnMainThread;
- (void)_updateAppStateWithCompletion:(id)completion;
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
    sharedApplication = [v4 sharedApplication];
    v3 = [sharedApplication applicationState] == 0;
  }

  atomic_store(v3, &self->_appStateIsActive);
}

- (void)registerForAppStateNotifications
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getUIApplicationDidBecomeActiveNotification(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"SYApplicationStateObserver.m" lineNumber:22 description:{@"%s", dlerror()}];

  __break(1u);
}

- (SYApplicationStateObserver)initWithBecomeActiveHandler:(id)handler resignActiveHandler:(id)activeHandler
{
  handlerCopy = handler;
  activeHandlerCopy = activeHandler;
  v15.receiver = self;
  v15.super_class = SYApplicationStateObserver;
  v8 = [(SYApplicationStateObserver *)&v15 init];
  v9 = v8;
  if (v8)
  {
    atomic_store(0, &v8->_appStateIsActive);
    v10 = [handlerCopy copy];
    becomeActiveHandler = v9->_becomeActiveHandler;
    v9->_becomeActiveHandler = v10;

    v12 = [activeHandlerCopy copy];
    resignActiveHandler = v9->_resignActiveHandler;
    v9->_resignActiveHandler = v12;

    v9->_needsRegisterForAppStateNotifications = 1;
    [(SYApplicationStateObserver *)v9 _updateAppStateWithCompletion:0];
  }

  return v9;
}

- (void)_handleAppBecomeActive:(id)active
{
  activeCopy = active;
  becomeActiveHandler = self->_becomeActiveHandler;
  if (becomeActiveHandler)
  {
    v6 = [becomeActiveHandler copy];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__SYApplicationStateObserver__handleAppBecomeActive___block_invoke;
    v8[3] = &unk_27856B788;
    v10 = v6;
    v9 = activeCopy;
    v7 = v6;
    [(SYApplicationStateObserver *)self _updateAppStateWithCompletion:v8];
  }
}

- (void)_handleAppResignActive:(id)active
{
  activeCopy = active;
  resignActiveHandler = self->_resignActiveHandler;
  if (resignActiveHandler)
  {
    v6 = [resignActiveHandler copy];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__SYApplicationStateObserver__handleAppResignActive___block_invoke;
    v8[3] = &unk_27856B788;
    v10 = v6;
    v9 = activeCopy;
    v7 = v6;
    [(SYApplicationStateObserver *)self _updateAppStateWithCompletion:v8];
  }
}

- (void)_updateAppStateWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(SYApplicationStateObserver *)self _updateAppStateOnMainThread];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __60__SYApplicationStateObserver__updateAppStateWithCompletion___block_invoke;
    v5[3] = &unk_27856B978;
    v5[4] = self;
    v6 = completionCopy;
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