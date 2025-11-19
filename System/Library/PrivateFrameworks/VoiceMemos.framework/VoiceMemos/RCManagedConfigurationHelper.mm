@interface RCManagedConfigurationHelper
+ (BOOL)cloudSyncIsAllowed;
+ (BOOL)isProfanityFiltered;
- (RCManagedConfigurationHelperDelegate)delegate;
- (void)_notifyDelegateOfChange;
- (void)_startObserving;
- (void)_stopObserving;
- (void)dealloc;
- (void)setDelegate:(id)a3;
@end

@implementation RCManagedConfigurationHelper

- (void)_startObserving
{
  if (!self->_observing)
  {
    self->_observing = 1;
    v4 = [MEMORY[0x277D262A0] sharedConnection];
    [v4 registerObserver:self];
  }
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);
  if (a3)
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
  v2 = [(RCManagedConfigurationHelper *)self delegate];
  if (v2)
  {
    v3 = v2;
    [v2 managedConfigurationUpdated:{+[RCManagedConfigurationHelper cloudSyncIsAllowed](RCManagedConfigurationHelper, "cloudSyncIsAllowed")}];
    v2 = v3;
  }
}

- (void)_stopObserving
{
  if (self->_observing)
  {
    self->_observing = 0;
    v4 = [MEMORY[0x277D262A0] sharedConnection];
    [v4 unregisterObserver:self];
  }
}

+ (BOOL)cloudSyncIsAllowed
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isCloudSyncAllowed:@"com.apple.VoiceMemos"];

  return v3;
}

+ (BOOL)isProfanityFiltered
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D25D38]] == 1;

  return v3;
}

- (RCManagedConfigurationHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end