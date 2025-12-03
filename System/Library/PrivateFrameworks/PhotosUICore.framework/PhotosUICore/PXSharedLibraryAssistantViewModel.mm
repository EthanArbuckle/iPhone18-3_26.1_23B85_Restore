@interface PXSharedLibraryAssistantViewModel
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)shareCounts;
- (NSArray)emailAddresses;
- (NSArray)phoneNumbers;
- (NSString)localizedParticipantList;
- (PXSharedLibraryAssistantViewModel)init;
- (PXSharedLibraryRule)sharedLibraryRule;
- (id)localizedSelectedPeopleWithAdditionalPeopleCount:(int64_t *)count;
- (int64_t)shouldShowPeopleState;
- (void)_didChangePreviewRelatedProperty;
- (void)_didChangeShareCountRelatedProperty;
- (void)_recalculateCustomShareCountsWithCompletion:(id)completion;
- (void)_recalculateEverythingShareCountsWithCompletion:(id)completion;
- (void)_recalculateManualSelectionShareCountsWithCompletion:(id)completion;
- (void)_recalculateShareCountsIfNeeded;
- (void)_recalculateSuggestedStartDateIfNeeded;
- (void)_setCachedShareCounts:(id *)counts;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)performChanges:(id)changes shareCountsCompletionHandler:(id)handler;
- (void)performInitialChanges:(id)changes;
- (void)setAssetLocalIdentifiers:(id)identifiers;
- (void)setAutoShareEnabled:(BOOL)enabled;
- (void)setAutoSharePolicy:(int64_t)policy;
- (void)setInfosWithBothPeopleAndParticipants:(id)participants;
- (void)setIsCancelingAssistant:(BOOL)assistant;
- (void)setMode:(int64_t)mode;
- (void)setParticipantDataSource:(id)source;
- (void)setParticipantsImage:(id)image;
- (void)setPersonUUIDs:(id)ds;
- (void)setSelectedRuleType:(int64_t)type;
- (void)setSharedLibrary:(id)library;
- (void)setSourceLibraryInfo:(id)info;
- (void)setStartDate:(id)date;
- (void)setSuggestedStartDate:(id)date;
@end

@implementation PXSharedLibraryAssistantViewModel

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (_PXSharedLibraryParticipantDataSourceManagerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantViewModel.m" lineNumber:460 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if (changeCopy)
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
  currentChanges = [(PXSharedLibraryAssistantViewModel *)self currentChanges];
  if (([objc_opt_class() suggestedStartDateChangeDescriptors] & currentChanges) != 0 && !self->_suggestedStartDate)
  {
    objc_initWeak(&location, self);
    sourceLibraryInfo = [(PXSharedLibraryAssistantViewModel *)self sourceLibraryInfo];
    personUUIDs = [(PXSharedLibraryAssistantViewModel *)self personUUIDs];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__PXSharedLibraryAssistantViewModel__recalculateSuggestedStartDateIfNeeded__block_invoke;
    v6[3] = &unk_1E7749B70;
    objc_copyWeak(&v7, &location);
    [sourceLibraryInfo fetchSuggestedStartDateForPersonUUIDs:personUUIDs completion:v6];

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

- (void)setSuggestedStartDate:(id)date
{
  dateCopy = date;
  if (([dateCopy isEqualToDate:self->_suggestedStartDate] & 1) == 0)
  {
    objc_storeStrong(&self->_suggestedStartDate, date);
    [(PXSharedLibraryAssistantViewModel *)self signalChange:0x2000];
  }
}

- (void)_recalculateManualSelectionShareCountsWithCompletion:(id)completion
{
  v10 = 0uLL;
  v11 = 0;
  completionCopy = completion;
  sourceLibraryInfo = [(PXSharedLibraryAssistantViewModel *)self sourceLibraryInfo];
  assetLocalIdentifiers = [(PXSharedLibraryAssistantViewModel *)self assetLocalIdentifiers];
  if (sourceLibraryInfo)
  {
    [sourceLibraryInfo assetsCountsForAssetLocalIdentifiers:assetLocalIdentifiers];
  }

  else
  {
    v10 = 0uLL;
    v11 = 0;
  }

  v7 = completionCopy[2];
  v8 = v10;
  v9 = v11;
  v7(completionCopy, &v8);
}

- (void)_recalculateCustomShareCountsWithCompletion:(id)completion
{
  completionCopy = completion;
  startDate = [(PXSharedLibraryAssistantViewModel *)self startDate];
  personUUIDs = [(PXSharedLibraryAssistantViewModel *)self personUUIDs];
  v7 = personUUIDs;
  if (startDate || [personUUIDs count])
  {
    sourceLibraryInfo = [(PXSharedLibraryAssistantViewModel *)self sourceLibraryInfo];
    [sourceLibraryInfo fetchEstimatedAssetsCountsForStartDate:startDate personUUIDs:v7 completion:completionCopy];
  }

  else
  {
    v9 = completionCopy[2];
    v10 = *off_1E7721F78;
    v11 = *(off_1E7721F78 + 2);
    v9(completionCopy, &v10);
  }
}

- (void)_recalculateEverythingShareCountsWithCompletion:(id)completion
{
  completionCopy = completion;
  sourceLibraryInfo = [(PXSharedLibraryAssistantViewModel *)self sourceLibraryInfo];
  [sourceLibraryInfo fetchEstimatedAssetsCountsShareEverythingPolicyWithCompletion:completionCopy];
}

- (void)_recalculateShareCountsIfNeeded
{
  currentChanges = [(PXSharedLibraryAssistantViewModel *)self currentChanges];
  if (([objc_opt_class() shareCountChangeDescriptors] & currentChanges) != 0)
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
      selfCopy = self;
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

- (void)_setCachedShareCounts:(id *)counts
{
  if (self->_cachedShareCounts.photosCount != counts->var0 || self->_cachedShareCounts.videosCount != counts->var1 || self->_cachedShareCounts.othersCount != counts->var2)
  {
    v5 = *&counts->var0;
    self->_cachedShareCounts.othersCount = counts->var2;
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
    sharedLibrary = [(PXSharedLibraryAssistantViewModel *)self sharedLibrary];
    isInPreview = [sharedLibrary isInPreview];

    if (isInPreview)
    {
      self->_previewIsOutdated = 1;
    }
  }
}

- (void)setInfosWithBothPeopleAndParticipants:(id)participants
{
  participantsCopy = participants;
  infosWithBothPeopleAndParticipants = self->_infosWithBothPeopleAndParticipants;
  if (infosWithBothPeopleAndParticipants != participantsCopy)
  {
    v9 = participantsCopy;
    v6 = [(NSArray *)infosWithBothPeopleAndParticipants isEqual:participantsCopy];
    participantsCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_infosWithBothPeopleAndParticipants;
      self->_infosWithBothPeopleAndParticipants = v7;

      [(PXSharedLibraryAssistantViewModel *)self signalChange:0x4000];
      participantsCopy = v9;
    }
  }
}

- (void)setSelectedRuleType:(int64_t)type
{
  if (self->_selectedRuleType != type)
  {
    self->_selectedRuleType = type;
    [(PXSharedLibraryAssistantViewModel *)self signalChange:1024];
    [(PXSharedLibraryAssistantViewModel *)self _didChangePreviewRelatedProperty];

    [(PXSharedLibraryAssistantViewModel *)self _didChangeShareCountRelatedProperty];
  }
}

- (void)setSourceLibraryInfo:(id)info
{
  infoCopy = info;
  if (self->_sourceLibraryInfo != infoCopy)
  {
    v6 = infoCopy;
    objc_storeStrong(&self->_sourceLibraryInfo, info);
    [(PXSharedLibraryAssistantViewModel *)self signalChange:256];
    infoCopy = v6;
  }
}

- (void)setSharedLibrary:(id)library
{
  libraryCopy = library;
  if (self->_sharedLibrary != libraryCopy)
  {
    v7 = libraryCopy;
    objc_storeStrong(&self->_sharedLibrary, library);
    [(PXSharedLibraryAssistantViewModel *)self signalChange:64];
    isInPreview = [(PXSharedLibrary *)self->_sharedLibrary isInPreview];
    libraryCopy = v7;
    if (isInPreview)
    {
      self->_hasChangedUserInputValues = 1;
    }
  }
}

- (void)setParticipantDataSource:(id)source
{
  sourceCopy = source;
  if (!sourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantViewModel.m" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"participantDataSource"}];
  }

  participantDataSourceManager = self->_participantDataSourceManager;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PXSharedLibraryAssistantViewModel_setParticipantDataSource___block_invoke;
  v9[3] = &unk_1E7749AD0;
  v10 = sourceCopy;
  v7 = sourceCopy;
  [(PXSharedLibraryParticipantDataSourceManager *)participantDataSourceManager performChanges:v9];
}

- (void)setIsCancelingAssistant:(BOOL)assistant
{
  if (self->_isCancelingAssistant != assistant)
  {
    self->_isCancelingAssistant = assistant;
    [(PXSharedLibraryAssistantViewModel *)self signalChange:4096];
  }
}

- (void)setAutoShareEnabled:(BOOL)enabled
{
  if (self->_autoShareEnabled != enabled)
  {
    self->_autoShareEnabled = enabled;
    [(PXSharedLibraryAssistantViewModel *)self signalChange:2];
  }
}

- (void)setAssetLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = self->_assetLocalIdentifiers;
  v6 = v5;
  if (v5 == identifiersCopy)
  {
  }

  else
  {
    v7 = [(NSArray *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_assetLocalIdentifiers, identifiers);
      [(PXSharedLibraryAssistantViewModel *)self signalChange:512];
      [(PXSharedLibraryAssistantViewModel *)self _didChangePreviewRelatedProperty];
      [(PXSharedLibraryAssistantViewModel *)self _didChangeShareCountRelatedProperty];
    }
  }
}

- (void)setParticipantsImage:(id)image
{
  imageCopy = image;
  participantsImage = self->_participantsImage;
  if (participantsImage != imageCopy)
  {
    v9 = imageCopy;
    v6 = [(UIImage *)participantsImage isEqual:imageCopy];
    imageCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIImage *)v9 copy];
      v8 = self->_participantsImage;
      self->_participantsImage = v7;

      [(PXSharedLibraryAssistantViewModel *)self signalChange:16];
      imageCopy = v9;
    }
  }
}

- (void)setPersonUUIDs:(id)ds
{
  dsCopy = ds;
  v9 = dsCopy;
  if (!dsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantViewModel.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"personUUIDs"}];

    dsCopy = 0;
  }

  v6 = [dsCopy copy];
  personUUIDs = self->_personUUIDs;
  self->_personUUIDs = v6;

  [(PXSharedLibraryAssistantViewModel *)self signalChange:8];
  [(PXSharedLibraryAssistantViewModel *)self _didChangeSuggestedStartDateRelatedProperty];
  [(PXSharedLibraryAssistantViewModel *)self _didChangePreviewRelatedProperty];
  [(PXSharedLibraryAssistantViewModel *)self _didChangeShareCountRelatedProperty];
}

- (void)setStartDate:(id)date
{
  dateCopy = date;
  startDate = self->_startDate;
  if (startDate != dateCopy)
  {
    v9 = dateCopy;
    v6 = [(NSDate *)startDate isEqual:dateCopy];
    dateCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDate *)v9 copy];
      v8 = self->_startDate;
      self->_startDate = v7;

      [(PXSharedLibraryAssistantViewModel *)self signalChange:4];
      [(PXSharedLibraryAssistantViewModel *)self _didChangePreviewRelatedProperty];
      [(PXSharedLibraryAssistantViewModel *)self _didChangeShareCountRelatedProperty];
      dateCopy = v9;
    }
  }
}

- (void)setAutoSharePolicy:(int64_t)policy
{
  if (self->_autoSharePolicy != policy)
  {
    self->_autoSharePolicy = policy;
    [(PXSharedLibraryAssistantViewModel *)self signalChange:128];
    [(PXSharedLibraryAssistantViewModel *)self _didChangePreviewRelatedProperty];

    [(PXSharedLibraryAssistantViewModel *)self _didChangeShareCountRelatedProperty];
  }
}

- (void)setMode:(int64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    [(PXSharedLibraryAssistantViewModel *)self signalChange:1];
  }
}

- (void)performInitialChanges:(id)changes
{
  changesCopy = changes;
  performingInitialChanges = self->_performingInitialChanges;
  self->_performingInitialChanges = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PXSharedLibraryAssistantViewModel_performInitialChanges___block_invoke;
  v7[3] = &unk_1E7749AA8;
  v8 = changesCopy;
  v6 = changesCopy;
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

- (void)performChanges:(id)changes shareCountsCompletionHandler:(id)handler
{
  changesCopy = changes;
  v7 = [handler copy];
  shareCountsCompletionHandler = self->_shareCountsCompletionHandler;
  self->_shareCountsCompletionHandler = v7;

  v11.receiver = self;
  v11.super_class = PXSharedLibraryAssistantViewModel;
  [(PXSharedLibraryAssistantViewModel *)&v11 performChanges:changesCopy];

  v9 = self->_shareCountsCompletionHandler;
  if (v9)
  {
    v9[2]();
    v10 = self->_shareCountsCompletionHandler;
    self->_shareCountsCompletionHandler = 0;
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXSharedLibraryAssistantViewModel;
  [(PXSharedLibraryAssistantViewModel *)&v3 performChanges:changes];
}

- (NSArray)phoneNumbers
{
  participantDataSource = [(PXSharedLibraryAssistantViewModel *)self participantDataSource];
  phoneNumbers = [participantDataSource phoneNumbers];
  allObjects = [phoneNumbers allObjects];

  return allObjects;
}

- (NSArray)emailAddresses
{
  participantDataSource = [(PXSharedLibraryAssistantViewModel *)self participantDataSource];
  emailAddresses = [participantDataSource emailAddresses];
  allObjects = [emailAddresses allObjects];

  return allObjects;
}

- (int64_t)shouldShowPeopleState
{
  result = self->_shouldShowPeopleState;
  if (!result)
  {
    sourceLibraryInfo = [(PXSharedLibraryAssistantViewModel *)self sourceLibraryInfo];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v5 = sourceLibraryInfo;
    }

    else
    {
      v5 = 0;
    }

    photoLibrary = [v5 photoLibrary];

    if (photoLibrary)
    {
      v7 = [[PXPeopleProgressManager alloc] initWithPhotoLibrary:photoLibrary];
      featureUnlocked = [(PXPeopleProgressManager *)v7 featureUnlocked];
      v9 = 1;
      if (!featureUnlocked)
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
  sharedLibrary = [(PXSharedLibraryAssistantViewModel *)self sharedLibrary];
  if ([sharedLibrary isInPreview])
  {
    v6 = !self->_previewIsOutdated;
  }

  else
  {
    v6 = 0;
  }

  sharedLibrary2 = [(PXSharedLibraryAssistantViewModel *)self sharedLibrary];
  if ([sharedLibrary2 isPublished])
  {
    sharedLibrary3 = [(PXSharedLibraryAssistantViewModel *)self sharedLibrary];
    isOwned = [sharedLibrary3 isOwned];
  }

  else
  {
    isOwned = 0;
  }

  if ((v6 | isOwned))
  {
    sharedLibrary4 = [(PXSharedLibraryAssistantViewModel *)self sharedLibrary];
    v12 = sharedLibrary4;
    if (sharedLibrary4)
    {
      [sharedLibrary4 fetchItemCounts];
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
  participantDataSource = [(PXSharedLibraryAssistantViewModel *)self participantDataSource];
  names = [participantDataSource names];

  v4 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:names];

  return v4;
}

- (id)localizedSelectedPeopleWithAdditionalPeopleCount:(int64_t *)count
{
  v29 = *MEMORY[0x1E69E9840];
  if (!count)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantViewModel.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"additionalPeopleCount"}];
  }

  sourceLibraryInfo = [(PXSharedLibraryAssistantViewModel *)self sourceLibraryInfo];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = sourceLibraryInfo;
  }

  else
  {
    v6 = 0;
  }

  photoLibrary = [v6 photoLibrary];

  if (photoLibrary)
  {
    personUUIDs = [(PXSharedLibraryAssistantViewModel *)self personUUIDs];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v10 = [MEMORY[0x1E6978980] fetchPersonsWithLocalIdentifiers:personUUIDs options:librarySpecificFetchOptions];
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

          px_localizedName = [*(*(&v24 + 1) + 8 * i) px_localizedName];
          if ([px_localizedName length])
          {
            [v11 addObject:px_localizedName];
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

  *count = v18;

  return v11;
}

- (PXSharedLibraryRule)sharedLibraryRule
{
  autoSharePolicy = [(PXSharedLibraryAssistantViewModel *)self autoSharePolicy];
  if (autoSharePolicy == 2)
  {
    startDate = [(PXSharedLibraryAssistantViewModel *)self startDate];
    personUUIDs = [(PXSharedLibraryAssistantViewModel *)self personUUIDs];
    v5 = [PXSharedLibraryRule customizedRuleWithStartDate:startDate personUUIDs:personUUIDs];
  }

  else if (autoSharePolicy == 1)
  {
    v5 = +[PXSharedLibraryRule everythingRule];
  }

  else if (autoSharePolicy)
  {
    v5 = 0;
  }

  else
  {
    assetLocalIdentifiers = [(PXSharedLibraryAssistantViewModel *)self assetLocalIdentifiers];
    v5 = [PXSharedLibraryRule manualRuleWithAssetLocalIdentifiers:assetLocalIdentifiers];
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