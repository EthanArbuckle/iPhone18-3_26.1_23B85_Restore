@interface VTSiriAssertionMonitor
+ (id)sharedInstance;
- (VTSiriAssertionMonitor)init;
- (void)_notifyObserver:(BOOL)a3;
- (void)dealloc;
- (void)disableAssertionReceived;
- (void)enableAssertionReceived;
@end

@implementation VTSiriAssertionMonitor

- (void)_notifyObserver:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__VTSiriAssertionMonitor__notifyObserver___block_invoke;
  v3[3] = &unk_2784ECDA8;
  v3[4] = self;
  v4 = a3;
  [(VTEventMonitor *)self enumerateObserversInQueue:v3];
}

void __42__VTSiriAssertionMonitor__notifyObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) notifyObserver:v3];
  if (objc_opt_respondsToSelector())
  {
    [v3 VTSiriAssertionMonitor:*(a1 + 32) didReceiveEnabled:*(a1 + 40)];
  }
}

- (void)disableAssertionReceived
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "did receive disable assertion", v4, 2u);
  }

  if (self->_assertionState != 1)
  {
    self->_assertionState = 1;
    [(VTSiriAssertionMonitor *)self _notifyObserver:[(VTSiriAssertionMonitor *)self isEnabled]];
  }
}

- (void)enableAssertionReceived
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "did receive enable assertion", v4, 2u);
  }

  if (self->_assertionState != 2)
  {
    self->_assertionState = 2;
    [(VTSiriAssertionMonitor *)self _notifyObserver:[(VTSiriAssertionMonitor *)self isEnabled]];
  }
}

- (void)dealloc
{
  [(VTSiriAssertionMonitor *)self _stopMonitoring];
  v3.receiver = self;
  v3.super_class = VTSiriAssertionMonitor;
  [(VTEventMonitor *)&v3 dealloc];
}

- (VTSiriAssertionMonitor)init
{
  v3.receiver = self;
  v3.super_class = VTSiriAssertionMonitor;
  result = [(VTEventMonitor *)&v3 init];
  if (result)
  {
    result->_assertionState = 0;
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3468 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3468, &__block_literal_global_3469);
  }

  v3 = sharedInstance__sharedInstance_3470;

  return v3;
}

uint64_t __40__VTSiriAssertionMonitor_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_3470 = objc_alloc_init(VTSiriAssertionMonitor);

  return MEMORY[0x2821F96F8]();
}

@end