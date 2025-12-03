@interface RCManagedConfigurationHelper
+ (BOOL)cloudSyncIsAllowed;
+ (BOOL)isProfanityFiltered;
- (RCManagedConfigurationHelperDelegate)delegate;
- (void)_notifyDelegateOfChange;
- (void)_startObserving;
- (void)_stopObserving;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation RCManagedConfigurationHelper

- (void)_startObserving
{
  if (!self->_observing)
  {
    self->_observing = 1;
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] registerObserver:self];
  }
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  if (delegate)
  {

    [(RCManagedConfigurationHelper *)self _startObserving];
  }

  else
  {

    [(RCManagedConfigurationHelper *)self _stopObserving];
  }
}

- (void)dealloc
{
  [(RCManagedConfigurationHelper *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = RCManagedConfigurationHelper;
  [(RCManagedConfigurationHelper *)&v3 dealloc];
}

- (void)_notifyDelegateOfChange
{
  delegate = [(RCManagedConfigurationHelper *)self delegate];
  if (delegate)
  {
    v3 = delegate;
    [delegate managedConfigurationUpdated:{+[RCManagedConfigurationHelper cloudSyncIsAllowed](RCManagedConfigurationHelper, "cloudSyncIsAllowed")}];
    delegate = v3;
  }
}

- (void)_stopObserving
{
  if (self->_observing)
  {
    self->_observing = 0;
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] unregisterObserver:self];
  }
}

+ (BOOL)cloudSyncIsAllowed
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] isCloudSyncAllowed:@"com.apple.VoiceMemos"];

  return v3;
}

+ (BOOL)isProfanityFiltered
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25D38]] == 1;

  return v3;
}

- (RCManagedConfigurationHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end