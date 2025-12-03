@interface TUCallProviderManager
+ (NSArray)defaultProviders;
+ (NSSet)invitationPreferencesForRecentCall;
+ (int)serviceForProvider:(id)provider video:(BOOL)video;
- (NSArray)providers;
- (NSArray)sortedProviders;
- (NSDictionary)providersByIdentifier;
- (NSString)debugDescription;
- (TUCallProvider)defaultAppProvider;
- (TUCallProvider)faceTimeProvider;
- (TUCallProvider)superboxProvider;
- (TUCallProvider)telephonyProvider;
- (TUCallProvider)tinCanProvider;
- (TUCallProviderManager)initWithDataSource:(id)source type:(unint64_t)type queue:(id)queue;
- (TUCallProviderManager)initWithDataSource:(id)source type:(unint64_t)type queue:(id)queue featureFlags:(id)flags;
- (TUCallProviderManager)initWithType:(unint64_t)type;
- (id)dialRequestForRecentCall:(id)call;
- (id)joinConversationRequestForRecentCall:(id)call;
- (id)providerForFavoritesEntry:(id)entry;
- (id)providerForFavoritesEntryActionBundleIdentifier:(id)identifier;
- (id)providerForRecentCall:(id)call;
- (id)providerWithIdentifier:(id)identifier;
- (id)providerWithService:(int)service video:(BOOL *)video;
- (id)providersPassingTest:(id)test;
- (id)sortedProvidersPassingTest:(id)test;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)dealloc;
- (void)donateBackgroundCallIntentForProviderWithIdentifier:(id)identifier;
- (void)donateUserIntentForProviderWithIdentifier:(id)identifier;
- (void)launchAppForDialRequest:(id)request completion:(id)completion;
- (void)providersChangedForDataSource:(id)source;
- (void)removeDelegate:(id)delegate;
@end

@implementation TUCallProviderManager

+ (NSArray)defaultProviders
{
  array = [MEMORY[0x1E695DF70] array];
  v3 = [[TUCallProvider alloc] initWithIdentifier:@"com.apple.coretelephony"];
  [(TUCallProvider *)v3 setBundleIdentifier:@"com.apple.mobilephone"];
  [(TUCallProvider *)v3 setLocalizedName:@"Telephony"];
  [(TUCallProvider *)v3 setSupportsAudioOnly:1];
  [(TUCallProvider *)v3 setSupportsEmergency:1];
  [(TUCallProvider *)v3 setSupportsVoicemail:1];
  [(TUCallProvider *)v3 setSupportsRecents:1];
  v4 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F09C6298];
  [(TUCallProvider *)v3 setSupportedHandleTypes:v4];

  [array addObject:v3];
  v5 = [[TUCallProvider alloc] initWithIdentifier:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];
  v6 = TUPreferredFaceTimeBundleIdentifier();
  [(TUCallProvider *)v5 setBundleIdentifier:v6];

  [(TUCallProvider *)v5 setLocalizedName:@"FaceTime"];
  [(TUCallProvider *)v5 setSupportsAudioOnly:1];
  [(TUCallProvider *)v5 setSupportsAudioAndVideo:1];
  [(TUCallProvider *)v5 setSupportsRecents:1];
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F09C6298, &unk_1F09C62B0, 0}];
  [(TUCallProvider *)v5 setSupportedHandleTypes:v7];

  [array addObject:v5];
  if (TUShouldCreateSuperboxProvider())
  {
    v8 = [[TUCallProvider alloc] initWithIdentifier:@"com.apple.Superbox"];
    [(TUCallProvider *)v8 setLocalizedName:@"Superbox"];
    [(TUCallProvider *)v8 setSupportsAudioOnly:1];
    [(TUCallProvider *)v8 setSupportsEmergency:1];
    [(TUCallProvider *)v8 setSupportsAudioAndVideo:1];
    [(TUCallProvider *)v8 setSupportsRecents:1];
    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F09C6298, &unk_1F09C62B0, 0}];
    [(TUCallProvider *)v8 setSupportedHandleTypes:v9];

    [array addObject:v8];
  }

  v10 = [array copy];

  return v10;
}

- (NSDictionary)providersByIdentifier
{
  dataSource = [(TUCallProviderManager *)self dataSource];
  currentProcessCanAccessInitialState = [dataSource currentProcessCanAccessInitialState];

  if (currentProcessCanAccessInitialState)
  {
    dataSource2 = [(TUCallProviderManager *)self dataSource];
    [dataSource2 blockUntilInitialStateReceived];
  }

  dataSource3 = [(TUCallProviderManager *)self dataSource];
  providersByIdentifier = [dataSource3 providersByIdentifier];

  type = [(TUCallProviderManager *)self type];
  if (type == 2)
  {
    dataSource4 = [(TUCallProviderManager *)self dataSource];
    pairedHostDeviceProvidersByIdentifier = [dataSource4 pairedHostDeviceProvidersByIdentifier];
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_8;
    }

    dataSource4 = [(TUCallProviderManager *)self dataSource];
    pairedHostDeviceProvidersByIdentifier = [dataSource4 localProvidersByIdentifier];
  }

  v11 = pairedHostDeviceProvidersByIdentifier;

  providersByIdentifier = v11;
LABEL_8:

  return providersByIdentifier;
}

- (TUCallProvider)telephonyProvider
{
  v10 = *MEMORY[0x1E69E9840];
  if (TUShouldUseSuperboxTelephonyProvider())
  {
    v3 = TUDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = @"TUShouldUseSuperBoxTelephonyProvider";
      _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Because this is an internal install and the %@ default is set, com.apple.Superbox (aka Speakerbox)                     is acting as the telephony provider", &v8, 0xCu);
    }

    superboxProvider = [(TUCallProviderManager *)self superboxProvider];
  }

  else
  {
    providersByIdentifier = [(TUCallProviderManager *)self providersByIdentifier];
    superboxProvider = [providersByIdentifier objectForKeyedSubscript:@"com.apple.coretelephony"];
  }

  v6 = *MEMORY[0x1E69E9840];

  return superboxProvider;
}

- (TUCallProvider)faceTimeProvider
{
  providersByIdentifier = [(TUCallProviderManager *)self providersByIdentifier];
  v3 = [providersByIdentifier objectForKeyedSubscript:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

  return v3;
}

- (NSArray)providers
{
  providersByIdentifier = [(TUCallProviderManager *)self providersByIdentifier];
  allValues = [providersByIdentifier allValues];
  v4 = [allValues copy];

  return v4;
}

- (void)dealloc
{
  [(TUCallProviderManagerDataSource *)self->_dataSource invalidate];
  v3.receiver = self;
  v3.super_class = TUCallProviderManager;
  [(TUCallProviderManager *)&v3 dealloc];
}

- (TUCallProviderManager)initWithType:(unint64_t)type
{
  v5 = objc_alloc_init(TUCallProviderManagerXPCClient);
  v6 = dispatch_queue_create("com.apple.telephonyutilities.callprovidermanager", 0);
  v7 = [(TUCallProviderManager *)self initWithDataSource:v5 type:type queue:v6];

  return v7;
}

- (TUCallProviderManager)initWithDataSource:(id)source type:(unint64_t)type queue:(id)queue
{
  queueCopy = queue;
  sourceCopy = source;
  v10 = objc_alloc_init(TUFeatureFlags);
  v11 = [(TUCallProviderManager *)self initWithDataSource:sourceCopy type:type queue:queueCopy featureFlags:v10];

  return v11;
}

- (TUCallProviderManager)initWithDataSource:(id)source type:(unint64_t)type queue:(id)queue featureFlags:(id)flags
{
  sourceCopy = source;
  queueCopy = queue;
  flagsCopy = flags;
  v19.receiver = self;
  v19.super_class = TUCallProviderManager;
  v14 = [(TUCallProviderManager *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_featureFlags, flags);
    objc_storeStrong(&v15->_queue, queue);
    v15->_type = type;
    objc_storeStrong(&v15->_dataSource, source);
    [(TUCallProviderManagerDataSource *)v15->_dataSource setDelegate:v15];
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateToQueue = v15->_delegateToQueue;
    v15->_delegateToQueue = weakToStrongObjectsMapTable;
  }

  return v15;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  providers = [(TUCallProviderManager *)self providers];
  v6 = [v3 stringWithFormat:@"<%@ %p providers=%@>", v4, self, providers];

  return v6;
}

- (TUCallProvider)superboxProvider
{
  providersByIdentifier = [(TUCallProviderManager *)self providersByIdentifier];
  v3 = [providersByIdentifier objectForKeyedSubscript:@"com.apple.Superbox"];

  return v3;
}

- (TUCallProvider)tinCanProvider
{
  providersByIdentifier = [(TUCallProviderManager *)self providersByIdentifier];
  v3 = [providersByIdentifier objectForKeyedSubscript:@"com.apple.telephonyutilities.callservicesd.TinCan"];

  return v3;
}

- (id)providerWithService:(int)service video:(BOOL *)video
{
  if (service == 3)
  {
    v5 = 1;
LABEL_7:
    faceTimeProvider = [(TUCallProviderManager *)self faceTimeProvider];
    if (!video)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = 0;
  if (service == 2)
  {
    goto LABEL_7;
  }

  if (service == 1)
  {
    faceTimeProvider = [(TUCallProviderManager *)self telephonyProvider];
    v5 = 0;
    if (!video)
    {
      goto LABEL_9;
    }

LABEL_8:
    *video = v5;
    goto LABEL_9;
  }

  faceTimeProvider = 0;
  if (video)
  {
    goto LABEL_8;
  }

LABEL_9:

  return faceTimeProvider;
}

+ (int)serviceForProvider:(id)provider video:(BOOL)video
{
  videoCopy = video;
  providerCopy = provider;
  identifier = [providerCopy identifier];
  v7 = [identifier isEqualToString:@"com.apple.coretelephony"];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    identifier2 = [providerCopy identifier];
    v10 = [identifier2 isEqualToString:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

    if (videoCopy)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    if (v10)
    {
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  queue = [(TUCallProviderManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__TUCallProviderManager_addDelegate_queue___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v12 = queueCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = queueCopy;
  dispatch_async(queue, block);
}

void __43__TUCallProviderManager_addDelegate_queue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  v4 = v2;
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
  }

  [v2 setObject:v3 forKey:*(a1 + 48)];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(TUCallProviderManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__TUCallProviderManager_removeDelegate___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(queue, v7);
}

void __40__TUCallProviderManager_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (id)providerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.private.expanse"])
  {
    v5 = @"com.apple.telephonyutilities.callservicesd.FaceTimeProvider";
  }

  else
  {
    v5 = identifierCopy;
  }

  providersByIdentifier = [(TUCallProviderManager *)self providersByIdentifier];
  v7 = [providersByIdentifier objectForKeyedSubscript:v5];

  return v7;
}

- (id)providersPassingTest:(id)test
{
  v22 = *MEMORY[0x1E69E9840];
  testCopy = test;
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  providers = [(TUCallProviderManager *)self providers];
  v7 = [v5 initWithCapacity:{objc_msgSend(providers, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  providers2 = [(TUCallProviderManager *)self providers];
  v9 = [providers2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(providers2);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (testCopy[2](testCopy, v13))
        {
          [v7 addObject:v13];
        }
      }

      v10 = [providers2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)sortedProvidersPassingTest:(id)test
{
  v21 = *MEMORY[0x1E69E9840];
  testCopy = test;
  sortedProviders = [(TUCallProviderManager *)self sortedProviders];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(sortedProviders, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = sortedProviders;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (testCopy[2](testCopy, v12))
        {
          [v6 addObject:{v12, v16}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (TUCallProvider)defaultAppProvider
{
  featureFlags = [(TUCallProviderManager *)self featureFlags];
  v5 = TUDefaultAppsEnabled(featureFlags);
  if (v5 & 1) != 0 || (-[TUCallProviderManager featureFlags](self, "featureFlags"), v2 = objc_claimAutoreleasedReturnValue(), ([v2 uplevelFTAEnabled]))
  {
    dataSource = [(TUCallProviderManager *)self dataSource];
    currentProcessCanAccessInitialState = [dataSource currentProcessCanAccessInitialState];

    if (v5)
    {

      if (!currentProcessCanAccessInitialState)
      {
        goto LABEL_10;
      }

LABEL_7:
      dataSource2 = [(TUCallProviderManager *)self dataSource];
      defaultAppProvider = [dataSource2 defaultAppProvider];
      v10 = defaultAppProvider;
      if (defaultAppProvider)
      {
        telephonyProvider = defaultAppProvider;
      }

      else
      {
        telephonyProvider = [(TUCallProviderManager *)self telephonyProvider];
      }

      telephonyProvider2 = telephonyProvider;

      goto LABEL_13;
    }

    if (currentProcessCanAccessInitialState)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

LABEL_10:
  telephonyProvider2 = [(TUCallProviderManager *)self telephonyProvider];
LABEL_13:

  return telephonyProvider2;
}

- (NSArray)sortedProviders
{
  v14[1] = *MEMORY[0x1E69E9840];
  featureFlags = [(TUCallProviderManager *)self featureFlags];
  if (([featureFlags defaultAppsEnabled] & 1) == 0)
  {

    goto LABEL_6;
  }

  dataSource = [(TUCallProviderManager *)self dataSource];
  currentProcessCanAccessInitialState = [dataSource currentProcessCanAccessInitialState];

  if (!currentProcessCanAccessInitialState)
  {
LABEL_6:
    telephonyProvider = [(TUCallProviderManager *)self telephonyProvider];
    v13 = telephonyProvider;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    goto LABEL_7;
  }

  dataSource2 = [(TUCallProviderManager *)self dataSource];
  telephonyProvider = [dataSource2 sortedProviders];

  if ([telephonyProvider count])
  {
    v8 = telephonyProvider;
    telephonyProvider = v8;
LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }

  telephonyProvider2 = [(TUCallProviderManager *)self telephonyProvider];
  v14[0] = telephonyProvider2;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)providerForRecentCall:(id)call
{
  callCopy = call;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v5 = getkCHServiceProviderTelephonySymbolLoc_ptr_0;
  v19 = getkCHServiceProviderTelephonySymbolLoc_ptr_0;
  if (!getkCHServiceProviderTelephonySymbolLoc_ptr_0)
  {
    v6 = CallHistoryLibrary_0();
    v17[3] = dlsym(v6, "kCHServiceProviderTelephony");
    getkCHServiceProviderTelephonySymbolLoc_ptr_0 = v17[3];
    v5 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v5)
  {
    [TUCallProviderManager providerForRecentCall:];
  }

  v7 = *v5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v8 = getkCHServiceProviderFaceTimeSymbolLoc_ptr_0;
  v19 = getkCHServiceProviderFaceTimeSymbolLoc_ptr_0;
  if (!getkCHServiceProviderFaceTimeSymbolLoc_ptr_0)
  {
    v9 = CallHistoryLibrary_0();
    v17[3] = dlsym(v9, "kCHServiceProviderFaceTime");
    getkCHServiceProviderFaceTimeSymbolLoc_ptr_0 = v17[3];
    v8 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v8)
  {
    [TUCallProviderManager providerForRecentCall:];
  }

  v10 = *v8;
  serviceProvider = [callCopy serviceProvider];
  v12 = serviceProvider;
  if (v7 && [serviceProvider isEqualToString:v7])
  {
    telephonyProvider = [(TUCallProviderManager *)self telephonyProvider];
  }

  else if (v10 && [v12 isEqualToString:v10])
  {
    telephonyProvider = [(TUCallProviderManager *)self faceTimeProvider];
  }

  else
  {
    telephonyProvider = [(TUCallProviderManager *)self providerWithIdentifier:v12];
  }

  v14 = telephonyProvider;

  return v14;
}

- (id)providerForFavoritesEntry:(id)entry
{
  bundleIdentifier = [entry bundleIdentifier];
  v5 = [(TUCallProviderManager *)self providerForFavoritesEntryActionBundleIdentifier:bundleIdentifier];

  return v5;
}

- (id)providerForFavoritesEntryActionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x1E695C140]])
  {
    telephonyProvider = [(TUCallProviderManager *)self telephonyProvider];
LABEL_5:
    firstObject = telephonyProvider;
    goto LABEL_7;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x1E695C118]])
  {
    telephonyProvider = [(TUCallProviderManager *)self faceTimeProvider];
    goto LABEL_5;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__TUCallProviderManager_providerForFavoritesEntryActionBundleIdentifier___block_invoke;
  v9[3] = &unk_1E7426840;
  v10 = identifierCopy;
  v7 = [(TUCallProviderManager *)self providersPassingTest:v9];
  firstObject = [v7 firstObject];

LABEL_7:

  return firstObject;
}

uint64_t __73__TUCallProviderManager_providerForFavoritesEntryActionBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)donateUserIntentForProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(TUCallProviderManager *)self dataSource];
  [dataSource donateUserIntentForProviderWithIdentifier:identifierCopy];
}

- (void)donateBackgroundCallIntentForProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(TUCallProviderManager *)self dataSource];
  [dataSource donateBackgroundCallIntentForProviderWithIdentifier:identifierCopy];
}

- (void)launchAppForDialRequest:(id)request completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = requestCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "dialRequest: %@", buf, 0xCu);
  }

  if ([requestCopy isValid])
  {
    provider = [requestCopy provider];
    isSystemProvider = [provider isSystemProvider];

    if (!isSystemProvider)
    {
      dataSource = [(TUCallProviderManager *)self dataSource];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __60__TUCallProviderManager_launchAppForDialRequest_completion___block_invoke_3;
      v23[3] = &unk_1E7424A10;
      v24 = completionCopy;
      [dataSource launchAppForDialRequest:requestCopy completion:v23];

      v16 = v24;
      goto LABEL_16;
    }

    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Opening URL because dial request is using a system provider", buf, 2u);
    }

    dialType = [requestCopy dialType];
    launchInBackground = [requestCopy launchInBackground];
    dataSource2 = [(TUCallProviderManager *)self dataSource];
    v15 = [requestCopy URL];
    if (dialType != 1 && launchInBackground)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __60__TUCallProviderManager_launchAppForDialRequest_completion___block_invoke;
      v25[3] = &unk_1E7424A10;
      v26 = completionCopy;
      [dataSource2 openURL:v15 shouldActivate:0 completionHandler:v25];

      v16 = v26;
LABEL_16:

      completionCopy = 0;
      v20 = 0;
      goto LABEL_17;
    }

    v27 = 0;
    [dataSource2 openURL:v15 isSensitive:dialType == 1 error:&v27];
    v19 = v27;
  }

  else
  {
    dataSource2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot launch app for invalid dial request: %@", requestCopy];
    v17 = TUDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [TUCallProviderManager launchAppForDialRequest:dataSource2 completion:v17];
    }

    v18 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29 = dataSource2;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v19 = [v18 errorWithDomain:@"com.apple.TelephonyUtilities" code:1 userInfo:v15];
  }

  v20 = v19;

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v20);
  }

LABEL_17:

  v22 = *MEMORY[0x1E69E9840];
}

void __60__TUCallProviderManager_launchAppForDialRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__TUCallProviderManager_launchAppForDialRequest_completion___block_invoke_2;
    v6[3] = &unk_1E7425540;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __60__TUCallProviderManager_launchAppForDialRequest_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__TUCallProviderManager_launchAppForDialRequest_completion___block_invoke_4;
    v6[3] = &unk_1E7425540;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)providersChangedForDataSource:(id)source
{
  queue = [(TUCallProviderManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__TUCallProviderManager_providersChangedForDataSource___block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(queue, block);
}

void __55__TUCallProviderManager_providersChangedForDataSource___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      v5 = 0;
      do
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __55__TUCallProviderManager_providersChangedForDataSource___block_invoke_2;
        block[3] = &unk_1E7424898;
        v9 = *(a1 + 32);
        block[4] = v6;
        block[5] = v9;
        dispatch_async(v8, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__TUCallProviderManager_providersChangedForDataSource___block_invoke_3;
  v12[3] = &unk_1E7424950;
  v12[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v12);
  v10 = *MEMORY[0x1E69E9840];
}

void __55__TUCallProviderManager_providersChangedForDataSource___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TUCallProviderManagerProvidersChangedNotification" object:*(a1 + 32)];
}

- (id)dialRequestForRecentCall:(id)call
{
  v23[1] = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = [(TUCallProviderManager *)self providerForRecentCall:callCopy];
  if (v5)
  {
    v6 = [[TUDialRequest alloc] initWithProvider:v5];
    validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
    v8 = [validRemoteParticipantHandles count];

    if (v8)
    {
      validRemoteParticipantHandles2 = [callCopy validRemoteParticipantHandles];
      anyObject = [validRemoteParticipantHandles2 anyObject];

      if ([anyObject type] == 2 && objc_msgSend(v5, "isTelephonyProvider"))
      {
        v21 = 0;
        isoCountryCode = [callCopy isoCountryCode];
        value = [anyObject value];
        v22 = TUNumberToDialOptionsSuppressLocalAssistKey;
        v23[0] = MEMORY[0x1E695E118];
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        v14 = TUNumberToDial(value, isoCountryCode, 0, v13, &v21);

        [(TUDialRequest *)v6 setDialAssisted:v21];
        v15 = [TUHandle normalizedPhoneNumberHandleForValue:v14 isoCountryCode:isoCountryCode];
        [(TUDialRequest *)v6 setHandle:v15];
      }

      else
      {
        isoCountryCode = [TUHandle handlesForCHRecentCall:callCopy validHandlesOnly:1];
        v17 = [MEMORY[0x1E695DFD8] setWithArray:isoCountryCode];
        [(TUDialRequest *)v6 setHandles:v17];
      }
    }

    outgoingLocalParticipantUUID = [callCopy outgoingLocalParticipantUUID];
    [(TUDialRequest *)v6 setLocalSenderIdentityAccountUUID:outgoingLocalParticipantUUID];

    [(TUDialRequest *)v6 setPerformDialAssist:0];
    [(TUDialRequest *)v6 setPerformLocalDialAssist:0];
    -[TUDialRequest setTtyType:](v6, "setTtyType:", +[TUDialRequest dialRequestTTYTypeForCHRecentCallTTYType:](TUDialRequest, "dialRequestTTYTypeForCHRecentCallTTYType:", [callCopy ttyType]));
    -[TUDialRequest setVideo:](v6, "setVideo:", [callCopy mediaType] == 2);
    [(TUDialRequest *)v6 setOriginatingUIType:8];
  }

  else
  {
    v16 = TUDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(TUCallProviderManager(CallHistoryAdditions) *)callCopy dialRequestForRecentCall:v16];
    }

    v6 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)joinConversationRequestForRecentCall:(id)call
{
  v32 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v4 = MEMORY[0x1E695DFA8];
  validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
  v6 = [v4 setWithCapacity:{objc_msgSend(validRemoteParticipantHandles, "count")}];

  v7 = [TUHandle handlesForCHRecentCall:callCopy validHandlesOnly:1];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        if (v12)
        {
          v13 = [TUConversationMember alloc];
          v14 = [MEMORY[0x1E695DFD8] setWithObject:v12];
          v15 = [(TUConversationMember *)v13 initWithHandles:v14];

          [v6 addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v16 = [[TUJoinConversationRequest alloc] initWithRemoteMembers:v6 originatingUIType:8];
    -[TUJoinConversationRequest setVideo:](v16, "setVideo:", [callCopy mediaType] == 2);
    -[TUJoinConversationRequest setVideoEnabled:](v16, "setVideoEnabled:", [callCopy mediaType] == 2);
    faceTimeProvider = [(TUCallProviderManager *)self faceTimeProvider];
    outgoingLocalParticipantUUID = [callCopy outgoingLocalParticipantUUID];
    v19 = [faceTimeProvider senderIdentityForAccountUUID:outgoingLocalParticipantUUID];

    if (v19)
    {
      handle = [v19 handle];
      [(TUJoinConversationRequest *)v16 setCallerID:handle];
    }

    v21 = +[TUCallProviderManager invitationPreferencesForRecentCall];
    [(TUJoinConversationRequest *)v16 setInvitationPreferences:v21];
  }

  else
  {
    v19 = TUDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = callCopy;
      _os_log_impl(&dword_1956FD000, v19, OS_LOG_TYPE_DEFAULT, "Could not create join request for recent call: %@", buf, 0xCu);
    }

    v16 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (NSSet)invitationPreferencesForRecentCall
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [[TUConversationInvitationPreference alloc] initWithHandleType:2 notificationStyles:6];
  v3 = [[TUConversationInvitationPreference alloc] initWithHandleType:3 notificationStyles:6, v2];
  v9[1] = v3;
  v4 = [[TUConversationInvitationPreference alloc] initWithHandleType:1 notificationStyles:6];
  v9[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];

  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v5];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)providerForRecentCall:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCHServiceProviderFaceTime(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUCallProviderManager.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)providerForRecentCall:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCHServiceProviderTelephony(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUCallProviderManager.m" lineNumber:25 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)launchAppForDialRequest:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end