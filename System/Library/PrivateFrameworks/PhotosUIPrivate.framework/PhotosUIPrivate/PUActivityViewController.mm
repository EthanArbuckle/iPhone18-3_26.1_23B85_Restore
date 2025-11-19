@interface PUActivityViewController
+ (BOOL)_shouldReverseOrderOfSharedItemsInDataSource:(id)a3;
+ (BOOL)cmmAssetCountThresholdIsMetForAssetItems:(id)a3;
+ (BOOL)cmmFileSizeThresholdIsMetForAssetItems:(id)a3;
+ (BOOL)cmmMediaTypeSpecificFileSizeThresholdIsMetForAssetItems:(id)a3;
+ (BOOL)cmmThresholdIsMetForAssetItems:(id)a3;
+ (BOOL)isShareActivity:(id)a3;
+ (BOOL)needsConfidentialityCheckForActivityType:(id)a3;
+ (PUActivityViewController)new;
+ (id)actionSheetPhotosApplicationActivities;
+ (id)defaultActivityTypeOrder;
+ (id)excludedPhotosActivityTypesForPresentationSource:(unint64_t)a3;
+ (id)externalApplicationExcludedPhotosActivityTypes;
+ (id)photosApplicationActivities:(BOOL)a3;
- (BOOL)_activityRequiresUserLibraryAssets:(id)a3;
- (BOOL)_calculateAutomaticCMMSendingBehavior;
- (BOOL)_canCreateCMMWithCurrentItemsForActivity:(id)a3;
- (BOOL)_canShowSendAsAssetBundlesSwitchInObjectManipulationHeader;
- (BOOL)_customizationAvailableForActivityViewController:(id)a3;
- (BOOL)_shouldAutomaticallySendAsCMMForActivity:(id)a3;
- (BOOL)_shouldPresentAirplayAlertForActivity:(id)a3;
- (BOOL)_shouldShowSystemActivityType:(id)a3;
- (BOOL)_shouldSuggestSharingAsCMMForActivity:(id)a3;
- (BOOL)prepareForDismissingForced:(BOOL)a3;
- (NSOrderedSet)orderedSelectedAssets;
- (NSString)headerTitle;
- (PHPerson)person;
- (PUActivityViewController)init;
- (PUActivityViewController)initWithAssetItems:(id)a3 photosApplicationActivities:(id)a4 linkPresentation:(id)a5 assetIdentifiers:(id)a6 sharingViewModel:(id)a7;
- (PUActivityViewControllerDelegate)delegate;
- (PXAssetMediaTypeCount)assetTypeCount;
- (PXDisplayAsset)keyAsset;
- (id)_customizationGroupsForActivityViewController:(id)a3;
- (id)_generateAnalyticsPayloadForSharingEventsToActivityType:(id)a3;
- (id)_titleForActivity:(id)a3;
- (id)createSharedCollectionCollaborationItemIfPossibleWithViewModel:(id)a3;
- (int64_t)sourceOrigin;
- (void)_activity:(id)a3 category:(int64_t)a4 didComplete:(BOOL)a5;
- (void)_adjustPreparationOptionsIfNeededForActivity:(id)a3 withCompletionHandler:(id)a4;
- (void)_cancel;
- (void)_cleanUpActivityState;
- (void)_handlePostReadyToInteractUpdatesIfNeeded;
- (void)_handleShareSheetReadyToInteractCompletion;
- (void)_handleUserCancelWithCompletion:(id)a3;
- (void)_performActivity:(id)a3;
- (void)_prepareActivity:(id)a3;
- (void)_prepareAssetsForActivity:(id)a3 forcePreparationAsMomentShareLink:(BOOL)a4;
- (void)_presentAirPlayAlertIfNeededForActivity:(id)a3 withCompletionHandler:(id)a4;
- (void)_presentCMMSuggestionAlertForActivity:(id)a3 withCompletionHandler:(id)a4;
- (void)_presentConfidentialityWarningIfNeededForActivity:(id)a3 withCompletionHandler:(id)a4;
- (void)_presentInterventionIfNecessary:(PXSharingUserSafetyAnalysisResults)a3 withCompletionHandler:(id)a4;
- (void)_presentInterventionIfNeededForActivity:(id)a3 withCompletionHandler:(id)a4;
- (void)_presentSpatialDataLossAlertIfNeededForActivity:(id)a3 withCompletionHandler:(id)a4;
- (void)_presentUnsavedSyndicatedAssetsAlertIfNeededForActivity:(id)a3 forcePreparationAsMomentShareLink:(BOOL)a4 withCompletionHandler:(id)a5;
- (void)_reloadAssetItems;
- (void)_removeRemakerProgressView;
- (void)_sendCPAnalyticsAssetExportPreparationEventWithActivityType:(id)a3 didComplete:(BOOL)a4 error:(id)a5;
- (void)_sendCPAnalyticsShareEventForMultipleSelectionShare;
- (void)_sendCPAnalyticsShareEventWithActivityType:(id)a3 category:(int64_t)a4 didComplete:(BOOL)a5;
- (void)_sharingManagerDidBeginPublishing:(id)a3;
- (void)_showRemakerProgressView:(id)a3 forMail:(BOOL)a4 withCancelationHandler:(id)a5;
- (void)_showSharingWasInterruptedForErrors:(id)a3 withIndividualAssets:(id)a4 itemSourcesByAssetUUID:(id)a5 toActivityType:(id)a6 completion:(id)a7;
- (void)_updateSharingHeaderIfNeeded;
- (void)_updateSourceControllerPreferredPreparationBehavior;
- (void)_updateSourceControllerSharingPreferencesInAllItems;
- (void)_updateSyndicatedAssetItemsWithAssets:(id)a3 activityType:(id)a4 withCompletionHandler:(id)a5;
- (void)_updateTopBorderView;
- (void)activityItemSourceController:(id)a3 didFinishPreparationForActivityType:(id)a4 preparationType:(unint64_t)a5 withItems:(id)a6 didCancel:(BOOL)a7 errors:(id)a8 completion:(id)a9;
- (void)activityItemSourceController:(id)a3 willBeginPreparationWithActivityType:(id)a4 preparationType:(unint64_t)a5;
- (void)addAssetItem:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)createSharedCollectionFromCurrentItemsWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)mailActivity:(id)a3 displayVideoRemakerProgressView:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)ppt_performActivityOfType:(id)a3;
- (void)removeAssetItem:(id)a3;
- (void)removeProgressUIAnimated:(BOOL)a3 withDelay:(BOOL)a4;
- (void)replaceAssetItem:(id)a3 withAssetItem:(id)a4;
- (void)setAssetItems:(id)a3;
- (void)setCompletionWithItemsHandler:(id)a3;
- (void)setExcludeAccessibilityDescription:(BOOL)a3;
- (void)setExcludeCaption:(BOOL)a3;
- (void)setExcludeLiveness:(BOOL)a3;
- (void)setExcludeLocation:(BOOL)a3;
- (void)setExcludedActivityTypes:(id)a3;
- (void)setPhotosCarouselViewController:(id)a3;
- (void)setPreferredExportFormat:(int64_t)a3;
- (void)setReadyForInteraction:(BOOL)a3;
- (void)setSendAsAssetBundles:(BOOL)a3;
- (void)setSendAsUnmodifiedOriginals:(BOOL)a3;
- (void)setShareAsCMM:(BOOL)a3;
- (void)setShouldAutomaticallyUseCMMInMessagesIfThresholdMet:(BOOL)a3;
- (void)showProgressUIAnimated:(BOOL)a3 withDelay:(BOOL)a4 cancellationHandler:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateProgressUITitle;
- (void)updateVisibleShareActionsIfNeeded;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PUActivityViewController

- (PUActivityViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)ppt_performActivityOfType:(id)a3
{
  v4 = a3;
  photosActivities = self->_photosActivities;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PUActivityViewController_ppt_performActivityOfType___block_invoke;
  v7[3] = &unk_1E7B749F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(NSArray *)photosActivities enumerateObjectsUsingBlock:v7];
}

void __54__PUActivityViewController_ppt_performActivityOfType___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 activityType];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    [*(a1 + 40) _performActivity:v8];
    *a4 = 1;
  }
}

- (BOOL)prepareForDismissingForced:(BOOL)a3
{
  v3 = a3;
  v5 = +[PUPhotoSharingManager sharedInstance];
  v6 = [v5 prepareForDismissingForced:v3];

  v7 = [(PUActivityViewController *)self activity];

  v8 = (v7 == 0) & v6 | v3;
  if (v8)
  {
    [(PUActivityViewController *)self setCompletionWithItemsHandler:0];
  }

  return v8;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if ((v6 & 1) != 0 && PUActivityViewControllerSourceControllerObserverContext == a5)
  {
    v10 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v11 = __57__PUActivityViewController_observable_didChange_context___block_invoke;
LABEL_7:
    v10[2] = v11;
    v10[3] = &unk_1E7B80DD0;
    v10[4] = self;
    px_dispatch_on_main_queue();
    goto LABEL_8;
  }

  if (PrivacyControllerObservationContext != a5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PUActivityViewController.m" lineNumber:2555 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v10 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v11 = __57__PUActivityViewController_observable_didChange_context___block_invoke_2;
    goto LABEL_7;
  }

LABEL_8:
}

void __57__PUActivityViewController_observable_didChange_context___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) privacyControllerForContainerCollection];
  v3 = [v2 isLocked];

  if (v3)
  {
    v4 = PLShareSheetGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Dismissing share sheet, as the privacy controller associated with share sheet was locked.", v5, 2u);
    }

    [*(a1 + 32) _cancel];
    [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  }
}

- (BOOL)_shouldAutomaticallySendAsCMMForActivity:(id)a3
{
  v4 = a3;
  if ([(PUActivityViewController *)self shouldAutomaticallyUseCMMInMessagesIfThresholdMet]&& ![(PUActivityViewController *)self shareAsCMM]&& [(PUActivityViewController *)self _canCreateCMMWithCurrentItemsForActivity:v4])
  {
    v5 = [v4 activityType];
    if ([v5 isEqualToString:*MEMORY[0x1E69CDAB0]] && (-[PUActivityViewController sharedCollectionCollaborationItem](self, "sharedCollectionCollaborationItem"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
    {
      v9 = [(PUActivityItemSourceController *)self->_itemSourceController assetItems];
      v7 = [objc_opt_class() cmmThresholdIsMetForAssetItems:v9];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldSuggestSharingAsCMMForActivity:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69C33D8] sharedInstance];
  v6 = [v5 cmmShareSheetBehavior];

  if (v6 == 3 && ![(PUActivityViewController *)self shareAsCMM]&& [(PUActivityViewController *)self _canCreateCMMWithCurrentItemsForActivity:v4])
  {
    v7 = [v4 activityType];
    if (([v7 isEqualToString:*MEMORY[0x1E69CDAB0]] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E69CDAA0]))
    {
      v8 = [(PUActivityItemSourceController *)self->_itemSourceController assetItems];
      v9 = [objc_opt_class() cmmThresholdIsMetForAssetItems:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_canCreateCMMWithCurrentItemsForActivity:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUActivityItemSourceController *)self->_itemSourceController itemSourcesSupportMomentShareLinkCreation];
  v6 = [(PUActivityViewController *)self photoLibrary];
  v7 = PXCMMHasSendAndReceiveCapabilities();

  v8 = PLCPLIsExceedingPrimarySyncQuota();
  if (!v5 || v7 == 0 || v8 != 0)
  {
    v11 = v8;
    v12 = PLShareSheetGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        v13 = @"NO";
      }

      else
      {
        v13 = @"YES";
      }

      v26 = v4;
      v14 = v13;
      if (v7)
      {
        v15 = @"NO";
      }

      else
      {
        v15 = @"YES";
      }

      v16 = v15;
      v25 = v14;
      if (v11)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v18 = v17;
      v19 = v16;
      *buf = 138543874;
      v28 = v14;
      v4 = v26;
      v29 = 2114;
      v30 = v16;
      v31 = 2114;
      v32 = v18;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "CMM creation is not possible because of one or more reasons: \nNot Possible With Current Items: %{public}@\nCMM Unavailable: %{public}@\nCPL Quota Exceeded: %{public}@", buf, 0x20u);
    }

    v20 = [v4 activityType];
    v21 = [v20 isEqualToString:*MEMORY[0x1E69CDAB0]];

    if ((v11 & v21 & [(PUActivityItemSourceController *)self->_itemSourceController shouldUseMomentShareLinkInMessagesIfThresholdMet]& v7 & v5) != 1)
    {
      v23 = 0;
      goto LABEL_25;
    }

    v22 = PLShareSheetGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_DEFAULT, "User has exceeded their iCloud quota for CMM, but allowing the CMM creation to continue, to show an actionable error message", buf, 2u);
    }
  }

  v23 = 1;
LABEL_25:

  return v23;
}

- (void)createSharedCollectionFromCurrentItemsWithCompletionHandler:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUActivityViewController *)self createdSharedCollection];

  if (v5)
  {
    v6 = MEMORY[0x1E69C39F8];
    v7 = [(PUActivityViewController *)self createdSharedCollection];
    v21[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [v6 deleteAlbums:v8 completionHandler:&__block_literal_global_664];

    [(PUActivityViewController *)self setCreatedSharedCollection:0];
  }

  v9 = [(PUActivityItemSourceController *)self->_itemSourceController assets];
  v10 = [v9 array];

  v11 = [(PUActivitySharingViewModel *)self->_sharingViewModel photosDataSource];
  v12 = [v11 containerAssetCollection];

  v13 = [(PUActivityViewController *)self photoLibrary];
  v14 = [MEMORY[0x1E69C39F8] sharedAlbumTitleForAssets:v10 inAssetCollection:v12];
  objc_initWeak(&location, self);
  v15 = MEMORY[0x1E69C39F8];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__PUActivityViewController_createSharedCollectionFromCurrentItemsWithCompletionHandler___block_invoke_2;
  v17[3] = &unk_1E7B749C8;
  objc_copyWeak(&v19, &location);
  v16 = v4;
  v18 = v16;
  [v15 createAlbumWithName:v14 assets:v10 photoLibrary:v13 completionHandler:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __88__PUActivityViewController_createSharedCollectionFromCurrentItemsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCreatedSharedCollection:v7];

  (*(*(a1 + 32) + 16))();
}

- (id)createSharedCollectionCollaborationItemIfPossibleWithViewModel:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_os_feature_enabled_impl() && PFIsiOSPhotosApp())
  {
    v5 = [MEMORY[0x1E69C39F0] sharedInstance];
    v6 = [v5 showCollaborationUIForExistingShares];

    v7 = [MEMORY[0x1E69C39F0] sharedInstance];
    v8 = [v7 showCollaborationUIToCreateNewShares];

    v9 = [v4 photosDataSource];
    v10 = [v9 containerAssetCollection];

    if (v6 && [v10 px_isCloudKitSharedAlbum])
    {
      v25 = 0;
      v11 = [MEMORY[0x1E69C39F8] ckShareFromAssetCollection:v10 error:&v25];
      v12 = v25;
      v13 = PLShareSheetGetLog();
      v14 = v13;
      if (v11)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v10 localIdentifier];
          *buf = 138543362;
          v27 = v15;
          _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "SharedWithYou: Container collection (%{public}@) is a shared collection with a CKShare. Creating a SWY collaboration item.", buf, 0xCu);
        }

        v16 = [MEMORY[0x1E69C39F8] makeItemProviderFromCKShare:v11];
      }

      else
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v27 = v10;
          v28 = 2112;
          v29 = v12;
          _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_ERROR, "SharedWithYou: Could not get a CKShare out of an existing shared collection: %@. Error; %@", buf, 0x16u);
        }

        v16 = 0;
      }
    }

    else if (v8)
    {
      v16 = objc_alloc_init(MEMORY[0x1E696ACA0]);
      objc_initWeak(buf, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __91__PUActivityViewController_createSharedCollectionCollaborationItemIfPossibleWithViewModel___block_invoke;
      aBlock[3] = &unk_1E7B749A0;
      objc_copyWeak(&v24, buf);
      v17 = _Block_copy(aBlock);
      v18 = PLShareSheetGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEFAULT, "SharedWithYou: Creating a SWY collaboration item for dynamic creation of a shared collection", v22, 2u);
      }

      v19 = [MEMORY[0x1E69C39F8] createCKContainerForSharing];
      v20 = [MEMORY[0x1E69C39F8] allowedSharingOptionsForSharing];
      [v16 registerCKShareWithContainer:v19 allowedSharingOptions:v20 preparationHandler:v17];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __91__PUActivityViewController_createSharedCollectionCollaborationItemIfPossibleWithViewModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLShareSheetGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "SharedWithYou: Preparation handler invoked for the dynamic creation of a shared collection", buf, 2u);
  }

  v5 = dispatch_get_global_queue(2, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__PUActivityViewController_createSharedCollectionCollaborationItemIfPossibleWithViewModel___block_invoke_660;
  v7[3] = &unk_1E7B7B3B0;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
}

void __91__PUActivityViewController_createSharedCollectionCollaborationItemIfPossibleWithViewModel___block_invoke_660(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __91__PUActivityViewController_createSharedCollectionCollaborationItemIfPossibleWithViewModel___block_invoke_2;
    v5[3] = &unk_1E7B74978;
    v6 = *(a1 + 32);
    [v3 createSharedCollectionFromCurrentItemsWithCompletionHandler:v5];
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

void __91__PUActivityViewController_createSharedCollectionCollaborationItemIfPossibleWithViewModel___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLShareSheetGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v11 = v5 != 0;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "SharedWithYou: Dynamic creation of a shared collection succeeded: %{BOOL}D, with error: %@", buf, 0x12u);
  }

  if (v5)
  {
    v9 = 0;
    v8 = [MEMORY[0x1E69C39F8] ckShareFromAssetCollection:v5 error:&v9];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 layoutAttributesForItemAtIndexPath:v7];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(PUActivityViewController *)self view];
  [v6 convertRect:v17 toView:{v10, v12, v14, v16}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  self->_lastSelectedActivityFrame.origin.x = v19;
  self->_lastSelectedActivityFrame.origin.y = v21;
  self->_lastSelectedActivityFrame.size.width = v23;
  self->_lastSelectedActivityFrame.size.height = v25;
  if ([MEMORY[0x1E69CD9F8] instancesRespondToSelector:sel_collectionView_didSelectItemAtIndexPath_])
  {
    v26.receiver = self;
    v26.super_class = PUActivityViewController;
    [(PUActivityViewController *)&v26 collectionView:v6 didSelectItemAtIndexPath:v7];
  }
}

- (void)_cancel
{
  [(PUActivityItemSourceController *)self->_itemSourceController cancel];
  v3.receiver = self;
  v3.super_class = PUActivityViewController;
  [(PUActivityViewController *)&v3 _cancel];
}

- (void)_prepareActivity:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PUActivityViewController;
  [(PUActivityViewController *)&v18 _prepareActivity:v4];
  v5 = [v4 activityType];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69CDAF0]];

  if (v6)
  {
    v7 = [v4 printInteractionController];
    v8 = PXDefaultPrintInfo();
    [v7 setPrintInfo:v8];
  }

  else
  {
    v9 = [v4 activityType];
    v10 = [v9 isEqualToString:*MEMORY[0x1E69CDAB0]];

    if (!v10)
    {
      goto LABEL_6;
    }

    v7 = [v4 activityViewController];
    [v7 setModalPresentationStyle:17];
  }

LABEL_6:
  if (MEMORY[0x1B8C6E6A0]())
  {
    v11 = [(PUActivityItemSourceController *)self->_itemSourceController assets];
    if ([v11 count])
    {
      v12 = [v11 valueForKey:@"uuid"];
      v13 = MEMORY[0x1E6978630];
      v14 = [v12 array];
      v15 = [(PUActivityViewController *)self photoLibrary];
      v16 = [v13 countOfAssetsWithLocationFromUUIDs:v14 photoLibrary:v15];

      if (v16 >= 1)
      {
        v17 = [v4 activityType];
        plslogGreenTea();
      }
    }
  }
}

- (void)_presentCMMSuggestionAlertForActivity:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31 = v6;
  if ([v6 conformsToProtocol:&unk_1F2C39610])
  {
    v8 = [objc_opt_class() canPerformActivityAsIndividualItemsInSourceController:self->_itemSourceController];
  }

  else
  {
    v8 = 1;
  }

  v9 = [(PUActivityItemSourceController *)self->_itemSourceController assets];
  v10 = [v9 array];

  PXMediaTypeForAssets();
  [v10 count];
  v11 = PXLocalizationKeyForMediaType();
  v12 = MEMORY[0x1E69DC650];
  v29 = v11;
  v13 = PULocalizedString(v11);
  v14 = [v12 alertControllerWithTitle:0 message:v13 preferredStyle:0];

  v15 = MEMORY[0x1E69DC648];
  v16 = PULocalizedString(@"SHARING_CMM_SUGGESTION_ACTION_SEND_AS_CMM");
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __88__PUActivityViewController__presentCMMSuggestionAlertForActivity_withCompletionHandler___block_invoke;
  v36[3] = &unk_1E7B80980;
  v17 = v7;
  v37 = v17;
  v18 = [v15 actionWithTitle:v16 style:0 handler:v36];
  [v14 addAction:v18];

  if (v8)
  {
    [v10 count];
    v19 = PXLocalizationKeyForMediaType();
    v20 = MEMORY[0x1E69DC648];
    v21 = PULocalizedString(v19);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __88__PUActivityViewController__presentCMMSuggestionAlertForActivity_withCompletionHandler___block_invoke_2;
    v34[3] = &unk_1E7B80980;
    v35 = v17;
    v22 = [v20 actionWithTitle:v21 style:0 handler:v34];
    [v14 addAction:v22];
  }

  v23 = MEMORY[0x1E69DC648];
  v24 = PULocalizedString(@"CANCEL");
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __88__PUActivityViewController__presentCMMSuggestionAlertForActivity_withCompletionHandler___block_invoke_3;
  v32[3] = &unk_1E7B80980;
  v33 = v17;
  v25 = v17;
  v26 = [v23 actionWithTitle:v24 style:1 handler:v32];
  [v14 addAction:v26];

  if (!CGRectIsNull(self->_lastSelectedActivityFrame))
  {
    v27 = [v14 popoverPresentationController];
    [v27 setSourceRect:{self->_lastSelectedActivityFrame.origin.x, self->_lastSelectedActivityFrame.origin.y, self->_lastSelectedActivityFrame.size.width, self->_lastSelectedActivityFrame.size.height}];
    v28 = [(PUActivityViewController *)self view];
    [v27 setSourceView:v28];

    [v27 setPermittedArrowDirections:3];
  }

  [(PUActivityViewController *)self px_presentOverTopmostPresentedViewController:v14 animated:1 completion:0, v29];
}

- (void)_presentInterventionIfNecessary:(PXSharingUserSafetyAnalysisResults)a3 withCompletionHandler:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a4;
  v11 = v7;
  if (var0)
  {
    v8 = [objc_alloc(MEMORY[0x1E69C39B8]) initWithCompactSCSensitivityAnalysis:var0 analysisMediaType:var1 interventionType:4];
    interventionManager = self->_interventionManager;
    self->_interventionManager = v8;

    v10 = self->_interventionManager;
    if (v10 && [(PXSensitivityInterventionManager *)v10 canPresentIntervention])
    {
      [(PXSensitivityInterventionManager *)self->_interventionManager presentFromViewController:self completionHandler:v11];
      goto LABEL_7;
    }

    v7 = v11;
  }

  (*(v7 + 2))(v7, 1);
LABEL_7:
}

- (void)_presentInterventionIfNeededForActivity:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 activityType];
  v9 = [v8 isEqualToString:*MEMORY[0x1E69C3CF8]];

  interventionManager = self->_interventionManager;
  self->_interventionManager = 0;

  v11 = [(PUActivityViewController *)self assets];
  v12 = v11;
  if (v9 && [v11 count])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v13 = getSCSensitivityAnalysisClass_softClass;
    v22 = getSCSensitivityAnalysisClass_softClass;
    if (!getSCSensitivityAnalysisClass_softClass)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __getSCSensitivityAnalysisClass_block_invoke;
      v18[3] = &unk_1E7B800F0;
      v18[4] = &v19;
      __getSCSensitivityAnalysisClass_block_invoke(v18);
      v13 = v20[3];
    }

    v14 = v13;
    _Block_object_dispose(&v19, 8);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __90__PUActivityViewController__presentInterventionIfNeededForActivity_withCompletionHandler___block_invoke;
    v15[3] = &unk_1E7B74950;
    v15[4] = self;
    v16 = v12;
    v17 = v7;
    [v13 prefetchSensitiveContentPolicy:v15];
  }

  else
  {
    (*(v7 + 2))(v7, 1);
  }
}

void __90__PUActivityViewController__presentInterventionIfNeededForActivity_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_ERROR, "Error prefetching sensitive content analysis policy: %@", buf, 0xCu);
    }
  }

  objc_initWeak(buf, *(a1 + 32));
  v5 = MEMORY[0x1E69C3A20];
  v6 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__PUActivityViewController__presentInterventionIfNeededForActivity_withCompletionHandler___block_invoke_530;
  v7[3] = &unk_1E7B74928;
  objc_copyWeak(&v9, buf);
  v8 = *(a1 + 48);
  [v5 userSafetyInterventionCheckRequiredBeforeSharingAssets:v6 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __90__PUActivityViewController__presentInterventionIfNeededForActivity_withCompletionHandler___block_invoke_530(uint64_t a1, void *a2, void *a3)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __90__PUActivityViewController__presentInterventionIfNeededForActivity_withCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E7B74900;
  objc_copyWeak(v8, (a1 + 40));
  v8[1] = a2;
  v8[2] = a3;
  v7 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(v8);
}

void __90__PUActivityViewController__presentInterventionIfNeededForActivity_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _presentInterventionIfNecessary:*(a1 + 48) withCompletionHandler:{*(a1 + 56), *(a1 + 32)}];
}

- (void)_presentSpatialDataLossAlertIfNeededForActivity:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 activityType];
  v8 = [v7 isEqualToString:*MEMORY[0x1E69C3CF8]];

  if (v8)
  {
    v9 = [(PUActivityViewController *)self assets];
    v10 = [v9 array];

    v11 = [MEMORY[0x1E69C4608] defaultPresenterWithViewController:self];
    v12 = v6;
    PXSharedAlbumsPresentSpatialMediaDataLossAlertIfNeededForAssets();
  }

  else
  {
    v6[2](v6);
  }
}

- (void)_presentUnsavedSyndicatedAssetsAlertIfNeededForActivity:(id)a3 forcePreparationAsMomentShareLink:(BOOL)a4 withCompletionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([(PUActivityViewController *)self _activityRequiresUserLibraryAssets:v7])
  {
    v9 = [(PUActivityViewController *)self assets];
    v10 = [v9 array];

    v11 = [MEMORY[0x1E69C4608] defaultPresenterWithViewController:self];
    objc_initWeak(&location, self);
    v13 = v8;
    objc_copyWeak(&v14, &location);
    v12 = v7;
    PXPromptToSaveUnsavedSyndicatedAssetsIfNecessary();

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v8 + 2))(v8, 1);
  }
}

void __140__PUActivityViewController__presentUnsavedSyndicatedAssetsAlertIfNeededForActivity_forcePreparationAsMomentShareLink_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (![v7 count])
  {
    v13 = PLShareSheetGetLog();
    v14 = v13;
    if (v8)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = *(a1 + 40);
        v25 = 138412802;
        v26 = v15;
        v27 = 2048;
        v28 = v16;
        v29 = 2112;
        v30 = v8;
        v17 = "<%@:%p>: No assets to process: %@";
        v18 = v14;
        v19 = OS_LOG_TYPE_ERROR;
        v20 = 32;
LABEL_10:
        _os_log_impl(&dword_1B36F3000, v18, v19, v17, &v25, v20);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = *(a1 + 40);
      v25 = 138412546;
      v26 = v21;
      v27 = 2048;
      v28 = v22;
      v17 = "<%@:%p>: No assets to process";
      v18 = v14;
      v19 = OS_LOG_TYPE_DEFAULT;
      v20 = 22;
      goto LABEL_10;
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v23, v24);
    goto LABEL_12;
  }

  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v12 = [*(a1 + 32) activityType];
    [WeakRetained _updateSyndicatedAssetItemsWithAssets:v7 activityType:v12 withCompletionHandler:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))(*(a1 + 48), 1, v9, v10);
  }

LABEL_12:
}

- (BOOL)_activityRequiresUserLibraryAssets:(id)a3
{
  v3 = a3;
  v4 = [v3 activityType];
  v5 = [v4 isEqualToString:*MEMORY[0x1E69C3CC8]];

  v6 = [v3 activityType];
  LOBYTE(v4) = [v6 isEqualToString:*MEMORY[0x1E69C3CE0]];

  v7 = [v3 activityType];
  v8 = [v7 isEqualToString:*MEMORY[0x1E69C3CE8]];

  v9 = [v3 activityType];
  v10 = [v9 isEqualToString:*MEMORY[0x1E69C3D30]];

  v11 = [v3 activityType];

  LOBYTE(v3) = [v11 isEqualToString:@"com.apple.NanoTimeKit.CreateWatchFace"];
  return (v5 | v4 | v8 | v10 | v3) & 1;
}

- (void)_updateSyndicatedAssetItemsWithAssets:(id)a3 activityType:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 count];
  v10 = PLShareSheetGetLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "[Share Sheet]: Updated new asset items to process", buf, 2u);
    }

    v12 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v7];
    v13 = [PUActivityAssetItem itemsForAssets:v12];
    [(PUActivityViewController *)self setAssetItems:v13];

    [(PUActivityViewController *)self setUsingCustomAssetItems:1];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "[Share Sheet]: No new asset items to process", v14, 2u);
    }
  }

  v8[2](v8, v9 != 0);
}

- (void)_adjustPreparationOptionsIfNeededForActivity:(id)a3 withCompletionHandler:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(PUActivityViewController *)self _shouldAutomaticallySendAsCMMForActivity:v7])
  {
    v6[2](v6, 1, 1);
  }

  else if ([(PUActivityViewController *)self _shouldSuggestSharingAsCMMForActivity:v7])
  {
    [(PUActivityViewController *)self _presentCMMSuggestionAlertForActivity:v7 withCompletionHandler:v6];
  }

  else
  {
    v6[2](v6, 1, 0);
  }
}

- (void)_presentAirPlayAlertIfNeededForActivity:(id)a3 withCompletionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (![(PUActivityViewController *)self _shouldPresentAirplayAlertForActivity:v7])
  {
    v8[2](v8, 1);
    goto LABEL_6;
  }

  v9 = MEMORY[0x1E69DC650];
  v10 = PULocalizedString(@"SHARING_AIRPLAY_ERROR_TITLE");
  v11 = v7;
  if (!v11)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [v17 handleFailureInMethod:a2 object:self file:@"PUActivityViewController.m" lineNumber:2007 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activity", v19}];
LABEL_9:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v19 = NSStringFromClass(v20);
    v21 = [v11 px_descriptionForAssertionMessage];
    [v17 handleFailureInMethod:a2 object:self file:@"PUActivityViewController.m" lineNumber:2007 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activity", v19, v21}];

    goto LABEL_9;
  }

LABEL_4:
  v12 = [v11 localizedRouteUnavailabilityMessage];
  v13 = [v9 alertControllerWithTitle:v10 message:v12 preferredStyle:1];

  v14 = MEMORY[0x1E69DC648];
  v15 = PULocalizedString(@"OK");
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __90__PUActivityViewController__presentAirPlayAlertIfNeededForActivity_withCompletionHandler___block_invoke;
  v22[3] = &unk_1E7B80980;
  v23 = v8;
  v16 = [v14 actionWithTitle:v15 style:1 handler:v22];
  [v13 addAction:v16];

  [(PUActivityViewController *)self px_presentOverTopmostPresentedViewController:v13 animated:1 completion:0];
LABEL_6:
}

- (void)_performActivity:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__PUActivityViewController__performActivity___block_invoke;
  v6[3] = &unk_1E7B80088;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PUActivityViewController *)self _presentConfidentialityWarningIfNeededForActivity:v5 withCompletionHandler:v6];
}

void __45__PUActivityViewController__performActivity___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__PUActivityViewController__performActivity___block_invoke_2;
    v5[3] = &unk_1E7B80088;
    v5[4] = v2;
    v6 = v3;
    [v2 _presentAirPlayAlertIfNeededForActivity:v6 withCompletionHandler:v5];
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 _handleUserCancelWithCompletion:0];
  }
}

void __45__PUActivityViewController__performActivity___block_invoke_2(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__PUActivityViewController__performActivity___block_invoke_3;
    v5[3] = &unk_1E7B748A8;
    v5[4] = v2;
    v6 = v3;
    [v2 _adjustPreparationOptionsIfNeededForActivity:v6 withCompletionHandler:v5];
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 _handleUserCancelWithCompletion:0];
  }
}

void __45__PUActivityViewController__performActivity___block_invoke_3(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__PUActivityViewController__performActivity___block_invoke_4;
    v8[3] = &unk_1E7B7DF48;
    v8[4] = v6;
    v9 = v5;
    v10 = a3;
    [v6 _presentUnsavedSyndicatedAssetsAlertIfNeededForActivity:v9 forcePreparationAsMomentShareLink:a3 withCompletionHandler:v8];
  }

  else
  {
    v7 = *(a1 + 32);

    [v7 _handleUserCancelWithCompletion:0];
  }
}

void __45__PUActivityViewController__performActivity___block_invoke_4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__PUActivityViewController__performActivity___block_invoke_5;
    v6[3] = &unk_1E7B7DF48;
    v6[4] = v2;
    v7 = v4;
    v8 = *(a1 + 48);
    [v2 _presentInterventionIfNeededForActivity:v7 withCompletionHandler:v6];
  }

  else
  {
    v5 = *(a1 + 32);

    [v5 _handleUserCancelWithCompletion:0];
  }
}

void __45__PUActivityViewController__performActivity___block_invoke_5(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__PUActivityViewController__performActivity___block_invoke_6;
    v5[3] = &unk_1E7B805E8;
    v5[4] = v4;
    v6 = v3;
    v7 = *(a1 + 48);
    [v4 _presentSpatialDataLossAlertIfNeededForActivity:v6 withCompletionHandler:v5];
  }
}

__n128 __45__PUActivityViewController__performActivity___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) _prepareAssetsForActivity:*(a1 + 40) forcePreparationAsMomentShareLink:*(a1 + 48)];
  v2 = *(a1 + 40);
  v6.receiver = *(a1 + 32);
  v6.super_class = PUActivityViewController;
  objc_msgSendSuper2(&v6, sel__performActivity_, v2);
  v3 = (*(a1 + 32) + 1456);
  result = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 16);
  *v3 = *MEMORY[0x1E695F050];
  v3[1] = v5;
  return result;
}

- (BOOL)_shouldPresentAirplayAlertForActivity:(id)a3
{
  v5 = a3;
  v6 = [v5 activityType];
  v7 = [v6 isEqualToString:*MEMORY[0x1E69C3CF0]];

  if (!v7)
  {
    LOBYTE(v9) = 0;
    goto LABEL_6;
  }

  v8 = v5;
  if (!v8)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:self file:@"PUActivityViewController.m" lineNumber:1950 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activity", v13}];
LABEL_9:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v8 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:self file:@"PUActivityViewController.m" lineNumber:1950 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activity", v13, v15}];

    goto LABEL_9;
  }

LABEL_4:
  v9 = [v8 isRouteAvailable] ^ 1;

LABEL_6:
  return v9;
}

- (id)_titleForActivity:(id)a3
{
  if (*MEMORY[0x1E69CDB10] == a3)
  {
    v3 = PULocalizedString(@"SHARING_PHOTOS_ACTION_SHEET");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PUActivityViewController;
    v3 = [(PUActivityViewController *)&v5 _titleForActivity:?];
  }

  return v3;
}

- (BOOL)_shouldShowSystemActivityType:(id)a3
{
  v3 = _shouldShowSystemActivityType__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&_shouldShowSystemActivityType__onceToken, &__block_literal_global_499);
  }

  v5 = [_shouldShowSystemActivityType__excludedActivityTypes containsObject:v4];

  return v5 ^ 1;
}

void __58__PUActivityViewController__shouldShowSystemActivityType___block_invoke()
{
  v5[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69CDAB0];
  v5[0] = *MEMORY[0x1E69CDAA0];
  v5[1] = v0;
  v1 = *MEMORY[0x1E69CDAF8];
  v5[2] = *MEMORY[0x1E69CDA90];
  v5[3] = v1;
  v2 = *MEMORY[0x1E69CDA70];
  v5[4] = *MEMORY[0x1E69CDA80];
  v5[5] = v2;
  v5[6] = *MEMORY[0x1E69CDB18];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v4 = _shouldShowSystemActivityType__excludedActivityTypes;
  _shouldShowSystemActivityType__excludedActivityTypes = v3;
}

- (void)setCompletionWithItemsHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PUActivityViewController_setCompletionWithItemsHandler___block_invoke;
  v7[3] = &unk_1E7B74880;
  objc_copyWeak(&v9, &location);
  v5 = v4;
  v8 = v5;
  v6.receiver = self;
  v6.super_class = PUActivityViewController;
  [(PUActivityViewController *)&v6 setCompletionWithItemsHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__PUActivityViewController_setCompletionWithItemsHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v16 = a2;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = [WeakRetained activity];

  v13 = [objc_opt_class() activityCategory];
  v14 = objc_loadWeakRetained((a1 + 40));
  [v14 _activity:v16 category:v13 didComplete:a3];

  v15 = *(a1 + 32);
  if (v15)
  {
    (*(v15 + 16))(v15, v16, a3, v9, v10);
  }
}

- (void)activityItemSourceController:(id)a3 didFinishPreparationForActivityType:(id)a4 preparationType:(unint64_t)a5 withItems:(id)a6 didCancel:(BOOL)a7 errors:(id)a8 completion:(id)a9
{
  v13 = a3;
  v14 = a4;
  v15 = a8;
  v16 = a9;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __147__PUActivityViewController_activityItemSourceController_didFinishPreparationForActivityType_preparationType_withItems_didCancel_errors_completion___block_invoke;
  v21[3] = &unk_1E7B7B4A0;
  v27 = a7;
  v22 = v15;
  v23 = self;
  v25 = v13;
  v26 = v16;
  v24 = v14;
  v17 = v13;
  v18 = v16;
  v19 = v14;
  v20 = v15;
  dispatch_async(MEMORY[0x1E69E96A0], v21);
}

void __147__PUActivityViewController_activityItemSourceController_didFinishPreparationForActivityType_preparationType_withItems_didCancel_errors_completion___block_invoke(uint64_t a1)
{
  v2 = (*(a1 + 72) & 1) == 0 && [*(a1 + 32) count] == 0;
  [*(a1 + 40) removeProgressUIAnimated:1 withDelay:v2];
  if (*(a1 + 72) == 1)
  {
    *(*(a1 + 40) + 1442) = 0;
    [*(a1 + 40) _sendCPAnalyticsAssetExportPreparationEventWithActivityType:*(a1 + 48) didComplete:0 error:0];
    v3 = *(a1 + 40);
    v4 = *(a1 + 64);

    [v3 _handleUserCancelWithCompletion:v4];
  }

  else if ([*(a1 + 32) count])
  {
    v5 = [*(a1 + 56) assetItems];
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __147__PUActivityViewController_activityItemSourceController_didFinishPreparationForActivityType_preparationType_withItems_didCancel_errors_completion___block_invoke_2;
    v19[3] = &unk_1E7B74858;
    v20 = v6;
    v21 = *(a1 + 56);
    v22 = v7;
    v8 = v7;
    v9 = v6;
    [v5 enumerateObjectsUsingBlock:v19];
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = [*(a1 + 32) firstObject];
    [v11 _sendCPAnalyticsAssetExportPreparationEventWithActivityType:v10 didComplete:0 error:v12];

    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = *(a1 + 48);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __147__PUActivityViewController_activityItemSourceController_didFinishPreparationForActivityType_preparationType_withItems_didCancel_errors_completion___block_invoke_3;
    v17[3] = &unk_1E7B80B48;
    v17[4] = v13;
    v18 = *(a1 + 64);
    [v13 _showSharingWasInterruptedForErrors:v14 withIndividualAssets:v9 itemSourcesByAssetUUID:v8 toActivityType:v15 completion:v17];
  }

  else
  {
    *(*(a1 + 40) + 1442) = 0;
    *(*(a1 + 40) + 1443) = 1;
    [*(a1 + 40) _sendCPAnalyticsAssetExportPreparationEventWithActivityType:*(a1 + 48) didComplete:1 error:0];
    v16 = *(*(a1 + 64) + 16);

    v16();
  }
}

uint64_t __147__PUActivityViewController_activityItemSourceController_didFinishPreparationForActivityType_preparationType_withItems_didCancel_errors_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 asset];
  v4 = v3;
  if (v3)
  {
    v9 = v3;
    [*(a1 + 32) addObject:v3];
    v5 = [*(a1 + 40) activityItemSourceForAsset:v9];
    if (v5)
    {
      v6 = *(a1 + 48);
      v7 = [v9 uuid];
      [v6 setObject:v5 forKeyedSubscript:v7];
    }

    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)activityItemSourceController:(id)a3 willBeginPreparationWithActivityType:(id)a4 preparationType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 != 1)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __110__PUActivityViewController_activityItemSourceController_willBeginPreparationWithActivityType_preparationType___block_invoke;
    v14[3] = &unk_1E7B80DD0;
    v10 = v8;
    v15 = v10;
    [(PUActivityViewController *)self showProgressUIAnimated:1 withDelay:1 cancellationHandler:v14];
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __110__PUActivityViewController_activityItemSourceController_willBeginPreparationWithActivityType_preparationType___block_invoke_2;
    v11[3] = &unk_1E7B804D0;
    objc_copyWeak(&v12, &location);
    [v10 setProgressHandler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __110__PUActivityViewController_activityItemSourceController_willBeginPreparationWithActivityType_preparationType___block_invoke_2(uint64_t a1, double a2)
{
  objc_copyWeak(v3, (a1 + 32));
  v3[1] = *&a2;
  px_dispatch_on_main_queue();
  objc_destroyWeak(v3);
}

void __110__PUActivityViewController_activityItemSourceController_willBeginPreparationWithActivityType_preparationType___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained progressController];
  [v2 setFractionCompleted:*(a1 + 40)];
}

- (id)_customizationGroupsForActivityViewController:(id)a3
{
  v134[1] = *MEMORY[0x1E69E9840];
  v98 = a3;
  v103 = [MEMORY[0x1E695DF70] array];
  v100 = [MEMORY[0x1E69C33D8] sharedInstance];
  v102 = [MEMORY[0x1E69C3A18] sharedInstance];
  v4 = [(PUActivityItemSourceController *)self->_itemSourceController assets];
  v101 = [v4 array];

  v128 = 0;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  itemSourceController = self->_itemSourceController;
  if (itemSourceController)
  {
    [(PUActivityItemSourceController *)itemSourceController requestAssetsMediaTypeCount];
  }

  PXMediaTypeForAssets();
  v99 = [(PUActivityViewController *)self _canShowSendAsAssetBundlesSwitchInObjectManipulationHeader];
  objc_initWeak(&location, self);
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = *(&v125 + 1);
  v8 = [v102 showGlobalLivenessExclusionSwitch];
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == 1)
  {
    if (v7 == 1)
    {
      v10 = @"SHARING_OPTIONS_LIVE_PHOTO_TITLE";
    }

    else
    {
      v10 = @"SHARING_OPTIONS_LIVE_PHOTO_TITLE_MULTIPLE";
    }

    v11 = PULocalizedString(v10);
    v12 = MEMORY[0x1E69CDA48];
    v13 = [(PUActivityViewController *)self excludeLiveness];
    v121[0] = MEMORY[0x1E69E9820];
    v121[1] = 3221225472;
    v121[2] = __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke;
    v121[3] = &unk_1E7B747E0;
    objc_copyWeak(&v122, &location);
    v14 = [v12 switchCustomizationWithTitle:v11 identifier:@"SHARING_OPTIONS_LIVE_PHOTO" footerText:0 value:!v13 valueChangedHandler:v121];
    [v6 addObject:v14];

    objc_destroyWeak(&v122);
  }

  v15 = *(&v126 + 1);
  v16 = [v102 showGlobalLocationExclusionSwitch];
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == 1)
  {
    v18 = [(PUActivityViewController *)self sendAsAssetBundles];
    v19 = MEMORY[0x1E69CDA48];
    v20 = PULocalizedString(@"SHARING_OPTIONS_LOCATION_TITLE");
    if (v18)
    {
      v21 = 1;
    }

    else
    {
      v21 = [(PUActivityViewController *)self excludeLocation]^ 1;
    }

    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke_2;
    v119[3] = &unk_1E7B747E0;
    objc_copyWeak(&v120, &location);
    v22 = [v19 switchCustomizationWithTitle:v20 identifier:@"SHARING_OPTIONS_LOCATION_TITLE" footerText:0 value:v21 valueChangedHandler:v119];

    [v22 setEnabled:!v18];
    if (v18)
    {
      [(PUActivityViewController *)self setExcludeLocation:0];
    }

    [v6 addObject:v22];

    objc_destroyWeak(&v120);
  }

  if (*(&v127 + 1))
  {
    if ([(PUActivityViewController *)self shareAsCMM])
    {
      v23 = 0;
    }

    else
    {
      v23 = [(PUActivityViewController *)self sendAsAssetBundles]^ 1;
    }

    v24 = MEMORY[0x1E69CDA48];
    v25 = PULocalizedString(@"SHARING_OPTIONS_CAPTION_TITLE");
    if (v23)
    {
      v26 = [(PUActivityViewController *)self excludeCaption]^ 1;
    }

    else
    {
      v26 = 1;
    }

    v117[0] = MEMORY[0x1E69E9820];
    v117[1] = 3221225472;
    v117[2] = __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke_3;
    v117[3] = &unk_1E7B747E0;
    objc_copyWeak(&v118, &location);
    v27 = [v24 switchCustomizationWithTitle:v25 identifier:@"SHARING_OPTIONS_CAPTION_TITLE" footerText:0 value:v26 valueChangedHandler:v117];

    [v27 setEnabled:v23];
    if ((v23 & 1) == 0)
    {
      [(PUActivityViewController *)self setExcludeCaption:0];
    }

    [v6 addObject:v27];

    objc_destroyWeak(&v118);
  }

  if (v128)
  {
    if ([(PUActivityViewController *)self shareAsCMM])
    {
      v28 = 0;
    }

    else
    {
      v28 = [(PUActivityViewController *)self sendAsAssetBundles]^ 1;
    }

    v29 = MEMORY[0x1E69CDA48];
    v30 = PULocalizedString(@"SHARING_OPTIONS_ACCESSIBILITY_DESCRIPTION_TITLE");
    if (v28)
    {
      v31 = [(PUActivityViewController *)self excludeAccessibilityDescription]^ 1;
    }

    else
    {
      v31 = 1;
    }

    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v115[2] = __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke_4;
    v115[3] = &unk_1E7B747E0;
    objc_copyWeak(&v116, &location);
    v32 = [v29 switchCustomizationWithTitle:v30 identifier:@"SHARING_OPTIONS_ACCESSIBILITY_DESCRIPTION_TITLE" footerText:0 value:v31 valueChangedHandler:v115];

    [v32 setEnabled:v28];
    if ((v28 & 1) == 0)
    {
      [(PUActivityViewController *)self setExcludeAccessibilityDescription:0];
    }

    [v6 addObject:v32];

    objc_destroyWeak(&v116);
  }

  if (!-[PUActivityViewController sendAsUnmodifiedOriginals](self, "sendAsUnmodifiedOriginals") && [v6 count])
  {
    v33 = objc_alloc(MEMORY[0x1E69CDA50]);
    v34 = PULocalizedString(@"SHARING_OPTIONS_DATA_CUSTOMIZATIONS_GROUP_TITLE");
    v35 = [v33 _initGroupWithName:v34 identifier:@"SHARING_OPTIONS_DATA_CUSTOMIZATIONS_GROUP" customizations:v6];

    [v103 addObject:v35];
  }

  if (![(PUActivityViewController *)self sendAsUnmodifiedOriginals])
  {
    v36 = [(PUActivityViewController *)self preferredExportFormat];
    if (v36 == 2)
    {
      v37 = 2;
    }

    else
    {
      v37 = v36 == 1;
    }

    v38 = [(PUActivityViewController *)self shareAsCMM];
    if (v38)
    {
      v39 = PULocalizedString(@"SHARING_OPTIONS_FORMAT_FOOTER_TEXT_CURRENT_CMM");
      v37 = 1;
    }

    else
    {
      v39 = PXLocalizedString();
    }

    v40 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    v41 = PULocalizedString(@"SHARING_OPTIONS_FORMAT_AUTOMATIC");
    [v40 addObject:v41];

    v42 = PULocalizedString(@"SHARING_OPTIONS_FORMAT_CURRENT");
    [v40 addObject:v42];

    v43 = PULocalizedString(@"SHARING_OPTIONS_FORMAT_COMPATIBLE");
    [v40 addObject:v43];

    v44 = MEMORY[0x1E69CDA48];
    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 3221225472;
    v113[2] = __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke_5;
    v113[3] = &unk_1E7B74808;
    objc_copyWeak(&v114, &location);
    v45 = [v44 pickerCustomizationWithIdentifier:@"SHARING_OPTIONS_FORMAT_PICKER" options:v40 selectedOptionIndex:v37 footerText:v39 valueChangedHandler:v113];
    [v45 setEnabled:!v38];
    v46 = objc_alloc(MEMORY[0x1E69CDA50]);
    v47 = PULocalizedString(@"SHARING_OPTIONS_FORMAT_GROUP_TITLE");
    v134[0] = v45;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:1];
    v49 = [v46 _initGroupWithName:v47 identifier:@"SHARING_OPTIONS_FORMAT_GROUP" customizations:v48];

    [v103 addObject:v49];
    objc_destroyWeak(&v114);
  }

  v50 = [(PUActivityViewController *)self photoLibrary];
  if (PXCMMHasSendAndReceiveCapabilities())
  {
    v51 = [(PUActivityItemSourceController *)self->_itemSourceController itemSourcesSupportMomentShareLinkCreation];

    if (v51)
    {
      v52 = [v100 cmmShareSheetBehavior];
      v53 = v52 == 1;
      if ([v100 cmmShareSheetBehavior] == 1)
      {
        [v101 count];
        v97 = PXLocalizationKeyForMediaType();
        v54 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
        if (v52 == 1)
        {
          v55 = PULocalizedString(@"SHARING_OPTIONS_SEND_AS_AUTOMATIC");
          [v54 addObject:v55];
        }

        v56 = PULocalizedString(v97);
        v133[0] = v56;
        v57 = PULocalizedString(@"SHARING_OPTIONS_SEND_AS_CMM");
        v133[1] = v57;
        v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:2];
        [v54 addObjectsFromArray:v58];

        if ([(PUActivityViewController *)self shouldAutomaticallyUseCMMInMessagesIfThresholdMet])
        {
          v59 = 0;
        }

        else
        {
          v89 = [(PUActivityViewController *)self shareAsCMM];
          if (v52 == 1)
          {
            v59 = v89 + 1;
          }

          else
          {
            v59 = v89;
          }
        }

        v90 = PULocalizedString(@"SHARING_OPTIONS_SEND_AS_GROUP_FOOTER_TEXT");
        v91 = MEMORY[0x1E69CDA48];
        v110[0] = MEMORY[0x1E69E9820];
        v110[1] = 3221225472;
        v110[2] = __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke_6;
        v110[3] = &unk_1E7B74830;
        objc_copyWeak(&v111, &location);
        v112 = v53;
        v92 = [v91 pickerCustomizationWithIdentifier:@"SHARING_OPTIONS_SEND_AS_PICKER" options:v54 selectedOptionIndex:v59 footerText:v90 valueChangedHandler:v110];
        v93 = objc_alloc(MEMORY[0x1E69CDA50]);
        v94 = PULocalizedString(@"SHARING_OPTIONS_SEND_AS_GROUP_TITLE");
        v132 = v92;
        v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v132 count:1];
        v96 = [v93 _initGroupWithName:v94 identifier:@"SHARING_OPTIONS_SEND_AS_GROUP" customizations:v95];

        [v103 addObject:v96];
        objc_destroyWeak(&v111);
      }

      else
      {
        v80 = MEMORY[0x1E69CDA48];
        v81 = PULocalizedString(@"SHARING_OPTIONS_SEND_AS_CMM_SWITCH_TITLE");
        v82 = PULocalizedString(@"SHARING_OPTIONS_SEND_AS_GROUP_CMM_SWITCH_FOOTER_TEXT");
        v83 = [(PUActivityViewController *)self shareAsCMM];
        v108[0] = MEMORY[0x1E69E9820];
        v108[1] = 3221225472;
        v108[2] = __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke_7;
        v108[3] = &unk_1E7B747E0;
        objc_copyWeak(&v109, &location);
        v84 = [v80 switchCustomizationWithTitle:v81 identifier:@"SHARING_OPTIONS_SEND_AS_CMM_SWITCH_TITLE" footerText:v82 value:v83 valueChangedHandler:v108];

        v85 = objc_alloc(MEMORY[0x1E69CDA50]);
        v86 = PULocalizedString(@"SHARING_OPTIONS_SEND_AS_GROUP_TITLE");
        v131 = v84;
        v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:1];
        v88 = [v85 _initGroupWithName:v86 identifier:@"SHARING_OPTIONS_SEND_AS_GROUP" customizations:v87];

        [v103 addObject:v88];
        objc_destroyWeak(&v109);
      }
    }
  }

  else
  {
  }

  if ([v102 showUnmodifiedOriginalsExportSwitch])
  {
    if ([v101 count] == 1)
    {
      v60 = @"SHARING_OPTIONS_SEND_AS_UNMODIFIED_ORIGINAL";
    }

    else
    {
      v60 = @"SHARING_OPTIONS_SEND_AS_UNMODIFIED_ORIGINAL_MULTIPLE";
    }

    v61 = PULocalizedString(v60);
    v62 = PULocalizedString(@"SHARING_OPTIONS_SEND_AS_UNMODIFIED_FOOTER_TEXT");
    v63 = [(PUActivityViewController *)self sendAsUnmodifiedOriginals];
    v64 = MEMORY[0x1E69CDA48];
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 3221225472;
    v106[2] = __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke_8;
    v106[3] = &unk_1E7B747E0;
    objc_copyWeak(&v107, &location);
    v65 = [v64 switchCustomizationWithTitle:v61 identifier:@"SHARING_OPTIONS_SEND_AS_UNMODIFIED_ORIGINAL" footerText:v62 value:v63 valueChangedHandler:v106];
    v66 = objc_alloc(MEMORY[0x1E69CDA50]);
    v130 = v65;
    v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1];
    v68 = [v66 _initGroupWithName:@"Internal" identifier:@"SHARING_OPTIONS_UNMODIFIED_ORIGINALS_GROUP" customizations:v67];

    [v103 addObject:v68];
    objc_destroyWeak(&v107);
  }

  if (v99)
  {
    v69 = PULocalizedString(@"SHARING_OPTIONS_ALL_PHOTOS_DATA_FOOTER");
    v70 = MEMORY[0x1E69CDA48];
    v71 = PULocalizedString(@"SHARING_OPTIONS_ALL_PHOTOS_DATA_TITLE");
    v72 = [(PUActivityViewController *)self sendAsAssetBundles];
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke_9;
    v104[3] = &unk_1E7B747E0;
    objc_copyWeak(&v105, &location);
    v73 = [v70 switchCustomizationWithTitle:v71 identifier:@"SHARING_OPTIONS_ALL_PHOTOS_DATA" footerText:v69 value:v72 valueChangedHandler:v104];

    v74 = objc_alloc(MEMORY[0x1E69CDA50]);
    v75 = PULocalizedString(@"SHARING_OPTIONS_ALL_PHOTOS_DATA_GROUP_TITLE");
    v129 = v73;
    v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v129 count:1];
    v77 = [v74 _initGroupWithName:v75 identifier:@"SHARING_OPTIONS_ALL_PHOTOS_DATA_GROUP" customizations:v76];

    [v103 addObject:v77];
    objc_destroyWeak(&v105);
  }

  v78 = [v103 copy];

  objc_destroyWeak(&location);

  return v78;
}

void __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExcludeLiveness:v3 ^ 1u];
}

void __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(a1) = [v3 value];

  [WeakRetained setExcludeLocation:a1 ^ 1];
}

void __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExcludeCaption:{objc_msgSend(v3, "value") ^ 1}];
  LOBYTE(a1) = [v3 value];

  if ((a1 & 1) == 0)
  {
    [WeakRetained setShareAsCMM:0];
  }

  [WeakRetained setShouldAutomaticallyUseCMMInMessagesIfThresholdMet:{objc_msgSend(WeakRetained, "_calculateAutomaticCMMSendingBehavior")}];
}

void __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExcludeAccessibilityDescription:{objc_msgSend(v3, "value") ^ 1}];
  LOBYTE(a1) = [v3 value];

  if ((a1 & 1) == 0)
  {
    [WeakRetained setShareAsCMM:0];
  }

  [WeakRetained setShouldAutomaticallyUseCMMInMessagesIfThresholdMet:{objc_msgSend(WeakRetained, "_calculateAutomaticCMMSendingBehavior")}];
}

void __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 selectedOptionIndex];

  if (v4 <= 2)
  {
    [WeakRetained setPreferredExportFormat:v4];
  }

  [WeakRetained setShareAsCMM:0];
  [WeakRetained setShouldAutomaticallyUseCMMInMessagesIfThresholdMet:{objc_msgSend(WeakRetained, "_calculateAutomaticCMMSendingBehavior")}];
  [WeakRetained setSendAsAssetBundles:0];
}

void __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke_6(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40) == 1)
  {
    [WeakRetained setShouldAutomaticallyUseCMMInMessagesIfThresholdMet:{objc_msgSend(v6, "selectedOptionIndex") == 0}];
    if (*(a1 + 40))
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 1;
  }

  [WeakRetained setShareAsCMM:{objc_msgSend(v6, "selectedOptionIndex") == v4}];
  if ([WeakRetained shouldAutomaticallyUseCMMInMessagesIfThresholdMet])
  {
    [WeakRetained setExcludeCaption:0];
    [WeakRetained setExcludeAccessibilityDescription:0];
  }

  if (([WeakRetained shouldAutomaticallyUseCMMInMessagesIfThresholdMet] & 1) != 0 || objc_msgSend(WeakRetained, "shareAsCMM"))
  {
    [WeakRetained setPreferredExportFormat:0];
    [WeakRetained setSendAsUnmodifiedOriginals:0];
  }

  if ([WeakRetained sendAsAssetBundles])
  {
    v5 = [WeakRetained _canShowSendAsAssetBundlesSwitchInObjectManipulationHeader];
  }

  else
  {
    v5 = 0;
  }

  [WeakRetained setSendAsAssetBundles:v5];
}

void __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 value];

  [WeakRetained setShareAsCMM:v4];
  if (([WeakRetained shareAsCMM] & 1) == 0)
  {
    [WeakRetained setPreferredExportFormat:0];
  }

  [WeakRetained setSendAsUnmodifiedOriginals:0];
}

void __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 value];

  [WeakRetained setSendAsUnmodifiedOriginals:v4];
  if ([WeakRetained sendAsUnmodifiedOriginals])
  {
    [WeakRetained setShareAsCMM:0];
    [WeakRetained setExcludeLocation:0];
    [WeakRetained setExcludeCaption:0];
    [WeakRetained setExcludeAccessibilityDescription:0];
    [WeakRetained setSendAsAssetBundles:0];
    [WeakRetained setPreferredExportFormat:0];
  }

  [WeakRetained setShouldAutomaticallyUseCMMInMessagesIfThresholdMet:{objc_msgSend(WeakRetained, "_calculateAutomaticCMMSendingBehavior")}];
}

void __74__PUActivityViewController__customizationGroupsForActivityViewController___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 value];

  [WeakRetained setSendAsAssetBundles:v4];
  if ([WeakRetained sendAsAssetBundles] && objc_msgSend(WeakRetained, "preferredExportFormat"))
  {
    [WeakRetained setPreferredExportFormat:0];
  }

  if (PLIsLockdownMode() && ([WeakRetained sendAsAssetBundles] & 1) == 0)
  {
    [WeakRetained setExcludeLocation:1];
    [WeakRetained setExcludeCaption:1];
  }
}

- (BOOL)_customizationAvailableForActivityViewController:(id)a3
{
  v3 = [(PUActivityItemSourceController *)self->_itemSourceController assetItems];
  v4 = [v3 count];

  return v4 != 0;
}

- (BOOL)_calculateAutomaticCMMSendingBehavior
{
  v3 = [MEMORY[0x1E69C33D8] sharedInstance];
  v4 = [v3 cmmShareSheetBehavior];
  v5 = [(PUActivityViewController *)self preferredExportFormat];
  v6 = [(PUActivityViewController *)self excludeCaption]|| [(PUActivityViewController *)self excludeAccessibilityDescription];
  v7 = [(PUActivityViewController *)self sendAsUnmodifiedOriginals];
  v8 = [(PUActivityViewController *)self photoLibrary];
  v9 = PXCMMHasSendAndReceiveCapabilities();

  v10 = 0;
  if (v9)
  {
    v11 = (v4 - 3) < 0xFFFFFFFFFFFFFFFELL || v5 == 2;
    if (!v11 && !v6 && !v7)
    {
      if ([v3 disableShareSheetAutomaticBehaviorIfADPEnabled])
      {
        v12 = [(PUActivityViewController *)self photoLibrary];
        v13 = [v12 isWalrusEnabled];

        v10 = v13 ^ 1;
      }

      else
      {
        v10 = 1;
      }
    }
  }

  return v10;
}

- (NSString)headerTitle
{
  usePhotosStack = self->_usePhotosStack;
  v5 = [(PUActivityViewController *)self photosCarouselViewController];
  v6 = v5;
  if (usePhotosStack)
  {
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v6 px_descriptionForAssertionMessage];
        [v10 handleFailureInMethod:a2 object:self file:@"PUActivityViewController.m" lineNumber:1497 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.photosCarouselViewController", v12, v13}];
      }
    }

    v7 = [v6 assetFetchResult];
    PXMediaTypeForAssets();
    [v7 count];
    v8 = PXLocalizedSelectionMessageForAssetsCount();
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = [v6 px_descriptionForAssertionMessage];
        [v14 handleFailureInMethod:a2 object:self file:@"PUActivityViewController.m" lineNumber:1502 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.photosCarouselViewController", v16, v17}];
      }
    }

    v8 = [v6 localizedSelectionTitle];
  }

  return v8;
}

- (int64_t)sourceOrigin
{
  v2 = [(PUActivityViewController *)self sharingViewModel];
  v3 = [v2 sourceOrigin];

  return v3;
}

- (NSOrderedSet)orderedSelectedAssets
{
  v2 = [(PUActivityViewController *)self sharingViewModel];
  v3 = [v2 selectionManager];
  v4 = [v3 orderedSelectedAssets];

  return v4;
}

- (PHPerson)person
{
  v2 = [(PUActivityViewController *)self sharingViewModel];
  v3 = [v2 person];

  return v3;
}

- (PXDisplayAsset)keyAsset
{
  v2 = [(PUActivityViewController *)self sharingViewModel];
  v3 = [v2 keyAsset];

  return v3;
}

- (PXAssetMediaTypeCount)assetTypeCount
{
  retstr->var8 = 0;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  result = self->_itemSourceController;
  if (result)
  {
    return [(PXAssetMediaTypeCount *)result requestAssetsMediaTypeCount];
  }

  return result;
}

- (void)_updateSharingHeaderIfNeeded
{
  if ((PFIsiOSPhotosApp() & 1) != 0 || (PFIsCamera() & 1) != 0 || (PFIsPhotosPicker() & 1) != 0 || (PFIsSpotlight() & 1) != 0 || (PFIsPreferences() & 1) != 0 || (PFIsVisionPhotosApp() & 1) != 0 || PFIsVisionCameraApp())
  {
    if (!self->_sharingHeaderController)
    {
      v4 = [[PUSharingHeaderController alloc] initWithDataProvider:self];
      sharingHeaderController = self->_sharingHeaderController;
      self->_sharingHeaderController = v4;
    }

    v6 = [(PUActivityViewController *)self photosHeaderMetadata];

    if (!v6)
    {
      v7 = [(PUSharingHeaderController *)self->_sharingHeaderController linkMetadata];
      if (!v7)
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        [v9 handleFailureInMethod:a2 object:self file:@"PUActivityViewController.m" lineNumber:1461 description:{@"Invalid parameter not satisfying: %@", @"linkMetadata"}];
      }

      [(PUActivityViewController *)self setPhotosHeaderMetadata:v7];
    }

    v8 = self->_sharingHeaderController;

    [(PUSharingHeaderController *)v8 updateIfNeeded];
  }
}

- (BOOL)_canShowSendAsAssetBundlesSwitchInObjectManipulationHeader
{
  v3 = [MEMORY[0x1E69C3A18] sharedInstance];
  v4 = [(PUActivityViewController *)self photoLibrary];
  if (PXCMMHasSendAndReceiveCapabilities() && [v3 showSendAsAssetBundlesForCMM] && -[PUActivityViewController shareAsCMM](self, "shareAsCMM"))
  {
    LOBYTE(v5) = 1;
  }

  else if ([v3 showSendAsAssetBundlesForIndividualItems])
  {
    v5 = ![(PUActivityViewController *)self shareAsCMM];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setSendAsUnmodifiedOriginals:(BOOL)a3
{
  if (self->_sendAsUnmodifiedOriginals != a3)
  {
    self->_sendAsUnmodifiedOriginals = a3;
    [(PUActivityViewController *)self _updateSharingHeaderIfNeeded];
    if (!self->_usePhotosStack)
    {
      v5 = [(PUActivityViewController *)self photosCarouselViewController];
      if (v5)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v6 = [MEMORY[0x1E696AAA8] currentHandler];
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          v9 = [v5 px_descriptionForAssertionMessage];
          [v6 handleFailureInMethod:a2 object:self file:@"PUActivityViewController.m" lineNumber:1436 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.photosCarouselViewController", v8, v9}];
        }

        [v5 setSendAsUnmodifiedOriginals:self->_sendAsUnmodifiedOriginals];
      }
    }

    [(PUActivityViewController *)self _updateSourceControllerSharingPreferencesInAllItems];
  }
}

- (void)setSendAsAssetBundles:(BOOL)a3
{
  if (self->_sendAsAssetBundles != a3)
  {
    self->_sendAsAssetBundles = a3;
    [(PUActivityViewController *)self _updateSharingHeaderIfNeeded];
    if (!self->_usePhotosStack)
    {
      v5 = [(PUActivityViewController *)self photosCarouselViewController];
      if (v5)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v6 = [MEMORY[0x1E696AAA8] currentHandler];
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          v9 = [v5 px_descriptionForAssertionMessage];
          [v6 handleFailureInMethod:a2 object:self file:@"PUActivityViewController.m" lineNumber:1419 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.photosCarouselViewController", v8, v9}];
        }

        [v5 setSendAsAssetBundles:self->_sendAsAssetBundles];
      }
    }

    [(PUActivityViewController *)self _updateSourceControllerSharingPreferencesInAllItems];
  }
}

- (void)setExcludeAccessibilityDescription:(BOOL)a3
{
  if (self->_excludeAccessibilityDescription != a3)
  {
    self->_excludeAccessibilityDescription = a3;
    [(PUActivityViewController *)self _updateSharingHeaderIfNeeded];

    [(PUActivityViewController *)self _updateSourceControllerSharingPreferencesInAllItems];
  }
}

- (void)setExcludeCaption:(BOOL)a3
{
  if (self->_excludeCaption != a3)
  {
    self->_excludeCaption = a3;
    [(PUActivityViewController *)self _updateSharingHeaderIfNeeded];

    [(PUActivityViewController *)self _updateSourceControllerSharingPreferencesInAllItems];
  }
}

- (void)setExcludeLocation:(BOOL)a3
{
  if (self->_excludeLocation != a3)
  {
    self->_excludeLocation = a3;
    [(PUActivityViewController *)self _updateSharingHeaderIfNeeded];

    [(PUActivityViewController *)self _updateSourceControllerSharingPreferencesInAllItems];
  }
}

- (void)setExcludeLiveness:(BOOL)a3
{
  if (self->_excludeLiveness != a3)
  {
    self->_excludeLiveness = a3;
    [(PUActivityViewController *)self _updateSharingHeaderIfNeeded];

    [(PUActivityViewController *)self _updateSourceControllerSharingPreferencesInAllItems];
  }
}

- (void)setPreferredExportFormat:(int64_t)a3
{
  if (self->_preferredExportFormat != a3)
  {
    self->_preferredExportFormat = a3;
    [(PUActivityViewController *)self _updateSharingHeaderIfNeeded];

    [(PUActivityViewController *)self _updateSourceControllerSharingPreferencesInAllItems];
  }
}

- (void)setShareAsCMM:(BOOL)a3
{
  if (self->_shareAsCMM != a3)
  {
    self->_shareAsCMM = a3;
    [(PUActivityViewController *)self _updateSharingHeaderIfNeeded];

    [(PUActivityViewController *)self _updateSourceControllerPreferredPreparationBehavior];
  }
}

- (void)setShouldAutomaticallyUseCMMInMessagesIfThresholdMet:(BOOL)a3
{
  if (self->_shouldAutomaticallyUseCMMInMessagesIfThresholdMet != a3)
  {
    self->_shouldAutomaticallyUseCMMInMessagesIfThresholdMet = a3;
    [(PUActivityViewController *)self _updateSourceControllerPreferredPreparationBehavior];
  }
}

- (void)_reloadAssetItems
{
  v4 = [(PUActivityItemSourceController *)self->_itemSourceController assetItems];
  v3 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  [(PUActivityViewController *)self setAssetItems:v3];

  [(PUActivityViewController *)self setAssetItems:v4];
}

- (void)_updateSourceControllerSharingPreferencesInAllItems
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(PUActivityItemSourceController *)self->_itemSourceController shouldExcludeLivenessInAllItemSources];
  excludeLiveness = self->_excludeLiveness;
  v5 = excludeLiveness != v3;
  if (excludeLiveness != v3)
  {
    [(PUActivityItemSourceController *)self->_itemSourceController setShouldExcludeLivenessInAllItemSources:?];
  }

  if (self->_excludeLocation != [(PUActivityItemSourceController *)self->_itemSourceController shouldExcludeLocationInAllItemSources])
  {
    [(PUActivityItemSourceController *)self->_itemSourceController setShouldExcludeLocationInAllItemSources:?];
    v5 = 1;
  }

  if (self->_excludeCaption != [(PUActivityItemSourceController *)self->_itemSourceController shouldExcludeCaptionInAllItemSources])
  {
    [(PUActivityItemSourceController *)self->_itemSourceController setShouldExcludeCaptionInAllItemSources:?];
    v5 = 1;
  }

  if (self->_excludeAccessibilityDescription != [(PUActivityItemSourceController *)self->_itemSourceController shouldExcludeAccessibilityDescriptionInAllItemSources])
  {
    [(PUActivityItemSourceController *)self->_itemSourceController setShouldExcludeAccessibilityDescriptionInAllItemSources:?];
    v5 = 1;
  }

  if (self->_sendAsAssetBundles != [(PUActivityItemSourceController *)self->_itemSourceController shouldShareAsAssetBundles])
  {
    [(PUActivityItemSourceController *)self->_itemSourceController setShouldShareAsAssetBundles:?];
    v5 = 1;
  }

  if (self->_sendAsUnmodifiedOriginals != [(PUActivityItemSourceController *)self->_itemSourceController shouldShareAsUnmodifiedOriginals])
  {
    [(PUActivityItemSourceController *)self->_itemSourceController setShouldShareAsUnmodifiedOriginals:?];
    v5 = 1;
  }

  if ([(PUActivityItemSourceController *)self->_itemSourceController preferredExportFormat]== self->_preferredExportFormat)
  {
    if (!v5)
    {
      return;
    }
  }

  else
  {
    [(PUActivityItemSourceController *)self->_itemSourceController setPreferredExportFormat:?];
  }

  v6 = PLShareSheetGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 2048;
    v11 = self;
    v7 = v9;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "<%@:%p>: Reloading asset items, due to a change in share sheet metadata options", &v8, 0x16u);
  }

  [(PUActivityViewController *)self _reloadAssetItems];
}

- (void)_updateSourceControllerPreferredPreparationBehavior
{
  shareAsCMM = self->_shareAsCMM;
  v4 = [(PUActivityItemSourceController *)self->_itemSourceController preferredPreparationType];
  v5 = [(PUActivityItemSourceController *)self->_itemSourceController shouldUseMomentShareLinkInMessagesIfThresholdMet];
  if (v4 != shareAsCMM || self->_shouldAutomaticallyUseCMMInMessagesIfThresholdMet != v5)
  {
    [(PUActivityItemSourceController *)self->_itemSourceController setPreferredPreparationType:shareAsCMM];
    [(PUActivityItemSourceController *)self->_itemSourceController setShouldUseMomentShareLinkInMessagesIfThresholdMet:self->_shouldAutomaticallyUseCMMInMessagesIfThresholdMet];

    [(PUActivityViewController *)self updateVisibleShareActionsIfNeeded];
  }
}

- (void)setPhotosCarouselViewController:(id)a3
{
  v10.receiver = self;
  v10.super_class = PUActivityViewController;
  [(PUActivityViewController *)&v10 setPhotosCarouselViewController:a3];
  if (!self->_usePhotosStack)
  {
    v5 = [(PUActivityViewController *)self photosCarouselViewController];
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = [v5 px_descriptionForAssertionMessage];
        [v6 handleFailureInMethod:a2 object:self file:@"PUActivityViewController.m" lineNumber:1270 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.photosCarouselViewController", v8, v9}];
      }
    }

    [v5 setSendAsAssetBundles:{-[PUActivityViewController sendAsAssetBundles](self, "sendAsAssetBundles")}];
  }

  [(PUActivityViewController *)self _updateSharingHeaderIfNeeded];
}

- (void)_handlePostReadyToInteractUpdatesIfNeeded
{
  if (self->_shouldUpdateVisibleItemsWhenReady && [(PUActivityViewController *)self isReadyForInteraction]&& [(PUActivityViewController *)self _appearState]== 2)
  {
    self->_shouldUpdateVisibleItemsWhenReady = 0;

    [(PUActivityViewController *)self updateVisibleShareActionsIfNeeded];
  }
}

- (void)updateVisibleShareActionsIfNeeded
{
  if (self->_isDismissed || ![(PUActivityViewController *)self isReadyForInteraction])
  {
    self->_shouldUpdateVisibleItemsWhenReady = 1;
  }

  else
  {
    v3 = [(PUActivityItemSourceController *)self->_itemSourceController activityItems];
    v5 = [v3 mutableCopy];

    if (self->_linkPresentation)
    {
      [v5 addObject:?];
    }

    if (_os_feature_enabled_impl())
    {
      sharedCollectionCollaborationItem = self->_sharedCollectionCollaborationItem;
      if (sharedCollectionCollaborationItem)
      {
        [v5 insertObject:sharedCollectionCollaborationItem atIndex:0];
      }
    }

    [(PUActivityViewController *)self _updateActivityItems:v5];
  }
}

- (void)setAssetItems:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  itemSourceController = self->_itemSourceController;
  if (self->_isPreparingAssets)
  {
    v6 = [(PUActivityItemSourceController *)itemSourceController assetItems];
    v7 = [v6 isEqual:v4];

    if ((v7 & 1) == 0)
    {
      v8 = PLShareSheetGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = self->_itemSourceController;
        v11 = v9;
        v12 = [(PUActivityItemSourceController *)v10 assetItems];
        v13 = 138413058;
        v14 = v9;
        v15 = 2048;
        v16 = self;
        v17 = 2048;
        v18 = [v12 count];
        v19 = 2048;
        v20 = [v4 count];
        _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "<%@:%p>: Trying to set different activity asset items: (%ld items to %ld items) while we are in the middle of preparing the assets", &v13, 0x2Au);
      }
    }
  }

  else
  {
    [(PUActivityItemSourceController *)itemSourceController setAssetItems:v4];
    [(PUActivityViewController *)self updateVisibleShareActionsIfNeeded];
    [(PUActivityViewController *)self _updateSharingHeaderIfNeeded];
  }
}

- (void)replaceAssetItem:(id)a3 withAssetItem:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_isPreparingAssets)
  {
    v8 = PLShareSheetGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138413058;
      v11 = objc_opt_class();
      v12 = 2048;
      v13 = self;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      v9 = v11;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "<%@:%p>: Trying to replace an activity asset item:%@ with %@ while we are in the middle of preparing the assets", &v10, 0x2Au);
    }
  }

  else
  {
    [(PUActivityItemSourceController *)self->_itemSourceController removeAssetItem:v6];
    [(PUActivityItemSourceController *)self->_itemSourceController addAssetItem:v7];
    [(PUActivityViewController *)self updateVisibleShareActionsIfNeeded];
    [(PUActivityViewController *)self _updateSharingHeaderIfNeeded];
  }
}

- (void)removeAssetItem:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_isPreparingAssets)
  {
    v5 = PLShareSheetGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412802;
      v8 = objc_opt_class();
      v9 = 2048;
      v10 = self;
      v11 = 2112;
      v12 = v4;
      v6 = v8;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "<%@:%p>: Trying to remove an activity asset item:%@ while we are in the middle of preparing the assets", &v7, 0x20u);
    }
  }

  else
  {
    [(PUActivityItemSourceController *)self->_itemSourceController removeAssetItem:v4];
    [(PUActivityViewController *)self updateVisibleShareActionsIfNeeded];
    [(PUActivityViewController *)self _updateSharingHeaderIfNeeded];
  }
}

- (void)addAssetItem:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_isPreparingAssets)
  {
    v5 = PLShareSheetGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412802;
      v8 = objc_opt_class();
      v9 = 2048;
      v10 = self;
      v11 = 2112;
      v12 = v4;
      v6 = v8;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "<%@:%p>: Trying to add an activity asset item:%@ while we are in the middle of preparing the assets", &v7, 0x20u);
    }
  }

  else
  {
    [v4 setExcludeLocation:{-[PUActivityViewController excludeLocation](self, "excludeLocation")}];
    [(PUActivityItemSourceController *)self->_itemSourceController addAssetItem:v4];
    [(PUActivityViewController *)self updateVisibleShareActionsIfNeeded];
    [(PUActivityViewController *)self _updateSharingHeaderIfNeeded];
  }
}

- (void)_cleanUpActivityState
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [(PUActivityViewController *)self photosActivities];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 tearDownForCompletion];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_sharingManagerDidBeginPublishing:(id)a3
{
  v4 = +[PUPhotoSharingManager sharedInstance];
  v5 = [v4 publishingProgressView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PUActivityViewController__sharingManagerDidBeginPublishing___block_invoke;
  v7[3] = &unk_1E7B80DD0;
  v8 = v4;
  v6 = v4;
  [(PUActivityViewController *)self _showRemakerProgressView:v5 forMail:0 withCancelationHandler:v7];
}

- (void)mailActivity:(id)a3 displayVideoRemakerProgressView:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__PUActivityViewController_mailActivity_displayVideoRemakerProgressView___block_invoke;
  v8[3] = &unk_1E7B80DD0;
  v9 = v6;
  v7 = v6;
  [(PUActivityViewController *)self _showRemakerProgressView:a4 forMail:1 withCancelationHandler:v8];
}

- (void)_presentConfidentialityWarningIfNeededForActivity:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E69C3A10] confidentialityCheckRequired] && (v8 = objc_opt_class(), objc_msgSend(v6, "activityType"), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = objc_msgSend(v8, "needsConfidentialityCheckForActivityType:", v9), v9, v8) && (v10 = MEMORY[0x1E69C3A10], -[PUActivityItemSourceController assets](self->_itemSourceController, "assets"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "array"), v12 = objc_claimAutoreleasedReturnValue(), LODWORD(v10) = objc_msgSend(v10, "confidentialWarningRequiredForAssets:", v12), v12, v11, v10))
  {
    v13 = MEMORY[0x1E69C3A10];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __100__PUActivityViewController__presentConfidentialityWarningIfNeededForActivity_withCompletionHandler___block_invoke;
    v20[3] = &unk_1E7B80980;
    v21 = v7;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __100__PUActivityViewController__presentConfidentialityWarningIfNeededForActivity_withCompletionHandler___block_invoke_2;
    v18 = &unk_1E7B80980;
    v19 = v21;
    v14 = [v13 confidentialityAlertWithConfirmAction:v20 abortAction:&v15];
    [(PUActivityViewController *)self px_presentOverTopmostPresentedViewController:v14 animated:1 completion:0, v15, v16, v17, v18];
  }

  else
  {
    (*(v7 + 2))(v7, 1);
  }
}

uint64_t __100__PUActivityViewController__presentConfidentialityWarningIfNeededForActivity_withCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __100__PUActivityViewController__presentConfidentialityWarningIfNeededForActivity_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_prepareAssetsForActivity:(id)a3 forcePreparationAsMomentShareLink:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  self->_isPreparingAssets = 1;
  self->_didSuccessfullyPrepareAssets = 0;
  if ([(PUActivityViewController *)self shareAsCMM]|| v4)
  {
    self->_preparedAsCloudLink = 1;
  }

  else
  {
    v6 = [v7 activityType];
    self->_preparedAsCloudLink = [v6 isEqualToString:*MEMORY[0x1E69C3D30]];
  }

  [(PUActivityItemSourceController *)self->_itemSourceController configureItemSourcesForActivityIfNeeded:v7 forcePreparationAsMomentShareLink:v4];
}

- (void)_showSharingWasInterruptedForErrors:(id)a3 withIndividualAssets:(id)a4 itemSourcesByAssetUUID:(id)a5 toActivityType:(id)a6 completion:(id)a7
{
  v45 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v39 = a6;
  v33 = a7;
  v15 = PLUIGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v44 = v12;
    _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "Share Sheet: Will show Unable to share dialogue. Reported errors: %{public}@", buf, 0xCu);
  }

  v38 = MEMORY[0x1E696AEC0];
  v37 = [v13 count];
  if (self->_shareAsCMM)
  {
    v16 = @"iCloud Link";
  }

  else
  {
    v16 = @"Individual Items";
  }

  v34 = v16;
  if (self->_sendAsUnmodifiedOriginals)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v18 = v17;
  v35 = v12;
  v36 = v13;
  if (self->_preparedAsCloudLink)
  {
    v19 = @"iCloud Link";
  }

  else
  {
    v19 = @"Individual Items";
  }

  if (self->_excludeLocation)
  {
    v20 = @"NO";
  }

  else
  {
    v20 = @"YES";
  }

  v21 = v20;
  if (self->_excludeCaption)
  {
    v22 = @"NO";
  }

  else
  {
    v22 = @"YES";
  }

  v23 = v22;
  if (self->_excludeAccessibilityDescription)
  {
    v24 = @"NO";
  }

  else
  {
    v24 = @"YES";
  }

  v25 = v24;
  if (self->_sendAsAssetBundles)
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  v27 = v14;
  v28 = v26;
  v29 = [v38 stringWithFormat:@"Sharing %ld assets to activity type: %@\nOptions:\nSend As: %@\nExport Unmodified Originals: %@\n(Prepared As: %@)\nInclude Location: %@\nInclude Caption: %@\nInclude Accessibility Description: %@\nAll Photos Data: %@\n\n", v37, v39, v34, v18, v19, v21, v23, v25, v28];

  objc_initWeak(buf, self);
  v30 = [[PUSharingErrorPresentationController alloc] initWithErrors:v35 forAssets:v36 fromSource:0 preparationType:self->_preparedAsCloudLink];
  [(PUSharingErrorPresentationController *)v30 setItemSourcesByAssetUUID:v27];
  [(PUErrorPresentationController *)v30 setRadarDescription:v29];
  [(PUErrorPresentationController *)v30 setRadarComponentID:@"512768" name:@"Photos Backend (New Bugs)" version:@"all"];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __134__PUActivityViewController__showSharingWasInterruptedForErrors_withIndividualAssets_itemSourcesByAssetUUID_toActivityType_completion___block_invoke;
  v40[3] = &unk_1E7B7B3B0;
  objc_copyWeak(&v42, buf);
  v31 = v33;
  v41 = v31;
  v32 = [(PUErrorPresentationController *)v30 alertControllerWithCompletion:v40];
  [(PUActivityViewController *)self px_presentOverTopmostPresentedViewController:v32 animated:1 completion:0];

  objc_destroyWeak(&v42);
  objc_destroyWeak(buf);
}

void __134__PUActivityViewController__showSharingWasInterruptedForErrors_withIndividualAssets_itemSourcesByAssetUUID_toActivityType_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleUserCancelWithCompletion:*(a1 + 32)];
}

- (void)updateProgressUITitle
{
  v7 = PULocalizedString(@"SHARING_PREPARATION_TITLE");
  if ([(PUActivityItemSourceController *)self->_itemSourceController state]== 1)
  {
    v3 = PULocalizedString(@"SHARING_DOWNLOADING_TITLE");

    v7 = v3;
  }

  v4 = [(PUActivityViewController *)self progressController];
  v5 = [v4 isCancelled];

  if ((v5 & 1) == 0)
  {
    v6 = [(PUActivityViewController *)self progressController];
    [v6 setTitle:v7];
  }
}

- (void)showProgressUIAnimated:(BOOL)a3 withDelay:(BOOL)a4 cancellationHandler:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  [(PUActivityViewController *)self removeProgressUIAnimated:0 withDelay:0];
  v9 = objc_alloc_init(MEMORY[0x1E69C3308]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__PUActivityViewController_showProgressUIAnimated_withDelay_cancellationHandler___block_invoke;
  v13[3] = &unk_1E7B80C88;
  v14 = v8;
  v10 = v8;
  [v9 setCancellationHandler:v13];
  v11 = [(PUActivityViewController *)self view];
  v12 = [v11 window];

  [v9 setWindow:v12];
  [v9 showAnimated:v6 allowDelay:v5];
  [(PUActivityViewController *)self setProgressController:v9];
  [(PUActivityViewController *)self updateProgressUITitle];
}

uint64_t __81__PUActivityViewController_showProgressUIAnimated_withDelay_cancellationHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeProgressUIAnimated:(BOOL)a3 withDelay:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PUActivityViewController *)self progressController];
  [v7 hideAnimated:v5 allowDelay:v4];

  [(PUActivityViewController *)self setProgressController:0];
}

- (void)_removeRemakerProgressView
{
  [(PLProgressView *)self->_remakerProgressView removeFromSuperview];
  remakerProgressView = self->_remakerProgressView;
  self->_remakerProgressView = 0;
}

- (void)_showRemakerProgressView:(id)a3 forMail:(BOOL)a4 withCancelationHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  [(PUActivityViewController *)self _removeRemakerProgressView];
  objc_storeStrong(&self->_remakerProgressView, a3);
  [v9 setShowsCancelButton:1];
  objc_initWeak(&location, self);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __84__PUActivityViewController__showRemakerProgressView_forMail_withCancelationHandler___block_invoke;
  v16 = &unk_1E7B75D28;
  v11 = v10;
  v17 = v11;
  v19 = a4;
  objc_copyWeak(&v18, &location);
  [v9 setCancelationHandler:&v13];
  v12 = objc_alloc_init(PUPhotosSharingProgressOverlay);
  [(PUPhotosSharingProgressOverlay *)v12 addProgressView:v9, v13, v14, v15, v16];
  [(PUPhotosSharingProgressOverlay *)v12 setShowing:1 animated:1];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __84__PUActivityViewController__showRemakerProgressView_forMail_withCancelationHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _handleUserCancelWithCompletion:0];
  }
}

- (void)_handleUserCancelWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(PUActivityViewController *)self delegate];
  v5 = v4;
  if (!v4 || [v4 activityViewControllerShouldCancelAfterPreparationCanceled:self])
  {
    [(PUActivityViewController *)self _cancel];
  }

  if (v6)
  {
    v6[2]();
  }
}

- (void)_sendCPAnalyticsAssetExportPreparationEventWithActivityType:(id)a3 didComplete:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v14 = a5;
  v8 = [(PUActivityViewController *)self _generateAnalyticsPayloadForSharingEventsToActivityType:a3];
  [v8 setObject:@"Share Sheet" forKeyedSubscript:@"assetExportPreparationSource"];
  if (v5)
  {
    v9 = MEMORY[0x1E6991C60];
  }

  else
  {
    if (v14)
    {
      v10 = *MEMORY[0x1E6991C68];
      [v8 setObject:v14 forKeyedSubscript:*MEMORY[0x1E6991E28]];
      v11 = [PUSharingErrorPresentationController sharingErrorTypeFromError:v14];
      if (v11 > 9)
      {
        v12 = @"Unknown";
      }

      else
      {
        v12 = off_1E7B75FF0[v11];
      }

      v13 = v12;
      [v8 setObject:v13 forKeyedSubscript:@"assetExportPreparationErrorType"];

      goto LABEL_10;
    }

    v9 = MEMORY[0x1E6991C58];
  }

  v10 = *v9;
LABEL_10:
  [MEMORY[0x1E6991F28] sendEvent:v10 withPayload:v8];
}

- (void)_sendCPAnalyticsShareEventForMultipleSelectionShare
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(PUActivityItemSourceController *)self->_itemSourceController assetItems];
  v4 = [v3 count];

  if (v4 <= 0xA)
  {
    v5 = [(PUActivityItemSourceController *)self->_itemSourceController assets];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      v9 = *MEMORY[0x1E6991E18];
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = MEMORY[0x1E6991F28];
          v18 = v9;
          v19 = v11;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
          [v12 sendEvent:@"com.apple.photos.CPAnalytics.assetSharedStandardSelectionSize" withPayload:v13];

          ++v10;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v7);
    }
  }
}

- (void)_sendCPAnalyticsShareEventWithActivityType:(id)a3 category:(int64_t)a4 didComplete:(BOOL)a5
{
  v5 = a5;
  v11 = [(PUActivityViewController *)self _generateAnalyticsPayloadForSharingEventsToActivityType:a3];
  if (v5)
  {
    v8 = *MEMORY[0x1E6991CC0];
  }

  else
  {
    v8 = *MEMORY[0x1E6991CB8];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_didSuccessfullyPrepareAssets];
    [v11 setObject:v9 forKeyedSubscript:@"didSuccessfullyPrepareAssets"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v11 setObject:v10 forKeyedSubscript:@"activityCategory"];

  [MEMORY[0x1E6991F28] sendEvent:v8 withPayload:v11];
  [(PUActivityViewController *)self _sendCPAnalyticsShareEventForMultipleSelectionShare];
}

- (id)_generateAnalyticsPayloadForSharingEventsToActivityType:(id)a3
{
  v24[8] = *MEMORY[0x1E69E9840];
  v22 = a3;
  v4 = [(PUActivityItemSourceController *)self->_itemSourceController assets];
  v20 = [v4 array];

  v18 = MEMORY[0x1E695DF90];
  v23[0] = *MEMORY[0x1E6991E20];
  v5 = objc_opt_class();
  v21 = NSStringFromClass(v5);
  v24[0] = v21;
  v23[1] = @"excludeLiveness";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUActivityViewController excludeLiveness](self, "excludeLiveness")}];
  v24[1] = v19;
  v23[2] = @"excludeLocation";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUActivityViewController excludeLocation](self, "excludeLocation")}];
  v24[2] = v6;
  v23[3] = @"hasPublishedURL";
  v7 = MEMORY[0x1E696AD98];
  v8 = [(PUActivityItemSourceController *)self->_itemSourceController publishedURL];
  v9 = [v8 absoluteString];
  v10 = [v7 numberWithInt:{objc_msgSend(v9, "length") != 0}];
  v24[3] = v10;
  v23[4] = @"sendAsOriginals";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUActivityViewController sendAsAssetBundles](self, "sendAsAssetBundles")}];
  v24[4] = v11;
  v23[5] = @"shareAsCMM";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUActivityViewController shareAsCMM](self, "shareAsCMM")}];
  v24[5] = v12;
  v23[6] = @"preparedAsCloudLink";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_preparedAsCloudLink];
  v24[6] = v13;
  v23[7] = @"shouldAutomaticallyUseCMMInMessagesIfThresholdMet";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUActivityViewController shouldAutomaticallyUseCMMInMessagesIfThresholdMet](self, "shouldAutomaticallyUseCMMInMessagesIfThresholdMet")}];
  v24[7] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:8];
  v16 = [v18 dictionaryWithDictionary:v15];

  [v16 setObject:v20 forKeyedSubscript:*MEMORY[0x1E6991E18]];
  if ([v22 length])
  {
    [v16 setObject:v22 forKeyedSubscript:@"activityType"];
  }

  return v16;
}

- (void)_activity:(id)a3 category:(int64_t)a4 didComplete:(BOOL)a5
{
  v5 = a5;
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (v5)
  {
    self->_isDismissed = 1;
  }

  else
  {
    v9 = self->_itemSourceController;
    v10 = [(PUActivityItemSourceController *)v9 publishedURL];
    v11 = PLSharingGetLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = [v10 pl_redactedShareURL];
        *buf = 138543362;
        v22 = v13;
        _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "Activity failure will expunge moment share URL: %{public}@", buf, 0xCu);
      }

      v18[5] = MEMORY[0x1E69E9820];
      v18[6] = 3221225472;
      v18[7] = __59__PUActivityViewController__activity_category_didComplete___block_invoke;
      v18[8] = &unk_1E7B80280;
      v19 = v10;
      PXExpungeMomentShareForURL();
      v11 = v19;
    }

    else if (v12)
    {
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "No moment share URL to expunge for activity %@.", buf, 0xCu);
    }

    v14 = [(PUActivityViewController *)self createdSharedCollection];

    if (v14)
    {
      v15 = MEMORY[0x1E69C39F8];
      v16 = [(PUActivityViewController *)self createdSharedCollection];
      v20 = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __59__PUActivityViewController__activity_category_didComplete___block_invoke_279;
      v18[3] = &unk_1E7B80280;
      v18[4] = self;
      [v15 deleteAlbums:v17 completionHandler:v18];
    }
  }

  [(PUActivityViewController *)self _sendCPAnalyticsShareEventWithActivityType:v8 category:a4 didComplete:v5];
  [(PUActivityItemSourceController *)self->_itemSourceController cleanUpExportedFiles];
  [(PUActivityViewController *)self _cleanUpActivityState];
}

void __59__PUActivityViewController__activity_category_didComplete___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLSharingGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) pl_redactedShareURL];
      v13 = 138543362;
      v14 = v8;
      v9 = "Activity failure did expunge moment share: %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1B36F3000, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = [*(a1 + 32) pl_redactedShareURL];
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    v9 = "Activity failure failed to expunge moment share %{public}@: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }
}

void __59__PUActivityViewController__activity_category_didComplete___block_invoke_279(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = PLSharingGetLog();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) createdSharedCollection];
      v7 = [v6 uuid];
      v8 = [*(a1 + 32) createdSharedCollection];
      v9 = [v8 title];
      v13 = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v9;
      v11 = v5;
      v12 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_1B36F3000, v11, v12, v10, &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) createdSharedCollection];
    v7 = [v6 uuid];
    v8 = [*(a1 + 32) createdSharedCollection];
    v9 = [v8 title];
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    v11 = v5;
    v12 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

- (void)_updateTopBorderView
{
  if ([(PUActivityViewController *)self allowsEmbedding])
  {
    v3 = [(PUActivityViewController *)self view];
    v15 = v3;
    if (!self->_topBorderView)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
      topBorderView = self->_topBorderView;
      self->_topBorderView = v4;

      v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.772549033 alpha:1.0];
      [(UIView *)self->_topBorderView setBackgroundColor:v6];

      [(UIView *)self->_topBorderView setAutoresizingMask:2];
      [(UIView *)v15 addSubview:self->_topBorderView];
      v3 = v15;
    }

    [(UIView *)v3 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    if (PUMainScreenScale_onceToken != -1)
    {
      dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
    }

    [(UIView *)self->_topBorderView setFrame:v8, v10, v12, 1.0 / *&PUMainScreenScale_screenScale];
    [(UIView *)v15 bringSubviewToFront:self->_topBorderView];
    v13 = v15;
  }

  else
  {
    v14 = self->_topBorderView;
    if (!v14)
    {
      return;
    }

    [(UIView *)v14 removeFromSuperview];
    v13 = self->_topBorderView;
    self->_topBorderView = 0;
  }
}

- (void)_handleShareSheetReadyToInteractCompletion
{
  if ([(PUActivityViewController *)self isReadyForInteraction]&& [(PUActivityViewController *)self _appearState]== 2)
  {
    v3 = [(PUActivityViewController *)self readyToInteractHandler];
    v6 = [v3 copy];

    if (v6)
    {
      [(PUActivityViewController *)self setReadyToInteractHandler:0];
      v6[2]();
    }

    v4 = [(PUActivityViewController *)self ppt_readyToInteractHandler];
    v5 = [v4 copy];

    if (v5)
    {
      [(PUActivityViewController *)self setPpt_readyToInteractHandler:0];
      v5[2](v5);
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PUActivityViewController;
  v4 = a3;
  [(PUActivityViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [(PUActivityViewController *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (v5 != v7)
  {
    [(PUActivityViewController *)self _updateSharingHeaderIfNeeded];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PUActivityViewController;
  [(PUActivityViewController *)&v7 viewWillDisappear:a3];
  v4 = [(PUActivityViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PUActivityViewController *)self delegate];
    [v6 activityViewControllerWillDisappear:self];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = PUActivityViewController;
  [(PUActivityViewController *)&v10 viewDidAppear:a3];
  if (self->_shouldUpdateVisibleItemsWhenReady)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E69E9820];
    v5 = 3221225472;
    v6 = __42__PUActivityViewController_viewDidAppear___block_invoke;
    v7 = &unk_1E7B80638;
    objc_copyWeak(&v8, &location);
    dispatch_async(MEMORY[0x1E69E96A0], &v4);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  [(PUActivityViewController *)self _handleShareSheetReadyToInteractCompletion:v4];
}

void __42__PUActivityViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePostReadyToInteractUpdatesIfNeeded];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUActivityViewController;
  [(PUActivityViewController *)&v3 viewDidLayoutSubviews];
  [(PUActivityViewController *)self _updateTopBorderView];
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = PLShareSheetGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v7 = objc_opt_class();
    v8 = 2048;
    v9 = self;
    v4 = v7;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "<%@:%p>: dealloc", buf, 0x16u);
  }

  [(PXContentPrivacyController *)self->_privacyControllerForContainerCollection unregisterChangeObserver:self context:PrivacyControllerObservationContext];
  if (self->_progressController)
  {
    [(PUActivityViewController *)self removeProgressUIAnimated:0 withDelay:0];
  }

  v5.receiver = self;
  v5.super_class = PUActivityViewController;
  [(PUActivityViewController *)&v5 dealloc];
}

- (void)setReadyForInteraction:(BOOL)a3
{
  if (self->_readyForInteraction != a3)
  {
    v4 = a3;
    self->_readyForInteraction = a3;
    if (!self->_usePhotosStack)
    {
      v7 = [(PUActivityViewController *)self photosCarouselViewController];
      if (v7)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = [MEMORY[0x1E696AAA8] currentHandler];
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          v11 = [v7 px_descriptionForAssertionMessage];
          [v8 handleFailureInMethod:a2 object:self file:@"PUActivityViewController.m" lineNumber:771 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.photosCarouselViewController", v10, v11}];
        }
      }

      [v7 setReadyForInteraction:v4];
    }

    [(PUActivityViewController *)self _handleShareSheetReadyToInteractCompletion];
  }
}

- (void)setExcludedActivityTypes:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v9[0] = *MEMORY[0x1E69C3EB0];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v5 addObjectsFromArray:v6];

  if (v4)
  {
    [v5 addObjectsFromArray:v4];
  }

  v7 = [v5 allObjects];
  v8.receiver = self;
  v8.super_class = PUActivityViewController;
  [(PUActivityViewController *)&v8 setExcludedActivityTypes:v7];
}

- (PUActivityViewController)initWithAssetItems:(id)a3 photosApplicationActivities:(id)a4 linkPresentation:(id)a5 assetIdentifiers:(id)a6 sharingViewModel:(id)a7
{
  v108 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v87 = a5;
  v14 = a5;
  v15 = a6;
  obj = a7;
  v16 = a7;
  v92 = self;
  v17 = objc_opt_class();
  v18 = [v16 photosDataSource];
  LODWORD(v17) = [v17 _shouldReverseOrderOfSharedItemsInDataSource:v18];

  if (v17)
  {
    v19 = v13;
    v20 = PLShareSheetGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v101 = objc_opt_class();
      v102 = 2048;
      v103 = v92;
      v21 = v101;
      _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_DEFAULT, "<%@:%p>: Reversing the order in which we share the actual items (display unaffected), as the initial data source is in reverse chronological order", buf, 0x16u);
    }

    v22 = MEMORY[0x1E695DFB8];
    v23 = [v12 reverseObjectEnumerator];
    v24 = [v23 allObjects];
    v25 = [v22 orderedSetWithArray:v24];

    v12 = v25;
    v13 = v19;
  }

  v26 = objc_alloc_init(PUActivityItemSourceController);
  [(PUActivityItemSourceController *)v26 setAssetItems:v12];
  v27 = [v16 person];
  [(PUActivityItemSourceController *)v26 setPerson:v27];

  v28 = [v16 socialGroup];
  [(PUActivityItemSourceController *)v26 setSocialGroup:v28];

  v91 = v12;
  if (_os_feature_enabled_impl())
  {
    v29 = [(PUActivityViewController *)v92 createSharedCollectionCollaborationItemIfPossibleWithViewModel:v16];
  }

  else
  {
    v29 = 0;
  }

  v30 = [(PUActivityItemSourceController *)v26 assets];
  v31 = [v30 firstObject];
  v32 = [v31 photoLibrary];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    [v16 photosDataSource];
    v83 = v26;
    v35 = v29;
    v36 = v16;
    v37 = v15;
    v38 = v13;
    v40 = v39 = v14;
    v34 = [v40 photoLibrary];

    v14 = v39;
    v13 = v38;
    v15 = v37;
    v16 = v36;
    v29 = v35;
    v26 = v83;
  }

  if (!v34)
  {
    v78 = [MEMORY[0x1E696AAA8] currentHandler];
    [v78 handleFailureInMethod:a2 object:v92 file:@"PUActivityViewController.m" lineNumber:642 description:{@"PUActivityViewController was initialized with no assets and no sharing model, and was unable to determine a photo library"}];
  }

  v90 = [MEMORY[0x1E69C3A08] sharedLibraryStatusProviderWithPhotoLibrary:v34];
  v41 = [v90 hasSharedLibraryOrPreview];
  if (!v13)
  {
    v13 = [objc_opt_class() photosApplicationActivities:v41];
  }

  v42 = [(PUActivityItemSourceController *)v26 activityItems];
  v43 = [v42 mutableCopy];

  if (v14)
  {
    [v43 addObject:v14];
  }

  v44 = PLShareSheetGetLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = objc_opt_class();
    *buf = 138413058;
    v101 = v45;
    v102 = 2048;
    v103 = v92;
    v104 = 2112;
    v105 = v43;
    v106 = 2112;
    v107 = v13;
    v46 = v45;
    _os_log_impl(&dword_1B36F3000, v44, OS_LOG_TYPE_DEFAULT, "<%@:%p>: creating PUActivityViewController with items:%@ applicationActivities:%@", buf, 0x2Au);
  }

  v98.receiver = v92;
  v98.super_class = PUActivityViewController;
  v93 = v43;
  v47 = [(PUActivityViewController *)&v98 initWithActivityItems:v43 applicationActivities:v13];
  v48 = v47;
  if (v47)
  {
    v82 = v16;
    [(PUActivityViewController *)v47 _setSelectedAssetIdentifiers:v15];
    [(PUActivityViewController *)v48 setExcludedActivityTypes:MEMORY[0x1E695E0F0]];
    objc_storeStrong(&v48->_photoLibrary, v34);
    objc_storeStrong(&v48->_sharingViewModel, obj);
    [(PUActivitySharingViewModel *)v48->_sharingViewModel registerChangeObserver:v48 context:PUActivityViewControllerViewModelObserverContext];
    objc_storeStrong(&v48->_linkPresentation, v87);
    v48->_usePhotosStack = _os_feature_enabled_impl();
    v49 = [(PUActivitySharingViewModel *)v48->_sharingViewModel photosDataSource];
    v50 = [v49 containerAssetCollection];

    v51 = [MEMORY[0x1E69C33E8] privacyControllerForCollection:v50];
    privacyControllerForContainerCollection = v48->_privacyControllerForContainerCollection;
    v48->_privacyControllerForContainerCollection = v51;

    if (v48->_privacyControllerForContainerCollection)
    {
      v53 = PLShareSheetGetLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v53, OS_LOG_TYPE_DEFAULT, "Found a privacy controller for the container asset collection of share sheet. Observing changes in lock state for dismissal.", buf, 2u);
      }

      [(PXContentPrivacyController *)v48->_privacyControllerForContainerCollection registerChangeObserver:v48 context:PrivacyControllerObservationContext];
    }

    v80 = v50;
    v81 = v34;
    v84 = v15;
    v88 = v14;
    v79 = [objc_opt_class() defaultActivityTypeOrder];
    [(PUActivityViewController *)v48 setActivityTypeOrder:?];
    [(PUActivityViewController *)v48 setObjectManipulationDelegate:v48];
    obja = v13;
    v54 = [v13 copy];
    photosActivities = v48->_photosActivities;
    v48->_photosActivities = v54;

    objc_storeStrong(&v48->_itemSourceController, v26);
    [(PUActivityItemSourceController *)v48->_itemSourceController setActivityViewController:v48];
    [(PUActivityItemSourceController *)v48->_itemSourceController setDelegate:v48];
    [(PUActivityItemSourceController *)v48->_itemSourceController registerChangeObserver:v48 context:PUActivityViewControllerSourceControllerObserverContext];
    if (_os_feature_enabled_impl())
    {
      objc_storeStrong(&v48->_sharedCollectionCollaborationItem, v29);
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v56 = [(PUActivityViewController *)v48 photosActivities];
    v57 = [v56 countByEnumeratingWithState:&v94 objects:v99 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v95;
      do
      {
        for (i = 0; i != v58; ++i)
        {
          if (*v95 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = *(*(&v94 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v61 setItemSourceController:v48->_itemSourceController];
          }
        }

        v58 = [v56 countByEnumeratingWithState:&v94 objects:v99 count:16];
      }

      while (v58);
    }

    v62 = [MEMORY[0x1E696AD88] defaultCenter];
    [v62 addObserver:v48 selector:sel__sharingManagerDidBeginPublishing_ name:@"PUPhotoSharingManagerDidBeginPublishing" object:0];

    v48->_shouldAutomaticallyUseCMMInMessagesIfThresholdMet = 0;
    v48->_shareAsCMM = 0;
    v63 = [MEMORY[0x1E69C3A18] sharedInstance];
    v64 = +[PURootSettings sharedInstance];
    v65 = [v64 irisUIEnabled];

    v66 = [(PUActivityViewController *)v48 _canShowSendAsAssetBundlesSwitchInObjectManipulationHeader];
    if (v65)
    {
      v67 = [MEMORY[0x1E69C3A18] sharedInstance];
      v48->_excludeLiveness = [v67 excludeLivenessByDefaultWhenSharing];
    }

    else
    {
      v48->_excludeLiveness = 1;
    }

    v48->_excludeLocation = [v63 excludeLocationByDefaultWhenSharing];
    v68 = PLIsLockdownMode();
    v34 = v81;
    if (!v48->_excludeLocation && ((v68 ^ 1) & 1) == 0)
    {
      v69 = PLSharingGetLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v69, OS_LOG_TYPE_DEFAULT, "In lockdown mode. Excluding location by default in share sheet, which could require format conversions during export.", buf, 2u);
      }

      v48->_excludeLocation = 1;
    }

    if (((v48->_excludeCaption | v68 ^ 1) & 1) == 0)
    {
      v70 = PLSharingGetLog();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v70, OS_LOG_TYPE_DEFAULT, "In lockdown mode. Excluding caption by default in share sheet, which could require format conversions during export.", buf, 2u);
      }

      v48->_excludeCaption = 1;
    }

    if (v66)
    {
      v71 = [v63 sendAsAssetBundlesByDefaultWhenSharing];
      p_sendAsAssetBundles = &v48->_sendAsAssetBundles;
      v48->_sendAsAssetBundles = v71;
      v73 = v71 & v68;
      v15 = v84;
      v74 = v80;
      if (v73 != 1)
      {
LABEL_54:
        v48->_shouldAutomaticallyUseCMMInMessagesIfThresholdMet = [(PUActivityViewController *)v48 _calculateAutomaticCMMSendingBehavior];
        [(PUActivityViewController *)v48 setCompletionWithItemsHandler:0];
        v76 = *(MEMORY[0x1E695F050] + 16);
        v48->_lastSelectedActivityFrame.origin = *MEMORY[0x1E695F050];
        v48->_lastSelectedActivityFrame.size = v76;
        v48->_readyForInteraction = 1;
        [(PUActivityViewController *)v48 _updateSourceControllerPreferredPreparationBehavior];
        [(PUActivityViewController *)v48 _updateSourceControllerSharingPreferencesInAllItems];
        [(PUActivityViewController *)v48 _updateSharingHeaderIfNeeded];

        v13 = obja;
        v14 = v88;
        v16 = v82;
        goto LABEL_55;
      }

      v75 = PLSharingGetLog();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v75, OS_LOG_TYPE_DEFAULT, "In lockdown mode. All Photos Data OFF by default.", buf, 2u);
      }
    }

    else
    {
      p_sendAsAssetBundles = &v48->_sendAsAssetBundles;
      v15 = v84;
      v74 = v80;
    }

    *p_sendAsAssetBundles = 0;
    goto LABEL_54;
  }

LABEL_55:

  return v48;
}

- (PUActivityViewController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUActivityViewController.m" lineNumber:608 description:{@"%s is not available as initializer", "-[PUActivityViewController init]"}];

  abort();
}

+ (BOOL)cmmMediaTypeSpecificFileSizeThresholdIsMetForAssetItems:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69C33D8] sharedInstance];
  v5 = [v4 shareSheetLinkSpatialVideoFileSizeThresholdMB];

  v6 = [MEMORY[0x1E69C33D8] sharedInstance];
  v7 = [v6 shareSheetLinkSpatialImageFileSizeThresholdMB];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v29 = v7;
    v30 = v5;
    v36 = v7 << 20;
    v37 = v5 << 20;
    v11 = *v44;
    v31 = *v44;
    v32 = v8;
LABEL_3:
    v12 = 0;
    v33 = v10;
    while (1)
    {
      if (*v44 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v43 + 1) + 8 * v12);
      v14 = [v13 asset];
      [v14 fetchPropertySetsIfNeeded];
      if ([v14 isSpatialMedia])
      {
        break;
      }

LABEL_31:

      if (++v12 == v10)
      {
        v10 = [v8 countByEnumeratingWithState:&v43 objects:v50 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_33;
      }
    }

    v15 = [v13 asset];
    v16 = objc_alloc_init(MEMORY[0x1E6978A28]);
    v42 = 0;
    v35 = v16;
    v17 = [MEMORY[0x1E6978A20] fetchResourcesToShareForAsset:v15 requestOptions:? error:?];
    v18 = v42;
    v34 = v18;
    if (v17)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v19 = v17;
      v20 = [v19 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v20)
      {
        v21 = 0;
        v22 = *v39;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v39 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v21 += [*(*(&v38 + 1) + 8 * i) fileSize];
            v24 = [v15 isVideo];
            if (v21 > v37)
            {
              v25 = v24;
            }

            else
            {
              v25 = 0;
            }

            if ((v25 & 1) != 0 || [v15 isPhoto] && v21 > v36)
            {
              LOBYTE(v20) = v25 ^ 1;
              goto LABEL_23;
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v38 objects:v47 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }

        v25 = 0;
LABEL_23:
        v11 = v31;
        v8 = v32;
        v10 = v33;
        goto LABEL_28;
      }
    }

    else
    {
      v26 = v18;
      v19 = PLShareSheetGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v49 = v26;
        _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "Auto-CMM: Spatial media resource request error: %@", buf, 0xCu);
      }

      LOBYTE(v20) = 0;
    }

    v25 = 0;
LABEL_28:

    if (!v17)
    {
      goto LABEL_40;
    }

    if (v25)
    {
      v27 = PLShareSheetGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v49 = v30;
        _os_log_impl(&dword_1B36F3000, v27, OS_LOG_TYPE_DEFAULT, "Auto-CMM: Selected spatial video exceeds Messages size threshold (%lluMB) for maintaining spatial data", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v20)
    {
      v27 = PLShareSheetGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v49 = v29;
        _os_log_impl(&dword_1B36F3000, v27, OS_LOG_TYPE_DEFAULT, "Auto-CMM: Selected spatial image exceeds Messages size threshold (%lluMB) for maintaining spatial data", buf, 0xCu);
      }

      LOBYTE(v20) = 1;
LABEL_39:

LABEL_40:
      goto LABEL_41;
    }

    goto LABEL_31;
  }

LABEL_33:
  LOBYTE(v20) = 0;
  LOBYTE(v25) = 0;
LABEL_41:

  return v25 | v20;
}

+ (BOOL)cmmFileSizeThresholdIsMetForAssetItems:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69C33D8] sharedInstance];
  v5 = [v4 shareSheetLinkTotalFileSizeThresholdMB];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = v3;
  v28 = [v6 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v28)
  {
    v7 = v5;
    v8 = 0;
    v24 = v7;
    v25 = 0;
    v9 = v7 << 20;
    v26 = v6;
    v27 = *v36;
    while (2)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        v12 = [v11 asset];
        v13 = objc_alloc_init(MEMORY[0x1E6978A28]);
        [v13 setTreatLivePhotoAsStill:{objc_msgSend(v11, "excludeLiveness")}];
        v34 = 0;
        v14 = [MEMORY[0x1E6978A20] fetchResourcesToShareForAsset:v12 requestOptions:v13 error:&v34];
        v29 = v34;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v30 objects:v45 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v31;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v31 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v8 += [*(*(&v30 + 1) + 8 * j) fileSize];
              if (v8 > v9)
              {
                v6 = v26;
                v25 = [v26 indexOfObject:v11];
                v20 = 1;
                goto LABEL_17;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v30 objects:v45 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }

          v20 = 0;
          v6 = v26;
        }

        else
        {
          v20 = 0;
        }

LABEL_17:

        if (v20)
        {

          v22 = PLShareSheetGetLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218496;
            v40 = vcvtd_n_f64_u64(v8, 0x14uLL);
            v41 = 2048;
            v42 = v25 + 1;
            v43 = 2048;
            v44 = v24;
            _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_DEFAULT, "Auto-CMM: Total selected file size is %.1fMB for the first %lu items, exceeding the threshold (%lluMB)", buf, 0x20u);
          }

          v21 = 1;
          goto LABEL_24;
        }
      }

      v28 = [v6 countByEnumeratingWithState:&v35 objects:v46 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
  v22 = v6;
LABEL_24:

  return v21;
}

+ (BOOL)cmmAssetCountThresholdIsMetForAssetItems:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [a3 count];
  v4 = [MEMORY[0x1E69C33D8] sharedInstance];
  v5 = [v4 shareSheetLinkAssetCountThreshold];

  if (v3 >= v5)
  {
    v6 = PLShareSheetGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218240;
      v9 = v3;
      v10 = 2048;
      v11 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Auto-CMM: Selected asset count (%ld) is over threshold (%ld)", &v8, 0x16u);
    }
  }

  return v3 >= v5;
}

+ (BOOL)cmmThresholdIsMetForAssetItems:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() cmmAssetCountThresholdIsMetForAssetItems:v3] & 1) != 0 || (objc_msgSend(objc_opt_class(), "cmmFileSizeThresholdIsMetForAssetItems:", v3))
  {
    v4 = 1;
  }

  else
  {
    v4 = [objc_opt_class() cmmMediaTypeSpecificFileSizeThresholdIsMetForAssetItems:v3];
  }

  return v4;
}

+ (PUActivityViewController)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PUActivityViewController.m" lineNumber:612 description:{@"%s is not available as initializer", "+[PUActivityViewController new]"}];

  abort();
}

+ (BOOL)_shouldReverseOrderOfSharedItemsInDataSource:(id)a3
{
  v3 = a3;
  v4 = [v3 sortDescriptors];
  if (![v4 count])
  {
    v5 = [v3 containerAssetCollection];
    v11 = 1;
    v7 = [MEMORY[0x1E69C33C8] sortOrderFromCollection:v5 isAscending:&v11];
    if ((v7 - 2) < 2)
    {
      LOBYTE(v8) = v11;
    }

    else
    {
      if (v7 != 1)
      {
        v6 = v7 == 4;
        goto LABEL_8;
      }

      if ([v5 px_isRegularAlbum])
      {
        v6 = 0;
        goto LABEL_8;
      }

      v10 = [v5 px_isHighlight];
      v8 = v10 | [v5 px_isMemory];
    }

    v6 = v8 ^ 1;
    goto LABEL_8;
  }

  v5 = [v4 firstObject];
  v6 = [v5 ascending] ^ 1;
LABEL_8:

  return v6 & 1;
}

+ (BOOL)needsConfidentialityCheckForActivityType:(id)a3
{
  v3 = needsConfidentialityCheckForActivityType__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&needsConfidentialityCheckForActivityType__onceToken, &__block_literal_global_230);
  }

  v5 = [needsConfidentialityCheckForActivityType___confidentialityExcludedActivities containsObject:v4];

  return v5 ^ 1;
}

void __69__PUActivityViewController_needsConfidentialityCheckForActivityType___block_invoke()
{
  v8[13] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C3D78];
  v8[0] = *MEMORY[0x1E69C3DC8];
  v8[1] = v0;
  v1 = *MEMORY[0x1E69C3EA0];
  v8[2] = *MEMORY[0x1E69C3DB8];
  v8[3] = v1;
  v2 = *MEMORY[0x1E69C3CE0];
  v8[4] = *MEMORY[0x1E69C3CC8];
  v8[5] = v2;
  v3 = *MEMORY[0x1E69C3F30];
  v8[6] = *MEMORY[0x1E69C3CE8];
  v8[7] = v3;
  v4 = *MEMORY[0x1E69C3D18];
  v8[8] = *MEMORY[0x1E69C3F28];
  v8[9] = v4;
  v5 = *MEMORY[0x1E69C3D48];
  v8[10] = *MEMORY[0x1E69C3DE0];
  v8[11] = v5;
  v8[12] = *MEMORY[0x1E69C3E58];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:13];
  v7 = needsConfidentialityCheckForActivityType___confidentialityExcludedActivities;
  needsConfidentialityCheckForActivityType___confidentialityExcludedActivities = v6;
}

+ (id)externalApplicationExcludedPhotosActivityTypes
{
  v5[16] = *MEMORY[0x1E69E9840];
  v5[0] = @"PLActivityTypeUseAsWallpaper";
  v5[1] = @"com.apple.mobileslideshow.StreamShareService";
  v5[2] = @"PUActivityTypeHide";
  v5[3] = @"PUActivityTypeDuplicate";
  v5[4] = @"PUActivityTypeSetKeyFace";
  v5[5] = @"PUActivityTypeNotThisPerson";
  v5[6] = @"PUActivityTypeInternalAutoLoopFeedback";
  v5[7] = @"PUActivityTypeInternalImageQualityFeedback";
  v5[8] = @"PUActivityTypeAddToAlbum";
  v5[9] = @"PUActivityTypeCopyLink";
  v2 = *MEMORY[0x1E69C3E08];
  v5[10] = *MEMORY[0x1E69C3E10];
  v5[11] = v2;
  v5[12] = @"PUActivityTypeRemoveFromFeaturedPhotos";
  v5[13] = @"PUActivityTypeEditDateTime";
  v5[14] = @"PUActivityTypeEditLocation";
  v5[15] = @"PUActivityTypeSuggestLessPerson";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:16];

  return v3;
}

+ (id)excludedPhotosActivityTypesForPresentationSource:(unint64_t)a3
{
  v35[9] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69C3490] sharedInstance];
  v5 = [v4 excludeActionsFromShareSheet];

  v6 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v6 userInterfaceIdiom] == 1)
  {
    v7 = [MEMORY[0x1E69C3490] sharedInstance];
    v8 = [v7 enableActionsMenuOnPad];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v9 userInterfaceIdiom])
  {
    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E69C3490] sharedInstance];
    v10 = [v11 enableActionsMenuOnPhone];
  }

  v12 = [MEMORY[0x1E69C3490] sharedInstance];
  v13 = [v12 actionsMenuLocation];

  if (v13)
  {
    v14 = v5 & (v8 | v10);
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69C3DB8];
  v35[0] = *MEMORY[0x1E69C3D78];
  v35[1] = v15;
  v16 = *MEMORY[0x1E69C3EA0];
  v17 = *MEMORY[0x1E69C3D18];
  v35[2] = *MEMORY[0x1E69C3EA0];
  v35[3] = v17;
  v18 = *MEMORY[0x1E69C3D88];
  v35[4] = *MEMORY[0x1E69C3D80];
  v35[5] = v18;
  v19 = *MEMORY[0x1E69C3EC0];
  v35[6] = @"PUActivityTypeRemoveFromFeaturedPhotos";
  v35[7] = v19;
  v35[8] = @"PUActivityTypeNotThisPerson";
  v20 = 0x1E695D000;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:9];
  v22 = [v21 mutableCopy];

  v23 = [MEMORY[0x1E69C3A00] sharedInstance];
  if (([v23 showMoveToLibraryActionsInShareSheet] & 1) == 0)
  {
    [v22 addObject:*MEMORY[0x1E69C3E10]];
    [v22 addObject:*MEMORY[0x1E69C3E08]];
  }

  if (a3 == 2)
  {
    v33[0] = @"PUActivityTypeHide";
    v33[1] = @"PUActivityTypeDuplicate";
    v33[2] = v16;
    v33[3] = @"PUActivityTypeEditDateTime";
    v33[4] = @"PUActivityTypeEditLocation";
    v33[5] = @"PLActivityTypeAlbumStream";
    v33[6] = @"com.apple.mobileslideshow.StreamShareService";
    v33[7] = @"PUActivityTypeSetKeyFace";
    v33[8] = @"PUActivityTypeNotThisPerson";
    v33[9] = @"PUActivityTypeSuggestLessPerson";
    v33[10] = @"PUActivityTypeAddToAlbum";
    v33[11] = @"PUActivityTypeCopyLink";
    v33[12] = @"PUActivityTypeRemoveFromFeaturedPhotos";
    v33[13] = @"PUActivityTypeInternalAutoLoopFeedback";
    v31 = *MEMORY[0x1E69C3DF8];
    v33[14] = @"PUActivityTypeInternalImageQualityFeedback";
    v33[15] = v31;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:16];
LABEL_22:
    v20 = v25;
    goto LABEL_23;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      goto LABEL_23;
    }

    v24 = MEMORY[0x1E695E0F0];
    if (v14)
    {
      v24 = v22;
    }

    v25 = v24;
    goto LABEL_22;
  }

  v26 = objc_alloc(MEMORY[0x1E695DF70]);
  v34[0] = @"PUActivityTypeHide";
  v34[1] = @"PUActivityTypeDuplicate";
  v34[2] = v16;
  v34[3] = @"PUActivityTypeEditDateTime";
  v34[4] = @"PUActivityTypeEditLocation";
  v34[5] = @"PUActivityTypeInternalImageQualityFeedback";
  v34[6] = *MEMORY[0x1E69C3DF8];
  v34[7] = v17;
  v27 = *MEMORY[0x1E69C3E78];
  v34[8] = *MEMORY[0x1E69C3E60];
  v34[9] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:10];
  v29 = [v26 initWithArray:v28];

  if (v14)
  {
    [v29 addObjectsFromArray:v22];
  }

  v30 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v29];
  v20 = [v30 array];

LABEL_23:

  return v20;
}

+ (id)photosApplicationActivities:(BOOL)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [a1 defaultActivityTypeOrder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__PUActivityViewController_photosApplicationActivities___block_invoke;
  v9[3] = &unk_1E7B74740;
  v7 = v5;
  v10 = v7;
  v11 = a3;
  [v6 enumerateObjectsUsingBlock:v9];

  return v7;
}

void __56__PUActivityViewController_photosApplicationActivities___block_invoke(uint64_t a1, void *a2)
{
  v33 = a2;
  if ([v33 isEqualToString:*MEMORY[0x1E69C3D18]])
  {
    v3 = objc_alloc_init(PUCompositeVideoActivity);
    if (v3)
    {
      [*(a1 + 32) addObject:v3];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69CDAB0]])
  {
    v4 = objc_alloc_init(PUMessageActivity);
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69CDAA0]])
  {
    v5 = objc_alloc_init(PUMailActivity);
    if (v5)
    {
      [*(a1 + 32) addObject:v5];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3DE0]])
  {
    v6 = objc_alloc_init(PUInternalImageQualityFeedbackActivity);
    if (v6)
    {
      [*(a1 + 32) addObject:v6];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3DC8]])
  {
    v7 = objc_alloc_init(PUInternalAutoLoopFeedbackActivity);
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3DD8]])
  {
    v8 = objc_alloc_init(PUInternalGIFExportActivity);
    if (v8)
    {
      [*(a1 + 32) addObject:v8];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69CDA90]])
  {
    v9 = objc_alloc_init(PUCopyToPasteboardActivity);
    if (v9)
    {
      [*(a1 + 32) addObject:v9];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3D30]])
  {
    v10 = objc_alloc_init(PUCopyLinkActivity);
    if (v10)
    {
      [*(a1 + 32) addObject:v10];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3DA0]])
  {
    v11 = objc_alloc_init(PUExportUnmodifiedOriginalsActivity);
    if (v11)
    {
      [*(a1 + 32) addObject:v11];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3EC0]])
  {
    v12 = objc_alloc_init(PUContentSyndicationSaveToLibraryActivity);
    if (v12)
    {
      [*(a1 + 32) addObject:v12];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3D80]])
  {
    v13 = objc_alloc_init(PUEditDateTimeActivity);
    if (v13)
    {
      [*(a1 + 32) addObject:v13];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3D88]])
  {
    v14 = objc_alloc_init(PUEditLocationActivity);
    if (v14)
    {
      [*(a1 + 32) addObject:v14];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3E60]])
  {
    v15 = objc_alloc_init(PUSetKeyFaceActivity);
    if (v15)
    {
      [*(a1 + 32) addObject:v15];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3E78]])
  {
    v16 = objc_alloc_init(PUSetSocialGroupKeyPhotoActivity);
    if (v16)
    {
      [*(a1 + 32) addObject:v16];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3E18]])
  {
    v17 = objc_alloc_init(PUNotThisPersonActivity);
    if (v17)
    {
      [*(a1 + 32) addObject:v17];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3EA0]])
  {
    v18 = objc_alloc_init(PUSlideShowActivity);
    if (v18)
    {
      [*(a1 + 32) addObject:v18];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3CF0]])
  {
    v19 = objc_alloc_init(PUAirPlayActivity);
    if (v19)
    {
      [*(a1 + 32) addObject:v19];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3F30]])
  {
    v20 = objc_alloc_init(PUWallpaperActivity);
    if (v20)
    {
      [*(a1 + 32) addObject:v20];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3F28]])
  {
    v21 = objc_alloc_init(PUWallpaperShuffleActivity);
    if (v21)
    {
      [*(a1 + 32) addObject:v21];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3DB8]])
  {
    v22 = objc_alloc_init(PUHideActivity);
    if (v22)
    {
      [*(a1 + 32) addObject:v22];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69CDAF8]])
  {
    v23 = objc_alloc_init(PUSaveToCameraRollActivity);
    if (v23)
    {
      [*(a1 + 32) addObject:v23];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3D78]])
  {
    v24 = objc_alloc_init(PUDuplicateActivity);
    if (v24)
    {
      [*(a1 + 32) addObject:v24];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3CC8]])
  {
    v25 = objc_alloc_init(PUAddToAlbumActivity);
    if (v25)
    {
      [*(a1 + 32) addObject:v25];
    }
  }

  if ([v33 isEqualToString:*MEMORY[0x1E69C3CE0]])
  {
    v26 = objc_alloc_init(PUAddToLastUsedAlbumActivity);
    if (v26)
    {
      [*(a1 + 32) addObject:v26];
    }
  }

  if (_os_feature_enabled_impl())
  {
    if (![v33 isEqualToString:*MEMORY[0x1E69C3CE8]])
    {
      goto LABEL_105;
    }

    v27 = PUAddToSharedCollectionActivity;
  }

  else
  {
    if (![v33 isEqualToString:*MEMORY[0x1E69C3CF8]])
    {
      goto LABEL_105;
    }

    v27 = PUAlbumStreamActivity;
  }

  v28 = objc_alloc_init(v27);
  if (v28)
  {
    [*(a1 + 32) addObject:v28];
  }

LABEL_105:
  if ([v33 isEqualToString:*MEMORY[0x1E69CDA80]])
  {
    v29 = objc_alloc_init(PUAssignToContactActivity);
    if (v29)
    {
      [*(a1 + 32) addObject:v29];
    }
  }

  if (PFOSVariantHasInternalUI() && [v33 isEqualToString:*MEMORY[0x1E69C3DF8]])
  {
    v30 = objc_alloc_init(MEMORY[0x1E69C3AA8]);
    if (v30)
    {
      [*(a1 + 32) addObject:v30];
    }
  }

  if (*(a1 + 40) == 1)
  {
    if ([v33 isEqualToString:*MEMORY[0x1E69C3E10]])
    {
      v31 = objc_alloc_init(PUMoveAssetsToSharedLibraryActivity);
      if (v31)
      {
        [*(a1 + 32) addObject:v31];
      }
    }

    if ([v33 isEqualToString:*MEMORY[0x1E69C3E08]])
    {
      v32 = objc_alloc_init(PUMoveAssetsToPersonalLibraryActivity);
      if (v32)
      {
        [*(a1 + 32) addObject:v32];
      }
    }
  }
}

+ (id)actionSheetPhotosApplicationActivities
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = objc_alloc_init(PUMessageActivity);
  [v2 addObject:v3];

  v4 = objc_alloc_init(PUMailActivity);
  [v2 addObject:v4];

  return v2;
}

+ (id)defaultActivityTypeOrder
{
  if (defaultActivityTypeOrder_predicate != -1)
  {
    dispatch_once(&defaultActivityTypeOrder_predicate, &__block_literal_global_3525);
  }

  v3 = defaultActivityTypeOrder_defaultActivityTypeOrder;

  return v3;
}

void __52__PUActivityViewController_defaultActivityTypeOrder__block_invoke()
{
  v39[3] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = *MEMORY[0x1E69CDAA0];
  v39[0] = *MEMORY[0x1E69CDAB0];
  v39[1] = v1;
  v39[2] = *MEMORY[0x1E69CDB08];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
  [v0 addObjectsFromArray:v2];

  v3 = *MEMORY[0x1E69C3E68];
  v38[0] = *MEMORY[0x1E69C3E50];
  v38[1] = v3;
  v4 = *MEMORY[0x1E69C3F08];
  v38[2] = *MEMORY[0x1E69C3E70];
  v38[3] = v4;
  v5 = *MEMORY[0x1E69CDB10];
  v38[4] = *MEMORY[0x1E69C3E48];
  v38[5] = v5;
  v6 = *MEMORY[0x1E69C3DA8];
  v38[6] = *MEMORY[0x1E69C3CD0];
  v38[7] = v6;
  v7 = *MEMORY[0x1E69C3E98];
  v38[8] = *MEMORY[0x1E69C3EE0];
  v38[9] = v7;
  v8 = *MEMORY[0x1E69C3E08];
  v38[10] = *MEMORY[0x1E69C3E10];
  v38[11] = v8;
  v9 = *MEMORY[0x1E69C3D50];
  v38[12] = *MEMORY[0x1E69CDAF8];
  v38[13] = v9;
  v10 = *MEMORY[0x1E69C3E60];
  v38[14] = *MEMORY[0x1E69C3D58];
  v38[15] = v10;
  v11 = *MEMORY[0x1E69C3E18];
  v38[16] = *MEMORY[0x1E69C3E78];
  v38[17] = v11;
  v12 = *MEMORY[0x1E69C3CE8];
  v38[18] = *MEMORY[0x1E69C3CF8];
  v38[19] = v12;
  v13 = *MEMORY[0x1E69C3CE0];
  v38[20] = *MEMORY[0x1E69C3CC8];
  v38[21] = v13;
  v14 = *MEMORY[0x1E69CDA90];
  v38[22] = *MEMORY[0x1E69C3EC0];
  v38[23] = v14;
  v15 = *MEMORY[0x1E69C3F40];
  v38[24] = *MEMORY[0x1E69C3F38];
  v38[25] = v15;
  v16 = *MEMORY[0x1E69C3D10];
  v38[26] = *MEMORY[0x1E69C3ED0];
  v38[27] = v16;
  v17 = *MEMORY[0x1E69C3E90];
  v38[28] = *MEMORY[0x1E69C3EA8];
  v38[29] = v17;
  v18 = *MEMORY[0x1E69C3E28];
  v38[30] = *MEMORY[0x1E69C3F20];
  v38[31] = v18;
  v19 = *MEMORY[0x1E69C3ED8];
  v38[32] = *MEMORY[0x1E69C3EE8];
  v38[33] = v19;
  v20 = *MEMORY[0x1E69C3EF8];
  v38[34] = *MEMORY[0x1E69C3EF0];
  v38[35] = v20;
  v21 = *MEMORY[0x1E69C3F10];
  v38[36] = *MEMORY[0x1E69C3F00];
  v38[37] = v21;
  v22 = *MEMORY[0x1E69C3E38];
  v38[38] = *MEMORY[0x1E69C3E88];
  v38[39] = v22;
  v23 = *MEMORY[0x1E69C3DB8];
  v38[40] = *MEMORY[0x1E69C3D78];
  v38[41] = v23;
  v24 = *MEMORY[0x1E69C3D20];
  v38[42] = *MEMORY[0x1E69C3D38];
  v38[43] = v24;
  v25 = *MEMORY[0x1E69C3E20];
  v38[44] = *MEMORY[0x1E69C3DC0];
  v38[45] = v25;
  v26 = *MEMORY[0x1E69C3CD8];
  v38[46] = *MEMORY[0x1E69C3EB8];
  v38[47] = v26;
  v27 = *MEMORY[0x1E69C3D00];
  v38[48] = *MEMORY[0x1E69C3D70];
  v38[49] = v27;
  v28 = *MEMORY[0x1E69C3F18];
  v38[50] = *MEMORY[0x1E69C3D28];
  v38[51] = v28;
  v29 = *MEMORY[0x1E69C3CF0];
  v38[52] = *MEMORY[0x1E69C3EA0];
  v38[53] = v29;
  v30 = *MEMORY[0x1E69C3F28];
  v38[54] = *MEMORY[0x1E69C3F30];
  v38[55] = v30;
  v31 = *MEMORY[0x1E69C3D48];
  v38[56] = *MEMORY[0x1E69C3E58];
  v38[57] = v31;
  v32 = *MEMORY[0x1E69C3D30];
  v38[58] = *MEMORY[0x1E69C3D18];
  v38[59] = v32;
  v33 = *MEMORY[0x1E69C3D80];
  v38[60] = *MEMORY[0x1E69C3DA0];
  v38[61] = v33;
  v34 = *MEMORY[0x1E69C3DE0];
  v38[62] = *MEMORY[0x1E69C3D88];
  v38[63] = v34;
  v38[64] = *MEMORY[0x1E69C3DC8];
  v38[65] = *MEMORY[0x1E69C3DD8];
  v38[66] = *MEMORY[0x1E69C3DF8];
  v38[67] = *MEMORY[0x1E69C3DE8];
  v38[68] = *MEMORY[0x1E69C3E00];
  v38[69] = *MEMORY[0x1E69C3DD0];
  v38[70] = *MEMORY[0x1E69C3D40];
  v38[71] = *MEMORY[0x1E69C3D90];
  v38[72] = *MEMORY[0x1E69C3D98];
  v38[73] = *MEMORY[0x1E69CDAA8];
  v38[74] = *MEMORY[0x1E69CDA80];
  v38[75] = *MEMORY[0x1E69CDAF0];
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:76];
  [v0 addObjectsFromArray:v35];

  v36 = [v0 copy];
  v37 = defaultActivityTypeOrder_defaultActivityTypeOrder;
  defaultActivityTypeOrder_defaultActivityTypeOrder = v36;
}

+ (BOOL)isShareActivity:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69C3CF0];
  v15 = *MEMORY[0x1E69CDAF8];
  v16 = v3;
  v4 = *MEMORY[0x1E69C3E20];
  v17 = *MEMORY[0x1E69C3EA0];
  v18 = v4;
  v5 = *MEMORY[0x1E69C3DB8];
  v19 = *MEMORY[0x1E69CDB20];
  v20 = v5;
  v6 = *MEMORY[0x1E69C3E60];
  v21 = *MEMORY[0x1E69C3D78];
  v22 = v6;
  v7 = *MEMORY[0x1E69C3E18];
  v23 = *MEMORY[0x1E69C3E78];
  v24 = v7;
  v8 = *MEMORY[0x1E69C3DE0];
  v25 = *MEMORY[0x1E69C3DC8];
  v26 = v8;
  v9 = *MEMORY[0x1E69C3CE0];
  v27 = *MEMORY[0x1E69C3CC8];
  v28 = v9;
  v10 = *MEMORY[0x1E69C3D80];
  v29 = *MEMORY[0x1E69C3CE8];
  v30 = v10;
  v31 = *MEMORY[0x1E69C3D88];
  v11 = MEMORY[0x1E695DEC8];
  v12 = a3;
  v13 = [v11 arrayWithObjects:&v15 count:17];
  LOBYTE(v11) = [v13 containsObject:{v12, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32}];

  return v11 ^ 1;
}

@end