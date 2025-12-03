@interface TVRUISiriManager
+ (id)sharedManager;
- (_TVRUIEventDelegate)buttonActionsDelegate;
- (void)_activateSiriAssertion;
- (void)_donateTipsTrigger;
- (void)_registerForSiriButtonEvents;
- (void)_releaseSiriAssertion;
- (void)_unregisterForSiriButtonEvents;
- (void)buttonEventListenerDidReceiveButtonDownWithButtonIdentifier:(int64_t)identifier atTimestamp:(double)timestamp;
- (void)buttonEventListenerDidReceiveButtonLongPressWithButtonIdentifier:(int64_t)identifier atTimestamp:(double)timestamp;
- (void)buttonEventListenerDidReceiveButtonUpWithButtonIdentifier:(int64_t)identifier atTimestamp:(double)timestamp;
- (void)dealloc;
- (void)registerForSiriEvents;
- (void)unregisterForSiriEvents;
@end

@implementation TVRUISiriManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[TVRUISiriManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __33__TVRUISiriManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(TVRUISiriManager);
  v1 = sharedManager_manager;
  sharedManager_manager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)registerForSiriEvents
{
  [(TVRUISiriManager *)self _activateSiriAssertion];

  [(TVRUISiriManager *)self _registerForSiriButtonEvents];
}

- (void)unregisterForSiriEvents
{
  [(TVRUISiriManager *)self _releaseSiriAssertion];

  [(TVRUISiriManager *)self _unregisterForSiriButtonEvents];
}

- (void)dealloc
{
  [(TVRUISiriManager *)self unregisterForSiriEvents];
  v3.receiver = self;
  v3.super_class = TVRUISiriManager;
  [(TVRUISiriManager *)&v3 dealloc];
}

- (void)_activateSiriAssertion
{
  siriAssertion = [(TVRUISiriManager *)self siriAssertion];

  if (!siriAssertion)
  {
    v4 = _TVRUISiriLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Grabbing activation assertion", v9, 2u);
    }

    v5 = objc_alloc(MEMORY[0x277D551C0]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v8 = [v5 initWithIdentifier:bundleIdentifier reason:1];
    [(TVRUISiriManager *)self setSiriAssertion:v8];
  }
}

- (void)_releaseSiriAssertion
{
  siriAssertion = [(TVRUISiriManager *)self siriAssertion];

  if (siriAssertion)
  {
    v4 = _TVRUISiriLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Releasing activation assertion", v6, 2u);
    }

    siriAssertion2 = [(TVRUISiriManager *)self siriAssertion];
    [siriAssertion2 invalidate];

    [(TVRUISiriManager *)self setSiriAssertion:0];
  }
}

- (void)_registerForSiriButtonEvents
{
  listener = [MEMORY[0x277D551C8] listener];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [listener registerWithListener:self identifier:bundleIdentifier];
}

- (void)_unregisterForSiriButtonEvents
{
  listener = [MEMORY[0x277D551C8] listener];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [listener unregisterListenerWithIdentifier:bundleIdentifier];
}

- (void)buttonEventListenerDidReceiveButtonDownWithButtonIdentifier:(int64_t)identifier atTimestamp:(double)timestamp
{
  timestamp = [TVRUIButtonEvent createButtonEvent:3 buttonType:4, timestamp];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__TVRUISiriManager_buttonEventListenerDidReceiveButtonDownWithButtonIdentifier_atTimestamp___block_invoke;
  v7[3] = &unk_279D88230;
  v7[4] = self;
  v8 = timestamp;
  v6 = timestamp;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __92__TVRUISiriManager_buttonEventListenerDidReceiveButtonDownWithButtonIdentifier_atTimestamp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonActionsDelegate];
  [v2 generatedButtonEvent:*(a1 + 40)];
}

- (void)buttonEventListenerDidReceiveButtonLongPressWithButtonIdentifier:(int64_t)identifier atTimestamp:(double)timestamp
{
  timestamp = [TVRUIButtonEvent createButtonEvent:1 buttonType:4, timestamp];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __97__TVRUISiriManager_buttonEventListenerDidReceiveButtonLongPressWithButtonIdentifier_atTimestamp___block_invoke;
  v7[3] = &unk_279D88230;
  v7[4] = self;
  v8 = timestamp;
  v6 = timestamp;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __97__TVRUISiriManager_buttonEventListenerDidReceiveButtonLongPressWithButtonIdentifier_atTimestamp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonActionsDelegate];
  [v2 generatedButtonEvent:*(a1 + 40)];

  [*(a1 + 32) _donateTipsTrigger];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"TVRUISiriManagerSiriActivated" object:0];
}

- (void)buttonEventListenerDidReceiveButtonUpWithButtonIdentifier:(int64_t)identifier atTimestamp:(double)timestamp
{
  timestamp = [TVRUIButtonEvent createButtonEvent:2 buttonType:4, timestamp];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__TVRUISiriManager_buttonEventListenerDidReceiveButtonUpWithButtonIdentifier_atTimestamp___block_invoke;
  v7[3] = &unk_279D88230;
  v7[4] = self;
  v8 = timestamp;
  v6 = timestamp;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __90__TVRUISiriManager_buttonEventListenerDidReceiveButtonUpWithButtonIdentifier_atTimestamp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonActionsDelegate];
  [v2 generatedButtonEvent:*(a1 + 40)];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"TVRUISiriManagerSiriDeactivated" object:0];
}

- (void)_donateTipsTrigger
{
  v2 = _TVRUITipsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "Donating trigger for Siri tip context", v8, 2u);
  }

  v3 = BiomeLibrary();
  discoverability = [v3 Discoverability];
  signals = [discoverability Signals];

  source = [signals source];
  v7 = [objc_alloc(MEMORY[0x277CF1168]) initWithContentIdentifier:@"com.apple.TVRemoteUI.userIntentButton-tapped" context:0 osBuild:0 userInfo:0];
  [source sendEvent:v7];
}

- (_TVRUIEventDelegate)buttonActionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonActionsDelegate);

  return WeakRetained;
}

@end