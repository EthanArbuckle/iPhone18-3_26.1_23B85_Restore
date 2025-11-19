@interface PXSharedLibraryAssistantViewModel
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)shareCounts;
- (NSArray)emailAddresses;
- (NSArray)phoneNumbers;
- (NSString)localizedParticipantList;
- (PXSharedLibraryAssistantViewModel)init;
- (PXSharedLibraryRule)sharedLibraryRule;
- (id)localizedSelectedPeopleWithAdditionalPeopleCount:(int64_t *)a3;
- (int64_t)shouldShowPeopleState;
- (void)_didChangePreviewRelatedProperty;
- (void)_didChangeShareCountRelatedProperty;
- (void)_recalculateCustomShareCountsWithCompletion:(id)a3;
- (void)_recalculateEverythingShareCountsWithCompletion:(id)a3;
- (void)_recalculateManualSelectionShareCountsWithCompletion:(id)a3;
- (void)_recalculateShareCountsIfNeeded;
- (void)_recalculateSuggestedStartDateIfNeeded;
- (void)_setCachedShareCounts:(id *)a3;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)performChanges:(id)a3 shareCountsCompletionHandler:(id)a4;
- (void)performInitialChanges:(id)a3;
- (void)setAssetLocalIdentifiers:(id)a3;
- (void)setAutoShareEnabled:(BOOL)a3;
- (void)setAutoSharePolicy:(int64_t)a3;
- (void)setInfosWithBothPeopleAndParticipants:(id)a3;
- (void)setIsCancelingAssistant:(BOOL)a3;
- (void)setMode:(int64_t)a3;
- (void)setParticipantDataSource:(id)a3;
- (void)setParticipantsImage:(id)a3;
- (void)setPersonUUIDs:(id)a3;
- (void)setSelectedRuleType:(int64_t)a3;
- (void)setSharedLibrary:(id)a3;
- (void)setSourceLibraryInfo:(id)a3;
- (void)setStartDate:(id)a3;
- (void)setSuggestedStartDate:(id)a3;
@end

@implementation PXSharedLibraryAssistantViewModel

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (_PXSharedLibraryParticipantDataSourceManagerObservationContext != a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantViewModel.m" lineNumber:460 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = v9;
  if (v6)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__PXSharedLibraryAssistantViewModel_observable_didChange_context___block_invoke;
    v12[3] = &unk_1E7749B98;
    v12[4] = self;
    [(PXSharedLibraryAssistantViewModel *)self performChanges:v12];
    [(PXSharedLibraryAssistantViewModel *)self _didChangePreviewRelatedProperty];
  }
}

- (void)_recalculateSuggestedStartDateIfNeeded
{
  v3 = [(PXSharedLibraryAssistantViewModel *)self currentChanges];
  if (([objc_opt_class() suggestedStartDateChangeDescriptors] & v3) != 0 && !self->_suggestedStartDate)
  {
    objc_initWeak(&location, self);
    v4 = [(PXSharedLibraryAssistantViewModel *)self sourceLibraryInfo];
    v5 = [(PXSharedLibraryAssistantViewModel *)self personUUIDs];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__PXSharedLibraryAssistantViewModel__recalculateSuggestedStartDateIfNeeded__block_invoke;
    v6[3] = &unk_1E7749B70;
    objc_copyWeak(&v7, &location);
    [v4 fetchSuggestedStartDateForPersonUUIDs:v5 completion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __75__PXSharedLibraryAssistantViewModel__recalculateSuggestedStartDateIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF00] now];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__PXSharedLibraryAssistantViewModel__recalculateSuggestedStartDateIfNeeded__block_invoke_2;
  v8[3] = &unk_1E7749B48;
  objc_copyWeak(&v11, (a1 + 32));
  v6 = v3;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  [WeakRetained performChanges:v8];

  objc_destroyWeak(&v11);
}

void __75__PXSharedLibraryAssistantViewModel__recalculateSuggestedStartDateIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v4 = [*(a1 + 32) earlierDate:*(a1 + 40)];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setSuggestedStartDate:v4];

  if (v3)
  {
  }
}

- (void)setSuggestedStartDate:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToDate:self->_suggestedStartDate] & 1) == 0)
  {
    objc_storeStrong(&self->_suggestedStartDate, a3);
    [(PXSharedLibraryAssistantViewModel *)self signalChange:0x2000];
  }
}

- (void)_recalculateManualSelectionShareCountsWithCompletion:(id)a3
{
  v10 = 0uLL;
  v11 = 0;
  v4 = a3;
  v5 = [(PXSharedLibraryAssistantViewModel *)self sourceLibraryInfo];
  v6 = [(PXSharedLibraryAssistantViewModel *)self assetLocalIdentifiers];
  if (v5)
  {
    [v5 assetsCountsForAssetLocalIdentifiers:v6];
  }

  else
  {
    v10 = 0uLL;
    v11 = 0;
  }

  v7 = v4[2];
  v8 = v10;
  v9 = v11;
  v7(v4, &v8);
}

- (void)_recalculateCustomShareCountsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PXSharedLibraryAssistantViewModel *)self startDate];
  v6 = [(PXSharedLibraryAssistantViewModel *)self personUUIDs];
  v7 = v6;
  if (v5 || [v6 count])
  {
    v8 = [(PXSharedLibraryAssistantViewModel *)self sourceLibraryInfo];
    [v8 fetchEstimatedAssetsCountsForStartDate:v5 personUUIDs:v7 completion:v4];
  }

  else
  {
    v9 = v4[2];
    v10 = *off_1E7721F78;
    v11 = *(off_1E7721F78 + 2);
    v9(v4, &v10);
  }
}

- (void)_recalculateEverythingShareCountsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PXSharedLibraryAssistantViewModel *)self sourceLibraryInfo];
  [v5 fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion:v4];
}

- (void)_recalculateShareCountsIfNeeded
{
  v3 = [(PXSharedLibraryAssistantViewModel *)self currentChanges];
  if (([objc_opt_class() shareCountChangeDescriptors] & v3) != 0)
  {
    v4 = self->_cachedShareCounts.photosCount == 0x7FFFFFFFFFFFFFFFLL || self->_cachedShareCounts.videosCount == 0x7FFFFFFFFFFFFFFFLL;
    if (v4 || self->_cachedShareCounts.othersCount == 0x7FFFFFFFFFFFFFFFLL)
    {
      shareCountsCompletionHandler = self->_shareCountsCompletionHandler;
      if (shareCountsCompletionHandler)
      {
        v7 = _Block_copy(shareCountsCompletionHandler);
        v8 = self->_shareCountsCompletionHandler;
        self->_shareCountsCompletionHandler = 0;
      }

      else
      {
        v7 = 0;
      }

      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __68__PXSharedLibraryAssistantViewModel__recalculateShareCountsIfNeeded__block_invoke;
      v15 = &unk_1E7749B20;
      v16 = self;
      v17 = v7;
      v9 = v7;
      v10 = _Block_copy(&v12);
      v11 = [(PXSharedLibraryAssistantViewModel *)self autoSharePolicy:v12];
      switch(v11)
      {
        case 2:
          [(PXSharedLibraryAssistantViewModel *)self _recalculateCustomShareCountsWithCompletion:v10];
          break;
        case 1:
          [(PXSharedLibraryAssistantViewModel *)self _recalculateEverythingShareCountsWithCompletion:v10];
          break;
        case 0:
          [(PXSharedLibraryAssistantViewModel *)self _recalculateManualSelectionShareCountsWithCompletion:v10];
          break;
      }
    }
  }
}

void __68__PXSharedLibraryAssistantViewModel__recalculateShareCountsIfNeeded__block_invoke(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__PXSharedLibraryAssistantViewModel__recalculateShareCountsIfNeeded__block_invoke_2;
  v3[3] = &unk_1E7749AF8;
  v3[4] = v2;
  v5 = *a2;
  v6 = *(a2 + 2);
  v4 = *(a1 + 40);
  [v2 performChanges:v3];
}

uint64_t __68__PXSharedLibraryAssistantViewModel__recalculateShareCountsIfNeeded__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  [v2 _setCachedShareCounts:&v4];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_setCachedShareCounts:(id *)a3
{
  if (self->_cachedShareCounts.photosCount != a3->var0 || self->_cachedShareCounts.videosCount != a3->var1 || self->_cachedShareCounts.othersCount != a3->var2)
  {
    v5 = *&a3->var0;
    self->_cachedShareCounts.othersCount = a3->var2;
    *&self->_cachedShareCounts.photosCount = v5;
    [(PXSharedLibraryAssistantViewModel *)self signalChange:2048];
  }
}

- (void)_didChangeShareCountRelatedProperty
{
  v2 = *off_1E7721F70;
  v3 = *(off_1E7721F70 + 2);
  [(PXSharedLibraryAssistantViewModel *)self _setCachedShareCounts:&v2];
}

- (void)_didChangePreviewRelatedProperty
{
  if (!self->_performingInitialChanges && !self->_previewIsOutdated)
  {
    v3 = [(PXSharedLibraryAssistantViewModel *)self sharedLibrary];
    v4 = [v3 isInPreview];

    if (v4)
    {
      self->_previewIsOutdated = 1;
    }
  }
}

- (void)setInfosWithBothPeopleAndParticipants:(id)a3
{
  v4 = a3;
  infosWithBothPeopleAndParticipants = self->_infosWithBothPeopleAndParticipants;
  if (infosWithBothPeopleAndParticipants != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)infosWithBothPeopleAndParticipants isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_infosWithBothPeopleAndParticipants;
      self->_infosWithBothPeopleAndParticipants = v7;

      [(PXSharedLibraryAssistantViewModel *)self signalChange:0x4000];
      v4 = v9;
    }
  }
}

- (void)setSelectedRuleType:(int64_t)a3
{
  if (self->_selectedRuleType != a3)
  {
    self->_selectedRuleType = a3;
    [(PXSharedLibraryAssistantViewModel *)self signalChange:1024];
    [(PXSharedLibraryAssistantViewModel *)self _didChangePreviewRelatedProperty];

    [(PXSharedLibraryAssistantViewModel *)self _didChangeShareCountRelatedProperty];
  }
}

- (void)setSourceLibraryInfo:(id)a3
{
  v5 = a3;
  if (self->_sourceLibraryInfo != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_sourceLibraryInfo, a3);
    [(PXSharedLibraryAssistantViewModel *)self signalChange:256];
    v5 = v6;
  }
}

- (void)setSharedLibrary:(id)a3
{
  v5 = a3;
  if (self->_sharedLibrary != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_sharedLibrary, a3);
    [(PXSharedLibraryAssistantViewModel *)self signalChange:64];
    v6 = [(PXSharedLibrary *)self->_sharedLibrary isInPreview];
    v5 = v7;
    if (v6)
    {
      self->_hasChangedUserInputValues = 1;
    }
  }
}

- (void)setParticipantDataSource:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantViewModel.m" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"participantDataSource"}];
  }

  participantDataSourceManager = self->_participantDataSourceManager;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PXSharedLibraryAssistantViewModel_setParticipantDataSource___block_invoke;
  v9[3] = &unk_1E7749AD0;
  v10 = v5;
  v7 = v5;
  [(PXSharedLibraryParticipantDataSourceManager *)participantDataSourceManager performChanges:v9];
}

- (void)setIsCancelingAssistant:(BOOL)a3
{
  if (self->_isCancelingAssistant != a3)
  {
    self->_isCancelingAssistant = a3;
    [(PXSharedLibraryAssistantViewModel *)self signalChange:4096];
  }
}

- (void)setAutoShareEnabled:(BOOL)a3
{
  if (self->_autoShareEnabled != a3)
  {
    self->_autoShareEnabled = a3;
    [(PXSharedLibraryAssistantViewModel *)self signalChange:2];
  }
}

- (void)setAssetLocalIdentifiers:(id)a3
{
  v8 = a3;
  v5 = self->_assetLocalIdentifiers;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(NSArray *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_assetLocalIdentifiers, a3);
      [(PXSharedLibraryAssistantViewModel *)self signalChange:512];
      [(PXSharedLibraryAssistantViewModel *)self _didChangePreviewRelatedProperty];
      [(PXSharedLibraryAssistantViewModel *)self _didChangeShareCountRelatedProperty];
    }
  }
}

- (void)setParticipantsImage:(id)a3
{
  v4 = a3;
  participantsImage = self->_participantsImage;
  if (participantsImage != v4)
  {
    v9 = v4;
    v6 = [(UIImage *)participantsImage isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIImage *)v9 copy];
      v8 = self->_participantsImage;
      self->_participantsImage = v7;

      [(PXSharedLibraryAssistantViewModel *)self signalChange:16];
      v4 = v9;
    }
  }
}

- (void)setPersonUUIDs:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantViewModel.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"personUUIDs"}];

    v5 = 0;
  }

  v6 = [v5 copy];
  personUUIDs = self->_personUUIDs;
  self->_personUUIDs = v6;

  [(PXSharedLibraryAssistantViewModel *)self signalChange:8];
  [(PXSharedLibraryAssistantViewModel *)self _didChangeSuggestedStartDateRelatedProperty];
  [(PXSharedLibraryAssistantViewModel *)self _didChangePreviewRelatedProperty];
  [(PXSharedLibraryAssistantViewModel *)self _didChangeShareCountRelatedProperty];
}

- (void)setStartDate:(id)a3
{
  v4 = a3;
  startDate = self->_startDate;
  if (startDate != v4)
  {
    v9 = v4;
    v6 = [(NSDate *)startDate isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDate *)v9 copy];
      v8 = self->_startDate;
      self->_startDate = v7;

      [(PXSharedLibraryAssistantViewModel *)self signalChange:4];
      [(PXSharedLibraryAssistantViewModel *)self _didChangePreviewRelatedProperty];
      [(PXSharedLibraryAssistantViewModel *)self _didChangeShareCountRelatedProperty];
      v4 = v9;
    }
  }
}

- (void)setAutoSharePolicy:(int64_t)a3
{
  if (self->_autoSharePolicy != a3)
  {
    self->_autoSharePolicy = a3;
    [(PXSharedLibraryAssistantViewModel *)self signalChange:128];
    [(PXSharedLibraryAssistantViewModel *)self _didChangePreviewRelatedProperty];

    [(PXSharedLibraryAssistantViewModel *)self _didChangeShareCountRelatedProperty];
  }
}

- (void)setMode:(int64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    [(PXSharedLibraryAssistantViewModel *)self signalChange:1];
  }
}

- (void)performInitialChanges:(id)a3
{
  v4 = a3;
  performingInitialChanges = self->_performingInitialChanges;
  self->_performingInitialChanges = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PXSharedLibraryAssistantViewModel_performInitialChanges___block_invoke;
  v7[3] = &unk_1E7749AA8;
  v8 = v4;
  v6 = v4;
  [(PXSharedLibraryAssistantViewModel *)self performChanges:v7];
  self->_performingInitialChanges = performingInitialChanges;
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXSharedLibraryAssistantViewModel;
  [(PXSharedLibraryAssistantViewModel *)&v3 didPerformChanges];
  if (!self->_performingInitialChanges && !self->_hasChangedUserInputValues)
  {
    self->_hasChangedUserInputValues = ([(PXSharedLibraryAssistantViewModel *)self currentChanges]& 0x6AE) != 0;
  }

  [(PXSharedLibraryAssistantViewModel *)self _recalculateShareCountsIfNeeded];
  [(PXSharedLibraryAssistantViewModel *)self _recalculateSuggestedStartDateIfNeeded];
}

- (void)performChanges:(id)a3 shareCountsCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  shareCountsCompletionHandler = self->_shareCountsCompletionHandler;
  self->_shareCountsCompletionHandler = v7;

  v11.receiver = self;
  v11.super_class = PXSharedLibraryAssistantViewModel;
  [(PXSharedLibraryAssistantViewModel *)&v11 performChanges:v6];

  v9 = self->_shareCountsCompletionHandler;
  if (v9)
  {
    v9[2]();
    v10 = self->_shareCountsCompletionHandler;
    self->_shareCountsCompletionHandler = 0;
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXSharedLibraryAssistantViewModel;
  [(PXSharedLibraryAssistantViewModel *)&v3 performChanges:a3];
}

- (NSArray)phoneNumbers
{
  v2 = [(PXSharedLibraryAssistantViewModel *)self participantDataSource];
  v3 = [v2 phoneNumbers];
  v4 = [v3 allObjects];

  return v4;
}

- (NSArray)emailAddresses
{
  v2 = [(PXSharedLibraryAssistantViewModel *)self participantDataSource];
  v3 = [v2 emailAddresses];
  v4 = [v3 allObjects];

  return v4;
}

- (int64_t)shouldShowPeopleState
{
  result = self->_shouldShowPeopleState;
  if (!result)
  {
    v4 = [(PXSharedLibraryAssistantViewModel *)self sourceLibraryInfo];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = [v5 photoLibrary];

    if (v6)
    {
      v7 = [[PXPeopleProgressManager alloc] initWithPhotoLibrary:v6];
      v8 = [(PXPeopleProgressManager *)v7 featureUnlocked];
      v9 = 1;
      if (!v8)
      {
        v9 = 2;
      }

      self->_shouldShowPeopleState = v9;
    }

    else
    {
      self->_shouldShowPeopleState = 2;
    }

    return self->_shouldShowPeopleState;
  }

  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)shareCounts
{
  v5 = [(PXSharedLibraryAssistantViewModel *)self sharedLibrary];
  if ([v5 isInPreview])
  {
    v6 = !self->_previewIsOutdated;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PXSharedLibraryAssistantViewModel *)self sharedLibrary];
  if ([v7 isPublished])
  {
    v8 = [(PXSharedLibraryAssistantViewModel *)self sharedLibrary];
    v9 = [v8 isOwned];
  }

  else
  {
    v9 = 0;
  }

  if ((v6 | v9))
  {
    v11 = [(PXSharedLibraryAssistantViewModel *)self sharedLibrary];
    v12 = v11;
    if (v11)
    {
      [v11 fetchItemCounts];
    }

    else
    {
      v13 = 0uLL;
      v14 = 0;
    }

    *&retstr->var0 = v13;
    retstr->var2 = v14;
  }

  else
  {
    *&retstr->var0 = *&self->_cachedShareCounts.photosCount;
    retstr->var2 = self->_cachedShareCounts.othersCount;
  }

  return result;
}

- (NSString)localizedParticipantList
{
  v2 = [(PXSharedLibraryAssistantViewModel *)self participantDataSource];
  v3 = [v2 names];

  v4 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v3];

  return v4;
}

- (id)localizedSelectedPeopleWithAdditionalPeopleCount:(int64_t *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantViewModel.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"additionalPeopleCount"}];
  }

  v5 = [(PXSharedLibraryAssistantViewModel *)self sourceLibraryInfo];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 photoLibrary];

  if (v7)
  {
    v8 = [(PXSharedLibraryAssistantViewModel *)self personUUIDs];
    v9 = [v7 librarySpecificFetchOptions];
    v10 = [MEMORY[0x1E6978980] fetchPersonsWithLocalIdentifiers:v8 options:v9];
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v24 + 1) + 8 * i) px_localizedName];
          if ([v17 length])
          {
            [v11 addObject:v17];
            if ([v11 count] >= 3)
            {

              goto LABEL_20;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    v19 = [v12 count];
    v18 = v19 - [v11 count];

    if (v18 && [v11 count] == 3)
    {
      ++v18;
      v20 = [v11 subarrayWithRange:{0, objc_msgSend(v11, "count") - 1}];

      v11 = v20;
    }
  }

  else
  {
    v18 = 0;
    v11 = MEMORY[0x1E695E0F0];
  }

  *a3 = v18;

  return v11;
}

- (PXSharedLibraryRule)sharedLibraryRule
{
  v3 = [(PXSharedLibraryAssistantViewModel *)self autoSharePolicy];
  if (v3 == 2)
  {
    v6 = [(PXSharedLibraryAssistantViewModel *)self startDate];
    v7 = [(PXSharedLibraryAssistantViewModel *)self personUUIDs];
    v5 = [PXSharedLibraryRule customizedRuleWithStartDate:v6 personUUIDs:v7];
  }

  else if (v3 == 1)
  {
    v5 = +[PXSharedLibraryRule everythingRule];
  }

  else if (v3)
  {
    v5 = 0;
  }

  else
  {
    v4 = [(PXSharedLibraryAssistantViewModel *)self assetLocalIdentifiers];
    v5 = [PXSharedLibraryRule manualRuleWithAssetLocalIdentifiers:v4];
  }

  return v5;
}

- (PXSharedLibraryAssistantViewModel)init
{
  v10.receiver = self;
  v10.super_class = PXSharedLibraryAssistantViewModel;
  v2 = [(PXSharedLibraryAssistantViewModel *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_mode = 0;
    v2->_autoSharePolicy = 0;
    personUUIDs = v2->_personUUIDs;
    v2->_personUUIDs = MEMORY[0x1E695E0F0];

    v3->_autoShareEnabled = 0;
    v5 = objc_alloc_init(PXSharedLibraryParticipantDataSourceManager);
    participantDataSourceManager = v3->_participantDataSourceManager;
    v3->_participantDataSourceManager = v5;

    [(PXSectionedDataSourceManager *)v3->_participantDataSourceManager registerChangeObserver:v3 context:_PXSharedLibraryParticipantDataSourceManagerObservationContext];
    v3->_selectedRuleType = 0;
    v3->_cachedShareCounts.othersCount = *(off_1E7721F70 + 2);
    *&v3->_cachedShareCounts.photosCount = *off_1E7721F70;
    v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    infosWithBothPeopleAndParticipants = v3->_infosWithBothPeopleAndParticipants;
    v3->_infosWithBothPeopleAndParticipants = v7;
  }

  return v3;
}

@end