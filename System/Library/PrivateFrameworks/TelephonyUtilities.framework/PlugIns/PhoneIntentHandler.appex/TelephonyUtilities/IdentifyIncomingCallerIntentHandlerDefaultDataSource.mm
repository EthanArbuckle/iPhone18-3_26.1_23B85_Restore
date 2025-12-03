@interface IdentifyIncomingCallerIntentHandlerDefaultDataSource
- (CallHistoryDataSource)callHistoryDataSource;
- (TUCallProviderManager)providerManager;
- (TUContactsDataSource)contactsDataSource;
@end

@implementation IdentifyIncomingCallerIntentHandlerDefaultDataSource

- (CallHistoryDataSource)callHistoryDataSource
{
  callHistoryDataSource = self->_callHistoryDataSource;
  if (!callHistoryDataSource)
  {
    v4 = [CHManager siriManagerForIntentType:objc_opt_class()];
    v5 = self->_callHistoryDataSource;
    self->_callHistoryDataSource = v4;

    callHistoryDataSource = self->_callHistoryDataSource;
  }

  return callHistoryDataSource;
}

- (TUContactsDataSource)contactsDataSource
{
  v2 = +[TUCallCenter sharedInstance];
  contactStore = [v2 contactStore];

  return contactStore;
}

- (TUCallProviderManager)providerManager
{
  providerManager = self->_providerManager;
  if (!providerManager)
  {
    v4 = objc_alloc_init(TUCallProviderManager);
    v5 = self->_providerManager;
    self->_providerManager = v4;

    providerManager = self->_providerManager;
  }

  return providerManager;
}

@end