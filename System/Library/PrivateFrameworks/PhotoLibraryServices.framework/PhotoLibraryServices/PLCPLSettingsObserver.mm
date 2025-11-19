@interface PLCPLSettingsObserver
- (BOOL)isCloudPhotoLibraryEnabled;
- (BOOL)setPrefetchMode:(int64_t)a3 error:(id *)a4;
- (PLCPLSettingsObserver)initWithLibraryBundle:(id)a3;
- (PLCPLSettingsObserver)initWithSettings:(id)a3;
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
    v5 = [(PLCPLSettingsObserver *)self settings];
    v6 = [v5 isCloudPhotoLibraryEnabled];

    return v6;
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

- (BOOL)setPrefetchMode:(int64_t)a3 error:(id *)a4
{
  v5 = [PLCPLSettings setPrefetchMode:a3 withLibraryBundle:self->_libraryBundle error:a4];
  if (v5)
  {
    [(PLLazyObject *)self->_lazySettings resetObject];
  }

  return v5;
}

- (PLCPLSettingsObserver)initWithSettings:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PLCPLSettingsObserver;
  v5 = [(PLCPLSettingsObserver *)&v18 init];
  if (v5)
  {
    v6 = [v4 libraryBundle];
    libraryBundle = v5->_libraryBundle;
    v5->_libraryBundle = v6;

    v8 = objc_initWeak(&location, v5);
    v9 = objc_alloc(MEMORY[0x1E69BF270]);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __42__PLCPLSettingsObserver_initWithSettings___block_invoke;
    v14[3] = &unk_1E7573318;
    objc_copyWeak(&v16, &location);
    v15 = v4;
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

- (PLCPLSettingsObserver)initWithLibraryBundle:(id)a3
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = PLCPLSettingsObserver;
  v7 = [(PLCPLSettingsObserver *)&v19 init];
  if (v7)
  {
    if (!v6)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:v7 file:@"PLCPLSettings.m" lineNumber:368 description:@"Missing library bundle"];
    }

    objc_storeStrong(&v7->_libraryBundle, a3);
    v8 = objc_initWeak(&location, v7);

    v9 = objc_alloc(MEMORY[0x1E69BF270]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __47__PLCPLSettingsObserver_initWithLibraryBundle___block_invoke;
    v15[3] = &unk_1E7573318;
    objc_copyWeak(&v17, &location);
    v16 = v6;
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