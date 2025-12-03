@interface RTTSettings
+ (id)sharedInstance;
+ (void)initialize;
- (BOOL)BOOLValueForKey:(id)key withDefaultValue:(BOOL)value;
- (BOOL)TTYHardwareEnabled;
- (BOOL)TTYSoftwareEnabled;
- (BOOL)answerRTTCallsAsMuted;
- (BOOL)incomingCallsTTY;
- (BOOL)rttInlineAbbreviationBarEnabled;
- (BOOL)rttLiveTranscriptionsEnabled;
- (BOOL)rttLiveTranscriptionsFeatureFlagEnabled;
- (BOOL)showsRTTNotifications;
- (BOOL)ttyShouldBeRealtime;
- (NSArray)cannedResponses;
- (NSString)preferredRelayNumber;
- (RTTSettings)init;
- (SEL)selectorForPreferenceKey:(id)key;
- (id)_preferenceKeyForSelector:(SEL)selector;
- (id)_selectorMap;
- (id)currentLocale;
- (id)notificationForSelector:(SEL)selector;
- (id)objectValueForKey:(id)key andContext:(id)context withClass:(Class)class andDefaultValue:(id)value;
- (id)objectValueForKey:(id)key withClass:(Class)class andDefaultValue:(id)value;
- (id)preferredRelayNumberForContext:(id)context;
- (id)uuidFromContext:(id)context;
- (id)valueForPreferenceKey:(id)key andContext:(id)context;
- (int64_t)integerValueForKey:(id)key withDefaultValue:(int64_t)value;
- (int64_t)settingsVersion;
- (void)_handlePreferenceChanged:(id)changed;
- (void)_registerForNotification:(id)notification;
- (void)_setValue:(id)value forPreferenceKey:(id)key;
- (void)_setValue:(id)value forPreferenceKey:(id)key andContext:(id)context;
- (void)_synchronizeIfNecessary:(id)necessary;
- (void)clearAllServerSettingsCache;
- (void)clearServerSettingsCacheForKey:(id)key;
- (void)dealloc;
- (void)migrateSettings;
- (void)registerUpdateBlock:(id)block forRetrieveSelector:(SEL)selector withListener:(id)listener;
- (void)resetCannedResponses;
- (void)setCannedResponses:(id)responses;
- (void)setIncomingTTYCallCount:(int64_t)count;
- (void)setLastCallCountReset:(double)reset;
- (void)setLastDBVacuum:(double)vacuum;
- (void)setOutgoingTTYCallCount:(int64_t)count;
- (void)setPreferredRelayNumber:(id)number;
- (void)setSettingsVersion:(int64_t)version;
- (void)updateGizmoValueIfNeeded:(id)needed forPreferenceKey:(id)key;
@end

@implementation RTTSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[RTTSettings sharedInstance];
  }

  v3 = sharedInstance_Settings;

  return v3;
}

- (BOOL)TTYHardwareEnabled
{
  v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
  defaultVoiceContext = [v3 defaultVoiceContext];
  LOBYTE(self) = [(RTTSettings *)self TTYHardwareEnabledForContext:defaultVoiceContext];

  return self;
}

- (BOOL)TTYSoftwareEnabled
{
  v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
  defaultVoiceContext = [v3 defaultVoiceContext];
  LOBYTE(self) = [(RTTSettings *)self TTYSoftwareEnabledForContext:defaultVoiceContext];

  return self;
}

- (id)_selectorMap
{
  if (_selectorMap_onceToken != -1)
  {
    [RTTSettings _selectorMap];
  }

  v3 = _selectorMap_SelectorMap;

  return v3;
}

void __25__RTTSettings_initialize__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = +[RTTSettings sharedInstance];
  v3 = +[RTTSettings sharedInstance];
  v4 = [v3 valueForPreferenceKey:v2];
  [v5 updateGizmoValueIfNeeded:v4 forPreferenceKey:v2];
}

- (void)migrateSettings
{
  if ([(RTTSettings *)self settingsVersion]<= 1)
  {
    v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
    defaultVoiceContext = [v3 defaultVoiceContext];

    v5 = [(RTTSettings *)self objectValueForKey:kAXSTTYPreferredRelayNumberPreference withClass:objc_opt_class() andDefaultValue:&stru_2873FC590];
    if ([v5 length])
    {
      [(RTTSettings *)self setPreferredRelayNumber:v5 forContext:defaultVoiceContext];
    }

    [(RTTSettings *)self setTTYHardwareEnabled:[(RTTSettings *)self BOOLValueForKey:kAXSTTYHardwareEnabledPreference withDefaultValue:0] forContext:defaultVoiceContext];
    [(RTTSettings *)self setTTYSoftwareEnabled:[(RTTSettings *)self BOOLValueForKey:kAXSTTYSoftwareEnabledPreference withDefaultValue:0] forContext:defaultVoiceContext];
    [(RTTSettings *)self setIncomingCallsTTY:[(RTTSettings *)self BOOLValueForKey:kAXSTTYIncomingCallsTTYPreference withDefaultValue:0] forContext:defaultVoiceContext];
    [(RTTSettings *)self setTTYShouldBeRealtime:[(RTTSettings *)self BOOLValueForKey:kAXSTTYShouldBeRealtimePreference withDefaultValue:1] forContext:defaultVoiceContext];
    [(RTTSettings *)self setSettingsVersion:2];
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults BOOLForKey:@"RTT_RequestedNotificationAuthorizationKey_14.0"];

  if ((v7 & 1) == 0)
  {
    if ([(RTTSettings *)self TTYHardwareEnabled]|| [(RTTSettings *)self TTYSoftwareEnabled])
    {
      RTTRequestNotificationAuthorization();
    }

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults2 setBool:1 forKey:@"RTT_RequestedNotificationAuthorizationKey_14.0"];

    v9 = AXLogRTT();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_DEFAULT, "Performing RTT notification request", v10, 2u);
    }
  }
}

- (int64_t)settingsVersion
{
  if (CachedVersion == 2)
  {
    return 2;
  }

  result = [(RTTSettings *)self integerValueForKey:kAXSRTTSettingsVersionPreference withDefaultValue:0];
  CachedVersion = result;
  return result;
}

+ (void)initialize
{
  v2 = +[RTTSettings sharedInstance];
  if (([MEMORY[0x277D12B60] currentProcessIsHeard] & 1) != 0 || objc_msgSend(MEMORY[0x277D12B60], "currentProcessIsPreferences"))
  {

    [&unk_2873FFF08 enumerateObjectsUsingBlock:&__block_literal_global_6];
  }
}

- (RTTSettings)init
{
  v16.receiver = self;
  v16.super_class = RTTSettings;
  v2 = [(RTTSettings *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    synchronizeDomainsLock = v2->_synchronizeDomainsLock;
    v2->_synchronizeDomainsLock = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    registeredNotifications = v2->_registeredNotifications;
    v2->_registeredNotifications = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    synchronizePreferences = v2->_synchronizePreferences;
    v2->_synchronizePreferences = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    updateBlocks = v2->_updateBlocks;
    v2->_updateBlocks = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedSettings = v2->_cachedSettings;
    v2->_cachedSettings = v11;

    v13 = dispatch_queue_create("rtt-nano-sync-queue", 0);
    [(RTTSettings *)v2 setNanoSynchronizeQueue:v13];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, AccessibilitySettingsChangedOnCompanion, @"NanoRTTDefaultsChanged", 0, 0);
  }

  return v2;
}

uint64_t __29__RTTSettings_sharedInstance__block_invoke()
{
  sharedInstance_Settings = objc_alloc_init(RTTSettings);

  return MEMORY[0x2821F96F8]();
}

- (id)currentLocale
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageCode = [currentLocale languageCode];

  return languageCode;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = RTTSettings;
  [(RTTSettings *)&v4 dealloc];
}

- (void)_handlePreferenceChanged:(id)changed
{
  v8 = [changed stringByReplacingOccurrencesOfString:@"_AXNotification_" withString:&stru_2873FC590];
  [(NSLock *)self->_synchronizeDomainsLock lock];
  [(NSMutableDictionary *)self->_cachedSettings setObject:0 forKeyedSubscript:v8];
  synchronizePreferences = [(RTTSettings *)self synchronizePreferences];
  [synchronizePreferences addObject:v8];

  updateBlocks = [(RTTSettings *)self updateBlocks];
  v6 = [updateBlocks objectForKey:v8];
  v7 = [v6 copy];

  [(NSLock *)self->_synchronizeDomainsLock unlock];
  [v7 enumerateObjectsUsingBlock:&__block_literal_global_95];
}

void __40__RTTSettings__handlePreferenceChanged___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectAtIndexedSubscript:1];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void __27__RTTSettings__selectorMap__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v25 = kAXSTTYHardwareEnabledPreference;
  v26 = v0;
  v28 = NSStringFromSelector(sel_TTYHardwareEnabled);
  v24 = kAXSTTYSoftwareEnabledPreference;
  v1 = NSStringFromSelector(sel_TTYSoftwareEnabled);
  v22 = kAXSTTYIncomingCallsTTYPreference;
  v23 = v1;
  v2 = NSStringFromSelector(sel_incomingCallsTTY);
  v20 = kAXSTTYPreferredRelayNumberPreference;
  v21 = v2;
  v3 = NSStringFromSelector(sel_preferredRelayNumber);
  v18 = kAXSTTYShouldBeRealtimePreference;
  v19 = v3;
  v27 = NSStringFromSelector(sel_ttyShouldBeRealtime);
  v17 = kAXSRTTAnswerAllRTTCallsAsMutedPreference;
  v4 = NSStringFromSelector(sel_answerRTTCallsAsMuted);
  v16 = kAXSRTTShowsNotificationsPreference;
  v5 = NSStringFromSelector(sel_showsRTTNotifications);
  v15 = NSStringFromSelector(sel_hasReceivedRTTCall);
  v6 = NSStringFromSelector(sel_internalOverrideTTYAvailability);
  v7 = kAXSRTTSettingsVersionPreference;
  v14 = NSStringFromSelector(sel_settingsVersion);
  v8 = NSStringFromSelector(sel_continuityRTTIsSupported);
  v9 = NSStringFromSelector(sel_continuityEmergencyRTTIsSupported);
  v10 = NSStringFromSelector(sel_cannedResponses);
  v11 = NSStringFromSelector(sel_rttLiveTranscriptionsEnabled);
  v12 = [v26 initWithObjectsAndKeys:{v25, v28, v24, v23, v22, v21, v20, v19, v18, v27, v17, v4, v16, v5, @"TTYReceivedRTTCallPreference", v15, @"InternalOverrideTTYAvailabilityPreference", v6, v7, v14, @"RTTContinuityRTTIsSupportedPreference", v8, @"RTTContinuityEmergencyRTTIsSupportedPreference", v9, @"TTYCannedResponsesPreference", v10, @"RTTLiveTranscriptionEnabledPreference", v11, 0}];
  v13 = _selectorMap_SelectorMap;
  _selectorMap_SelectorMap = v12;
}

- (id)_preferenceKeyForSelector:(SEL)selector
{
  _selectorMap = [(RTTSettings *)self _selectorMap];
  v5 = NSStringFromSelector(selector);
  v6 = [_selectorMap objectForKey:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"UnknownKey";
  }

  v8 = v7;

  return v7;
}

- (SEL)selectorForPreferenceKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  _selectorMap = [(RTTSettings *)self _selectorMap];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__RTTSettings_selectorForPreferenceKey___block_invoke;
  v9[3] = &unk_279AE8220;
  v6 = keyCopy;
  v10 = v6;
  v11 = &v12;
  [_selectorMap enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __40__RTTSettings_selectorForPreferenceKey___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  aSelectorName = a2;
  if ([a3 isEqualToString:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = NSSelectorFromString(aSelectorName);
    *a4 = 1;
  }
}

- (void)_registerForNotification:(id)notification
{
  notificationCopy = notification;
  if (_registerForNotification__onceToken != -1)
  {
    [RTTSettings _registerForNotification:];
  }

  v5 = _registerForNotification__RegistrationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__RTTSettings__registerForNotification___block_invoke_2;
  v7[3] = &unk_279AE7760;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_sync(v5, v7);
}

uint64_t __40__RTTSettings__registerForNotification___block_invoke()
{
  _registerForNotification__RegistrationQueue = dispatch_queue_create("RTTSettings", 0);

  return MEMORY[0x2821F96F8]();
}

void __40__RTTSettings__registerForNotification___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) registeredNotifications];
  v3 = (a1 + 40);
  if (([v2 containsObject:*(a1 + 40)] & 1) == 0)
  {
    [v2 addObject:*(a1 + 40)];
    v4 = [*(a1 + 32) _notificationForPreferenceKey:*(a1 + 40)];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axSettingsHandlePreferenceChanged, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, 0, _axSettingsHandlePreferenceChanged, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v7 = AXLogRTT();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __40__RTTSettings__registerForNotification___block_invoke_2_cold_1(v3, v7);
    }
  }
}

- (id)notificationForSelector:(SEL)selector
{
  v4 = [(RTTSettings *)self _preferenceKeyForSelector:selector];
  v5 = [(RTTSettings *)self _notificationForPreferenceKey:v4];

  return v5;
}

- (void)registerUpdateBlock:(id)block forRetrieveSelector:(SEL)selector withListener:(id)listener
{
  v25[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  listenerCopy = listener;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:listenerCopy];
  [(NSLock *)self->_synchronizeDomainsLock lock];
  updateBlocks = [(RTTSettings *)self updateBlocks];
  v12 = [updateBlocks copy];

  [(NSLock *)self->_synchronizeDomainsLock unlock];
  v13 = [(RTTSettings *)self _preferenceKeyForSelector:selector];
  array = [v12 objectForKey:v13];
  if (blockCopy)
  {
    v15 = _Block_copy(blockCopy);
    v22 = v10;
    v25[0] = v10;
    v16 = _Block_copy(v15);
    v25[1] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    [array addObject:v17];
    v18 = objc_getAssociatedObject(listenerCopy, &AXRTTSettingsDestructionHelperKey);
    if (!v18)
    {
      v18 = [[AXRTTSettingsListenerHelper alloc] initWithListenerAddress:listenerCopy];
      objc_setAssociatedObject(listenerCopy, &AXRTTSettingsDestructionHelperKey, v18, 1);
    }

    [(AXRTTSettingsListenerHelper *)v18 addSelectorKey:selector];
    [(RTTSettings *)self _registerForNotification:v13];

    v10 = v22;
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__RTTSettings_registerUpdateBlock_forRetrieveSelector_withListener___block_invoke;
    v23[3] = &unk_279AE8248;
    v24 = v10;
    v19 = [array indexesOfObjectsPassingTest:v23];
    if ([v19 count])
    {
      [array removeObjectsAtIndexes:v19];
    }

    v15 = v24;
  }

  [(NSLock *)self->_synchronizeDomainsLock lock];
  updateBlocks2 = [(RTTSettings *)self updateBlocks];
  [updateBlocks2 setObject:array forKey:v13];

  [(NSLock *)self->_synchronizeDomainsLock unlock];
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __68__RTTSettings_registerUpdateBlock_forRetrieveSelector_withListener___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 isEqual:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)uuidFromContext:(id)context
{
  contextCopy = context;
  if ([MEMORY[0x277D12B60] deviceIsPad] & 1) != 0 || (objc_msgSend(MEMORY[0x277D12B60], "deviceIsPod"))
  {
    uUIDString = @"RTTWildcardContext";
  }

  else
  {
    uuid = [contextCopy uuid];
    uUIDString = [uuid UUIDString];
  }

  return uUIDString;
}

- (void)updateGizmoValueIfNeeded:(id)needed forPreferenceKey:(id)key
{
  neededCopy = needed;
  keyCopy = key;
  nanoSynchronizeQueue = [(RTTSettings *)self nanoSynchronizeQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__RTTSettings_updateGizmoValueIfNeeded_forPreferenceKey___block_invoke;
  v11[3] = &unk_279AE7760;
  v12 = neededCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = neededCopy;
  dispatch_async(nanoSynchronizeQueue, v11);
}

void __57__RTTSettings_updateGizmoValueIfNeeded_forPreferenceKey___block_invoke(uint64_t a1)
{
  v2 = +[RTTNanoSettings sharedInstance];
  v3 = [v2 valueForPreferenceKey:@"TTYNanoIndependencePreference"];

  if (!v3)
  {
    v4 = +[RTTNanoSettings sharedInstance];
    [v4 _setValue:*(a1 + 32) forPreferenceKey:*(a1 + 40)];
  }
}

- (void)_setValue:(id)value forPreferenceKey:(id)key andContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  contextCopy = context;
  v11 = [(RTTSettings *)self uuidFromContext:contextCopy];
  v12 = AXLogRTT();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v17 = 138412802;
    v18 = keyCopy;
    v19 = 2112;
    v20 = valueCopy;
    v21 = 2112;
    v22 = contextCopy;
    _os_log_impl(&dword_261754000, v12, OS_LOG_TYPE_INFO, "Setting %@=%@ for context: %@", &v17, 0x20u);
  }

  if ([v11 length])
  {
    v13 = MEMORY[0x277CBEB38];
    v14 = [(RTTSettings *)self objectValueForKey:keyCopy withClass:objc_opt_class() andDefaultValue:MEMORY[0x277CBEC10]];
    v15 = [v13 dictionaryWithDictionary:v14];

    [v15 setObject:valueCopy forKey:v11];
    [(RTTSettings *)self _setValue:v15 forPreferenceKey:keyCopy];
  }

  else
  {
    v15 = AXLogRTT();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = 138412546;
      v18 = keyCopy;
      v19 = 2112;
      v20 = contextCopy;
      _os_log_impl(&dword_261754000, v15, OS_LOG_TYPE_INFO, "Not setting value for %@ and context %@", &v17, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_setValue:(id)value forPreferenceKey:(id)key
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D81E48];
  v7 = *MEMORY[0x277D81E48];
  v8 = *MEMORY[0x277CBF030];
  keyCopy = key;
  valueCopy = value;
  CFPreferencesSetValue(keyCopy, valueCopy, v7, @"mobile", v8);
  [(RTTSettings *)self updateGizmoValueIfNeeded:valueCopy forPreferenceKey:keyCopy];
  [(NSLock *)self->_synchronizeDomainsLock lock];
  [(NSMutableDictionary *)self->_cachedSettings setObject:valueCopy forKeyedSubscript:keyCopy];

  [(NSLock *)self->_synchronizeDomainsLock unlock];
  CFPreferencesAppSynchronize(*v6);
  v11 = [(RTTSettings *)self _notificationForPreferenceKey:keyCopy];

  if (v11)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, v11, 0, 0, 1u);
    v13 = AXLogRTT();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_261754000, v13, OS_LOG_TYPE_INFO, "Posting RTT setting notification for: %@", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_synchronizeIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  [(NSLock *)self->_synchronizeDomainsLock lock];
  synchronizePreferences = [(RTTSettings *)self synchronizePreferences];
  if ([synchronizePreferences containsObject:necessaryCopy])
  {
    CFPreferencesAppSynchronize(*MEMORY[0x277D81E48]);
    [synchronizePreferences removeObject:necessaryCopy];
  }

  [(NSLock *)self->_synchronizeDomainsLock unlock];
}

- (int64_t)integerValueForKey:(id)key withDefaultValue:(int64_t)value
{
  v5 = [(RTTSettings *)self valueForPreferenceKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [v5 integerValue];
  }

  return value;
}

- (BOOL)BOOLValueForKey:(id)key withDefaultValue:(BOOL)value
{
  v5 = [(RTTSettings *)self valueForPreferenceKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [v5 BOOLValue];
  }

  return value;
}

- (id)objectValueForKey:(id)key andContext:(id)context withClass:(Class)class andDefaultValue:(id)value
{
  v58 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  contextCopy = context;
  valueCopy = value;
  v13 = [(RTTSettings *)self uuidFromContext:contextCopy];
  v14 = [(RTTSettings *)self valueForPreferenceKey:keyCopy andContext:v13];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = valueCopy;
    if ([v13 length])
    {
      v42 = [v14 objectForKey:v13];
      isKindOfClass = objc_opt_isKindOfClass();
      v17 = AXLogRTT();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
      if (isKindOfClass)
      {
        if (v18)
        {
          *buf = 138412546;
          v50 = keyCopy;
          v51 = 2112;
          v52 = v42;
          _os_log_impl(&dword_261754000, v17, OS_LOG_TYPE_INFO, "Returning setting: [%@] = '%@'", buf, 0x16u);
        }

        v19 = v42;
        v15 = v19;
      }

      else
      {
        if (v18)
        {
          *buf = 138413314;
          v50 = keyCopy;
          v51 = 2112;
          v52 = v42;
          v53 = 2112;
          *v54 = class;
          *&v54[8] = 2112;
          v55 = v14;
          v56 = 2112;
          v57 = v13;
          _os_log_impl(&dword_261754000, v17, OS_LOG_TYPE_INFO, "Slot value is wrong kind: [%@] %@ > %@ (%@ -> %@)", buf, 0x34u);
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        obj = v14;
        v23 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v23)
        {
          v24 = v23;
          v40 = contextCopy;
          classCopy = class;
          v39 = valueCopy;
          v25 = *v45;
          while (2)
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v45 != v25)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v44 + 1) + 8 * i);
              v28 = AXLogRTT();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                v29 = [v13 isEqualToString:@"RTTWildcardContext"];
                v30 = [v27 hasPrefix:@"00000000-"];
                *buf = 138413058;
                v50 = v27;
                v51 = 2112;
                v52 = v13;
                v53 = 1024;
                *v54 = v29;
                *&v54[4] = 1024;
                *&v54[6] = v30;
                _os_log_impl(&dword_261754000, v28, OS_LOG_TYPE_INFO, "check: %@ %@ %d %d", buf, 0x22u);
              }

              v31 = [v27 commonPrefixWithString:v13 options:1];
              if ([v31 length] > 5)
              {

LABEL_32:
                v33 = [obj objectForKey:v27];

                v34 = AXLogRTT();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  v35 = objc_opt_class();
                  *buf = 138413058;
                  v50 = v27;
                  v51 = 2112;
                  v52 = v15;
                  v53 = 2112;
                  *v54 = v35;
                  *&v54[8] = 2112;
                  v55 = classCopy;
                  v36 = v35;
                  _os_log_impl(&dword_261754000, v34, OS_LOG_TYPE_INFO, "Found another id with value: [%@], contextUUID mismatch: [%@] [cls: %@, expected: %@]", buf, 0x2Au);
                }

                valueCopy = v39;
                contextCopy = v40;
                if (objc_opt_isKindOfClass())
                {
                  v19 = v33;

                  v15 = v19;
                }

                else
                {
                  v19 = v33;
                }

                goto LABEL_37;
              }

              if ([v13 isEqualToString:@"RTTWildcardContext"])
              {
                v32 = [v27 hasPrefix:@"00000000-"];

                if (v32)
                {
                  goto LABEL_32;
                }
              }

              else
              {
              }
            }

            v24 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }

          valueCopy = v39;
          contextCopy = v40;
        }

        v19 = v42;
LABEL_37:
      }
    }

    else
    {
      v19 = AXLogRTT();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v50 = contextCopy;
        _os_log_impl(&dword_261754000, v19, OS_LOG_TYPE_INFO, "Not retrieving setting. Context is wrong: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v20 = AXLogRTT();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138412802;
      v50 = keyCopy;
      v51 = 2112;
      v52 = v22;
      v53 = 2112;
      *v54 = v14;
      _os_log_impl(&dword_261754000, v20, OS_LOG_TYPE_INFO, "Preference group wrong: [%@] = |%@| '%@'", buf, 0x20u);
    }

    v15 = valueCopy;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)objectValueForKey:(id)key withClass:(Class)class andDefaultValue:(id)value
{
  valueCopy = value;
  v8 = [(RTTSettings *)self valueForPreferenceKey:key];
  if (!v8 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = valueCopy;

    v8 = v9;
  }

  return v8;
}

- (id)valueForPreferenceKey:(id)key andContext:(id)context
{
  v27[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  contextCopy = context;
  [(RTTSettings *)self _synchronizeIfNecessary:keyCopy];
  [(RTTSettings *)self _registerForNotification:keyCopy];
  [(NSLock *)self->_synchronizeDomainsLock lock];
  v8 = [(NSMutableDictionary *)self->_cachedSettings objectForKeyedSubscript:keyCopy];
  [(NSLock *)self->_synchronizeDomainsLock unlock];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(__CFString *)v8 objectForKey:contextCopy];

      if (v9)
      {
        v10 = AXLogRTT();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v22 = 138412546;
          v23 = v8;
          v24 = 2112;
          v25 = keyCopy;
          _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "Returning cached version: %@: %@", &v22, 0x16u);
        }

        v11 = v8;
        goto LABEL_21;
      }
    }

    v12 = AXLogRTT();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v22 = 138412802;
      v23 = v8;
      v24 = 2112;
      v25 = contextCopy;
      v26 = 2112;
      v27[0] = keyCopy;
      _os_log_impl(&dword_261754000, v12, OS_LOG_TYPE_INFO, "Cached setting missing right context: %@ > [%@]%@", &v22, 0x20u);
    }
  }

  pw_uid = valueForPreferenceKey_andContext__mobileUID;
  if (valueForPreferenceKey_andContext__mobileUID == -1)
  {
    v14 = getpwnam("mobile");
    if (v14)
    {
      pw_uid = v14->pw_uid;
      valueForPreferenceKey_andContext__mobileUID = pw_uid;
    }

    else
    {
      pw_uid = valueForPreferenceKey_andContext__mobileUID;
    }
  }

  if (pw_uid == geteuid())
  {
    v15 = CFPreferencesCopyValue(keyCopy, *MEMORY[0x277D81E48], @"mobile", *MEMORY[0x277CBF030]);
    if (v15)
    {
      v11 = v15;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v16 = +[RTTServer sharedInstance];
    v11 = [v16 valueForTTYSetting:keyCopy];

    v17 = AXLogRTT();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = valueForPreferenceKey_andContext__mobileUID;
      v19 = geteuid();
      v22 = 138413058;
      v23 = keyCopy;
      v24 = 2112;
      v25 = v11;
      v26 = 1024;
      LODWORD(v27[0]) = v18;
      WORD2(v27[0]) = 1024;
      *(v27 + 6) = v19;
      _os_log_impl(&dword_261754000, v17, OS_LOG_TYPE_INFO, "Not mobile: asked heard for setting: %@: Result: [%@] {mobile UID %d, my UID %d}", &v22, 0x22u);
    }
  }

LABEL_21:

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)clearAllServerSettingsCache
{
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Clearing server settings cache", v4, 2u);
  }

  [(NSLock *)self->_synchronizeDomainsLock lock];
  [(NSMutableDictionary *)self->_cachedSettings removeAllObjects];
  [(NSLock *)self->_synchronizeDomainsLock unlock];
}

- (void)clearServerSettingsCacheForKey:(id)key
{
  v11 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = keyCopy;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Clearing server settings cache for: %@", &v9, 0xCu);
  }

  [(NSLock *)self->_synchronizeDomainsLock lock];
  [(NSMutableDictionary *)self->_cachedSettings setObject:0 forKeyedSubscript:keyCopy];
  [(NSLock *)self->_synchronizeDomainsLock unlock];
  v6 = [(RTTSettings *)self _notificationForPreferenceKey:keyCopy];
  if (v6)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, v6, 0, 0, 1u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)incomingCallsTTY
{
  v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
  defaultVoiceContext = [v3 defaultVoiceContext];
  LOBYTE(self) = [(RTTSettings *)self incomingCallsTTYForContext:defaultVoiceContext];

  return self;
}

- (void)setIncomingTTYCallCount:(int64_t)count
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  [(RTTSettings *)self _setValue:v4 forPreferenceKey:@"incomingTTYCallCount"];
}

- (void)setOutgoingTTYCallCount:(int64_t)count
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  [(RTTSettings *)self _setValue:v4 forPreferenceKey:@"outgoingTTYCallCount"];
}

- (void)setSettingsVersion:(int64_t)version
{
  CachedVersion = -1;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:version];
  [(RTTSettings *)self _setValue:v4 forPreferenceKey:kAXSRTTSettingsVersionPreference];
}

- (void)setLastCallCountReset:(double)reset
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:reset];
  [(RTTSettings *)self _setValue:v4 forPreferenceKey:@"lastCallCountReset"];
}

- (void)setLastDBVacuum:(double)vacuum
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:vacuum];
  [(RTTSettings *)self _setValue:v4 forPreferenceKey:@"TTYLastDBVacuumPreference"];
}

- (BOOL)ttyShouldBeRealtime
{
  v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
  defaultVoiceContext = [v3 defaultVoiceContext];
  LOBYTE(self) = [(RTTSettings *)self ttyShouldBeRealtimeForContext:defaultVoiceContext];

  return self;
}

- (NSString)preferredRelayNumber
{
  v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
  defaultVoiceContext = [v3 defaultVoiceContext];
  v5 = [(RTTSettings *)self preferredRelayNumberForContext:defaultVoiceContext];

  return v5;
}

- (void)setPreferredRelayNumber:(id)number
{
  numberCopy = number;
  v6 = +[RTTTelephonyUtilities sharedUtilityProvider];
  defaultVoiceContext = [v6 defaultVoiceContext];
  [(RTTSettings *)self setPreferredRelayNumber:numberCopy forContext:defaultVoiceContext];
}

- (BOOL)answerRTTCallsAsMuted
{
  v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
  defaultVoiceContext = [v3 defaultVoiceContext];
  LOBYTE(self) = [(RTTSettings *)self answerRTTCallsAsMutedForContext:defaultVoiceContext];

  return self;
}

- (BOOL)showsRTTNotifications
{
  v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
  defaultVoiceContext = [v3 defaultVoiceContext];
  LOBYTE(self) = [(RTTSettings *)self showsRTTNotificationsForContext:defaultVoiceContext];

  return self;
}

- (BOOL)rttLiveTranscriptionsEnabled
{
  v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
  defaultVoiceContext = [v3 defaultVoiceContext];
  LOBYTE(self) = [(RTTSettings *)self rttLiveTranscriptionsEnabledForContext:defaultVoiceContext];

  return self;
}

void __48__RTTSettings_setTTYSoftwareEnabled_forContext___block_invoke(uint64_t a1)
{
  v2 = +[RTTTelephonyUtilities sharedUtilityProvider];
  [v2 setTTYDictionaryAvailability:*(a1 + 32)];
}

- (id)preferredRelayNumberForContext:(id)context
{
  v4 = kAXSTTYPreferredRelayNumberPreference;
  contextCopy = context;
  v6 = [(RTTSettings *)self objectValueForKey:v4 andContext:contextCopy withClass:objc_opt_class() andDefaultValue:&stru_2873FC590];

  return v6;
}

- (NSArray)cannedResponses
{
  v3 = [(RTTSettings *)self objectValueForKey:@"TTYCannedResponsesPreference" withClass:objc_opt_class() andDefaultValue:0];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = [v3 count] - 1;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __30__RTTSettings_cannedResponses__block_invoke;
  v15[3] = &unk_279AE8290;
  v15[4] = self;
  v5 = v3;
  v16 = v5;
  v6 = dictionary;
  v17 = v6;
  v18 = v19;
  [&unk_2873FFF20 enumerateObjectsUsingBlock:v15];
  [v6 addEntriesFromDictionary:v5];
  v7 = [v6 keysOfEntriesPassingTest:&__block_literal_global_199_0];
  allObjects = [v7 allObjects];
  [v6 removeObjectsForKeys:allObjects];

  allKeys = [v6 allKeys];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __30__RTTSettings_cannedResponses__block_invoke_3;
  v13[3] = &unk_279AE82D8;
  v10 = v6;
  v14 = v10;
  v11 = [allKeys sortedArrayUsingComparator:v13];

  _Block_object_dispose(v19, 8);

  return v11;
}

void __30__RTTSettings_cannedResponses__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 currentLocale];
  v10 = ttyLocStringAndLocale(v4, v5);

  v6 = [*(a1 + 40) objectForKey:v10];

  if (!v6)
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = *(a1 + 48);
    ++*(*(*(a1 + 56) + 8) + 24);
    v9 = [v7 numberWithUnsignedInteger:?];
    [v8 setObject:v9 forKey:v10];
  }
}

uint64_t __30__RTTSettings_cannedResponses__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (void)setCannedResponses:(id)responses
{
  responsesCopy = responses;
  v5 = MEMORY[0x277CBEB38];
  v6 = [(RTTSettings *)self objectValueForKey:@"TTYCannedResponsesPreference" withClass:objc_opt_class() andDefaultValue:0];
  v7 = [v5 dictionaryWithDictionary:v6];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __34__RTTSettings_setCannedResponses___block_invoke;
  v13[3] = &unk_279AE8300;
  v14 = responsesCopy;
  v8 = v7;
  v15 = v8;
  v9 = responsesCopy;
  [v8 enumerateKeysAndObjectsUsingBlock:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __34__RTTSettings_setCannedResponses___block_invoke_203;
  v11[3] = &unk_279AE8328;
  v12 = v8;
  v10 = v8;
  [v9 enumerateObjectsUsingBlock:v11];
  [(RTTSettings *)self _setValue:v10 forPreferenceKey:@"TTYCannedResponsesPreference"];
}

void __34__RTTSettings_setCannedResponses___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) indexOfObject:?] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) setObject:&unk_2873FFE60 forKey:v3];
  }
}

void __34__RTTSettings_setCannedResponses___block_invoke_203(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [v4 setObject:v7 forKey:v6];
}

- (void)resetCannedResponses
{
  [(RTTSettings *)self _setValue:0 forPreferenceKey:@"TTYCannedResponsesPreference"];
  cannedResponses = [(RTTSettings *)self cannedResponses];
  [(RTTSettings *)self setCannedResponses:cannedResponses];
}

- (BOOL)rttInlineAbbreviationBarEnabled
{
  v2 = [(RTTSettings *)self BOOLValueForKey:@"RTTInlineAbbreviationBar" withDefaultValue:1];
  if (v2)
  {
    LOBYTE(v2) = [MEMORY[0x277D12B60] deviceIsPad] ^ 1;
  }

  return v2;
}

- (BOOL)rttLiveTranscriptionsFeatureFlagEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

void __40__RTTSettings__registerForNotification___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_261754000, a2, OS_LOG_TYPE_DEBUG, "Registered for %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)BOOLValueForKey:andContext:withDefaultValue:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_261754000, v0, v1, "Requesting BOOL value: %@ [%@]");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)BOOLValueForKey:andContext:withDefaultValue:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_261754000, v0, v1, "Retrieved BOOL value: %@=%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end