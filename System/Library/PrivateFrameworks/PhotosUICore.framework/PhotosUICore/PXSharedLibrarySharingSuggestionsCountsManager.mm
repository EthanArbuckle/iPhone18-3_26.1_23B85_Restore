@interface PXSharedLibrarySharingSuggestionsCountsManager
+ (id)lastBannerDismissDateAccessor;
+ (id)lastNotificationDateAccessor;
+ (id)lastSeenSuggestionsDateAccessor;
+ (id)mostRecentUserSeenAddedDateAccessor;
- (BOOL)isAssetUnread:(id)unread;
- (NSDate)notificationDate;
- (NSDate)priorityDate;
- (PHAssetCollection)sharingSuggestionsSmartAlbum;
- (PHFetchResult)mostRecentAssetFetchResult;
- (PXSharedLibrarySharingSuggestionsCountsManager)init;
- (PXSharedLibrarySharingSuggestionsCountsManager)initWithPhotoLibrary:(id)library;
- (id)prepareForPhotoLibraryChange:(id)change;
- (void)_fetchUnreadAssetsAfterDate;
- (void)_handleUnreadSuggestedAssetsFetchResult:(id)result forDate:(id)date;
- (void)_invalidateDetailedUnreadCounts;
- (void)_invalidateHasAnySuggestions;
- (void)_invalidateIsSuggestionsEnabled;
- (void)_invalidateMostRecentAddedDateEverSeen;
- (void)_invalidateMostRecentSeenSuggestedAssetAddedDate;
- (void)_invalidateMostRecentSuggestedAssetFetchResult;
- (void)_invalidateNeedsParticipantSetup;
- (void)_invalidateShouldShowBanner;
- (void)_queue_fetchUnreadAssetsAfterDate:(id)date;
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
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info;
- (void)preferencesDidChange;
- (void)setDetailedUnreadCounts:(id *)counts;
- (void)setHasAnySuggestions:(BOOL)suggestions;
- (void)setIsSuggestionsEnabled:(BOOL)enabled;
- (void)setMostRecentAssetFetchResult:(id)result;
- (void)setMostRecentSuggestedAssetFetchResult:(id)result;
- (void)setMostRecentUserSeenAddedDate:(id)date;
- (void)setNeedsParticipantSetup:(BOOL)setup;
- (void)setShouldShowNotificationBanner:(BOOL)banner;
- (void)setUnreadSuggestedAssetsFetchResult:(id)result;
@end

@implementation PXSharedLibrarySharingSuggestionsCountsManager

- (void)_invalidateIsSuggestionsEnabled
{
  updater = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateIsSuggestionsEnabled];
}

- (void)_invalidateMostRecentSuggestedAssetFetchResult
{
  updater = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateMostRecentSuggestedAssetFetchResult];
}

- (void)_invalidateHasAnySuggestions
{
  updater = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateHasAnySuggestions];
}

- (void)_invalidateNeedsParticipantSetup
{
  updater = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateNeedsParticipantSetup];
}

- (void)_invalidateMostRecentAddedDateEverSeen
{
  updater = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateMostRecentAddedDateEverSeen];
}

- (void)_invalidateMostRecentSeenSuggestedAssetAddedDate
{
  updater = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateMostRecentSeenSuggestedAssetAddedDate];
}

- (void)_invalidateDetailedUnreadCounts
{
  updater = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateDetailedUnreadCounts];
}

- (void)_invalidateShouldShowBanner
{
  updater = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateShouldShowBanner];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXSharedLibrarySharingSuggestionsCountsManager;
  [(PXSharedLibrarySharingSuggestionsCountsManager *)&v4 didPerformChanges];
  updater = [(PXSharedLibrarySharingSuggestionsCountsManager *)self updater];
  [updater updateIfNeeded];
}

- (void)_updateIsSuggestionsEnabled
{
  libraryStatusProvider = [(PXSharedLibrarySharingSuggestionsCountsManager *)self libraryStatusProvider];
  hasSharedLibrary = [libraryStatusProvider hasSharedLibrary];

  if (hasSharedLibrary)
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
  mostRecentSuggestedAssetFetchResult = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentSuggestedAssetFetchResult];
  if (mostRecentSuggestedAssetFetchResult)
  {
  }

  else if ([(PXSharedLibrarySharingSuggestionsCountsManager *)self isSuggestionsEnabled])
  {
    photoLibrary = [(PXSharedLibrarySharingSuggestionsCountsManager *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setFetchLimit:1];
    v16[0] = *MEMORY[0x1E6978C20];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v6];

    v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:0];
    v15 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [librarySpecificFetchOptions setInternalSortDescriptors:v8];

    v9 = MEMORY[0x1E6978630];
    sharingSuggestionsSmartAlbum = [(PXSharedLibrarySharingSuggestionsCountsManager *)self sharingSuggestionsSmartAlbum];
    v11 = [v9 fetchAssetsInAssetCollection:sharingSuggestionsSmartAlbum options:librarySpecificFetchOptions];
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self setMostRecentSuggestedAssetFetchResult:v11];

    return;
  }

  mostRecentSuggestedAssetFetchResult2 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentSuggestedAssetFetchResult];
  if (mostRecentSuggestedAssetFetchResult2)
  {
    v13 = mostRecentSuggestedAssetFetchResult2;
    isSuggestionsEnabled = [(PXSharedLibrarySharingSuggestionsCountsManager *)self isSuggestionsEnabled];

    if (!isSuggestionsEnabled)
    {

      [(PXSharedLibrarySharingSuggestionsCountsManager *)self setMostRecentSuggestedAssetFetchResult:0];
    }
  }
}

- (void)_updateHasAnySuggestions
{
  mostRecentSuggestedAssetFetchResult = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentSuggestedAssetFetchResult];
  -[PXSharedLibrarySharingSuggestionsCountsManager setHasAnySuggestions:](self, "setHasAnySuggestions:", [mostRecentSuggestedAssetFetchResult count] != 0);
}

- (void)_updateNeedsParticipantSetup
{
  if ([(PXSharedLibrarySharingSuggestionsCountsManager *)self isSuggestionsEnabled]&& ![(PXSharedLibrarySharingSuggestionsCountsManager *)self hasAnySuggestions])
  {
    libraryStatusProvider = [(PXSharedLibrarySharingSuggestionsCountsManager *)self libraryStatusProvider];
    sharedLibrary = [libraryStatusProvider sharedLibrary];
    rule = [sharedLibrary rule];

    if ([rule autoSharePolicy] == 1)
    {
      v3 = 0;
    }

    else
    {
      personUUIDs = [rule personUUIDs];
      v3 = [personUUIDs count] == 0;
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
  mostRecentAddedDateEverSeen = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentAddedDateEverSeen];
  mostRecentSuggestedAssetFetchResult = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentSuggestedAssetFetchResult];
  firstObject = [mostRecentSuggestedAssetFetchResult firstObject];
  curationProperties = [firstObject curationProperties];
  addedDate = [curationProperties addedDate];

  if (addedDate)
  {
    if (mostRecentAddedDateEverSeen)
    {
      v7 = [mostRecentAddedDateEverSeen laterDate:addedDate];
    }

    else
    {
      v7 = addedDate;
    }

    v8 = v7;
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self setMostRecentAddedDateEverSeen:v7];
  }
}

- (void)_updateMostRecentSeenSuggestedAssetAddedDate
{
  if ([(PXSharedLibrarySharingSuggestionsCountsManager *)self isSuggestionsEnabled])
  {
    mostRecentUserSeenAddedDateAccessor = [objc_opt_class() mostRecentUserSeenAddedDateAccessor];
    currentValueIfLoaded = [mostRecentUserSeenAddedDateAccessor currentValueIfLoaded];
  }

  else
  {
    currentValueIfLoaded = 0;
  }

  [(PXSharedLibrarySharingSuggestionsCountsManager *)self setMostRecentUserSeenAddedDate:currentValueIfLoaded];
}

- (void)_updateDetailedUnreadCounts
{
  unreadSuggestedAssetsFetchResult = [(PXSharedLibrarySharingSuggestionsCountsManager *)self unreadSuggestedAssetsFetchResult];

  if (unreadSuggestedAssetsFetchResult)
  {
    unreadSuggestedAssetsFetchResult2 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self unreadSuggestedAssetsFetchResult];
    v8[0] = [unreadSuggestedAssetsFetchResult2 countOfAssetsWithMediaType:1];
    v8[1] = [unreadSuggestedAssetsFetchResult2 countOfAssetsWithMediaType:2];
    v8[2] = [unreadSuggestedAssetsFetchResult2 countOfAssetsWithMediaType:3];
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self setDetailedUnreadCounts:v8];
  }

  else
  {
    mostRecentUserSeenAddedDate = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentUserSeenAddedDate];
    if (mostRecentUserSeenAddedDate)
    {
      v6 = mostRecentUserSeenAddedDate;
      hasAnySuggestions = [(PXSharedLibrarySharingSuggestionsCountsManager *)self hasAnySuggestions];

      if (hasAnySuggestions)
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

    lastNotificationDateAccessor = [objc_opt_class() lastNotificationDateAccessor];
    currentValueIfLoaded = [lastNotificationDateAccessor currentValueIfLoaded];

    lastSeenSuggestionsDateAccessor = [objc_opt_class() lastSeenSuggestionsDateAccessor];
    currentValueIfLoaded2 = [lastSeenSuggestionsDateAccessor currentValueIfLoaded];

    if (currentValueIfLoaded && currentValueIfLoaded2 && ([currentValueIfLoaded timeIntervalSinceDate:currentValueIfLoaded2], v12 > 0.0) && v7 > 0)
    {
      v13 = 1;
    }

    else
    {
      v14 = +[PXSharedLibrarySettings sharedInstance];
      sharingSuggestionsBannerUnreadCountThreshold = [v14 sharingSuggestionsBannerUnreadCountThreshold];

      v16 = +[PXSharedLibrarySettings sharedInstance];
      [v16 sharingSuggestionsMinimumTimeSinceLastBannerDismiss];
      v18 = v17;

      lastBannerDismissDateAccessor = [objc_opt_class() lastBannerDismissDateAccessor];
      currentValueIfLoaded3 = [lastBannerDismissDateAccessor currentValueIfLoaded];

      v13 = 0;
      if ((sharingSuggestionsBannerUnreadCountThreshold & 0x8000000000000000) == 0 && v7 >= sharingSuggestionsBannerUnreadCountThreshold)
      {
        if (currentValueIfLoaded3 && ([currentValueIfLoaded3 timeIntervalSinceNow], fabs(v21) < v18))
        {
          v13 = 0;
        }

        else
        {
          v22 = +[PXSharedLibrarySettings sharedInstance];
          [v22 sharingSuggestionsMinimumTimeSinceLastAsset];
          v24 = v23;

          mostRecentAssetFetchResult = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentAssetFetchResult];
          firstObject = [mostRecentAssetFetchResult firstObject];
          creationDate = [firstObject creationDate];

          v13 = 1;
          if (creationDate)
          {
            [creationDate timeIntervalSinceNow];
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

- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info
{
  queueCopy = queue;
  infoCopy = info;
  if (self->_mostRecentSuggestedAssetFetchResult)
  {
    v8 = [queueCopy changeDetailsForFetchResult:?];
  }

  else
  {
    v8 = 0;
  }

  unreadSuggestedAssetsFetchResult = [(PXSharedLibrarySharingSuggestionsCountsManager *)self unreadSuggestedAssetsFetchResult];
  if (unreadSuggestedAssetsFetchResult)
  {
    unreadSuggestedAssetsFetchResult2 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self unreadSuggestedAssetsFetchResult];
    v11 = [queueCopy changeDetailsForFetchResult:unreadSuggestedAssetsFetchResult2];
  }

  else
  {
    v11 = 0;
  }

  if (self->_mostRecentAssetFetchResult)
  {
    v12 = [queueCopy changeDetailsForFetchResult:?];
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
      selfCopy = self;
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

- (id)prepareForPhotoLibraryChange:(id)change
{
  changeCopy = change;
  unreadSuggestedAssetsFetchResult = [(PXSharedLibrarySharingSuggestionsCountsManager *)self unreadSuggestedAssetsFetchResult];
  if (unreadSuggestedAssetsFetchResult)
  {
    v6 = [changeCopy changeDetailsForFetchResult:unreadSuggestedAssetsFetchResult];
    fetchResultAfterChanges = [v6 fetchResultAfterChanges];

    [fetchResultAfterChanges countOfAssetsWithMediaType:1];
  }

  return 0;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSharedLibraryStatusProviderObservationContext_111653 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySharingSuggestionsCountsManager.m" lineNumber:587 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if ((changeCopy & 2) != 0)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__PXSharedLibrarySharingSuggestionsCountsManager_observable_didChange_context___block_invoke;
    v13[3] = &unk_1E774C5F8;
    v13[4] = self;
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self performChanges:v13];
  }

  if ((changeCopy & 0x10) != 0)
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

- (void)setUnreadSuggestedAssetsFetchResult:(id)result
{
  resultCopy = result;
  v5 = self->_unreadSuggestedAssetsFetchResult;
  v6 = v5;
  if (v5 == resultCopy)
  {
  }

  else
  {
    v7 = [(PHFetchResult *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_unreadSuggestedAssetsFetchResult, result);
      [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateDetailedUnreadCounts];
    }
  }
}

- (void)setMostRecentSuggestedAssetFetchResult:(id)result
{
  resultCopy = result;
  v5 = self->_mostRecentSuggestedAssetFetchResult;
  v6 = v5;
  if (v5 == resultCopy)
  {
  }

  else
  {
    v7 = [(PHFetchResult *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_mostRecentSuggestedAssetFetchResult, result);
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
    photoLibrary = [(PXSharedLibrarySharingSuggestionsCountsManager *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setIncludeSharedLibrarySharingSuggestionsSmartAlbum:1];
    v6 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:1000000214 options:librarySpecificFetchOptions];
    firstObject = [v6 firstObject];
    v8 = self->_sharingSuggestionsSmartAlbum;
    self->_sharingSuggestionsSmartAlbum = firstObject;

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

- (void)_handleUnreadSuggestedAssetsFetchResult:(id)result forDate:(id)date
{
  resultCopy = result;
  dateCopy = date;
  [(PXSharedLibrarySharingSuggestionsCountsManager *)self setIsFetchingUnreadSuggestedAssetsFetchResult:0];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __98__PXSharedLibrarySharingSuggestionsCountsManager__handleUnreadSuggestedAssetsFetchResult_forDate___block_invoke;
  v15 = &unk_1E77498F8;
  selfCopy = self;
  v17 = resultCopy;
  v8 = resultCopy;
  [(PXSharedLibrarySharingSuggestionsCountsManager *)self performChanges:&v12];
  v9 = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentUserSeenAddedDate:v12];
  v10 = v9;
  if (v9 == dateCopy)
  {
  }

  else
  {
    v11 = [v9 isEqual:dateCopy];

    if ((v11 & 1) == 0)
    {
      [(PXSharedLibrarySharingSuggestionsCountsManager *)self _fetchUnreadAssetsAfterDate];
    }
  }
}

- (void)_queue_fetchUnreadAssetsAfterDate:(id)date
{
  dateCopy = date;
  queue = [(PXSharedLibrarySharingSuggestionsCountsManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PXSharedLibrarySharingSuggestionsCountsManager__queue_fetchUnreadAssetsAfterDate___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_async(queue, v7);
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
    mostRecentUserSeenAddedDate = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentUserSeenAddedDate];
    if (!mostRecentUserSeenAddedDate)
    {
      PXAssertGetLog();
    }

    [(PXSharedLibrarySharingSuggestionsCountsManager *)self setIsFetchingUnreadSuggestedAssetsFetchResult:1];
    queue = [(PXSharedLibrarySharingSuggestionsCountsManager *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PXSharedLibrarySharingSuggestionsCountsManager__fetchUnreadAssetsAfterDate__block_invoke;
    block[3] = &unk_1E774B248;
    objc_copyWeak(&v7, &location);
    v6 = mostRecentUserSeenAddedDate;
    dispatch_async(queue, block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __77__PXSharedLibrarySharingSuggestionsCountsManager__fetchUnreadAssetsAfterDate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_fetchUnreadAssetsAfterDate:*(a1 + 32)];
}

- (void)setMostRecentAssetFetchResult:(id)result
{
  resultCopy = result;
  v5 = self->_mostRecentAssetFetchResult;
  v6 = v5;
  if (v5 == resultCopy)
  {
  }

  else
  {
    v7 = [(PHFetchResult *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_mostRecentAssetFetchResult, result);
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
    photoLibrary = [(PXSharedLibrarySharingSuggestionsCountsManager *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setFetchLimit:1];
    v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [librarySpecificFetchOptions setSortDescriptors:v7];

    v8 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions];
    v9 = self->_mostRecentAssetFetchResult;
    self->_mostRecentAssetFetchResult = v8;

    mostRecentAssetFetchResult = self->_mostRecentAssetFetchResult;
  }

  return mostRecentAssetFetchResult;
}

- (BOOL)isAssetUnread:(id)unread
{
  unreadCopy = unread;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    curationProperties = [unreadCopy curationProperties];
    addedDate = [curationProperties addedDate];

    mostRecentUserSeenAddedDate = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentUserSeenAddedDate];
    v8 = [mostRecentUserSeenAddedDate laterDate:addedDate];
    v9 = [v8 isEqualToDate:addedDate];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSDate)notificationDate
{
  lastNotificationDateAccessor = [objc_opt_class() lastNotificationDateAccessor];
  currentValue = [lastNotificationDateAccessor currentValue];

  return currentValue;
}

- (NSDate)priorityDate
{
  if ([(PXSharedLibrarySharingSuggestionsCountsManager *)self shouldShowNotificationBanner])
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  else
  {
    mostRecentAddedDateEverSeen = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentAddedDateEverSeen];
    lastNotificationDateAccessor = [objc_opt_class() lastNotificationDateAccessor];
    currentValue = [lastNotificationDateAccessor currentValue];

    if (mostRecentAddedDateEverSeen)
    {
      v7 = [currentValue laterDate:mostRecentAddedDateEverSeen];
    }

    else
    {
      v7 = currentValue;
    }

    date = v7;
  }

  return date;
}

- (void)setMostRecentUserSeenAddedDate:(id)date
{
  dateCopy = date;
  v5 = self->_mostRecentUserSeenAddedDate;
  v6 = v5;
  if (v5 == dateCopy)
  {
  }

  else
  {
    v7 = [(NSDate *)v5 isEqual:dateCopy];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_mostRecentUserSeenAddedDate, date);
      [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateDetailedUnreadCounts];
      [(PXSharedLibrarySharingSuggestionsCountsManager *)self signalChange:4];
      if (dateCopy)
      {
        unreadSuggestedAssetsFetchResult = [(PXSharedLibrarySharingSuggestionsCountsManager *)self unreadSuggestedAssetsFetchResult];

        if (unreadSuggestedAssetsFetchResult)
        {
          [(PXSharedLibrarySharingSuggestionsCountsManager *)self _fetchUnreadAssetsAfterDate];
        }
      }
    }
  }
}

- (void)setShouldShowNotificationBanner:(BOOL)banner
{
  if (self->_shouldShowNotificationBanner != banner)
  {
    self->_shouldShowNotificationBanner = banner;
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self signalChange:8];
  }
}

- (void)setDetailedUnreadCounts:(id *)counts
{
  if (self->_detailedUnreadCounts.photosCount != counts->var0 || self->_detailedUnreadCounts.videosCount != counts->var1 || self->_detailedUnreadCounts.othersCount != counts->var2)
  {
    v7 = *&counts->var0;
    self->_detailedUnreadCounts.othersCount = counts->var2;
    *&self->_detailedUnreadCounts.photosCount = v7;
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self signalChange:2];

    [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateShouldShowBanner];
  }
}

- (void)setNeedsParticipantSetup:(BOOL)setup
{
  if (self->_needsParticipantSetup != setup)
  {
    self->_needsParticipantSetup = setup;
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self signalChange:16];
  }
}

- (void)setHasAnySuggestions:(BOOL)suggestions
{
  if (self->_hasAnySuggestions != suggestions)
  {
    self->_hasAnySuggestions = suggestions;
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self signalChange:1];
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateShouldShowBanner];
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateDetailedUnreadCounts];

    [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateNeedsParticipantSetup];
  }
}

- (void)setIsSuggestionsEnabled:(BOOL)enabled
{
  if (self->_isSuggestionsEnabled != enabled)
  {
    self->_isSuggestionsEnabled = enabled;
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateMostRecentSeenSuggestedAssetAddedDate];
    [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateMostRecentSuggestedAssetFetchResult];

    [(PXSharedLibrarySharingSuggestionsCountsManager *)self _invalidateNeedsParticipantSetup];
  }
}

- (void)clearStoredDates
{
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  mostRecentUserSeenAddedDateAccessor = [objc_opt_class() mostRecentUserSeenAddedDateAccessor];
  [mostRecentUserSeenAddedDateAccessor setCurrentValue:distantPast];

  distantPast2 = [MEMORY[0x1E695DF00] distantPast];
  lastSeenSuggestionsDateAccessor = [objc_opt_class() lastSeenSuggestionsDateAccessor];
  [lastSeenSuggestionsDateAccessor setCurrentValue:distantPast2];

  distantPast3 = [MEMORY[0x1E695DF00] distantPast];
  lastNotificationDateAccessor = [objc_opt_class() lastNotificationDateAccessor];
  [lastNotificationDateAccessor setCurrentValue:distantPast3];

  distantPast4 = [MEMORY[0x1E695DF00] distantPast];
  lastBannerDismissDateAccessor = [objc_opt_class() lastBannerDismissDateAccessor];
  [lastBannerDismissDateAccessor setCurrentValue:distantPast4];
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

  date = [MEMORY[0x1E695DF00] date];
  lastSeenSuggestionsDateAccessor = [objc_opt_class() lastSeenSuggestionsDateAccessor];
  [lastSeenSuggestionsDateAccessor setCurrentValue:date];

  date2 = [MEMORY[0x1E695DF00] date];
  lastBannerDismissDateAccessor = [objc_opt_class() lastBannerDismissDateAccessor];
  [lastBannerDismissDateAccessor setCurrentValue:date2];

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
  mostRecentAddedDateEverSeen = [(PXSharedLibrarySharingSuggestionsCountsManager *)self mostRecentAddedDateEverSeen];
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
    v20 = mostRecentAddedDateEverSeen;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "%@ %@ mostRecentAddedDate:%@", &v15, 0x20u);
  }

  if (mostRecentAddedDateEverSeen)
  {
    v8 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = mostRecentAddedDateEverSeen;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Updating PFSharedLibrarySuggestionsMostRecentUserSeenAddedDateKey with date:%@", &v15, 0xCu);
    }

    mostRecentUserSeenAddedDateAccessor = [objc_opt_class() mostRecentUserSeenAddedDateAccessor];
    currentValue = [mostRecentUserSeenAddedDateAccessor currentValue];
    v11 = currentValue;
    if (currentValue != mostRecentAddedDateEverSeen && ([currentValue isEqual:mostRecentAddedDateEverSeen] & 1) == 0)
    {
      if (v11 && ([v11 laterDate:mostRecentAddedDateEverSeen], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToDate:", v11), v12, v13))
      {
        v14 = PLSharedLibraryGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412546;
          v16 = v11;
          v17 = 2112;
          v18 = mostRecentAddedDateEverSeen;
          _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "Exisitng PFSharedLibrarySuggestionsMostRecentUserSeenAddedDateKey %@ is newer or the same as the one being set %@, ignoring.", &v15, 0x16u);
        }
      }

      else
      {
        [mostRecentUserSeenAddedDateAccessor setCurrentValue:mostRecentAddedDateEverSeen];
      }
    }
  }
}

- (PXSharedLibrarySharingSuggestionsCountsManager)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
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

    objc_storeStrong(v6 + 18, library);
    [libraryCopy px_registerChangeObserver:v6];
    v12 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:libraryCopy];
    v13 = *(v6 + 17);
    *(v6 + 17) = v12;

    [*(v6 + 17) registerChangeObserver:v6 context:PXSharedLibraryStatusProviderObservationContext_111653];
    *(v6 + 184) = *off_1E7721F70;
    *(v6 + 25) = *(off_1E7721F70 + 2);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__handleLastSeenAddedDateDidChange_ name:@"PFSharedLibrarySuggestionsMostRecentUserSeenAddedDateDidChangeNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__handleLastNotificationDateDidChange_ name:@"PFSharedLibrarySuggestionsLastNotificationDateDidChangeNotification" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v6 selector:sel__handleLastSeenSuggestionsDateDidChange_ name:@"PFSharedLibrarySuggestionsLastSeenSuggestionsDateDidChangeNotification" object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v6 selector:sel__handleLastBannerDismissDateDidChange_ name:@"PFSharedLibrarySuggestionsLastBannerDismissDateDidChangeNotification" object:0];

    PXRegisterPreferencesObserver(v6);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__PXSharedLibrarySharingSuggestionsCountsManager_initWithPhotoLibrary___block_invoke;
    v23[3] = &unk_1E774C5F8;
    v24 = v6;
    [v24 performChanges:v23];
    mostRecentUserSeenAddedDateAccessor = [objc_opt_class() mostRecentUserSeenAddedDateAccessor];
    [mostRecentUserSeenAddedDateAccessor loadValueAsyncIfNeeded];

    lastNotificationDateAccessor = [objc_opt_class() lastNotificationDateAccessor];
    [lastNotificationDateAccessor loadValueAsyncIfNeeded];

    lastSeenSuggestionsDateAccessor = [objc_opt_class() lastSeenSuggestionsDateAccessor];
    [lastSeenSuggestionsDateAccessor loadValueAsyncIfNeeded];

    lastBannerDismissDateAccessor = [objc_opt_class() lastBannerDismissDateAccessor];
    [lastBannerDismissDateAccessor loadValueAsyncIfNeeded];
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySharingSuggestionsCountsManager.m" lineNumber:61 description:{@"%s is not available as initializer", "-[PXSharedLibrarySharingSuggestionsCountsManager init]"}];

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