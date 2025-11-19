@interface CSDAssistantServicesObserver
- (CSDAssistantServicesObserver)initWithQueue:(id)a3;
- (NSString)announceCallsProviderIdentifier;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)availableAnnouncementRequestTypesChanged:(unint64_t)a3 onPlatform:(int64_t)a4;
- (void)dealloc;
- (void)eligibleAnnouncementRequestTypesChanged:(unint64_t)a3 onPlatform:(int64_t)a4;
- (void)handleAFPreferencesDidChangeNotification:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)setAnnounceCallsProviderIdentifier:(id)a3;
- (void)updateAnnounceCallsVersionForAvailableRequestTypes:(unint64_t)a3;
@end

@implementation CSDAssistantServicesObserver

- (CSDAssistantServicesObserver)initWithQueue:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = CSDAssistantServicesObserver;
  v6 = [(CSDAssistantServicesObserver *)&v21 init];
  v7 = v6;
  if (v6)
  {
    v6->_accessorLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_queue, a3);
    v7->_announceCallsPlatform = 1;
    objc_storeStrong(&v7->_announceCallsProviderIdentifier, TUBundleIdentifierInCallServiceApplication);
    v8 = objc_alloc_init(TUDelegateController);
    delegateController = v7->_delegateController;
    v7->_delegateController = v8;

    v10 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v7->_featureFlags;
    v7->_featureFlags = v10;

    v12 = +[AFPreferences sharedPreferences];
    assistantPreferences = v7->_assistantPreferences;
    v7->_assistantPreferences = v12;

    v7->_assistantAvailableWhenLocked = [(AFPreferences *)v7->_assistantPreferences disableAssistantWhilePasscodeLocked]^ 1;
    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v7 selector:"handleAFPreferencesDidChangeNotification:" name:AFPreferencesDidChangeNotification object:v7->_assistantPreferences];

    v15 = [[AFSiriAnnouncementRequestCapabilityManager alloc] initWithPlatform:v7->_announceCallsPlatform];
    announcementRequestCapabilityManager = v7->_announcementRequestCapabilityManager;
    v7->_announcementRequestCapabilityManager = v15;

    [(AFSiriAnnouncementRequestCapabilityManager *)v7->_announcementRequestCapabilityManager addObserver:v7];
    v17 = v7->_announcementRequestCapabilityManager;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100218E88;
    v19[3] = &unk_10061EC20;
    v20 = v7;
    [(AFSiriAnnouncementRequestCapabilityManager *)v17 fetchAvailableAnnouncementRequestTypesWithCompletion:v19];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AFPreferencesDidChangeNotification object:self->_assistantPreferences];

  [(AFSiriAnnouncementRequestCapabilityManager *)self->_announcementRequestCapabilityManager removeObserver:self];
  v4.receiver = self;
  v4.super_class = CSDAssistantServicesObserver;
  [(CSDAssistantServicesObserver *)&v4 dealloc];
}

- (NSString)announceCallsProviderIdentifier
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_announceCallsProviderIdentifier;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)setAnnounceCallsProviderIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  announceCallsProviderIdentifier = self->_announceCallsProviderIdentifier;
  if ((TUStringsAreEqualOrNil() & 1) == 0)
  {
    v6 = [v4 copy];
    v7 = self->_announceCallsProviderIdentifier;
    self->_announceCallsProviderIdentifier = v6;

    v8 = [(CSDAssistantServicesObserver *)self delegateController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100219060;
    v9[3] = &unk_10061EC48;
    v9[4] = self;
    v10 = v4;
    [v8 enumerateDelegatesUsingBlock:v9];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDAssistantServicesObserver *)self delegateController];
  [v8 addDelegate:v7 queue:v6];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CSDAssistantServicesObserver *)self delegateController];
  [v5 removeDelegate:v4];
}

- (void)updateAnnounceCallsVersionForAvailableRequestTypes:(unint64_t)a3
{
  v5 = [(CSDAssistantServicesObserver *)self isAssistantAvailableWhenLocked];

  [(CSDAssistantServicesObserver *)self updateAnnounceCallsVersionForAssistantAvailableWhenLocked:v5 availableRequestTypes:a3];
}

- (void)availableAnnouncementRequestTypesChanged:(unint64_t)a3 onPlatform:(int64_t)a4
{
  if ([(CSDAssistantServicesObserver *)self announceCallsPlatform]== a4)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = a4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Available announcement request types changed for platform %ld", &v8, 0xCu);
    }

    [(CSDAssistantServicesObserver *)self updateAnnounceCallsVersionForAvailableRequestTypes:a3];
  }
}

- (void)eligibleAnnouncementRequestTypesChanged:(unint64_t)a3 onPlatform:(int64_t)a4
{
  if ([(CSDAssistantServicesObserver *)self announceCallsPlatform]== a4)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = a4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Eligible announcement request types changed for platform %ld", &v6, 0xCu);
    }
  }
}

- (void)handleAFPreferencesDidChangeNotification:(id)a3
{
  v4 = [(CSDAssistantServicesObserver *)self assistantPreferences];
  v5 = [v4 disableAssistantWhilePasscodeLocked];

  if (v5 == [(CSDAssistantServicesObserver *)self isAssistantAvailableWhenLocked])
  {

    [(CSDAssistantServicesObserver *)self updateAnnounceCallsVersionForAssistantAvailableWhenLocked:v5 ^ 1];
  }
}

@end