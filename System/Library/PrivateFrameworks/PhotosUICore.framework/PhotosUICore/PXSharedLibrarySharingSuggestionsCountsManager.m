@interface PXSharedLibrarySharingSuggestionsCountsManager
+ (id)lastBannerDismissDateAccessor;
+ (id)lastNotificationDateAccessor;
+ (id)lastSeenSuggestionsDateAccessor;
+ (id)mostRecentUserSeenAddedDateAccessor;
- (BOOL)isAssetUnread:(id)a3;
- (NSDate)notificationDate;
- (NSDate)priorityDate;
- (PHAssetCollection)sharingSuggestionsSmartAlbum;
- (PHFetchResult)mostRecentAssetFetchResult;
- (PXSharedLibrarySharingSuggestionsCountsManager)init;
- (PXSharedLibrarySharingSuggestionsCountsManager)initWithPhotoLibrary:(id)a3;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (void)_fetchUnreadAssetsAfterDate;
- (void)_handleUnreadSuggestedAssetsFetchResult:(id)a3 forDate:(id)a4;
- (void)_invalidateDetailedUnreadCounts;
- (void)_invalidateHasAnySuggestions;
- (void)_invalidateIsSuggestionsEnabled;
- (void)_invalidateMostRecentAddedDateEverSeen;
- (void)_invalidateMostRecentSeenSuggestedAssetAddedDate;
- (void)_invalidateMostRecentSuggestedAssetFetchResult;
- (void)_invalidateNeedsParticipantSetup;
- (void)_invalidateShouldShowBanner;
- (void)_queue_fetchUnreadAssetsAfterDate:(id)a3;
- (void)_updateDetailedUnreadCounts;
- (void)_updateHasAnySuggestions;
- (void)_updateIsSuggestionsEnabled;
- (void)_updateMostRecentAddedDateEverSeen;
- (void)_updateMostRecentSeenSuggestedAssetAddedDate;
- (void)_updateMostRecentSuggestedAssetFetchResult;
- (void)_updateNeedsParticipantSetup;
- (void)_updateShouldShowBanner;
- (void)clearStoredDates;
- (void)didPerformChanges;
- (void)markAllSuggestionsAsRead;
- (void)markAnyNotificationsAsRead;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4;
- (void)preferencesDidChange;
- (void)setDetailedUnreadCounts:(id *)a3;
- (void)setHasAnySuggestions:(BOOL)a3;
- (void)setIsSuggestionsEnabled:(BOOL)a3;
- (void)setMostRecentAssetFetchResult:(id)a3;
- (void)setMostRecentSuggestedAssetFetchResult:(id)a3;
- (void)setMostRecentUserSeenAddedDate:(id)a3;
- (void)setNeedsParticipantSetup:(BOOL)a3;
- (void)setShouldShowNotificationBanner:(BOOL)a3;
- (void)setUnreadSuggestedAssetsFetchResult:(id)a3;
@end

@implementation PXSharedLibrarySharingSuggestionsCountsManager

- (void)_invalidateIsSuggestionsEnabled
{
  v2 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateIsSuggestionsEnabled];
}

- (void)_invalidateMostRecentSuggestedAssetFetchResult
{
  v2 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateMostRecentSuggestedAssetFetchResult];
}

- (void)_invalidateHasAnySuggestions
{
  v2 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateHasAnySuggestions];
}

- (void)_invalidateNeedsParticipantSetup
{
  v2 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateNeedsParticipantSetup];
}

- (void)_invalidateMostRecentAddedDateEverSeen
{
  v2 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateMostRecentAddedDateEverSeen];
}

- (void)_invalidateMostRecentSeenSuggestedAssetAddedDate
{
  v2 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateMostRecentSeenSuggestedAssetAddedDate];
}

- (void)_invalidateDetailedUnreadCounts
{
  v2 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDetailedUnreadCounts];
}

- (void)_invalidateShouldShowBanner
{
  v2 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateShouldShowBanner];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXSharedLibrarySharingSuggestionsCountsManager;
  [(PXSharedLibrarySharingSuggestionsCountsManager *)&v4 didPerformChanges];
  v3 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [v3 updateIfNeeded];
}

- (void)_updateIsSuggestionsEnabled
{
  v3 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self libraryStatusProvider];
  v4 = [v3 hasSharedLibrary];

  if (v4)
  {
    v5 = PLIsSharedLibrarySuggestionsEnabled();
  }

  else
  {
    v5 = 0;
  }

  [(PXSharedLibrarySharingSuggestionsCountsManager *)self setIsSuggestionsEnabled:v5];
}

- (void)_updateMostRecentSuggestedAssetFetchResult
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentSuggestedAssetFetchResult];
  if (v3)
  {
  }

  else if ([(PXSharedLibrarySharingSuggestionsCountsManager *)self isSuggestionsEnabled])
  {
    v4 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self photoLibrary];
    v5 = [v4 librarySpecificFetchOptions];

    [v5 setFetchLimit:1];
    v16[0] = *MEMORY[0x1E6978C20];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v5 setFetchPropertySets:v6];

    v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:0];
    v15 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [v5 setInternalSortDescriptors:v8];

    v9 = MEMORY[0x1E6978630];
    v10 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self sharingSuggestionsSmartAlbum];
    v11 = [v9 fetchAssetsInAssetCollection:v10 options:v5];
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self setMostRecentSuggestedAssetFetchResult:v11];

    return;
  }

  v12 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentSuggestedAssetFetchResult];
  if (v12)
  {
    v13 = v12;
    v14 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self isSuggestionsEnabled];

    if (!v14)
    {

      [(PXSharedLibrarySharingSuggestionsCountsManager *)self setMostRecentSuggestedAssetFetchResult:0];
    }
  }
}

- (void)_updateHasAnySuggestions
{
  v3 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentSuggestedAssetFetchResult];
  -[PXSharedLibrarySharingSuggestionsCountsManager setHasAnySuggestions:](self, "setHasAnySuggestions:", [v3 count] != 0);
}

- (void)_updateNeedsParticipantSetup
{
  if ([(PXSharedLibrarySharingSuggestionsCountsManager *)self isSuggestionsEnabled]&& ![(PXSharedLibrarySharingSuggestionsCountsManager *)self hasAnySuggestions])
  {
    v4 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self libraryStatusProvider];
    v5 = [v4 sharedLibrary];
    v6 = [v5 rule];

    if ([v6 autoSharePolicy] == 1)
    {
      v3 = 0;
    }

    else
    {
      v7 = [v6 personUUIDs];
      v3 = [v7 count] == 0;
    }
  }

  else
  {
    v3 = 0;
  }

  [(PXSharedLibrarySharingSuggestionsCountsManager *)self setNeedsParticipantSetup:v3];
}

- (void)_updateMostRecentAddedDateEverSeen
{
  v9 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentAddedDateEverSeen];
  v3 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentSuggestedAssetFetchResult];
  v4 = [v3 firstObject];
  v5 = [v4 curationProperties];
  v6 = [v5 addedDate];

  if (v6)
  {
    if (v9)
    {
      v7 = [v9 laterDate:v6];
    }

    else
    {
      v7 = v6;
    }

    v8 = v7;
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self setMostRecentAddedDateEverSeen:v7];
  }
}

- (void)_updateMostRecentSeenSuggestedAssetAddedDate
{
  if ([(PXSharedLibrarySharingSuggestionsCountsManager *)self isSuggestionsEnabled])
  {
    v3 = [objc_opt_class() mostRecentUserSeenAddedDateAccessor];
    v4 = [v3 currentValueIfLoaded];
  }

  else
  {
    v4 = 0;
  }

  [(PXSharedLibrarySharingSuggestionsCountsManager *)self setMostRecentUserSeenAddedDate:v4];
}

- (void)_updateDetailedUnreadCounts
{
  v3 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self unreadSuggestedAssetsFetchResult];

  if (v3)
  {
    v4 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self unreadSuggestedAssetsFetchResult];
    v8[0] = [v4 countOfAssetsWithMediaType:1];
    v8[1] = [v4 countOfAssetsWithMediaType:2];
    v8[2] = [v4 countOfAssetsWithMediaType:3];
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self setDetailedUnreadCounts:v8];
  }

  else
  {
    v5 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentUserSeenAddedDate];
    if (v5)
    {
      v6 = v5;
      v7 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self hasAnySuggestions];

      if (v7)
      {

        [(PXSharedLibrarySharingSuggestionsCountsManager *)self _fetchUnreadAssetsAfterDate];
      }
    }
  }
}

- (void)_updateShouldShowBanner
{
  if (![(PXSharedLibrarySharingSuggestionsCountsManager *)self hasAnySuggestions]|| ((keyExistsAndHasValidFormat[0] = 0, AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ShowSharedLibrarySuggestionsInAppNotificationsSetting", @"com.apple.mobileslideshow", keyExistsAndHasValidFormat), keyExistsAndHasValidFormat[0]) ? (v4 = AppBooleanValue == 0) : (v4 = 0), v4))
  {
    v13 = 0;
  }

  else
  {
    *keyExistsAndHasValidFormat = 0;
    v30 = 0;
    v31 = 0;
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self detailedUnreadCounts];
    if (v31 == 0x7FFFFFFFFFFFFFFFLL || v30 == 0x7FFFFFFFFFFFFFFFLL || *keyExistsAndHasValidFormat == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = v30 + *keyExistsAndHasValidFormat + v31;
    }

    v8 = [objc_opt_class() lastNotificationDateAccessor];
    v9 = [v8 currentValueIfLoaded];

    v10 = [objc_opt_class() lastSeenSuggestionsDateAccessor];
    v11 = [v10 currentValueIfLoaded];

    if (v9 && v11 && ([v9 timeIntervalSinceDate:v11], v12 > 0.0) && v7 > 0)
    {
      v13 = 1;
    }

    else
    {
      v14 = +[PXSharedLibrarySettings sharedInstance];
      v15 = [v14 sharingSuggestionsBannerUnreadCountThreshold];

      v16 = +[PXSharedLibrarySettings sharedInstance];
      [v16 sharingSuggestionsMinimumTimeSinceLastBannerDismiss];
      v18 = v17;

      v19 = [objc_opt_class() lastBannerDismissDateAccessor];
      v20 = [v19 currentValueIfLoaded];

      v13 = 0;
      if ((v15 & 0x8000000000000000) == 0 && v7 >= v15)
      {
        if (v20 && ([v20 timeIntervalSinceNow], fabs(v21) < v18))
        {
          v13 = 0;
        }

        else
        {
          v22 = +[PXSharedLibrarySettings sharedInstance];
          [v22 sharingSuggestionsMinimumTimeSinceLastAsset];
          v24 = v23;

          v25 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentAssetFetchResult];
          v26 = [v25 firstObject];
          v27 = [v26 creationDate];

          v13 = 1;
          if (v27)
          {
            [v27 timeIntervalSinceNow];
            if (fabs(v28) < v24)
            {
              v13 = 0;
            }
          }
        }
      }
    }
  }

  [(PXSharedLibrarySharingSuggestionsCountsManager *)self setShouldShowNotificationBanner:v13];
}

+ (id)mostRecentUserSeenAddedDateAccessor
{
  if (mostRecentUserSeenAddedDateAccessor_onceToken != -1)
  {
    dispatch_once(&mostRecentUserSeenAddedDateAccessor_onceToken, &__block_literal_global_111731);
  }

  v3 = mostRecentUserSeenAddedDateAccessor_userMostRecentSeenAddedDateAccessor;

  return v3;
}

void __85__PXSharedLibrarySharingSuggestionsCountsManager_mostRecentUserSeenAddedDateAccessor__block_invoke()
{
  v0 = [PXUbiquitousKeyValueStoreValueAccessor alloc];
  v3 = [MEMORY[0x1E696AFB8] defaultStore];
  v1 = [(PXUbiquitousKeyValueStoreValueAccessor *)v0 initWithUbiquitousKeyValueStore:v3 key:*MEMORY[0x1E69C0D98] defaultValueFuture:&__block_literal_global_256 valueFilter:&__block_literal_global_259_111733 changeHandler:&__block_literal_global_262_111734];
  v2 = mostRecentUserSeenAddedDateAccessor_userMostRecentSeenAddedDateAccessor;
  mostRecentUserSeenAddedDateAccessor_userMostRecentSeenAddedDateAccessor = v1;
}

+ (id)lastNotificationDateAccessor
{
  if (lastNotificationDateAccessor_onceToken != -1)
  {
    dispatch_once(&lastNotificationDateAccessor_onceToken, &__block_literal_global_265_111725);
  }

  v3 = lastNotificationDateAccessor_lastNotificationDateAccessor;

  return v3;
}

void __78__PXSharedLibrarySharingSuggestionsCountsManager_lastNotificationDateAccessor__block_invoke()
{
  v0 = [PXUbiquitousKeyValueStoreValueAccessor alloc];
  v3 = [MEMORY[0x1E696AFB8] defaultStore];
  v1 = [(PXUbiquitousKeyValueStoreValueAccessor *)v0 initWithUbiquitousKeyValueStore:v3 key:*MEMORY[0x1E69C0D88] defaultValueFuture:&__block_literal_global_267_111727 valueFilter:&__block_literal_global_269_111728 changeHandler:&__block_literal_global_271];
  v2 = lastNotificationDateAccessor_lastNotificationDateAccessor;
  lastNotificationDateAccessor_lastNotificationDateAccessor = v1;
}

+ (id)lastSeenSuggestionsDateAccessor
{
  if (lastSeenSuggestionsDateAccessor_onceToken != -1)
  {
    dispatch_once(&lastSeenSuggestionsDateAccessor_onceToken, &__block_literal_global_273_111721);
  }

  v3 = lastSeenSuggestionsDateAccessor_lastSeenSuggestionsDateAccessor;

  return v3;
}

void __81__PXSharedLibrarySharingSuggestionsCountsManager_lastSeenSuggestionsDateAccessor__block_invoke()
{
  v0 = [PXUbiquitousKeyValueStoreValueAccessor alloc];
  v3 = [MEMORY[0x1E696AFB8] defaultStore];
  v1 = [(PXUbiquitousKeyValueStoreValueAccessor *)v0 initWithUbiquitousKeyValueStore:v3 key:*MEMORY[0x1E69C0D90] defaultValueFuture:&__block_literal_global_275 valueFilter:&__block_literal_global_277 changeHandler:&__block_literal_global_279_111723];
  v2 = lastSeenSuggestionsDateAccessor_lastSeenSuggestionsDateAccessor;
  lastSeenSuggestionsDateAccessor_lastSeenSuggestionsDateAccessor = v1;
}

+ (id)lastBannerDismissDateAccessor
{
  if (lastBannerDismissDateAccessor_onceToken != -1)
  {
    dispatch_once(&lastBannerDismissDateAccessor_onceToken, &__block_literal_global_281_111711);
  }

  v3 = lastBannerDismissDateAccessor_lastBannerDismissDateAccessor;

  return v3;
}

void __79__PXSharedLibrarySharingSuggestionsCountsManager_lastBannerDismissDateAccessor__block_invoke()
{
  v0 = [PXUbiquitousKeyValueStoreValueAccessor alloc];
  v3 = [MEMORY[0x1E696AFB8] defaultStore];
  v1 = [(PXUbiquitousKeyValueStoreValueAccessor *)v0 initWithUbiquitousKeyValueStore:v3 key:*MEMORY[0x1E69C0D80] defaultValueFuture:&__block_literal_global_283 valueFilter:&__block_literal_global_285 changeHandler:&__block_literal_global_287_111715];
  v2 = lastBannerDismissDateAccessor_lastBannerDismissDateAccessor;
  lastBannerDismissDateAccessor_lastBannerDismissDateAccessor = v1;
}

void __85__PXSharedLibrarySharingSuggestionsCountsManager_mostRecentUserSeenAddedDateAccessor__block_invoke_4(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD88];
  v3 = a2;
  v4 = [v2 defaultCenter];
  v6 = *MEMORY[0x1E69C0D98];
  v7[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  [v4 postNotificationName:@"PFSharedLibrarySuggestionsMostRecentUserSeenAddedDateDidChangeNotification" object:0 userInfo:v5];
}

void __78__PXSharedLibrarySharingSuggestionsCountsManager_lastNotificationDateAccessor__block_invoke_4(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD88];
  v3 = a2;
  v4 = [v2 defaultCenter];
  v6 = *MEMORY[0x1E69C0D88];
  v7[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  [v4 postNotificationName:@"PFSharedLibrarySuggestionsLastNotificationDateDidChangeNotification" object:0 userInfo:v5];
}

void __81__PXSharedLibrarySharingSuggestionsCountsManager_lastSeenSuggestionsDateAccessor__block_invoke_4(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD88];
  v3 = a2;
  v4 = [v2 defaultCenter];
  v6 = *MEMORY[0x1E69C0D90];
  v7[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  [v4 postNotificationName:@"PFSharedLibrarySuggestionsLastSeenSuggestionsDateDidChangeNotification" object:0 userInfo:v5];
}

void __79__PXSharedLibrarySharingSuggestionsCountsManager_lastBannerDismissDateAccessor__block_invoke_4(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD88];
  v3 = a2;
  v4 = [v2 defaultCenter];
  v6 = *MEMORY[0x1E69C0D80];
  v7[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  [v4 postNotificationName:@"PFSharedLibrarySuggestionsLastBannerDismissDateDidChangeNotification" object:0 userInfo:v5];
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_mostRecentSuggestedAssetFetchResult)
  {
    v8 = [v6 changeDetailsForFetchResult:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self unreadSuggestedAssetsFetchResult];
  if (v9)
  {
    v10 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self unreadSuggestedAssetsFetchResult];
    v11 = [v6 changeDetailsForFetchResult:v10];
  }

  else
  {
    v11 = 0;
  }

  if (self->_mostRecentAssetFetchResult)
  {
    v12 = [v6 changeDetailsForFetchResult:?];
    if (v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
    if (v8)
    {
LABEL_13:
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __100__PXSharedLibrarySharingSuggestionsCountsManager_photoLibraryDidChangeOnMainQueue_withPreparedInfo___block_invoke;
      v13[3] = &unk_1E773A8B8;
      v14 = v8;
      v15 = self;
      v16 = v11;
      v17 = v12;
      [(PXSharedLibrarySharingSuggestionsCountsManager *)self performChanges:v13];

      goto LABEL_14;
    }
  }

  if (v11 || v12)
  {
    goto LABEL_13;
  }

LABEL_14:
}

void __100__PXSharedLibrarySharingSuggestionsCountsManager_photoLibraryDidChangeOnMainQueue_withPreparedInfo___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 fetchResultAfterChanges];
    [*(a1 + 40) setMostRecentSuggestedAssetFetchResult:v4];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = [v5 fetchResultAfterChanges];
    [*(a1 + 40) setUnreadSuggestedAssetsFetchResult:v6];
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = [v7 fetchResultAfterChanges];
    [*(a1 + 40) setMostRecentAssetFetchResult:v8];
  }
}

- (id)prepareForPhotoLibraryChange:(id)a3
{
  v4 = a3;
  v5 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self unreadSuggestedAssetsFetchResult];
  if (v5)
  {
    v6 = [v4 changeDetailsForFetchResult:v5];
    v7 = [v6 fetchResultAfterChanges];

    [v7 countOfAssetsWithMediaType:1];
  }

  return 0;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXSharedLibraryStatusProviderObservationContext_111653 != a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySharingSuggestionsCountsManager.m" lineNumber:587 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = v9;
  if ((v6 & 2) != 0)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__PXSharedLibrarySharingSuggestionsCountsManager_observable_didChange_context___block_invoke;
    v13[3] = &unk_1E774C5F8;
    v13[4] = self;
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self performChanges:v13];
  }

  if ((v6 & 0x10) != 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__PXSharedLibrarySharingSuggestionsCountsManager_observable_didChange_context___block_invoke_2;
    v12[3] = &unk_1E774C5F8;
    v12[4] = self;
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self performChanges:v12];
  }
}

- (void)preferencesDidChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __70__PXSharedLibrarySharingSuggestionsCountsManager_preferencesDidChange__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXSharedLibrarySharingSuggestionsCountsManager *)self performChanges:v2];
}

uint64_t __70__PXSharedLibrarySharingSuggestionsCountsManager_preferencesDidChange__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateIsSuggestionsEnabled];
  v2 = *(a1 + 32);

  return [v2 _invalidateShouldShowBanner];
}

- (void)setUnreadSuggestedAssetsFetchResult:(id)a3
{
  v8 = a3;
  v5 = self->_unreadSuggestedAssetsFetchResult;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PHFetchResult *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_unreadSuggestedAssetsFetchResult, a3);
      [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateDetailedUnreadCounts];
    }
  }
}

- (void)setMostRecentSuggestedAssetFetchResult:(id)a3
{
  v8 = a3;
  v5 = self->_mostRecentSuggestedAssetFetchResult;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PHFetchResult *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_mostRecentSuggestedAssetFetchResult, a3);
      [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateHasAnySuggestions];
      [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateMostRecentAddedDateEverSeen];
    }
  }
}

- (PHAssetCollection)sharingSuggestionsSmartAlbum
{
  sharingSuggestionsSmartAlbum = self->_sharingSuggestionsSmartAlbum;
  if (!sharingSuggestionsSmartAlbum)
  {
    v4 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self photoLibrary];
    v5 = [v4 librarySpecificFetchOptions];

    [v5 setIncludeSharedLibrarySharingSuggestionsSmartAlbum:1];
    v6 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:1000000214 options:v5];
    v7 = [v6 firstObject];
    v8 = self->_sharingSuggestionsSmartAlbum;
    self->_sharingSuggestionsSmartAlbum = v7;

    sharingSuggestionsSmartAlbum = self->_sharingSuggestionsSmartAlbum;
  }

  return sharingSuggestionsSmartAlbum;
}

uint64_t __88__PXSharedLibrarySharingSuggestionsCountsManager__handleLastBannerDismissDateDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __88__PXSharedLibrarySharingSuggestionsCountsManager__handleLastBannerDismissDateDidChange___block_invoke_2;
  v3[3] = &unk_1E774C5F8;
  v3[4] = v1;
  return [v1 performChanges:v3];
}

uint64_t __90__PXSharedLibrarySharingSuggestionsCountsManager__handleLastSeenSuggestionsDateDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __90__PXSharedLibrarySharingSuggestionsCountsManager__handleLastSeenSuggestionsDateDidChange___block_invoke_2;
  v3[3] = &unk_1E774C5F8;
  v3[4] = v1;
  return [v1 performChanges:v3];
}

uint64_t __87__PXSharedLibrarySharingSuggestionsCountsManager__handleLastNotificationDateDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87__PXSharedLibrarySharingSuggestionsCountsManager__handleLastNotificationDateDidChange___block_invoke_2;
  v3[3] = &unk_1E774C5F8;
  v3[4] = v1;
  return [v1 performChanges:v3];
}

uint64_t __84__PXSharedLibrarySharingSuggestionsCountsManager__handleLastSeenAddedDateDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __84__PXSharedLibrarySharingSuggestionsCountsManager__handleLastSeenAddedDateDidChange___block_invoke_2;
  v3[3] = &unk_1E774C5F8;
  v3[4] = v1;
  return [v1 performChanges:v3];
}

- (void)_handleUnreadSuggestedAssetsFetchResult:(id)a3 forDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PXSharedLibrarySharingSuggestionsCountsManager *)self setIsFetchingUnreadSuggestedAssetsFetchResult:0];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __98__PXSharedLibrarySharingSuggestionsCountsManager__handleUnreadSuggestedAssetsFetchResult_forDate___block_invoke;
  v15 = &unk_1E77498F8;
  v16 = self;
  v17 = v6;
  v8 = v6;
  [(PXSharedLibrarySharingSuggestionsCountsManager *)self performChanges:&v12];
  v9 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentUserSeenAddedDate:v12];
  v10 = v9;
  if (v9 == v7)
  {
  }

  else
  {
    v11 = [v9 isEqual:v7];

    if ((v11 & 1) == 0)
    {
      [(PXSharedLibrarySharingSuggestionsCountsManager *)self _fetchUnreadAssetsAfterDate];
    }
  }
}

- (void)_queue_fetchUnreadAssetsAfterDate:(id)a3
{
  v4 = a3;
  v5 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PXSharedLibrarySharingSuggestionsCountsManager__queue_fetchUnreadAssetsAfterDate___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __84__PXSharedLibrarySharingSuggestionsCountsManager__queue_fetchUnreadAssetsAfterDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"addedDate > %@", *(a1 + 40)];
  [v3 setInternalPredicate:v4];

  [v3 setInternalSortDescriptors:MEMORY[0x1E695E0F0]];
  v5 = MEMORY[0x1E6978630];
  v6 = [*(a1 + 32) sharingSuggestionsSmartAlbum];
  v7 = [v5 fetchAssetsInAssetCollection:v6 options:v3];

  [v7 countOfAssetsWithMediaType:1];
  objc_initWeak(&location, *(a1 + 32));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PXSharedLibrarySharingSuggestionsCountsManager__queue_fetchUnreadAssetsAfterDate___block_invoke_2;
  block[3] = &unk_1E774B708;
  objc_copyWeak(&v12, &location);
  v10 = v7;
  v11 = *(a1 + 40);
  v8 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __84__PXSharedLibrarySharingSuggestionsCountsManager__queue_fetchUnreadAssetsAfterDate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleUnreadSuggestedAssetsFetchResult:*(a1 + 32) forDate:*(a1 + 40)];
}

- (void)_fetchUnreadAssetsAfterDate
{
  if (![(PXSharedLibrarySharingSuggestionsCountsManager *)self isFetchingUnreadSuggestedAssetsFetchResult])
  {
    objc_initWeak(&location, self);
    v3 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentUserSeenAddedDate];
    if (!v3)
    {
      PXAssertGetLog();
    }

    [(PXSharedLibrarySharingSuggestionsCountsManager *)self setIsFetchingUnreadSuggestedAssetsFetchResult:1];
    v4 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PXSharedLibrarySharingSuggestionsCountsManager__fetchUnreadAssetsAfterDate__block_invoke;
    block[3] = &unk_1E774B248;
    objc_copyWeak(&v7, &location);
    v6 = v3;
    dispatch_async(v4, block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __77__PXSharedLibrarySharingSuggestionsCountsManager__fetchUnreadAssetsAfterDate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_fetchUnreadAssetsAfterDate:*(a1 + 32)];
}

- (void)setMostRecentAssetFetchResult:(id)a3
{
  v8 = a3;
  v5 = self->_mostRecentAssetFetchResult;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PHFetchResult *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_mostRecentAssetFetchResult, a3);
      [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateShouldShowBanner];
    }
  }
}

- (PHFetchResult)mostRecentAssetFetchResult
{
  v11[1] = *MEMORY[0x1E69E9840];
  mostRecentAssetFetchResult = self->_mostRecentAssetFetchResult;
  if (!mostRecentAssetFetchResult)
  {
    v4 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self photoLibrary];
    v5 = [v4 librarySpecificFetchOptions];

    [v5 setFetchLimit:1];
    v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v5 setSortDescriptors:v7];

    v8 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v5];
    v9 = self->_mostRecentAssetFetchResult;
    self->_mostRecentAssetFetchResult = v8;

    mostRecentAssetFetchResult = self->_mostRecentAssetFetchResult;
  }

  return mostRecentAssetFetchResult;
}

- (BOOL)isAssetUnread:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 curationProperties];
    v6 = [v5 addedDate];

    v7 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentUserSeenAddedDate];
    v8 = [v7 laterDate:v6];
    v9 = [v8 isEqualToDate:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSDate)notificationDate
{
  v2 = [objc_opt_class() lastNotificationDateAccessor];
  v3 = [v2 currentValue];

  return v3;
}

- (NSDate)priorityDate
{
  if ([(PXSharedLibrarySharingSuggestionsCountsManager *)self shouldShowNotificationBanner])
  {
    v3 = [MEMORY[0x1E695DF00] date];
  }

  else
  {
    v4 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentAddedDateEverSeen];
    v5 = [objc_opt_class() lastNotificationDateAccessor];
    v6 = [v5 currentValue];

    if (v4)
    {
      v7 = [v6 laterDate:v4];
    }

    else
    {
      v7 = v6;
    }

    v3 = v7;
  }

  return v3;
}

- (void)setMostRecentUserSeenAddedDate:(id)a3
{
  v9 = a3;
  v5 = self->_mostRecentUserSeenAddedDate;
  v6 = v5;
  if (v5 == v9)
  {
  }

  else
  {
    v7 = [(NSDate *)v5 isEqual:v9];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_mostRecentUserSeenAddedDate, a3);
      [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateDetailedUnreadCounts];
      [(PXSharedLibrarySharingSuggestionsCountsManager *)self signalChange:4];
      if (v9)
      {
        v8 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self unreadSuggestedAssetsFetchResult];

        if (v8)
        {
          [(PXSharedLibrarySharingSuggestionsCountsManager *)self _fetchUnreadAssetsAfterDate];
        }
      }
    }
  }
}

- (void)setShouldShowNotificationBanner:(BOOL)a3
{
  if (self->_shouldShowNotificationBanner != a3)
  {
    self->_shouldShowNotificationBanner = a3;
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self signalChange:8];
  }
}

- (void)setDetailedUnreadCounts:(id *)a3
{
  if (self->_detailedUnreadCounts.photosCount != a3->var0 || self->_detailedUnreadCounts.videosCount != a3->var1 || self->_detailedUnreadCounts.othersCount != a3->var2)
  {
    v7 = *&a3->var0;
    self->_detailedUnreadCounts.othersCount = a3->var2;
    *&self->_detailedUnreadCounts.photosCount = v7;
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self signalChange:2];

    [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateShouldShowBanner];
  }
}

- (void)setNeedsParticipantSetup:(BOOL)a3
{
  if (self->_needsParticipantSetup != a3)
  {
    self->_needsParticipantSetup = a3;
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self signalChange:16];
  }
}

- (void)setHasAnySuggestions:(BOOL)a3
{
  if (self->_hasAnySuggestions != a3)
  {
    self->_hasAnySuggestions = a3;
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self signalChange:1];
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateShouldShowBanner];
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateDetailedUnreadCounts];

    [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateNeedsParticipantSetup];
  }
}

- (void)setIsSuggestionsEnabled:(BOOL)a3
{
  if (self->_isSuggestionsEnabled != a3)
  {
    self->_isSuggestionsEnabled = a3;
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateMostRecentSeenSuggestedAssetAddedDate];
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateMostRecentSuggestedAssetFetchResult];

    [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateNeedsParticipantSetup];
  }
}

- (void)clearStoredDates
{
  v2 = [MEMORY[0x1E695DF00] distantPast];
  v3 = [objc_opt_class() mostRecentUserSeenAddedDateAccessor];
  [v3 setCurrentValue:v2];

  v4 = [MEMORY[0x1E695DF00] distantPast];
  v5 = [objc_opt_class() lastSeenSuggestionsDateAccessor];
  [v5 setCurrentValue:v4];

  v6 = [MEMORY[0x1E695DF00] distantPast];
  v7 = [objc_opt_class() lastNotificationDateAccessor];
  [v7 setCurrentValue:v6];

  v9 = [MEMORY[0x1E695DF00] distantPast];
  v8 = [objc_opt_class() lastBannerDismissDateAccessor];
  [v8 setCurrentValue:v9];
}

- (void)markAnyNotificationsAsRead
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "%@ %@", buf, 0x16u);
  }

  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [objc_opt_class() lastSeenSuggestionsDateAccessor];
  [v9 setCurrentValue:v8];

  v10 = [MEMORY[0x1E695DF00] date];
  v11 = [objc_opt_class() lastBannerDismissDateAccessor];
  [v11 setCurrentValue:v10];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__PXSharedLibrarySharingSuggestionsCountsManager_markAnyNotificationsAsRead__block_invoke;
  v12[3] = &unk_1E774C5F8;
  v12[4] = self;
  [(PXSharedLibrarySharingSuggestionsCountsManager *)self performChanges:v12];
}

- (void)markAllSuggestionsAsRead
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentAddedDateEverSeen];
  v4 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    v15 = 138412802;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "%@ %@ mostRecentAddedDate:%@", &v15, 0x20u);
  }

  if (v3)
  {
    v8 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v3;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Updating PFSharedLibrarySuggestionsMostRecentUserSeenAddedDateKey with date:%@", &v15, 0xCu);
    }

    v9 = [objc_opt_class() mostRecentUserSeenAddedDateAccessor];
    v10 = [v9 currentValue];
    v11 = v10;
    if (v10 != v3 && ([v10 isEqual:v3] & 1) == 0)
    {
      if (v11 && ([v11 laterDate:v3], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToDate:", v11), v12, v13))
      {
        v14 = PLSharedLibraryGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412546;
          v16 = v11;
          v17 = 2112;
          v18 = v3;
          _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "Exisitng PFSharedLibrarySuggestionsMostRecentUserSeenAddedDateKey %@ is newer or the same as the one being set %@, ignoring.", &v15, 0x16u);
        }
      }

      else
      {
        [v9 setCurrentValue:v3];
      }
    }
  }
}

- (PXSharedLibrarySharingSuggestionsCountsManager)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = PXSharedLibrarySharingSuggestionsCountsManager;
  v6 = [(PXSharedLibrarySharingSuggestionsCountsManager *)&v25 init];
  if (v6)
  {
    v7 = [[off_1E7721940 alloc] initWithTarget:v6 needsUpdateSelector:sel__setNeedsUpdate];
    v8 = *(v6 + 21);
    *(v6 + 21) = v7;

    [*(v6 + 21) addUpdateSelector:sel__updateIsSuggestionsEnabled];
    [*(v6 + 21) addUpdateSelector:sel__updateMostRecentSuggestedAssetFetchResult];
    [*(v6 + 21) addUpdateSelector:sel__updateHasAnySuggestions];
    [*(v6 + 21) addUpdateSelector:sel__updateNeedsParticipantSetup];
    [*(v6 + 21) addUpdateSelector:sel__updateMostRecentAddedDateEverSeen];
    [*(v6 + 21) addUpdateSelector:sel__updateMostRecentSeenSuggestedAssetAddedDate];
    [*(v6 + 21) addUpdateSelector:sel__updateDetailedUnreadCounts];
    [*(v6 + 21) addUpdateSelector:sel__updateShouldShowBanner];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.photos.sharedLibrary.suggestions-counts-fetch-queue", v9);
    v11 = *(v6 + 22);
    *(v6 + 22) = v10;

    objc_storeStrong(v6 + 18, a3);
    [v5 px_registerChangeObserver:v6];
    v12 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v5];
    v13 = *(v6 + 17);
    *(v6 + 17) = v12;

    [*(v6 + 17) registerChangeObserver:v6 context:PXSharedLibraryStatusProviderObservationContext_111653];
    *(v6 + 184) = *off_1E7721F70;
    *(v6 + 25) = *(off_1E7721F70 + 2);
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v6 selector:sel__handleLastSeenAddedDateDidChange_ name:@"PFSharedLibrarySuggestionsMostRecentUserSeenAddedDateDidChangeNotification" object:0];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v6 selector:sel__handleLastNotificationDateDidChange_ name:@"PFSharedLibrarySuggestionsLastNotificationDateDidChangeNotification" object:0];

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v6 selector:sel__handleLastSeenSuggestionsDateDidChange_ name:@"PFSharedLibrarySuggestionsLastSeenSuggestionsDateDidChangeNotification" object:0];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v6 selector:sel__handleLastBannerDismissDateDidChange_ name:@"PFSharedLibrarySuggestionsLastBannerDismissDateDidChangeNotification" object:0];

    PXRegisterPreferencesObserver(v6);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__PXSharedLibrarySharingSuggestionsCountsManager_initWithPhotoLibrary___block_invoke;
    v23[3] = &unk_1E774C5F8;
    v24 = v6;
    [v24 performChanges:v23];
    v18 = [objc_opt_class() mostRecentUserSeenAddedDateAccessor];
    [v18 loadValueAsyncIfNeeded];

    v19 = [objc_opt_class() lastNotificationDateAccessor];
    [v19 loadValueAsyncIfNeeded];

    v20 = [objc_opt_class() lastSeenSuggestionsDateAccessor];
    [v20 loadValueAsyncIfNeeded];

    v21 = [objc_opt_class() lastBannerDismissDateAccessor];
    [v21 loadValueAsyncIfNeeded];
  }

  return v6;
}

uint64_t __71__PXSharedLibrarySharingSuggestionsCountsManager_initWithPhotoLibrary___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateIsSuggestionsEnabled];
  [*(a1 + 32) _invalidateMostRecentSuggestedAssetFetchResult];
  [*(a1 + 32) _invalidateHasAnySuggestions];
  [*(a1 + 32) _invalidateNeedsParticipantSetup];
  [*(a1 + 32) _invalidateMostRecentAddedDateEverSeen];
  [*(a1 + 32) _invalidateMostRecentSeenSuggestedAssetAddedDate];
  [*(a1 + 32) _invalidateDetailedUnreadCounts];
  v2 = *(a1 + 32);

  return [v2 _invalidateShouldShowBanner];
}

- (PXSharedLibrarySharingSuggestionsCountsManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySharingSuggestionsCountsManager.m" lineNumber:61 description:{@"%s is not available as initializer", "-[PXSharedLibrarySharingSuggestionsCountsManager init]"}];

  abort();
}

uint64_t __79__PXSharedLibrarySharingSuggestionsCountsManager_lastBannerDismissDateAccessor__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  else
  {
    return [a2 isEqual:{v3, v4}] ^ 1;
  }
}

uint64_t __81__PXSharedLibrarySharingSuggestionsCountsManager_lastSeenSuggestionsDateAccessor__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  else
  {
    return [a2 isEqual:{v3, v4}] ^ 1;
  }
}

uint64_t __78__PXSharedLibrarySharingSuggestionsCountsManager_lastNotificationDateAccessor__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  else
  {
    return [a2 isEqual:{v3, v4}] ^ 1;
  }
}

uint64_t __85__PXSharedLibrarySharingSuggestionsCountsManager_mostRecentUserSeenAddedDateAccessor__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  else
  {
    return [a2 isEqual:{v3, v4}] ^ 1;
  }
}

@end