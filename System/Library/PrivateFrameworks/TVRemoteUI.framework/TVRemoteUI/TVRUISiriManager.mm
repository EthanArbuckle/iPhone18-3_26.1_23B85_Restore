@interface TVRUISiriManager
+ (id)sharedManager;
- (_TVRUIEventDelegate)buttonActionsDelegate;
- (void)_activateSiriAssertion;
- (void)_donateTipsTrigger;
- (void)_registerForSiriButtonEvents;
- (void)_releaseSiriAssertion;
- (void)_unregisterForSiriButtonEvents;
- (void)buttonEventListenerDidReceiveButtonDownWithButtonIdentifier:(int64_t)a3 atTimestamp:(double)a4;
- (void)buttonEventListenerDidReceiveButtonLongPressWithButtonIdentifier:(int64_t)a3 atTimestamp:(double)a4;
- (void)buttonEventListenerDidReceiveButtonUpWithButtonIdentifier:(int64_t)a3 atTimestamp:(double)a4;
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
  v3 = [(TVRUISiriManager *)self siriAssertion];

  if (!v3)
  {
    v4 = _TVRUISiriLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Grabbing activation assertion", v9, 2u);
    }

    v5 = objc_alloc(MEMORY[0x277D551C0]);
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 bundleIdentifier];
    v8 = [v5 initWithIdentifier:v7 reason:1];
    [(TVRUISiriManager *)self setSiriAssertion:v8];
  }
}

- (void)_releaseSiriAssertion
{
  v3 = [(TVRUISiriManager *)self siriAssertion];

  if (v3)
  {
    v4 = _TVRUISiriLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Releasing activation assertion", v6, 2u);
    }

    v5 = [(TVRUISiriManager *)self siriAssertion];
    [v5 invalidate];

    [(TVRUISiriManager *)self setSiriAssertion:0];
  }
}

- (void)_registerForSiriButtonEvents
{
  v5 = [MEMORY[0x277D551C8] listener];
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];
  [v5 registerWithListener:self identifier:v4];
}

- (void)_unregisterForSiriButtonEvents
{
  v4 = [MEMORY[0x277D551C8] listener];
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  [v4 unregisterListenerWithIdentifier:v3];
}

- (void)buttonEventListenerDidReceiveButtonDownWithButtonIdentifier:(int64_t)a3 atTimestamp:(double)a4
{
  v5 = [TVRUIButtonEvent createButtonEvent:3 buttonType:4, a4];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__TVRUISiriManager_buttonEventListenerDidReceiveButtonDownWithButtonIdentifier_atTimestamp___block_invoke;
  v7[3] = &unk_279D88230;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __92__TVRUISiriManager_buttonEventListenerDidReceiveButtonDownWithButtonIdentifier_atTimestamp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonActionsDelegate];
  [v2 generatedButtonEvent:*(a1 + 40)];
}

- (void)buttonEventListenerDidReceiveButtonLongPressWithButtonIdentifier:(int64_t)a3 atTimestamp:(double)a4
{
  v5 = [TVRUIButtonEvent createButtonEvent:1 buttonType:4, a4];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __97__TVRUISiriManager_buttonEventListenerDidReceiveButtonLongPressWithButtonIdentifier_atTimestamp___block_invoke;
  v7[3] = &unk_279D88230;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
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

- (void)buttonEventListenerDidReceiveButtonUpWithButtonIdentifier:(int64_t)a3 atTimestamp:(double)a4
{
  v5 = [TVRUIButtonEvent createButtonEvent:2 buttonType:4, a4];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__TVRUISiriManager_buttonEventListenerDidReceiveButtonUpWithButtonIdentifier_atTimestamp___block_invoke;
  v7[3] = &unk_279D88230;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
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
  v4 = [v3 Discoverability];
  v5 = [v4 Signals];

  v6 = [v5 source];
  v7 = [objc_alloc(MEMORY[0x277CF1168]) initWithContentIdentifier:@"com.apple.TVRemoteUI.userIntentButton-tapped" context:0 osBuild:0 userInfo:0];
  [v6 sendEvent:v7];
}

- (_TVRUIEventDelegate)buttonActionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonActionsDelegate);

  return WeakRetained;
}

@end