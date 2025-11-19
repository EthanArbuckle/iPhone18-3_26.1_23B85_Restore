@interface PXPhotosGridPeopleBannerProvider
- (BOOL)_isAllowedSuggestion:(id)a3;
- (BOOL)_workQueue_isMeContactWithIdentifier:(id)a3;
- (PXPhotosBannerInvalidationDelegate)invalidationDelegate;
- (PXPhotosBannerPresentationDelegate)presentationDelegate;
- (PXPhotosBannerView)loadedBannerView;
- (PXPhotosGridPeopleBannerProvider)initWithPerson:(id)a3 namingSuggestionsOnly:(BOOL)a4;
- (id)_analyticsBannerEventPayloadForSuggestion:(id)a3 eventType:(int64_t)a4;
- (id)_fetchAutonamingSuggestion;
- (id)_loadAddNameBannerView;
- (id)_loadContactSuggestionBannerForContact:(id)a3 isMe:(BOOL)a4;
- (id)_loadNameSuggestionBannerForName:(id)a3;
- (id)_loadReviewFacesBannerForDataSource:(id)a3;
- (void)_addLoadCompletionBlock:(id)a3;
- (void)_applySuggestedContactForBanner:(id)a3;
- (void)_applySuggestedNameForBanner:(id)a3;
- (void)_dismissBannerAfterDelay;
- (void)_dismissBannerNotifyDelegate:(BOOL)a3;
- (void)_finishLoadWithGeneration:(unint64_t)a3 bannerView:(id)a4;
- (void)_handleDismissAfterDelay;
- (void)_invalidateLoad;
- (void)_persistNegativeUserFeedback:(id)a3;
- (void)_runReviewFacesFlow;
- (void)_setSuggestionBannerView:(id)a3 addNameBannerView:(id)a4;
- (void)_workQueue_loadBannerIfNeededHasDismissedSuggestion:(BOOL)a3 completion:(id)a4;
- (void)_workQueue_loadContactSuggestionBannerForContactIdentifier:(id)a3 suggestion:(id)a4 withCompletion:(id)a5;
- (void)bannerViewDidSelectNotNow:(id)a3;
- (void)bannerViewDidSelectPrimaryAction:(id)a3;
- (void)dealloc;
- (void)didTapUnnamedPersonBanner:(id)a3;
- (void)loadBannerView:(id)a3;
- (void)setPerson:(id)a3;
@end

@implementation PXPhotosGridPeopleBannerProvider

- (PXPhotosBannerPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (PXPhotosBannerInvalidationDelegate)invalidationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_invalidationDelegate);

  return WeakRetained;
}

- (void)didTapUnnamedPersonBanner:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [(PXPhotosGridPeopleBannerProvider *)self person];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = log;
    v7 = [(PXPhotosGridPeopleBannerProvider *)self person];
    v8 = [v7 localIdentifier];
    *buf = 138543362;
    v19 = v8;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Presenting name bootstrap for person %{public}@", buf, 0xCu);
  }

  v9 = [PXPeopleBootstrapContext contextWithPerson:v4 type:1];
  v10 = MEMORY[0x1E696AEC0];
  v11 = [MEMORY[0x1E696AE30] processInfo];
  v12 = [v11 processName];
  v13 = [@"/Library/Caches/com.apple.xbs/Sources/Photos_UICore/workspaces/photosshared/PhotosUICore/PhotosUICore/GridZero/SectionHeaders/KeyAssetSectionHeader/PXPhotosGridPeopleBannerProvider.m" lastPathComponent];
  v14 = [v10 stringWithFormat:@"%@:%@:%s:%d", v12, v13, "-[PXPhotosGridPeopleBannerProvider didTapUnnamedPersonBanner:]", 880];
  [v9 setCallerInfo:v14];

  v15 = [PXPeopleUtilities bootstrapViewControllerForContext:v9 delegate:0];
  v16 = [(PXPhotosGridPeopleBannerProvider *)self presentationDelegate];
  v17 = [v16 presentationEnvironmentForPhotosBannerProvider:self];

  [v17 presentViewController:v15 animated:1 completionHandler:0];
}

- (void)bannerViewDidSelectNotNow:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    currentBannerType = self->_currentBannerType;
    v7 = log;
    v8 = [(PXPhotosGridPeopleBannerProvider *)self person];
    v9 = [v8 localIdentifier];
    v27 = 134218242;
    v28 = currentBannerType;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "User rejected suggestion of type %lu for person %{public}@", &v27, 0x16u);
  }

  v10 = self->_currentSuggestion;
  v11 = self->_currentBannerType;
  [(PXPhotosGridPeopleBannerProvider *)self _dismissBanner];
  if (v11 <= 1)
  {
    if (!v11)
    {
      goto LABEL_11;
    }

    if (v11 == 1)
    {
      v12 = [(PXPhotosGridPeopleBannerProvider *)self person];
      [PXPeopleUtilities temporarilySuppressBootstrapOrSuggestionForPerson:v12];

      [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.bootstrap.inlineControl.dismiss" withPayload:MEMORY[0x1E695E0F8]];
    }
  }

  else
  {
    switch(v11)
    {
      case 2:
        v13 = MEMORY[0x1E6978B00];
        v14 = [(PXPhotosGridPeopleBannerProvider *)self person];
        v15 = [v4 contactSuggestion];
        v16 = [v15 identifier];
        v17 = [v13 negativeAutonamingUserFeedbackForPerson:v14 rejectedContactIdentifier:v16];

        [(PXPhotosGridPeopleBannerProvider *)self _persistNegativeUserFeedback:v17];
        if (v10)
        {
          [MEMORY[0x1E69C1590] logUserFeedback:1 forSuggestion:v10];
          if (!-[PNPersonSuggestion suggestionSource](v10, "suggestionSource") && [v4 style] == 3)
          {
            v18 = [MEMORY[0x1E695E000] standardUserDefaults];
            [v18 setBool:1 forKey:@"PXPeopleMePrompted"];

            [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.me.confirmed" withPayload:MEMORY[0x1E695E0F8]];
          }

          v19 = [(PXPhotosGridPeopleBannerProvider *)self _analyticsBannerEventPayloadForSuggestion:v10 eventType:2];
          [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.people.autonaming" withPayload:v19];
        }

        break;
      case 3:
        v20 = [(PNPersonSuggestion *)v10 autonamingFeedbackStandardNameRepresentation];
        v21 = v20;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = [v4 nameSuggestion];
        }

        v17 = v22;

        v23 = MEMORY[0x1E6978B00];
        v24 = [(PXPhotosGridPeopleBannerProvider *)self person];
        v25 = [v23 negativeAutonamingUserFeedbackForPerson:v24 rejectedName:v17];

        [(PXPhotosGridPeopleBannerProvider *)self _persistNegativeUserFeedback:v25];
        if (v10)
        {
          [MEMORY[0x1E69C1590] logUserFeedback:1 forSuggestion:v10];
          v26 = [(PXPhotosGridPeopleBannerProvider *)self _analyticsBannerEventPayloadForSuggestion:v10 eventType:2];
          [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.people.autonaming" withPayload:v26];
        }

        break;
      case 4:
LABEL_11:
        PXAssertGetLog();
      default:
        goto LABEL_24;
    }
  }

LABEL_24:
}

- (void)bannerViewDidSelectPrimaryAction:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    currentBannerType = self->_currentBannerType;
    v7 = log;
    v8 = [(PXPhotosGridPeopleBannerProvider *)self person];
    v9 = [v8 localIdentifier];
    v11 = 134218242;
    v12 = currentBannerType;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "User accepted suggestion of type %lu for person %{public}@", &v11, 0x16u);
  }

  v10 = self->_currentBannerType;
  if (v10 <= 1)
  {
    if (!v10)
    {
      goto LABEL_11;
    }

    if (v10 == 1)
    {
      [(PXPhotosGridPeopleBannerProvider *)self _runReviewFacesFlow];
    }
  }

  else
  {
    switch(v10)
    {
      case 2:
        [(PXPhotosGridPeopleBannerProvider *)self _applySuggestedContactForBanner:v4];
        break;
      case 3:
        [(PXPhotosGridPeopleBannerProvider *)self _applySuggestedNameForBanner:v4];
        break;
      case 4:
LABEL_11:
        PXAssertGetLog();
      default:
        break;
    }
  }
}

- (id)_analyticsBannerEventPayloadForSuggestion:(id)a3 eventType:(int64_t)a4
{
  v21[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 contactIdentifier];

  if (v6)
  {
    v7 = @"contact";
  }

  else
  {
    v8 = [v5 nameComponents];

    if (v8)
    {
      v7 = @"nameComponents";
    }

    else
    {
      v9 = [v5 nameString];

      v7 = @"nameString";
      if (!v9)
      {
        v7 = @"unknown";
      }
    }
  }

  v20[0] = @"eventType";
  if (a4 >= 3)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *_AnalyticsNameForEventType(PXPhotosGridPeopleBannerEventType)"];
    v17 = v15;
    v18 = v16;
    v19 = 762;
    goto LABEL_19;
  }

  v21[0] = off_1E7741710[a4];
  v21[1] = v7;
  v20[1] = @"suggestionType";
  v20[2] = @"source";
  v10 = [v5 suggestionSource];
  if (v10)
  {
    if (v10 != 1)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *_AnalyticsNameForSuggestionSource(PNPersonSuggestionSource)"];
      v17 = v15;
      v18 = v16;
      v19 = 772;
LABEL_19:
      [v17 handleFailureInFunction:v18 file:@"PXPhotosGridPeopleBannerProvider.m" lineNumber:v19 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v11 = @"intelligencePlatform";
  }

  else
  {
    v11 = @"photosIntelligence";
  }

  v21[2] = v11;
  v20[3] = @"attribution";
  v12 = [v5 attribution];
  if (v12 >= 5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *_AnalyticsNameForSuggestionAttribution(PNPersonSuggestionAttribution)"];
    v17 = v15;
    v18 = v16;
    v19 = 788;
    goto LABEL_19;
  }

  v21[3] = off_1E7741728[v12];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];

  return v13;
}

- (void)_applySuggestedNameForBanner:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosGridPeopleBannerProvider *)self person];
  v6 = [v4 nameSuggestion];

  v7 = self->_currentSuggestion;
  [(PXPhotosGridPeopleBannerProvider *)self _dismissBannerAfterDelay];
  if (v5 && v6)
  {
    v8 = [v5 photoLibrary];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__PXPhotosGridPeopleBannerProvider__applySuggestedNameForBanner___block_invoke;
    v11[3] = &unk_1E774C5C0;
    v11[4] = self;
    [PXPeopleBootstrap nameAndVerifyPerson:v5 toName:v6 photoLibrary:v8 completionHandler:v11];

    if (v7)
    {
      [MEMORY[0x1E69C1590] logUserFeedback:0 forSuggestion:v7];
      v9 = [(PXPhotosGridPeopleBannerProvider *)self _analyticsBannerEventPayloadForSuggestion:v7 eventType:1];
      [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.people.autonaming" withPayload:v9];
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1A3C1C000, log, OS_LOG_TYPE_ERROR, "Attempted to apply a name suggestion to a person when one is missing", buf, 2u);
    }
  }
}

void __65__PXPhotosGridPeopleBannerProvider__applySuggestedNameForBanner___block_invoke(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *(*(a1 + 32) + 56);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_error_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Failed to assign name to person with error %@", &v7, 0xCu);
    }
  }
}

- (id)_loadNameSuggestionBannerForName:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [[PXPeopleCandidateBannerView alloc] initWithStyle:2];
    [(PXPeopleCandidateBannerView *)v5 setNameSuggestion:v4];
    [(PXPeopleCandidateBannerView *)v5 setDelegate:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_applySuggestedContactForBanner:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosGridPeopleBannerProvider *)self person];
  v6 = [v4 contactSuggestion];
  v7 = self->_currentSuggestion;
  [(PXPhotosGridPeopleBannerProvider *)self _dismissBannerAfterDelay];
  if (v5 && v6)
  {
    v8 = [v5 photoLibrary];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__PXPhotosGridPeopleBannerProvider__applySuggestedContactForBanner___block_invoke;
    v12[3] = &unk_1E774C5C0;
    v12[4] = self;
    [PXPeopleBootstrap nameAndVerifyPerson:v5 toContact:v6 photoLibrary:v8 completionHandler:v12];

    if (v7)
    {
      [MEMORY[0x1E69C1590] logUserFeedback:0 forSuggestion:v7];
      if (!-[PNPersonSuggestion suggestionSource](v7, "suggestionSource") && [v4 style] == 3)
      {
        v9 = [MEMORY[0x1E695E000] standardUserDefaults];
        [v9 setBool:1 forKey:@"PXPeopleMePrompted"];

        [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.me.confirmed" withPayload:MEMORY[0x1E695E0F8]];
      }

      v10 = [(PXPhotosGridPeopleBannerProvider *)self _analyticsBannerEventPayloadForSuggestion:v7 eventType:1];
      [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.people.autonaming" withPayload:v10];
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1A3C1C000, log, OS_LOG_TYPE_ERROR, "Attempted to apply a contact suggestion to a person when one is missing", buf, 2u);
    }
  }
}

void __68__PXPhotosGridPeopleBannerProvider__applySuggestedContactForBanner___block_invoke(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *(*(a1 + 32) + 56);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_error_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Failed to assign contact to person with error %@", &v7, 0xCu);
    }
  }
}

- (id)_loadContactSuggestionBannerForContact:(id)a3 isMe:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    if (v4)
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    v8 = [[PXPeopleCandidateBannerView alloc] initWithStyle:v7];
    [(PXPeopleCandidateBannerView *)v8 setContactSuggestion:v6];
    [(PXPeopleCandidateBannerView *)v8 setDelegate:self];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1A3C1C000, log, OS_LOG_TYPE_ERROR, "Unable to fetch contact for expected contact suggestion banner", v11, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_workQueue_isMeContactWithIdentifier:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[PXPeopleUtilities sharedContactStore];
  v16[0] = *MEMORY[0x1E695C258];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v13 = 0;
  v7 = [v5 _crossPlatformUnifiedMeContactWithKeysToFetch:v6 error:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = [v7 identifier];
    if (v9 == v4)
    {
      v10 = 1;
    }

    else
    {
      v10 = [v4 isEqualToString:v9];
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_error_impl(&dword_1A3C1C000, log, OS_LOG_TYPE_ERROR, "Unable to fetch 'me' contact with error %@", buf, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

- (void)_workQueue_loadContactSuggestionBannerForContactIdentifier:(id)a3 suggestion:(id)a4 withCompletion:(id)a5
{
  v32[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 length])
  {
    v11 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
    v12 = *MEMORY[0x1E695C400];
    v32[0] = v11;
    v32[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];

    v14 = [objc_alloc(MEMORY[0x1E695CD78]) initWithKeysToFetch:v13];
    v15 = MEMORY[0x1E695CD58];
    v31 = v8;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    v17 = [v15 predicateForContactsWithIdentifiers:v16];
    [v14 setPredicate:v17];

    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = __Block_byref_object_copy__189136;
    v27[4] = __Block_byref_object_dispose__189137;
    v28 = 0;
    v18 = +[PXPeopleUtilities sharedContactStore];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __121__PXPhotosGridPeopleBannerProvider__workQueue_loadContactSuggestionBannerForContactIdentifier_suggestion_withCompletion___block_invoke_437;
    v26[3] = &unk_1E77416C8;
    v26[4] = v27;
    [v18 enumerateContactsWithFetchRequest:v14 error:0 usingBlock:v26];
    if (v9)
    {
      v19 = [v9 suggestionSource];
      if (!v19)
      {
        v20 = [v9 isMe];
        goto LABEL_9;
      }

      if (v19 != 1)
      {
        v20 = 0;
        goto LABEL_9;
      }
    }

    v20 = [(PXPhotosGridPeopleBannerProvider *)self _workQueue_isMeContactWithIdentifier:v8];
LABEL_9:
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __121__PXPhotosGridPeopleBannerProvider__workQueue_loadContactSuggestionBannerForContactIdentifier_suggestion_withCompletion___block_invoke_2;
    v22[3] = &unk_1E77416F0;
    v23 = v10;
    v24 = v27;
    v25 = v20;
    v22[4] = self;
    v21 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v22);

    _Block_object_dispose(v27, 8);
    goto LABEL_10;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__PXPhotosGridPeopleBannerProvider__workQueue_loadContactSuggestionBannerForContactIdentifier_suggestion_withCompletion___block_invoke;
  block[3] = &unk_1E774C250;
  v30 = v10;
  v13 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v14 = v30;
LABEL_10:
}

void __121__PXPhotosGridPeopleBannerProvider__workQueue_loadContactSuggestionBannerForContactIdentifier_suggestion_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _loadContactSuggestionBannerForContact:*(*(*(a1 + 48) + 8) + 40) isMe:*(a1 + 56)];
  (*(*(a1 + 40) + 16))();
}

- (id)_loadAddNameBannerView
{
  v2 = [(PXPhotosGridPeopleBannerProvider *)self person];
  v3 = [v2 px_isHuman] ^ 1;

  v4 = [[PXPhotosGridUnnamedPersonBannerView alloc] initWithType:v3];

  return v4;
}

- (void)_runReviewFacesFlow
{
  v3 = [(PXPhotosGridPeopleBannerProvider *)self person];
  v4 = [PXPeopleBootstrapContext contextWithPerson:v3 type:3];

  [v4 setPrefetchedDataSource:self->_reviewFacesDataSource];
  [v4 setWantsNaming:0];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AE30] processInfo];
  v7 = [v6 processName];
  v8 = [@"/Library/Caches/com.apple.xbs/Sources/Photos_UICore/workspaces/photosshared/PhotosUICore/PhotosUICore/GridZero/SectionHeaders/KeyAssetSectionHeader/PXPhotosGridPeopleBannerProvider.m" lastPathComponent];
  v9 = [v5 stringWithFormat:@"%@:%@:%s:%d", v7, v8, "-[PXPhotosGridPeopleBannerProvider _runReviewFacesFlow]", 591];
  [v4 setCallerInfo:v9];

  v10 = [PXPeopleUtilities bootstrapViewControllerForContext:v4 delegate:0];
  if (v10)
  {
    v11 = [(PXPhotosGridPeopleBannerProvider *)self presentationDelegate];
    v12 = [v11 presentationEnvironmentForPhotosBannerProvider:self];

    if (v12)
    {
      [v12 presentViewController:v10 animated:1 completionHandler:0];
    }

    else
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1A3C1C000, log, OS_LOG_TYPE_ERROR, "Unable to present bootstrap for review faces flow. Missing presentation environment", buf, 2u);
      }
    }
  }

  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.bootstrap.inlineControl.review" withPayload:MEMORY[0x1E695E0F8]];
}

void __58__PXPhotosGridPeopleBannerProvider__suggestionsDidFinish___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 40) != 1)
  {
    return;
  }

  v20 = [*(a1 + 40) object];
  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = objc_opt_class();
    v15 = NSStringFromClass(v18);
    v19 = [v20 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:v16 object:v17 file:@"PXPhotosGridPeopleBannerProvider.m" lineNumber:576 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"notification.object", v15, v19}];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = *(a1 + 48);
    v13 = *(a1 + 32);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v11 handleFailureInMethod:v12 object:v13 file:@"PXPhotosGridPeopleBannerProvider.m" lineNumber:576 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"notification.object", v15}];
  }

LABEL_4:
  v3 = [*(a1 + 32) person];
  v4 = [v20 sourcePerson];
  v5 = [v20 targetPerson];
  v6 = [v4 localIdentifier];
  v7 = [v3 localIdentifier];
  if ([v6 isEqualToString:v7])
  {

LABEL_8:
    [*(a1 + 32) _dismissBanner];
    goto LABEL_9;
  }

  v8 = [v5 localIdentifier];
  v9 = [v3 localIdentifier];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    goto LABEL_8;
  }

LABEL_9:
}

- (id)_loadReviewFacesBannerForDataSource:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_reviewFacesDataSource, a3);
  if (v5)
  {
    v6 = [[PXPeopleCandidateBannerView alloc] initWithStyle:0];
    v7 = [(PXPhotosGridPeopleBannerProvider *)self person];
    [(PXPeopleCandidateBannerView *)v6 setPerson:v7];

    [(PXPeopleCandidateBannerView *)v6 setDelegate:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_persistNegativeUserFeedback:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosGridPeopleBannerProvider *)self person];
  [v5 fetchPropertySetsIfNeeded];
  v6 = [MEMORY[0x1E695DFA8] setWithObject:v4];

  v7 = [v5 userFeedbackProperties];
  v8 = [v7 autonamingUserFeedbacks];

  if ([v8 count])
  {
    v9 = [v8 set];
    [v6 unionSet:v9];
  }

  v10 = [v5 photoLibrary];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__PXPhotosGridPeopleBannerProvider__persistNegativeUserFeedback___block_invoke;
  v15[3] = &unk_1E774C620;
  v16 = v5;
  v17 = v6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PXPhotosGridPeopleBannerProvider__persistNegativeUserFeedback___block_invoke_2;
  v13[3] = &unk_1E774B730;
  v13[4] = self;
  v14 = v16;
  v11 = v16;
  v12 = v6;
  [v10 performChanges:v15 completionHandler:v13];
}

void __65__PXPhotosGridPeopleBannerProvider__persistNegativeUserFeedback___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978990] changeRequestForPerson:*(a1 + 32)];
  [v2 setAutonamingUserFeedbacks:*(a1 + 40)];
}

void __65__PXPhotosGridPeopleBannerProvider__persistNegativeUserFeedback___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(a1 + 32) + 56);
  if (!a2)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v10 = *(a1 + 40);
    v8 = v6;
    v9 = [v10 localIdentifier];
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v5;
    _os_log_error_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Failed to persist negative autonaming feedback for person %{public}@ with error %@", &v11, 0x16u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = v6;
    v9 = [v7 localIdentifier];
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Persisted negative autonaming feedback for person %{public}@", &v11, 0xCu);
LABEL_4:
  }

LABEL_6:
}

- (id)_fetchAutonamingSuggestion
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotosGridPeopleBannerProvider *)self person];
  v4 = [v3 personUri];
  v5 = [v4 length];

  if (v5)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = log;
      v8 = [v3 localIdentifier];
      *buf = 138543362;
      v49 = v8;
      v9 = "Person (%{public}@) already has associated contact, will not request suggestions";
LABEL_28:
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  v10 = [v3 contactMatchingDictionary];
  v11 = [v10 count];

  if (v11)
  {
    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v12;
      v8 = [v3 localIdentifier];
      *buf = 138543362;
      v49 = v8;
      v9 = "Person (%{public}@) has a non-empty contact matching dictionary, will not request suggestions";
      goto LABEL_28;
    }

LABEL_29:
    v33 = 0;
    goto LABEL_30;
  }

  v13 = [v3 px_localizedName];
  v14 = [v13 length];

  if (v14)
  {
    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v15;
      v8 = [v3 localIdentifier];
      *buf = 138543362;
      v49 = v8;
      v9 = "Person (%{public}@) already has a non-empty name, will not request suggestions";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (![PXPeopleUtilities canShowSuggestionForPerson:v3])
  {
    v39 = self->_log;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v39;
      v8 = [v3 localIdentifier];
      *buf = 138543362;
      v49 = v8;
      v9 = "User has ignored a suggestion for person (%{public}@) too recently. Will not request suggestions";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  [v3 fetchPropertySetsIfNeeded];
  v16 = [v3 userFeedbackProperties];
  v17 = [v16 autonamingUserFeedbacks];
  v18 = [v17 firstObject];

  v19 = +[PXPeopleUISettings sharedInstance];
  LOBYTE(v17) = [v19 ignoreNegativeSuggestionFeedback];

  if ((v17 & 1) == 0)
  {
    if (v18)
    {
      if ([v18 type] == 3)
      {
        v20 = [MEMORY[0x1E695DF00] date];
        v21 = [v18 lastModifiedDate];
        [v20 timeIntervalSinceDate:v21];
        v23 = v22;

        v24 = +[PXPeopleUISettings sharedInstance];
        v25 = [v24 negativeFeedbackWaitPeriodMinutes];

        if (v23 < v25 * 60.0)
        {
          v44 = self->_log;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = v44;
            v46 = [v3 localIdentifier];
            *buf = 138543362;
            v49 = v46;
            _os_log_impl(&dword_1A3C1C000, v45, OS_LOG_TYPE_DEFAULT, "Skipping autonaming suggestions for person (%{public}@) because a suggestion was rejected too recently", buf, 0xCu);
          }

          v33 = 0;
          goto LABEL_44;
        }
      }
    }
  }

  v26 = [MEMORY[0x1E695E000] standardUserDefaults];
  v27 = [v26 BOOLForKey:@"PXPeopleMePrompted"];

  v28 = self->_log;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v28;
    v30 = [v3 localIdentifier];
    v31 = @"NO";
    if (v27)
    {
      v31 = @"YES";
    }

    v32 = v31;
    *buf = 138543618;
    v49 = v30;
    v50 = 2112;
    v51 = v32;
    _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_DEFAULT, "Will fetch autonaming suggestions for person %{public}@. hasPromptedForMe: %@", buf, 0x16u);
  }

  v47 = 0;
  v33 = [MEMORY[0x1E69C1590] fetchAutonamingSuggestionForPerson:v3 checkIsMe:v27 ^ 1u withError:&v47];
  v34 = v47;
  if (!v33)
  {
    v41 = self->_log;
    if (v34)
    {
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      v42 = v41;
      v43 = [v3 localIdentifier];
      *buf = 138543618;
      v49 = v43;
      v50 = 2112;
      v51 = v34;
      _os_log_error_impl(&dword_1A3C1C000, v42, OS_LOG_TYPE_ERROR, "Failed to get autonaming suggestions for person %{public}@ with error %@", buf, 0x16u);
    }

    else
    {
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      v42 = v41;
      v43 = [v3 localIdentifier];
      *buf = 138543362;
      v49 = v43;
      _os_log_impl(&dword_1A3C1C000, v42, OS_LOG_TYPE_DEFAULT, "No autonaming suggestions for person %{public}@", buf, 0xCu);
    }

    goto LABEL_42;
  }

  v35 = self->_log;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = v35;
    v37 = [v3 localIdentifier];
    *buf = 138543618;
    v49 = v37;
    v50 = 2112;
    v51 = v33;
    _os_log_impl(&dword_1A3C1C000, v36, OS_LOG_TYPE_DEFAULT, "Successfully fetched autonaming suggestion for person %{public}@: %@", buf, 0x16u);
  }

  if ([(PXPhotosGridPeopleBannerProvider *)self _isAllowedSuggestion:v33])
  {
    goto LABEL_43;
  }

  v38 = self->_log;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v38, OS_LOG_TYPE_DEFAULT, "Allow-list filtered autonaming suggestion based on attribution", buf, 2u);
  }

LABEL_42:
  v33 = 0;
LABEL_43:

LABEL_44:
LABEL_30:

  return v33;
}

- (BOOL)_isAllowedSuggestion:(id)a3
{
  v4 = a3;
  v5 = +[PXPeopleUISettings sharedInstance];
  v6 = [v5 ignoreAttributionFiltering];

  if (v6)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A3C1C000, log, OS_LOG_TYPE_DEFAULT, "Skipping attribution filtering", v12, 2u);
    }

    goto LABEL_11;
  }

  if ([v4 suggestionSource] != 1)
  {
LABEL_11:
    v10 = 1;
    goto LABEL_12;
  }

  v8 = [v4 attribution];
  if (v8)
  {
    v9 = v8 == 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
LABEL_12:

  return v10;
}

- (void)_workQueue_loadBannerIfNeededHasDismissedSuggestion:(BOOL)a3 completion:(id)a4
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = a4;
  dispatch_assert_queue_V2(self->_workQueue);
  v7 = [(PXPhotosGridPeopleBannerProvider *)self person];
  v8 = [(PXPhotosGridPeopleBannerProvider *)self namingSuggestionsOnly];
  v9 = +[PXPeopleUISettings sharedInstance];
  v10 = [v9 alwaysShowBanner];

  if (v10 && !a3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, log, OS_LOG_TYPE_DEFAULT, "Will show suggestion banner from test setting", buf, 2u);
    }

    v12 = +[PXPeopleUISettings sharedInstance];
    v13 = [v12 debugBannerStyle];

    v14 = 0;
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v14 = 3;
        v15 = @"Johnny Appleseed";
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        if (v13 == 3)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v14 = 4;
        }
      }
    }

    else if (v13)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      if (v13 == 1)
      {
        v18 = +[PXPeopleUISettings sharedInstance];
        v16 = [v18 debugContactIdentifier];

        v15 = 0;
        v17 = 0;
        v14 = 2;
      }
    }

    else
    {
      v14 = 1;
      v17 = [[PXPeopleSuggestionDataSource alloc] initWithFlowType:1];
      v35 = [(PXPeopleSuggestionDataSource *)v17 fetchAndCacheMergeCandidatesForPerson:v7];
      v15 = 0;
      v16 = 0;
    }

    v36 = +[PXPeopleUISettings sharedInstance];
    v37 = [v36 debugBannerAttribution];
    if ((v37 - 1) >= 4)
    {
      v21 = 0;
    }

    else
    {
      v21 = v37;
    }

    v22 = 0;
    goto LABEL_49;
  }

  if (!a3)
  {
    v22 = [(PXPhotosGridPeopleBannerProvider *)self _fetchAutonamingSuggestion];
    v16 = [v22 contactIdentifier];
    v23 = [v22 nameComponents];
    v24 = [v22 nameString];
    v25 = [v7 px_localizedName];
    v26 = [v25 length];

    v62 = v23;
    if (v16)
    {
      v27 = v24;
      v28 = v16;
      v21 = _AttributionForSuggestion(v22);
      v29 = self->_log;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
        v31 = [v7 localIdentifier];
        *buf = 138543362;
        v81 = v31;
        _os_log_impl(&dword_1A3C1C000, v30, OS_LOG_TYPE_DEFAULT, "Will show contact suggestion for person %{public}@", buf, 0xCu);
      }

      v15 = 0;
      v17 = 0;
      v14 = 2;
      goto LABEL_48;
    }

    if (v23)
    {
      if (v26)
      {
        goto LABEL_30;
      }

      v41 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v23 style:2 options:{0, v23}];
    }

    else
    {
      if (![v24 length] || v26)
      {
LABEL_30:
        if (v8)
        {
          v27 = v24;
          v38 = self->_log;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = v38;
            v40 = [v7 localIdentifier];
            *buf = 138543362;
            v81 = v40;
            _os_log_impl(&dword_1A3C1C000, v39, OS_LOG_TYPE_DEFAULT, "Review photos prompt is suppressed for person %{public}@", buf, 0xCu);
          }

          goto LABEL_47;
        }

        if ([PXPeopleUtilities shouldShowBootstrapForPerson:v7])
        {
          v42 = [[PXPeopleSuggestionDataSource alloc] initWithFlowType:1];
          v43 = [(PXPeopleSuggestionDataSource *)v42 fetchAndCacheMergeCandidatesForPerson:v7];
          if ([MEMORY[0x1E69789A8] shouldDisplayMergeCandidates:v43 forPerson:v7])
          {
            v27 = v24;
            v17 = v42;
            v44 = self->_log;
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v45 = v44;
              v46 = [v7 localIdentifier];
              *buf = 138543362;
              v81 = v46;
              _os_log_impl(&dword_1A3C1C000, v45, OS_LOG_TYPE_DEFAULT, "Will show review photos prompt for person %{public}@", buf, 0xCu);
            }

            v21 = 0;
            v15 = 0;
            v14 = 1;
            goto LABEL_48;
          }

          if (!v26)
          {
LABEL_64:
            v27 = v24;
            v59 = self->_log;
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v60 = v59;
              v61 = [v7 localIdentifier];
              *buf = 138543362;
              v81 = v61;
              _os_log_impl(&dword_1A3C1C000, v60, OS_LOG_TYPE_DEFAULT, "Will show add name banner for person %{public}@", buf, 0xCu);
            }

            v21 = 0;
            v15 = 0;
            v17 = 0;
            v14 = 4;
            goto LABEL_48;
          }
        }

        else if (!v26)
        {
          goto LABEL_64;
        }

        v27 = v24;
LABEL_47:
        v14 = 0;
        v21 = 0;
        v15 = 0;
        v17 = 0;
LABEL_48:

        goto LABEL_49;
      }

      v41 = v24;
    }

    v15 = v41;
    v27 = v24;
    v21 = _AttributionForSuggestion(v22);
    v47 = self->_log;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v47;
      v49 = [v7 localIdentifier];
      *buf = 138543362;
      v81 = v49;
      _os_log_impl(&dword_1A3C1C000, v48, OS_LOG_TYPE_DEFAULT, "Will show name suggestion for person %{public}@", buf, 0xCu);
    }

    v17 = 0;
    v14 = 3;
    goto LABEL_48;
  }

  v19 = [v7 px_localizedName];
  v20 = [v19 length] != 0;

  if (v20 || v8)
  {
    v14 = 0;
    v21 = 0;
    v22 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v32 = self->_log;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v32;
      v34 = [v7 localIdentifier];
      *buf = 138543362;
      v81 = v34;
      _os_log_impl(&dword_1A3C1C000, v33, OS_LOG_TYPE_DEFAULT, "Will show add name banner for person %{public}@", buf, 0xCu);
    }

    v21 = 0;
    v22 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v14 = 4;
  }

LABEL_49:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__PXPhotosGridPeopleBannerProvider__workQueue_loadBannerIfNeededHasDismissedSuggestion_completion___block_invoke;
  aBlock[3] = &unk_1E7741670;
  aBlock[4] = self;
  v79 = v21;
  v50 = v6;
  v78 = v50;
  v51 = _Block_copy(aBlock);
  v52 = v51;
  if (v14 <= 1)
  {
    if (v14)
    {
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __99__PXPhotosGridPeopleBannerProvider__workQueue_loadBannerIfNeededHasDismissedSuggestion_completion___block_invoke_2;
      v74[3] = &unk_1E774A0E0;
      v74[4] = self;
      v53 = &v75;
      v75 = v17;
      v76 = v52;
      dispatch_async(MEMORY[0x1E69E96A0], v74);
      v54 = v76;
      goto LABEL_59;
    }

    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __99__PXPhotosGridPeopleBannerProvider__workQueue_loadBannerIfNeededHasDismissedSuggestion_completion___block_invoke_6;
    v63[3] = &unk_1E774C2F0;
    v63[4] = self;
    v53 = &v64;
    v64 = v51;
    v55 = MEMORY[0x1E69E96A0];
    v56 = v63;
LABEL_57:
    dispatch_async(v55, v56);
    goto LABEL_60;
  }

  if (v14 == 2)
  {
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __99__PXPhotosGridPeopleBannerProvider__workQueue_loadBannerIfNeededHasDismissedSuggestion_completion___block_invoke_3;
    v71[3] = &unk_1E7741698;
    v71[4] = self;
    v53 = &v72;
    v57 = v22;
    v72 = v57;
    v73 = v52;
    [(PXPhotosGridPeopleBannerProvider *)self _workQueue_loadContactSuggestionBannerForContactIdentifier:v16 suggestion:v57 withCompletion:v71];
    v54 = v73;
    goto LABEL_59;
  }

  if (v14 != 3)
  {
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __99__PXPhotosGridPeopleBannerProvider__workQueue_loadBannerIfNeededHasDismissedSuggestion_completion___block_invoke_5;
    v65[3] = &unk_1E774C2F0;
    v65[4] = self;
    v53 = &v66;
    v66 = v51;
    v55 = MEMORY[0x1E69E96A0];
    v56 = v65;
    goto LABEL_57;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PXPhotosGridPeopleBannerProvider__workQueue_loadBannerIfNeededHasDismissedSuggestion_completion___block_invoke_4;
  block[3] = &unk_1E774BDB0;
  block[4] = self;
  v53 = &v68;
  v68 = v15;
  v69 = v22;
  v70 = v52;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v54 = v69;
LABEL_59:

LABEL_60:
  if (v22)
  {
    v58 = [(PXPhotosGridPeopleBannerProvider *)self _analyticsBannerEventPayloadForSuggestion:v22 eventType:0];
    [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.people.autonaming" withPayload:v58];
  }
}

void __99__PXPhotosGridPeopleBannerProvider__workQueue_loadBannerIfNeededHasDismissedSuggestion_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 _setSuggestionBannerView:v6 addNameBannerView:a3];
  [v6 setAttribution:*(a1 + 48)];

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) loadedBannerView];
  (*(v7 + 16))(v7, v8);
}

void __99__PXPhotosGridPeopleBannerProvider__workQueue_loadBannerIfNeededHasDismissedSuggestion_completion___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) _loadReviewFacesBannerForDataSource:*(a1 + 40)];
  *(*(a1 + 32) + 40) = v4 != 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  (*(*(a1 + 48) + 16))();
}

void __99__PXPhotosGridPeopleBannerProvider__workQueue_loadBannerIfNeededHasDismissedSuggestion_completion___block_invoke_3(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 40) = 2 * (a2 != 0);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v4 + 48);
  *(v4 + 48) = v5;
  v7 = a2;

  (*(*(a1 + 48) + 16))();
}

void __99__PXPhotosGridPeopleBannerProvider__workQueue_loadBannerIfNeededHasDismissedSuggestion_completion___block_invoke_4(uint64_t a1)
{
  v3 = [*(a1 + 32) _loadNameSuggestionBannerForName:*(a1 + 40)];
  v2 = 3;
  if (!v3)
  {
    v2 = 0;
  }

  *(*(a1 + 32) + 40) = v2;
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 48));
  (*(*(a1 + 56) + 16))();
}

void __99__PXPhotosGridPeopleBannerProvider__workQueue_loadBannerIfNeededHasDismissedSuggestion_completion___block_invoke_5(uint64_t a1)
{
  *(*(a1 + 32) + 40) = 4;
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = [*(a1 + 32) _loadAddNameBannerView];
  [v4 setDelegate:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

uint64_t __99__PXPhotosGridPeopleBannerProvider__workQueue_loadBannerIfNeededHasDismissedSuggestion_completion___block_invoke_6(uint64_t a1)
{
  *(*(a1 + 32) + 40) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)_dismissBannerNotifyDelegate:(BOOL)a3
{
  v3 = a3;
  self->_dismissed = 1;
  self->_currentBannerType = 0;
  [(PXPhotosGridPeopleBannerProvider *)self _setSuggestionBannerView:0 addNameBannerView:0];
  [(PXPhotosGridPeopleBannerProvider *)self _invalidateLoad];
  if (v3)
  {
    v5 = [(PXPhotosGridPeopleBannerProvider *)self invalidationDelegate];
    [v5 photosBannerProviderInvalidateLoadedBanner:self];
  }
}

- (void)_handleDismissAfterDelay
{
  v9 = *MEMORY[0x1E69E9840];
  if (!self->_dismissed)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v4 = log;
      v5 = [(PXPhotosGridPeopleBannerProvider *)self person];
      v6 = [v5 localIdentifier];
      v7 = 138543362;
      v8 = v6;
      _os_log_error_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Did not receive naming change in time for person %{public}@", &v7, 0xCu);
    }

    [(PXPhotosGridPeopleBannerProvider *)self _dismissBanner];
  }
}

- (void)_dismissBannerAfterDelay
{
  v12 = *MEMORY[0x1E69E9840];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = log;
    v5 = [(PXPhotosGridPeopleBannerProvider *)self person];
    v6 = [v5 localIdentifier];
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Waiting for person name/contact change for person %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v7 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PXPhotosGridPeopleBannerProvider__dismissBannerAfterDelay__block_invoke;
  block[3] = &unk_1E774C318;
  objc_copyWeak(&v9, buf);
  dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __60__PXPhotosGridPeopleBannerProvider__dismissBannerAfterDelay__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDismissAfterDelay];
}

- (void)_invalidateLoad
{
  v9 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXPhotosGridPeopleBannerProvider.m" lineNumber:243 description:{@"%s must be called on the main thread", "-[PXPhotosGridPeopleBannerProvider _invalidateLoad]"}];
  }

  if (self->_loadState == 1)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      loadGeneration = self->_loadGeneration;
      *buf = 134217984;
      v8 = loadGeneration;
      _os_log_impl(&dword_1A3C1C000, log, OS_LOG_TYPE_DEFAULT, "Banner view load generation %lu invalidated while in progress", buf, 0xCu);
    }

    ++self->_loadGeneration;
  }

  self->_loadState = 0;
}

- (void)_finishLoadWithGeneration:(unint64_t)a3 bannerView:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXPhotosGridPeopleBannerProvider.m" lineNumber:219 description:{@"%s must be called on the main thread", "-[PXPhotosGridPeopleBannerProvider _finishLoadWithGeneration:bannerView:]"}];
  }

  loadCompletionBlocks = self->_loadCompletionBlocks;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v10 = [(NSMutableDictionary *)loadCompletionBlocks objectForKeyedSubscript:v9];
  v11 = [v10 copy];

  v12 = self->_loadCompletionBlocks;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)v12 removeObjectForKey:v13];

  loadGeneration = self->_loadGeneration;
  log = self->_log;
  v16 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (loadGeneration == a3)
  {
    if (v16)
    {
      *buf = 134217984;
      v29 = a3;
      _os_log_impl(&dword_1A3C1C000, log, OS_LOG_TYPE_DEFAULT, "Completed current banner view load generation %lu. Entering 'complete' state", buf, 0xCu);
    }

    if ([(NSMutableDictionary *)self->_loadCompletionBlocks count])
    {
      PXAssertGetLog();
    }

    self->_loadState = 2;
  }

  else if (v16)
  {
    *buf = 134217984;
    v29 = a3;
    _os_log_impl(&dword_1A3C1C000, log, OS_LOG_TYPE_DEFAULT, "Completed non-final banner view load generation %lu", buf, 0xCu);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = v11;
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        (*(*(*(&v23 + 1) + 8 * i) + 16))();
      }

      v19 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v19);
  }
}

- (void)_addLoadCompletionBlock:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  loadGeneration = self->_loadGeneration;
  loadCompletionBlocks = self->_loadCompletionBlocks;
  v7 = a3;
  v8 = [v4 numberWithUnsignedInteger:loadGeneration];
  v14 = [(NSMutableDictionary *)loadCompletionBlocks objectForKeyedSubscript:v8];

  if (v14)
  {
    v9 = [v7 copy];

    v10 = _Block_copy(v9);
    [v14 addObject:v10];
  }

  else
  {
    v11 = MEMORY[0x1E695DF70];
    v9 = _Block_copy(v7);

    v10 = [v11 arrayWithObject:v9];
    v12 = self->_loadCompletionBlocks;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_loadGeneration];
    [(NSMutableDictionary *)v12 setObject:v10 forKeyedSubscript:v13];
  }
}

- (void)loadBannerView:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXPhotosGridPeopleBannerProvider.m" lineNumber:178 description:{@"%s must be called on the main thread", "-[PXPhotosGridPeopleBannerProvider loadBannerView:]"}];
  }

  loadState = self->_loadState;
  switch(loadState)
  {
    case 2:
      v12 = [(PXPhotosGridPeopleBannerProvider *)self loadedBannerView];
      v5[2](v5, v12);

      break;
    case 1:
      [(PXPhotosGridPeopleBannerProvider *)self _addLoadCompletionBlock:v5];
      break;
    case 0:
      v7 = self->_loadGeneration + 1;
      self->_loadState = 1;
      self->_loadGeneration = v7;
      [(PXPhotosGridPeopleBannerProvider *)self _addLoadCompletionBlock:v5];
      loadGeneration = self->_loadGeneration;
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v18 = loadGeneration;
        _os_log_impl(&dword_1A3C1C000, log, OS_LOG_TYPE_DEFAULT, "Will begin banner view load generation %lu", buf, 0xCu);
      }

      dismissed = self->_dismissed;
      objc_initWeak(buf, self);
      workQueue = self->_workQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__PXPhotosGridPeopleBannerProvider_loadBannerView___block_invoke;
      block[3] = &unk_1E7741648;
      block[4] = self;
      v16 = dismissed;
      objc_copyWeak(v15, buf);
      v15[1] = loadGeneration;
      dispatch_async(workQueue, block);
      objc_destroyWeak(v15);
      objc_destroyWeak(buf);
      break;
  }
}

void __51__PXPhotosGridPeopleBannerProvider_loadBannerView___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PXPhotosGridPeopleBannerProvider_loadBannerView___block_invoke_2;
  v4[3] = &unk_1E7741620;
  objc_copyWeak(v5, (a1 + 40));
  v5[1] = *(a1 + 48);
  [v2 _workQueue_loadBannerIfNeededHasDismissedSuggestion:v3 completion:v4];
  objc_destroyWeak(v5);
}

void __51__PXPhotosGridPeopleBannerProvider_loadBannerView___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishLoadWithGeneration:*(a1 + 40) bannerView:v3];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"PXPeopleConfirmationDidFinish" object:0];

  v4.receiver = self;
  v4.super_class = PXPhotosGridPeopleBannerProvider;
  [(PXPhotosGridPeopleBannerProvider *)&v4 dealloc];
}

- (PXPhotosBannerView)loadedBannerView
{
  loadedSuggestionBannerView = self->_loadedSuggestionBannerView;
  if (!loadedSuggestionBannerView)
  {
    loadedSuggestionBannerView = self->_loadedAddNameBannerView;
  }

  return loadedSuggestionBannerView;
}

- (void)_setSuggestionBannerView:(id)a3 addNameBannerView:(id)a4
{
  v6 = a3;
  v7 = a4;
  loadedSuggestionBannerView = self->_loadedSuggestionBannerView;
  self->_loadedSuggestionBannerView = v6;
  v10 = v6;

  loadedAddNameBannerView = self->_loadedAddNameBannerView;
  self->_loadedAddNameBannerView = v7;
}

- (void)setPerson:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  person = self->_person;
  if (person != v5)
  {
    IsNamed = _PersonIsNamed(person);
    objc_storeStrong(&self->_person, a3);
    v8 = _PersonIsNamed(self->_person);
    [(PXPeopleCandidateBannerView *)self->_loadedSuggestionBannerView setPerson:v5];
    if (IsNamed != v8)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v10 = log;
        v11 = [(PHPerson *)v5 localIdentifier];
        v12 = @"NO";
        if (v8)
        {
          v12 = @"YES";
        }

        v13 = v12;
        v14 = 138543618;
        v15 = v11;
        v16 = 2112;
        v17 = v13;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Will dismiss suggestion banner (if any) because the person %{public}@ has become named: %@", &v14, 0x16u);
      }

      [(PXPhotosGridPeopleBannerProvider *)self _dismissBanner];
    }
  }
}

- (PXPhotosGridPeopleBannerProvider)initWithPerson:(id)a3 namingSuggestionsOnly:(BOOL)a4
{
  v7 = a3;
  v20.receiver = self;
  v20.super_class = PXPhotosGridPeopleBannerProvider;
  v8 = [(PXPhotosGridPeopleBannerProvider *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_person, a3);
    v9->_namingSuggestionsOnly = a4;
    v9->_currentBannerType = 0;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INITIATED, 0);
    v12 = dispatch_queue_create("PXPhotosGridPeopleBannerProvider-workQueue", v11);
    workQueue = v9->_workQueue;
    v9->_workQueue = v12;

    v14 = os_log_create(*MEMORY[0x1E69BDDA0], "PeopleBanners");
    log = v9->_log;
    v9->_log = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    loadCompletionBlocks = v9->_loadCompletionBlocks;
    v9->_loadCompletionBlocks = v16;

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v9 selector:sel__suggestionsDidFinish_ name:@"PXPeopleConfirmationDidFinish" object:0];
  }

  return v9;
}

@end