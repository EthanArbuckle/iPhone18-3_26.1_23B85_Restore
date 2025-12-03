@interface ICURLSessionManager
+ (ICURLSession)defaultSession;
+ (ICURLSession)highPrioritySession;
+ (ICURLSession)unlimitedHighPrioritySession;
+ (ICURLSessionManager)sharedSessionManager;
- (ICURLSessionManager)init;
- (id)_defaultSessionIdentifierWithQualityOfService:(int64_t)service maxConcurrentRequests:(unint64_t)requests;
- (id)_defaultSessionWithQualityOfService:(int64_t)service maxConcurrentRequests:(unint64_t)requests;
- (id)sessionWithIdentifier:(id)identifier;
- (id)sessionWithIdentifier:(id)identifier configuration:(id)configuration;
- (id)sessionWithIdentifier:(id)identifier creationBlock:(id)block;
- (id)sessionWithQualityOfService:(int64_t)service;
- (void)addSession:(id)session withIdentifier:(id)identifier;
- (void)removeSessionWithIdentifier:(id)identifier;
@end

@implementation ICURLSessionManager

+ (ICURLSessionManager)sharedSessionManager
{
  if (sharedSessionManager_sOnceToken != -1)
  {
    dispatch_once(&sharedSessionManager_sOnceToken, &__block_literal_global_3943);
  }

  v3 = sharedSessionManager_sSharedSessionManager;

  return v3;
}

+ (ICURLSession)defaultSession
{
  v2 = +[ICURLSessionManager sharedSessionManager];
  v3 = [v2 _defaultSessionWithQualityOfService:-1 maxConcurrentRequests:{+[ICURLSession defaultMaximumConcurrentRequests](ICURLSession, "defaultMaximumConcurrentRequests")}];

  return v3;
}

- (id)_defaultSessionIdentifierWithQualityOfService:(int64_t)service maxConcurrentRequests:(unint64_t)requests
{
  if (service <= 16)
  {
    if (service == -1)
    {
      v6 = @"Default";
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.iTunesCloud.ICURLSessionManager.%@.max%lu", v6, requests, v4, v5];
    }

    if (service == 9)
    {
      v6 = @"Background";
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.iTunesCloud.ICURLSessionManager.%@.max%lu", v6, requests, v4, v5];
    }

LABEL_12:
    v6 = @"Unknown";
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.iTunesCloud.ICURLSessionManager.%@.max%lu", v6, requests, v4, v5];
  }

  if (service == 17)
  {
    v6 = @"Utility";
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.iTunesCloud.ICURLSessionManager.%@.max%lu", v6, requests, v4, v5];
  }

  if (service == 33)
  {
    v6 = @"UserInteractive";
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.iTunesCloud.ICURLSessionManager.%@.max%lu", v6, requests, v4, v5];
  }

  if (service != 25)
  {
    goto LABEL_12;
  }

  v6 = @"UserInitiated";
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.iTunesCloud.ICURLSessionManager.%@.max%lu", v6, requests, v4, v5];
}

- (id)_defaultSessionWithQualityOfService:(int64_t)service maxConcurrentRequests:(unint64_t)requests
{
  v7 = [ICURLSessionManager _defaultSessionIdentifierWithQualityOfService:"_defaultSessionIdentifierWithQualityOfService:maxConcurrentRequests:" maxConcurrentRequests:?];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__ICURLSessionManager__defaultSessionWithQualityOfService_maxConcurrentRequests___block_invoke;
  v11[3] = &unk_1E7BF3F80;
  v11[4] = self;
  v12 = v7;
  serviceCopy = service;
  requestsCopy = requests;
  v8 = v7;
  v9 = [(ICURLSessionManager *)self sessionWithIdentifier:v8 creationBlock:v11];

  return v9;
}

ICURLSession *__81__ICURLSessionManager__defaultSessionWithQualityOfService_maxConcurrentRequests___block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695AC80] ic_defaultSessionConfiguration];
  v3 = a1[6];
  if (v3 == 33 || v3 == 25)
  {
    v5 = +[ICDeviceInfo currentDeviceInfo];
    v6 = [v5 isWatch];

    if (v6)
    {
      [v2 set_requiresSustainedDataDelivery:1];
      [v2 set_ignoreDidReceiveResponseDisposition:1];
    }

    v7 = +[ICDeviceInfo currentDeviceInfo];
    if (([v7 hasCellularDataCapability]& 1) != 0)
    {
      v8 = +[ICDefaults standardDefaults];
      v9 = [v8 enableMultipathTCP];

      if (!v9)
      {
LABEL_13:
        v12 = [MEMORY[0x1E695DF90] dictionary];
        v13 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
        [v12 setObject:v13 forKey:*MEMORY[0x1E695AD40]];

        [v2 set_socketStreamProperties:v12];
        goto LABEL_14;
      }

      [v2 setMultipathServiceType:2];
      v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[4];
        v11 = a1[5];
        v16 = 138543618;
        v17 = v10;
        v18 = 2114;
        v19 = v11;
        _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ enabled multipath service type NSURLSessionMultipathServiceTypeInteractive for session %{public}@", &v16, 0x16u);
      }
    }

    goto LABEL_13;
  }

LABEL_14:
  v14 = [[ICURLSession alloc] initWithConfiguration:v2 maxConcurrentRequests:a1[7] qualityOfService:a1[6]];

  return v14;
}

- (void)addSession:(id)session withIdentifier:(id)identifier
{
  sessionCopy = session;
  identifierCopy = identifier;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__ICURLSessionManager_addSession_withIdentifier___block_invoke;
  block[3] = &unk_1E7BFA178;
  block[4] = self;
  v12 = sessionCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = sessionCopy;
  dispatch_sync(accessQueue, block);
}

- (id)sessionWithIdentifier:(id)identifier configuration:(id)configuration
{
  configurationCopy = configuration;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__ICURLSessionManager_sessionWithIdentifier_configuration___block_invoke;
  v10[3] = &unk_1E7BF3F58;
  v11 = configurationCopy;
  v7 = configurationCopy;
  v8 = [(ICURLSessionManager *)self sessionWithIdentifier:identifier creationBlock:v10];

  return v8;
}

ICURLSession *__59__ICURLSessionManager_sessionWithIdentifier_configuration___block_invoke(uint64_t a1)
{
  v1 = [[ICURLSession alloc] initWithConfiguration:*(a1 + 32)];

  return v1;
}

- (id)sessionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3925;
  v16 = __Block_byref_object_dispose__3926;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__ICURLSessionManager_sessionWithIdentifier___block_invoke;
  block[3] = &unk_1E7BF97E8;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __45__ICURLSessionManager_sessionWithIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)removeSessionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__ICURLSessionManager_removeSessionWithIdentifier___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(accessQueue, v7);
}

- (id)sessionWithIdentifier:(id)identifier creationBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3925;
  v21 = __Block_byref_object_dispose__3926;
  v22 = 0;
  accessQueue = self->_accessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__ICURLSessionManager_sessionWithIdentifier_creationBlock___block_invoke;
  v13[3] = &unk_1E7BF99D8;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = blockCopy;
  v16 = &v17;
  v9 = blockCopy;
  v10 = identifierCopy;
  dispatch_sync(accessQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __59__ICURLSessionManager_sessionWithIdentifier_creationBlock___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!v2)
  {
    v5 = (*(a1[6] + 16))();
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = a1[5];
    v9 = *(a1[4] + 16);
    v10 = *(*(a1[7] + 8) + 40);

    [v9 setObject:v10 forKey:v8];
  }
}

- (id)sessionWithQualityOfService:(int64_t)service
{
  v5 = +[ICURLSession defaultMaximumConcurrentRequests];

  return [(ICURLSessionManager *)self _defaultSessionWithQualityOfService:service maxConcurrentRequests:v5];
}

- (ICURLSessionManager)init
{
  v8.receiver = self;
  v8.super_class = ICURLSessionManager;
  v2 = [(ICURLSessionManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesCloud.ICURLSessionManager.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    cachedSessions = v2->_cachedSessions;
    v2->_cachedSessions = dictionary;
  }

  return v2;
}

+ (ICURLSession)unlimitedHighPrioritySession
{
  v2 = +[ICURLSessionManager sharedSessionManager];
  v3 = [v2 _defaultSessionWithQualityOfService:33 maxConcurrentRequests:-1];

  return v3;
}

+ (ICURLSession)highPrioritySession
{
  v2 = +[ICURLSessionManager sharedSessionManager];
  v3 = [v2 _defaultSessionWithQualityOfService:33 maxConcurrentRequests:{+[ICURLSession defaultMaximumConcurrentRequests](ICURLSession, "defaultMaximumConcurrentRequests")}];

  return v3;
}

uint64_t __43__ICURLSessionManager_sharedSessionManager__block_invoke()
{
  v0 = objc_alloc_init(ICURLSessionManager);
  v1 = sharedSessionManager_sSharedSessionManager;
  sharedSessionManager_sSharedSessionManager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end