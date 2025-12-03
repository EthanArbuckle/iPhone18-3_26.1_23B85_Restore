@interface PLCPLSettingsObserver
- (BOOL)isCloudPhotoLibraryEnabled;
- (BOOL)setPrefetchMode:(int64_t)mode error:(id *)error;
- (PLCPLSettingsObserver)initWithLibraryBundle:(id)bundle;
- (PLCPLSettingsObserver)initWithSettings:(id)settings;
- (PLCPLSettingsObserverDelegate)delegate;
- (void)dealloc;
@end

@implementation PLCPLSettingsObserver

- (BOOL)isCloudPhotoLibraryEnabled
{
  if ([(PLPhotoLibraryBundle *)self->_libraryBundle isSystemPhotoLibrary])
  {
    v3 = *MEMORY[0x1E6959638];

    return _PLIsCloudPhotoLibraryEnabledForCurrentUserWithDataclass(v3);
  }

  else
  {
    settings = [(PLCPLSettingsObserver *)self settings];
    isCloudPhotoLibraryEnabled = [settings isCloudPhotoLibraryEnabled];

    return isCloudPhotoLibraryEnabled;
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"PLCPLSettingsDidChangeNotification", 0);
  v4.receiver = self;
  v4.super_class = PLCPLSettingsObserver;
  [(PLCPLSettingsObserver *)&v4 dealloc];
}

- (PLCPLSettingsObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)setPrefetchMode:(int64_t)mode error:(id *)error
{
  v5 = [PLCPLSettings setPrefetchMode:mode withLibraryBundle:self->_libraryBundle error:error];
  if (v5)
  {
    [(PLLazyObject *)self->_lazySettings resetObject];
  }

  return v5;
}

- (PLCPLSettingsObserver)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v18.receiver = self;
  v18.super_class = PLCPLSettingsObserver;
  v5 = [(PLCPLSettingsObserver *)&v18 init];
  if (v5)
  {
    libraryBundle = [settingsCopy libraryBundle];
    libraryBundle = v5->_libraryBundle;
    v5->_libraryBundle = libraryBundle;

    v8 = objc_initWeak(&location, v5);
    v9 = objc_alloc(MEMORY[0x1E69BF270]);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __42__PLCPLSettingsObserver_initWithSettings___block_invoke;
    v14[3] = &unk_1E7573318;
    objc_copyWeak(&v16, &location);
    v15 = settingsCopy;
    v10 = [v9 initWithRetriableBlock:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    lazySettings = v5->_lazySettings;
    v5->_lazySettings = v10;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, _settingsDidChange, @"PLCPLSettingsDidChangeNotification", 0, 1024);
  }

  return v5;
}

id __42__PLCPLSettingsObserver_initWithSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PLCPLSettingsObserver)initWithLibraryBundle:(id)bundle
{
  bundleCopy = bundle;
  v19.receiver = self;
  v19.super_class = PLCPLSettingsObserver;
  v7 = [(PLCPLSettingsObserver *)&v19 init];
  if (v7)
  {
    if (!bundleCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"PLCPLSettings.m" lineNumber:368 description:@"Missing library bundle"];
    }

    objc_storeStrong(&v7->_libraryBundle, bundle);
    v8 = objc_initWeak(&location, v7);

    v9 = objc_alloc(MEMORY[0x1E69BF270]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __47__PLCPLSettingsObserver_initWithLibraryBundle___block_invoke;
    v15[3] = &unk_1E7573318;
    objc_copyWeak(&v17, &location);
    v16 = bundleCopy;
    v10 = [v9 initWithRetriableBlock:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    lazySettings = v7->_lazySettings;
    v7->_lazySettings = v10;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, _settingsDidChange, @"PLCPLSettingsDidChangeNotification", 0, 1024);
  }

  return v7;
}

id __47__PLCPLSettingsObserver_initWithLibraryBundle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [PLCPLSettings settingsWithLibraryBundle:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end