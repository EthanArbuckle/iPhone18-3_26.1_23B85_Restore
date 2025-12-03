@interface SearchCallHistoryIntentHandlerDataSource
- (CallHistoryDataSource)callHistoryDataSource;
- (IntentHandlerVoicemailDataSource)voicemailDataSource;
- (TUCallProviderManager)providerManager;
- (TUContactsDataSource)contactsDataSource;
- (unint64_t)restrictedCallTypes;
@end

@implementation SearchCallHistoryIntentHandlerDataSource

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

- (IntentHandlerVoicemailDataSource)voicemailDataSource
{
  voicemailDataSource = self->_voicemailDataSource;
  if (!voicemailDataSource)
  {
    v4 = +[IntentHandlerMessageStore sharedInstance];
    v5 = self->_voicemailDataSource;
    self->_voicemailDataSource = v4;

    voicemailDataSource = self->_voicemailDataSource;
  }

  return voicemailDataSource;
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

- (unint64_t)restrictedCallTypes
{
  v2 = !+[TUCallCapabilities supportsPrimaryCalling](TUCallCapabilities, "supportsPrimaryCalling") || (+[TUCallCapabilities supportsTelephonyCalls]& 1) == 0;
  v3 = +[FaceTimeUtilities sharedInstance];
  isFaceTimeEnabledInSettings = [v3 isFaceTimeEnabledInSettings];

  if ((isFaceTimeEnabledInSettings & 1) == 0)
  {
    return v2 | 6;
  }

  if ((+[TUCallCapabilities supportsDisplayingFaceTimeAudioCalls]& 1) == 0)
  {
    return v2 | 2;
  }

  if (+[TUCallCapabilities supportsDisplayingFaceTimeVideoCalls])
  {
    return v2;
  }

  return v2 | 4;
}

@end