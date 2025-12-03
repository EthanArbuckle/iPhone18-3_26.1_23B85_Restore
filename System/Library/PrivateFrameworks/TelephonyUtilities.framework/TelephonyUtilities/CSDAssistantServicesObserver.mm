@interface CSDAssistantServicesObserver
- (CSDAssistantServicesObserver)initWithQueue:(id)queue;
- (NSString)announceCallsProviderIdentifier;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)availableAnnouncementRequestTypesChanged:(unint64_t)changed onPlatform:(int64_t)platform;
- (void)dealloc;
- (void)eligibleAnnouncementRequestTypesChanged:(unint64_t)changed onPlatform:(int64_t)platform;
- (void)handleAFPreferencesDidChangeNotification:(id)notification;
- (void)removeDelegate:(id)delegate;
- (void)setAnnounceCallsProviderIdentifier:(id)identifier;
- (void)updateAnnounceCallsVersionForAvailableRequestTypes:(unint64_t)types;
@end

@implementation CSDAssistantServicesObserver

- (CSDAssistantServicesObserver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = CSDAssistantServicesObserver;
  v6 = [(CSDAssistantServicesObserver *)&v21 init];
  v7 = v6;
  if (v6)
  {
    v6->_accessorLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_queue, queue);
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

- (void)setAnnounceCallsProviderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  announceCallsProviderIdentifier = self->_announceCallsProviderIdentifier;
  if ((TUStringsAreEqualOrNil() & 1) == 0)
  {
    v6 = [identifierCopy copy];
    v7 = self->_announceCallsProviderIdentifier;
    self->_announceCallsProviderIdentifier = v6;

    delegateController = [(CSDAssistantServicesObserver *)self delegateController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100219060;
    v9[3] = &unk_10061EC48;
    v9[4] = self;
    v10 = identifierCopy;
    [delegateController enumerateDelegatesUsingBlock:v9];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  delegateController = [(CSDAssistantServicesObserver *)self delegateController];
  [delegateController addDelegate:delegateCopy queue:queueCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateController = [(CSDAssistantServicesObserver *)self delegateController];
  [delegateController removeDelegate:delegateCopy];
}

- (void)updateAnnounceCallsVersionForAvailableRequestTypes:(unint64_t)types
{
  isAssistantAvailableWhenLocked = [(CSDAssistantServicesObserver *)self isAssistantAvailableWhenLocked];

  [(CSDAssistantServicesObserver *)self updateAnnounceCallsVersionForAssistantAvailableWhenLocked:isAssistantAvailableWhenLocked availableRequestTypes:types];
}

- (void)availableAnnouncementRequestTypesChanged:(unint64_t)changed onPlatform:(int64_t)platform
{
  if ([(CSDAssistantServicesObserver *)self announceCallsPlatform]== platform)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      platformCopy = platform;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Available announcement request types changed for platform %ld", &v8, 0xCu);
    }

    [(CSDAssistantServicesObserver *)self updateAnnounceCallsVersionForAvailableRequestTypes:changed];
  }
}

- (void)eligibleAnnouncementRequestTypesChanged:(unint64_t)changed onPlatform:(int64_t)platform
{
  if ([(CSDAssistantServicesObserver *)self announceCallsPlatform]== platform)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      platformCopy = platform;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Eligible announcement request types changed for platform %ld", &v6, 0xCu);
    }
  }
}

- (void)handleAFPreferencesDidChangeNotification:(id)notification
{
  assistantPreferences = [(CSDAssistantServicesObserver *)self assistantPreferences];
  disableAssistantWhilePasscodeLocked = [assistantPreferences disableAssistantWhilePasscodeLocked];

  if (disableAssistantWhilePasscodeLocked == [(CSDAssistantServicesObserver *)self isAssistantAvailableWhenLocked])
  {

    [(CSDAssistantServicesObserver *)self updateAnnounceCallsVersionForAssistantAvailableWhenLocked:disableAssistantWhilePasscodeLocked ^ 1];
  }
}

@end