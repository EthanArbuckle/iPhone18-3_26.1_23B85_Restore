@interface SKGSystemListener
+ (id)sharedClientListener;
+ (id)sharedProcessorListener;
- (BOOL)enableEmbeddingsHigherQoS;
- (BOOL)enableV2LanguageID;
- (BOOL)hasDiskCapacity;
- (BOOL)hasUpdatedLocale;
- (BOOL)hasUpdatedResources;
- (BOOL)isCJK;
- (BOOL)semanticSearchEnabled;
- (NSArray)currentPreferredLanguages;
- (NSArray)currentPreferredLocaleIdentifiers;
- (NSArray)currentPreferredLocales;
- (NSArray)doNotUpdateList;
- (NSArray)supportedSemanticLanguages;
- (NSLocale)currentLocale;
- (NSString)currentLanguage;
- (NSString)currentRegion;
- (NSTimeZone)currentTimezone;
- (NSURL)geoIndexResourcesURL;
- (NSURL)geoPatternsResourcesURL;
- (SKGSystemListener)init;
- (SKGSystemListener)initWithPreferredLanguages:(id)languages locale:(id)locale;
- (id)pathsForContentType:(id)type locale:(id)locale;
- (unint64_t)currentFirstWeekDay;
- (void)dealloc;
- (void)setAutoUpdatingLocale:(BOOL)locale;
- (void)updateLocale;
- (void)updateLocaleWithLocale:(id)locale preferredLanguages:(id)languages force:(BOOL)force;
- (void)updateResources;
- (void)updateTimezone;
@end

@implementation SKGSystemListener

+ (id)sharedClientListener
{
  if (sharedClientListener_defaultOnceToken != -1)
  {
    +[SKGSystemListener sharedClientListener];
  }

  v3 = sharedClientListener___DefaultListener;

  return v3;
}

uint64_t __41__SKGSystemListener_sharedClientListener__block_invoke()
{
  v0 = [SKGSystemListener alloc];
  v1 = copyCurrentPreferredLanguages();
  v2 = copyCurrentLocale();
  v3 = [(SKGSystemListener *)v0 initWithPreferredLanguages:v1 locale:v2];
  v4 = sharedClientListener___DefaultListener;
  sharedClientListener___DefaultListener = v3;

  v5 = sharedClientListener___DefaultListener;

  return [v5 setAutoUpdatingLocale:1];
}

+ (id)sharedProcessorListener
{
  if (sharedProcessorListener_defaultOnceToken != -1)
  {
    +[SKGSystemListener sharedProcessorListener];
  }

  v3 = sharedProcessorListener___DefaultListener;

  return v3;
}

uint64_t __44__SKGSystemListener_sharedProcessorListener__block_invoke()
{
  v0 = objc_alloc_init(SKGSystemListener);
  v1 = sharedProcessorListener___DefaultListener;
  sharedProcessorListener___DefaultListener = v0;

  v2 = sharedProcessorListener___DefaultListener;

  return [v2 setAutoUpdatingLocale:1];
}

- (SKGSystemListener)init
{
  v3 = copyCurrentPreferredLanguages();
  v4 = copyCurrentLocale();
  v17.receiver = self;
  v17.super_class = SKGSystemListener;
  v5 = [(SKGSystemListener *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v5->_force = 1;
    [objc_opt_class() loadDefaultsForLocale:v4 force:v5->_force];
    v6->_locked_hasDiskCapacity = 0;
    v6->_locked_lastDiskFlushDate = 0.0;
    v6->_autoUpdatingLocale = 0;
    v6->_locked_hasUpdatedLocale = 0;
    v7 = dispatch_queue_create("com.apple.SpotlightKnowledge.SystemListener.locale", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    locked_currentResources = v6->_locked_currentResources;
    v6->_locked_currentResources = v9;

    *&v6->_locked_semanticSearchEnabled = 0;
    v6->_locked_enableV2LanguageID = 0;
    locked_supportedSemanticLanguages = v6->_locked_supportedSemanticLanguages;
    v12 = MEMORY[0x1E695E0F0];
    v6->_locked_supportedSemanticLanguages = MEMORY[0x1E695E0F0];

    locked_doNotUpdateList = v6->_locked_doNotUpdateList;
    v6->_locked_doNotUpdateList = v12;

    locked_geoIndexPath = v6->_locked_geoIndexPath;
    v6->_locked_geoIndexPath = 0;

    locked_geoIndexVersion = v6->_locked_geoIndexVersion;
    v6->_locked_geoIndexVersion = 0;

    [(SKGSystemListener *)v6 setAutoUpdatingTimezone:1];
    [(SKGSystemListener *)v6 updateTimezone];
    [(SKGSystemListener *)v6 updateLocaleWithLocale:v4 preferredLanguages:v3 force:1];
    [(SKGSystemListener *)v6 hasDiskCapacity];
  }

  return v6;
}

- (SKGSystemListener)initWithPreferredLanguages:(id)languages locale:(id)locale
{
  languagesCopy = languages;
  localeCopy = locale;
  v20.receiver = self;
  v20.super_class = SKGSystemListener;
  v8 = [(SKGSystemListener *)&v20 init];
  v9 = v8;
  if (v8)
  {
    v8->_force = 0;
    [objc_opt_class() loadDefaultsForLocale:localeCopy force:v8->_force];
    v9->_locked_hasDiskCapacity = 0;
    v9->_locked_lastDiskFlushDate = 0.0;
    v9->_autoUpdatingLocale = 0;
    v9->_locked_hasUpdatedLocale = 0;
    v10 = dispatch_queue_create("com.apple.SpotlightKnowledge.SystemListener.locale", 0);
    queue = v9->_queue;
    v9->_queue = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    locked_currentResources = v9->_locked_currentResources;
    v9->_locked_currentResources = v12;

    *&v9->_locked_semanticSearchEnabled = 0;
    v9->_locked_enableV2LanguageID = 0;
    locked_supportedSemanticLanguages = v9->_locked_supportedSemanticLanguages;
    v15 = MEMORY[0x1E695E0F0];
    v9->_locked_supportedSemanticLanguages = MEMORY[0x1E695E0F0];

    locked_doNotUpdateList = v9->_locked_doNotUpdateList;
    v9->_locked_doNotUpdateList = v15;

    locked_geoIndexPath = v9->_locked_geoIndexPath;
    v9->_locked_geoIndexPath = 0;

    locked_geoIndexVersion = v9->_locked_geoIndexVersion;
    v9->_locked_geoIndexVersion = 0;

    [(SKGSystemListener *)v9 setAutoUpdatingTimezone:1];
    [(SKGSystemListener *)v9 updateTimezone];
    [(SKGSystemListener *)v9 updateLocaleWithLocale:localeCopy preferredLanguages:languagesCopy force:1];
    [(SKGSystemListener *)v9 hasDiskCapacity];
  }

  return v9;
}

- (void)setAutoUpdatingLocale:(BOOL)locale
{
  localeCopy = locale;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  if (localeCopy)
  {
    if (!self->_autoUpdatingLocale)
    {
      CFNotificationCenterAddObserver(LocalCenter, self, localeChangeCallback, *MEMORY[0x1E695E6E0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  else if (self->_autoUpdatingLocale)
  {
    CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x1E695E6E0], 0);
  }

  self->_autoUpdatingLocale = localeCopy;
}

- (BOOL)hasDiskCapacity
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SKGSystemListener_hasDiskCapacity__block_invoke;
  v5[3] = &unk_1E74B8098;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __36__SKGSystemListener_hasDiskCapacity__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16) == 0.0 || (Current = CFAbsoluteTimeGetCurrent(), v3 = *(a1 + 32), Current - *(v3 + 16) > 3600.0))
  {
    v4 = MEMORY[0x1E695DFF8];
    v5 = MEMORY[0x1E696AEC0];
    v6 = NSHomeDirectory();
    v7 = [v5 stringWithFormat:@"%@", v6];
    v8 = [v4 fileURLWithPath:v7 isDirectory:1];

    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v8 path];
    v11 = [v9 fileExistsAtPath:v10];

    if (v11)
    {
      v18 = 0;
      v12 = *MEMORY[0x1E695DD50];
      v17 = 0;
      [v8 getResourceValue:&v18 forKey:v12 error:&v17];
      v13 = v18;
      v14 = v17;
      if (!v14)
      {
        v15 = v13;
        [v15 doubleValue];
        *(*(a1 + 32) + 8) = v16 * 0.05 > 40000000.0;
      }
    }

    else
    {
      v14 = 0;
    }

    *(*(a1 + 32) + 16) = CFAbsoluteTimeGetCurrent();

    v3 = *(a1 + 32);
  }

  *(*(*(a1 + 40) + 8) + 24) = *(v3 + 8);
}

- (BOOL)isCJK
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__SKGSystemListener_isCJK__block_invoke;
  v5[3] = &unk_1E74B80C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)hasUpdatedLocale
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__SKGSystemListener_hasUpdatedLocale__block_invoke;
  v5[3] = &unk_1E74B80C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __37__SKGSystemListener_hasUpdatedLocale__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 24);
  *(*(result + 32) + 24) = 0;
  return result;
}

- (BOOL)hasUpdatedResources
{
  currentLocale = [(SKGSystemListener *)self currentLocale];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SKGSystemListener_hasUpdatedResources__block_invoke;
  block[3] = &unk_1E74B80E8;
  v8 = currentLocale;
  selfCopy = self;
  v10 = &v11;
  v5 = currentLocale;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

void __40__SKGSystemListener_hasUpdatedResources__block_invoke(uint64_t a1)
{
  v2 = localeKeyForLocale(*(a1 + 32));
  v5 = v2;
  if (v2)
  {
    v3 = [*(*(a1 + 40) + 136) objectForKeyedSubscript:v2];
    v4 = v3;
    if (v3 && [v3 hasUpdates])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      [*(a1 + 40) updateResources];
    }
  }

  else
  {
    v4 = 0;
  }
}

- (NSTimeZone)currentTimezone
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SKGSystemListener_currentTimezone__block_invoke;
  v5[3] = &unk_1E74B80C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSLocale)currentLocale
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SKGSystemListener_currentLocale__block_invoke;
  v5[3] = &unk_1E74B80C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __34__SKGSystemListener_currentLocale__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSString)currentLanguage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SKGSystemListener_currentLanguage__block_invoke;
  v5[3] = &unk_1E74B80C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__SKGSystemListener_currentLanguage__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSString)currentRegion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SKGSystemListener_currentRegion__block_invoke;
  v5[3] = &unk_1E74B80C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __34__SKGSystemListener_currentRegion__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (unint64_t)currentFirstWeekDay
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__SKGSystemListener_currentFirstWeekDay__block_invoke;
  v5[3] = &unk_1E74B80C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSArray)currentPreferredLocales
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SKGSystemListener_currentPreferredLocales__block_invoke;
  v5[3] = &unk_1E74B80C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __44__SKGSystemListener_currentPreferredLocales__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSArray)currentPreferredLocaleIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SKGSystemListener_currentPreferredLocaleIdentifiers__block_invoke;
  v5[3] = &unk_1E74B80C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __54__SKGSystemListener_currentPreferredLocaleIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSArray)currentPreferredLanguages
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__SKGSystemListener_currentPreferredLanguages__block_invoke;
  v5[3] = &unk_1E74B80C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __46__SKGSystemListener_currentPreferredLanguages__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSURL)geoIndexResourcesURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__SKGSystemListener_geoIndexResourcesURL__block_invoke;
  v5[3] = &unk_1E74B80C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __41__SKGSystemListener_geoIndexResourcesURL__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSURL)geoPatternsResourcesURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SKGSystemListener_geoPatternsResourcesURL__block_invoke;
  v5[3] = &unk_1E74B80C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __44__SKGSystemListener_geoPatternsResourcesURL__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) URLByAppendingPathComponent:@"geo.cache"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSArray)doNotUpdateList
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SKGSystemListener_doNotUpdateList__block_invoke;
  v5[3] = &unk_1E74B80C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__SKGSystemListener_doNotUpdateList__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSArray)supportedSemanticLanguages
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SKGSystemListener_supportedSemanticLanguages__block_invoke;
  v5[3] = &unk_1E74B80C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __47__SKGSystemListener_supportedSemanticLanguages__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)semanticSearchEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__SKGSystemListener_semanticSearchEnabled__block_invoke;
  v5[3] = &unk_1E74B80C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)enableEmbeddingsHigherQoS
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__SKGSystemListener_enableEmbeddingsHigherQoS__block_invoke;
  v5[3] = &unk_1E74B80C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __46__SKGSystemListener_enableEmbeddingsHigherQoS__block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"SKGSystemListener"];
  v2 = [v3 objectForKey:@"enableEmbeddingsHigherQoS"];

  if (v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v3 BOOLForKey:@"enableEmbeddingsHigherQoS"];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 97);
  }
}

- (BOOL)enableV2LanguageID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__SKGSystemListener_enableV2LanguageID__block_invoke;
  v5[3] = &unk_1E74B80C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __39__SKGSystemListener_enableV2LanguageID__block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"SKGSystemListener"];
  v2 = [v3 objectForKey:@"enableV2LanguageID"];

  if (v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v3 BOOLForKey:@"enableV2LanguageID"];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 98);
  }
}

- (id)pathsForContentType:(id)type locale:(id)locale
{
  typeCopy = type;
  localeCopy = locale;
  v8 = localeCopy;
  if (localeCopy)
  {
    currentLocale = localeCopy;
  }

  else
  {
    currentLocale = [(SKGSystemListener *)self currentLocale];
  }

  v10 = currentLocale;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = 0;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__SKGSystemListener_pathsForContentType_locale___block_invoke;
  v16[3] = &unk_1E74B8110;
  v17 = currentLocale;
  selfCopy = self;
  v19 = typeCopy;
  v20 = &v21;
  v12 = typeCopy;
  v13 = v10;
  dispatch_sync(queue, v16);
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __48__SKGSystemListener_pathsForContentType_locale___block_invoke(uint64_t a1)
{
  v2 = localeKeyForLocale(*(a1 + 32));
  v7 = v2;
  if (v2)
  {
    v3 = [*(*(a1 + 40) + 136) objectForKeyedSubscript:v2];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 filePathArrayForKey:*(a1 + 48)];
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
  v6 = 1;
LABEL_6:
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
  if ((v6 & 1) == 0)
  {
  }
}

- (void)updateLocaleWithLocale:(id)locale preferredLanguages:(id)languages force:(BOOL)force
{
  v53 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  languagesCopy = languages;
  if (localeCopy)
  {
    if ([(SKGSystemListener *)self force])
    {
      goto LABEL_6;
    }

    if (force)
    {
      goto LABEL_6;
    }

    currentLocale = [(SKGSystemListener *)self currentLocale];
    if (!currentLocale)
    {
      goto LABEL_6;
    }

    v11 = currentLocale;
    localeIdentifier = [localeCopy localeIdentifier];
    localeIdentifier2 = [v11 localeIdentifier];
    v14 = [localeIdentifier isEqualToString:localeIdentifier2];

    if ((v14 & 1) == 0)
    {
LABEL_6:
      selfCopy = self;
      v15 = copyNormalizedLanguagesForIdentifiers(languagesCopy);
      v16 = objc_alloc(MEMORY[0x1E695DF58]);
      v40 = localeCopy;
      localeIdentifier3 = [localeCopy localeIdentifier];
      v18 = [v16 initWithLocaleIdentifier:localeIdentifier3];

      v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v38 = v18;
      SILanguagesGetLanguageID();
      v37 = SILanguagesGetLanguage();
      IsCJK = languageIsCJK(v37);
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v22 = v15;
      v23 = [(__CFArray *)v22 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v49;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v49 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v48 + 1) + 8 * i);
            v28 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v27];
            if (SILanguagesGetLanguageID() - 2 <= 0x38)
            {
              [v21 addObject:SILanguagesGetLanguage()];
              [v19 addObject:v28];
              [v20 addObject:v27];
            }
          }

          v24 = [(__CFArray *)v22 countByEnumeratingWithState:&v48 objects:v52 count:16];
        }

        while (v24);
      }

      queue = selfCopy->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__SKGSystemListener_updateLocaleWithLocale_preferredLanguages_force___block_invoke;
      block[3] = &unk_1E74B8138;
      v47 = IsCJK;
      block[4] = selfCopy;
      v42 = v38;
      v43 = v37;
      v44 = v19;
      v45 = v20;
      v46 = v21;
      v30 = v21;
      v31 = v20;
      v32 = v19;
      v33 = v37;
      v34 = v38;
      dispatch_sync(queue, block);

      localeCopy = v40;
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

uint64_t __69__SKGSystemListener_updateLocaleWithLocale_preferredLanguages_force___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 1;
  *(*(a1 + 32) + 25) = *(a1 + 80);
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = [*(a1 + 48) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 40) regionCode];
  v9 = [v8 copy];
  v10 = *(a1 + 32);
  v11 = *(v10 + 48);
  *(v10 + 48) = v9;

  v12 = [*(a1 + 56) allObjects];
  v13 = [v12 copy];
  v14 = *(a1 + 32);
  v15 = *(v14 + 72);
  *(v14 + 72) = v13;

  v16 = [*(a1 + 64) allObjects];
  v17 = [v16 copy];
  v18 = *(a1 + 32);
  v19 = *(v18 + 80);
  *(v18 + 80) = v17;

  v20 = [*(a1 + 72) allObjects];
  v21 = [v20 copy];
  v22 = *(a1 + 32);
  v23 = *(v22 + 88);
  *(v22 + 88) = v21;

  v24 = *(a1 + 32);

  return [v24 updateResources];
}

- (void)updateResources
{
  v83[2] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = self->_locked_currentLocale;
  v4 = localeKeyForLocale(v3);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = [(NSMutableDictionary *)self->_locked_currentResources objectForKeyedSubscript:v4];
  if (!v5 || (v6 = v5, [(SKGSystemListener *)self force]))
  {
LABEL_6:
    mEMORY[0x1E69D3E28] = [MEMORY[0x1E69D3E28] sharedResourcesManager];
    locked_currentLocale = self->_locked_currentLocale;
    v82[0] = @"SRResourcesOwner";
    v82[1] = @"forceLoad";
    v83[0] = @"SpotlightKnowledge";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[SKGSystemListener force](self, "force")}];
    v83[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];
    v6 = [mEMORY[0x1E69D3E28] resourcesForClient:@"SpotlightKnowledge" locale:locked_currentLocale options:v10];

    [(NSMutableDictionary *)self->_locked_currentResources setObject:v6 forKey:v4];
    if (!v6)
    {
      goto LABEL_58;
    }
  }

  v65 = v3;
  [v6 filePathArrayForKey:@"Embedding"];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v78 = 0u;
  v11 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
  v12 = v6;
  if (!v11)
  {
    goto LABEL_31;
  }

  v13 = v11;
  v14 = *v76;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v76 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(&v75 + 1) + 8 * i)];
      lastPathComponent = [v16 lastPathComponent];
      v18 = [lastPathComponent isEqualToString:@"defaults.plist"];

      if (v18)
      {
        v19 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v16];
        v20 = [v19 valueForKey:@"SupportedLanguages"];
        if (v20)
        {
          v21 = objc_alloc(MEMORY[0x1E695DEC8]);
          v22 = [v19 objectForKeyedSubscript:@"SupportedLanguages"];
          v23 = [v21 initWithArray:v22];
          locked_supportedSemanticLanguages = self->_locked_supportedSemanticLanguages;
          self->_locked_supportedSemanticLanguages = v23;
        }

        else
        {
          v22 = self->_locked_supportedSemanticLanguages;
          self->_locked_supportedSemanticLanguages = MEMORY[0x1E695E0F0];
        }

        v25 = [v19 valueForKey:@"Defaults"];
        v26 = v25;
        if (!v25)
        {
          goto LABEL_61;
        }

        v27 = [v25 objectForKeyedSubscript:@"EnableSemanticSearch"];

        if (v27)
        {
          v28 = [v26 objectForKeyedSubscript:@"EnableSemanticSearch"];
          self->_locked_semanticSearchEnabled = [v28 BOOLValue];
        }

        v29 = [v26 objectForKeyedSubscript:@"EnableEmbeddingsHigherQoS"];

        if (v29)
        {
          v30 = [v26 objectForKeyedSubscript:@"EnableEmbeddingsHigherQoS"];
          self->_locked_enableEmbeddingsHigherQoS = [v30 BOOLValue];
        }

        else
        {
LABEL_61:
          if (v19)
          {
            v31 = [v19 objectForKeyedSubscript:@"EnableEmbeddingsHigherQoS"];

            if (v31)
            {
              v32 = [v19 objectForKeyedSubscript:@"EnableEmbeddingsHigherQoS"];
              self->_locked_enableEmbeddingsHigherQoS = [v32 BOOLValue];
            }
          }

          if (!v26)
          {
            goto LABEL_30;
          }
        }

        v33 = [v26 objectForKeyedSubscript:@"EnableV2LanguageID"];

        if (v33)
        {
          v34 = [v26 objectForKeyedSubscript:@"EnableV2LanguageID"];
          self->_locked_enableV2LanguageID = [v34 BOOLValue];
        }

LABEL_30:

        goto LABEL_31;
      }
    }

    v13 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_31:
  v64 = v4;

  v63 = v12;
  v35 = [v12 filePathArrayForKey:@"Processor"];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v36 = [v35 countByEnumeratingWithState:&v71 objects:v80 count:16];
  v37 = 0x1E695D000uLL;
  if (v36)
  {
    v38 = v36;
    v39 = *v72;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v72 != v39)
        {
          objc_enumerationMutation(v35);
        }

        v41 = [*(v37 + 3872) dictionaryWithContentsOfFile:*(*(&v71 + 1) + 8 * j)];
        v42 = v41;
        if (v41)
        {
          v43 = [v41 objectForKeyedSubscript:@"doNotUpdate"];
          if (v43)
          {
            v44 = objc_alloc(MEMORY[0x1E695DEC8]);
            v45 = [v42 objectForKeyedSubscript:@"doNotUpdate"];
            v46 = v44;
            v37 = 0x1E695D000;
            v47 = [v46 initWithArray:v45];
            locked_doNotUpdateList = self->_locked_doNotUpdateList;
            self->_locked_doNotUpdateList = v47;
          }

          else
          {
            v45 = self->_locked_doNotUpdateList;
            self->_locked_doNotUpdateList = MEMORY[0x1E695E0F0];
          }
        }
      }

      v38 = [v35 countByEnumeratingWithState:&v71 objects:v80 count:16];
    }

    while (v38);
  }

  [v63 filePathArrayForKey:@"Geo"];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v49 = v70 = 0u;
  v50 = [v49 countByEnumeratingWithState:&v67 objects:v79 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v68;
    while (2)
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v68 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v67 + 1) + 8 * k);
        if ([v54 hasSuffix:@"config.plist"])
        {
          v55 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v54];
          if (v55)
          {
            v56 = v55;
            v57 = [v55 objectForKeyedSubscript:@"_SIGeoIndexVersion"];
            v58 = v57;
            if (!self->_locked_geoIndexVersion || [v57 compare:?] != -1)
            {
              v59 = [MEMORY[0x1E695DFF8] fileURLWithPath:v54];
              uRLByDeletingLastPathComponent = [v59 URLByDeletingLastPathComponent];
              locked_geoIndexPath = self->_locked_geoIndexPath;
              self->_locked_geoIndexPath = uRLByDeletingLastPathComponent;

              objc_storeStrong(&self->_locked_geoIndexVersion, v58);
            }

            goto LABEL_57;
          }
        }
      }

      v51 = [v49 countByEnumeratingWithState:&v67 objects:v79 count:16];
      if (v51)
      {
        continue;
      }

      break;
    }
  }

LABEL_57:

  v4 = v64;
  v3 = v65;
LABEL_58:

  v62 = *MEMORY[0x1E69E9840];
}

- (void)updateLocale
{
  v4 = copyCurrentPreferredLanguages();
  v3 = copyCurrentLocale();
  [objc_opt_class() loadDefaultsForLocale:v3 force:{-[SKGSystemListener force](self, "force")}];
  [(SKGSystemListener *)self updateLocaleWithLocale:v3 preferredLanguages:v4 force:[(SKGSystemListener *)self force]];
}

- (void)updateTimezone
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SKGSystemListener_updateTimezone__block_invoke;
  block[3] = &unk_1E74B8070;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __35__SKGSystemListener_updateTimezone__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFE8] systemTimeZone];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  if (self->_autoUpdatingLocale)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x1E695E6E0], 0);
  }

  dispatch_sync(self->_queue, &__block_literal_global_94);
  v5.receiver = self;
  v5.super_class = SKGSystemListener;
  [(SKGSystemListener *)&v5 dealloc];
}

@end