@interface PXSharedLibraryCameraSharingBannerStatusProvider
- (PXSharedLibraryCameraSharingBannerStatusProvider)init;
- (void)_updateShouldShowBanner;
- (void)setShouldShowBanner:(BOOL)banner;
@end

@implementation PXSharedLibraryCameraSharingBannerStatusProvider

- (PXSharedLibraryCameraSharingBannerStatusProvider)init
{
  v6.receiver = self;
  v6.super_class = PXSharedLibraryCameraSharingBannerStatusProvider;
  v2 = [(PXSharedLibraryCameraSharingBannerStatusProvider *)&v6 init];
  v3 = v2;
  if (v2)
  {
    PXRegisterPreferencesObserver(v2);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__significantTimeChange_ name:*MEMORY[0x1E69DDB88] object:0];

    [(PXSharedLibraryCameraSharingBannerStatusProvider *)v3 _updateShouldShowBanner];
  }

  return v3;
}

- (void)_updateShouldShowBanner
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CameraSharingPreferencesState", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  v4 = 0;
  if (keyExistsAndHasValidFormat)
  {
    v5 = (AppIntegerValue - 3) > 0xFFFFFFFFFFFFFFFDLL;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = PXPreferencesFirstCheckDateForCameraSharingPreferences();
    if (v6)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      v8 = [MEMORY[0x1E695DF00] now];
      v9 = [currentCalendar components:16 fromDate:v6 toDate:v8 options:0];
      v10 = [v9 day];

      v11 = +[PXSharedLibrarySettings sharedInstance];
      sharingSuggestionsBannerFirstCheckThreshold = [v11 sharingSuggestionsBannerFirstCheckThreshold];

      if (v10 < sharingSuggestionsBannerFirstCheckThreshold)
      {
        v4 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v13 = PXPreferencesPromptDateForCameraSharingPreferences();
      if (v13)
      {
        v14 = [MEMORY[0x1E695DF00] now];
        [v14 timeIntervalSinceDate:v13];
        v16 = v15;

        v4 = v16 <= 604800.0;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E695DF00] now];
      PXPreferencesSetValue(@"FirstCheckDateForCameraSharingPreferences", v13);
      v4 = 0;
    }

    goto LABEL_13;
  }

LABEL_14:
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__PXSharedLibraryCameraSharingBannerStatusProvider__updateShouldShowBanner__block_invoke;
  v17[3] = &unk_1E774C670;
  v17[4] = self;
  v18 = v4;
  [(PXSharedLibraryCameraSharingBannerStatusProvider *)self performChanges:v17];
}

- (void)setShouldShowBanner:(BOOL)banner
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_shouldShowBanner != banner)
  {
    bannerCopy = banner;
    self->_shouldShowBanner = banner;
    v5 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543874;
      v7 = objc_opt_class();
      v8 = 2048;
      selfCopy = self;
      v10 = 1024;
      v11 = bannerCopy;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Should show banner: %d", &v6, 0x1Cu);
    }

    [(PXSharedLibraryCameraSharingBannerStatusProvider *)self signalChange:1];
  }
}

@end