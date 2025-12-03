@interface PXMockCPLStatusProvider
+ (BOOL)shouldUseMockService;
+ (id)_currentMockedStatus;
+ (id)mockStatusProvider;
+ (id)userDefaultsMockStatusProvider;
- (PXMockCPLStatusProvider)init;
- (PXMockCPLStatusProvider)initWithUserDefaultsMocks:(BOOL)mocks;
- (double)nextOverrideResumeTimeInterval;
- (void)_updateStatus;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setStatus:(id)status;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation PXMockCPLStatusProvider

+ (BOOL)shouldUseMockService
{
  v2 = PXSharedUserDefaults();
  v3 = [v2 objectForKey:@"CPLStatusProviderMock"];
  v4 = v3 != 0;

  return v4;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settingsCopy = settings;
  keyCopy = key;
  v7 = +[PXCPLStatusSettings sharedInstance];
  if (v7 == settingsCopy)
  {
    v8 = NSStringFromSelector(sel_shouldHideMockStatusWarning);
    v9 = [keyCopy isEqualToString:v8];

    if (v9)
    {
LABEL_7:
      [(PXMockCPLStatusProvider *)self _updateStatus];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = +[PXRootSettings sharedInstance];
  if (v10 != settingsCopy)
  {

    goto LABEL_8;
  }

  v11 = NSStringFromSelector(sel_canShowInternalUI);
  v12 = [keyCopy isEqualToString:v11];

  if (v12)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &PXMockCPLStatusProviderUserDefaultsContext)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PXMockCPLStatusProvider_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PXMockCPLStatusProvider;
    [(PXMockCPLStatusProvider *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_updateStatus
{
  v3 = +[PXMockCPLStatusProvider _currentMockedStatus];
  [(PXMockCPLStatusProvider *)self setStatus:v3];
}

- (void)setStatus:(id)status
{
  v15 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v5 = self->_status;
  v6 = v5;
  if (v5 == statusCopy)
  {
  }

  else
  {
    v7 = [(PXCPLStatus *)v5 isEqual:statusCopy];

    if (!v7)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __37__PXMockCPLStatusProvider_setStatus___block_invoke;
      v9[3] = &unk_1E77498F8;
      v9[4] = self;
      v10 = statusCopy;
      [(PXMockCPLStatusProvider *)self performChanges:v9];

      goto LABEL_8;
    }
  }

  v8 = PLUserStatusGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = statusCopy;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "%@ Suppressing update that resulted in no change: %@", buf, 0x16u);
  }

LABEL_8:
}

uint64_t __37__PXMockCPLStatusProvider_setStatus___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 104), *(a1 + 40));
  v2 = PLUserStatusGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 104);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ >> %{public}@", &v6, 0x16u);
  }

  return [*(a1 + 32) signalChange:1];
}

- (double)nextOverrideResumeTimeInterval
{
  v2 = +[PXCPLStatusSettings sharedInstance];
  resumeOverrideHours = [v2 resumeOverrideHours];
  v4 = (3600 * [resumeOverrideHours integerValue]);

  return v4;
}

- (void)dealloc
{
  if (self->_userDefaultsMocks)
  {
    v3 = PXSharedUserDefaults();
    [v3 removeObserver:self forKeyPath:@"CPLStatusProviderMock" context:&PXMockCPLStatusProviderUserDefaultsContext];
  }

  v4.receiver = self;
  v4.super_class = PXMockCPLStatusProvider;
  [(PXMockCPLStatusProvider *)&v4 dealloc];
}

- (PXMockCPLStatusProvider)initWithUserDefaultsMocks:(BOOL)mocks
{
  mocksCopy = mocks;
  v14.receiver = self;
  v14.super_class = PXMockCPLStatusProvider;
  v4 = [(PXMockCPLStatusProvider *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v6 = !mocksCopy;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v4->_userDefaultsMocks = 1;
    v7 = +[PXMockCPLStatusProvider _currentMockedStatus];
    status = v5->_status;
    v5->_status = v7;
    v9 = v7;

    v10 = PXSharedUserDefaults();
    [v10 addObserver:v5 forKeyPath:@"CPLStatusProviderMock" options:0 context:&PXMockCPLStatusProviderUserDefaultsContext];

    v11 = +[PXCPLStatusSettings sharedInstance];
    [v11 addDeferredKeyObserver:v5];

    v12 = +[PXRootSettings sharedInstance];

    [v12 addDeferredKeyObserver:v5];
  }

  return v5;
}

- (PXMockCPLStatusProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMockCPLStatusProvider.m" lineNumber:39 description:{@"%s is not available as initializer", "-[PXMockCPLStatusProvider init]"}];

  abort();
}

+ (id)_currentMockedStatus
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = PXSharedUserDefaults();
  v4 = [v3 objectForKey:@"CPLStatusProviderMock"];

  if (!v4)
  {
LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = [PXCPLStatus statusWithStringRepresentation:v4];
  v6 = +[PXCPLStatusSettings sharedInstance];
  shouldHideMockStatusWarning = [v6 shouldHideMockStatusWarning];
  bOOLValue = [shouldHideMockStatusWarning BOOLValue];

  v9 = +[PXRootSettings sharedInstance];
  canShowInternalUI = [v9 canShowInternalUI];

  if ((bOOLValue & 1) == 0 && canShowInternalUI)
  {
    [v5 setIsMockStatus:1];
    if (v5)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v11 = PLUserStatusGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Hiding the mock status warning", &v14, 0xCu);
  }

  if (!v5)
  {
LABEL_10:
    v12 = PLUserStatusGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543618;
      selfCopy2 = self;
      v16 = 2114;
      v17 = v4;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Unrecognized mock: %{public}@)", &v14, 0x16u);
    }

    goto LABEL_13;
  }

LABEL_14:

  return v5;
}

+ (id)userDefaultsMockStatusProvider
{
  v2 = [[self alloc] initWithUserDefaultsMocks:1];

  return v2;
}

+ (id)mockStatusProvider
{
  v2 = [[self alloc] initWithUserDefaultsMocks:0];

  return v2;
}

@end