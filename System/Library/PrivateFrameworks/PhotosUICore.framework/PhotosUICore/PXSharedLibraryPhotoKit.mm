@interface PXSharedLibraryPhotoKit
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)fetchItemCounts;
- (NSArray)participants;
- (PXSharedLibraryParticipant)owner;
- (PXSharedLibraryPhotoKit)init;
- (PXSharedLibraryPhotoKit)initWithLibraryScope:(id)scope;
- (PXSharedLibraryRule)rule;
- (id)sourceLibraryInfo;
- (void)_updateOwner;
- (void)_updateParticipants;
- (void)acceptInvitationWithRule:(id)rule progress:(id)progress completion:(id)completion;
- (void)exitWithRetentionPolicy:(int64_t)policy presentationEnvironment:(id)environment progress:(id)progress completion:(id)completion;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
- (void)previewInvitationWithRule:(id)rule progress:(id)progress completion:(id)completion;
- (void)publishPreviewWithPresentationEnvironment:(id)environment progress:(id)progress completion:(id)completion;
- (void)restoreDeclinedInvitationWithCompletion:(id)completion;
@end

@implementation PXSharedLibraryPhotoKit

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  v4 = [queue changeDetailsForFetchResult:self->_participants];
  if (v4)
  {
    v8 = v4;
    fetchResultAfterChanges = [v4 fetchResultAfterChanges];
    participants = self->_participants;
    self->_participants = fetchResultAfterChanges;

    [(PXSharedLibraryPhotoKit *)self _updateOwner];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PXSharedLibraryParticipantsDidChange" object:self userInfo:0];

    v4 = v8;
  }
}

- (void)_updateParticipants
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!self->_participants)
  {
    photoLibrary = [(PHLibraryScope *)self->_libraryScope photoLibrary];
    [photoLibrary px_registerChangeObserver:self];
  }

  photoLibrary2 = [(PHLibraryScope *)self->_libraryScope photoLibrary];
  librarySpecificFetchOptions = [photoLibrary2 librarySpecificFetchOptions];

  v6 = MEMORY[0x1E696AEB0];
  v7 = NSStringFromSelector(sel_isCurrentUser);
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v9];

  v10 = [MEMORY[0x1E6978AC0] fetchParticipantsInShare:self->_libraryScope options:librarySpecificFetchOptions];
  participants = self->_participants;
  self->_participants = v10;

  [(PXSharedLibraryPhotoKit *)self _updateOwner];
  [(PHLibraryScope *)self->_libraryScope previewState];
}

- (void)_updateOwner
{
  participants = self->_participants;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__PXSharedLibraryPhotoKit__updateOwner__block_invoke;
  v3[3] = &unk_1E7734770;
  v3[4] = self;
  [(PHFetchResult *)participants enumerateObjectsUsingBlock:v3];
}

void __39__PXSharedLibraryPhotoKit__updateOwner__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 role] == 1)
  {
    v6 = [v9 copy];
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    *(v7 + 8) = v6;

    *a4 = 1;
  }
}

- (void)exitWithRetentionPolicy:(int64_t)policy presentationEnvironment:(id)environment progress:(id)progress completion:(id)completion
{
  if (policy == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = policy == 1;
  }

  PXSharedLibraryExitLibraryScope(self->_libraryScope, v6, progress, environment, completion);
}

- (void)publishPreviewWithPresentationEnvironment:(id)environment progress:(id)progress completion:(id)completion
{
  completionCopy = completion;
  libraryScope = self->_libraryScope;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__PXSharedLibraryPhotoKit_publishPreviewWithPresentationEnvironment_progress_completion___block_invoke;
  v11[3] = &unk_1E7747790;
  v12 = completionCopy;
  v10 = completionCopy;
  PXSharedLibraryPublishPreviewLibraryScope(libraryScope, progress, environment, v11);
}

void __89__PXSharedLibraryPhotoKit_publishPreviewWithPresentationEnvironment_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[PXSharedLibraryPhotoKit alloc] initWithLibraryScope:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)restoreDeclinedInvitationWithCompletion:(id)completion
{
  completionCopy = completion;
  libraryScope = self->_libraryScope;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__PXSharedLibraryPhotoKit_restoreDeclinedInvitationWithCompletion___block_invoke;
  v7[3] = &unk_1E7747790;
  v8 = completionCopy;
  v6 = completionCopy;
  PXSharedLibraryRestoreDeclinedLibraryScopeInvitation(libraryScope, v7);
}

void __67__PXSharedLibraryPhotoKit_restoreDeclinedInvitationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[PXSharedLibraryPhotoKit alloc] initWithLibraryScope:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)acceptInvitationWithRule:(id)rule progress:(id)progress completion:(id)completion
{
  ruleCopy = rule;
  progressCopy = progress;
  completionCopy = completion;
  if ([(PXSharedLibraryPhotoKit *)self isInPreview])
  {
    PXSharedLibraryAcceptLibraryScopeInvitationPreview(self->_libraryScope, completionCopy);
  }

  else
  {
    autoSharePolicy = [ruleCopy autoSharePolicy];
    if (autoSharePolicy == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = autoSharePolicy == 1;
    }

    startDate = [ruleCopy startDate];
    personUUIDs = [ruleCopy personUUIDs];
    PXSharedLibraryAcceptLibraryScopeInvitation(self->_libraryScope, v11, startDate, personUUIDs, progressCopy, completionCopy);
  }
}

- (void)previewInvitationWithRule:(id)rule progress:(id)progress completion:(id)completion
{
  completionCopy = completion;
  progressCopy = progress;
  ruleCopy = rule;
  autoSharePolicy = [ruleCopy autoSharePolicy];
  if (autoSharePolicy == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = autoSharePolicy == 1;
  }

  startDate = [ruleCopy startDate];
  personUUIDs = [ruleCopy personUUIDs];

  PXSharedLibraryPreviewLibraryScopeInvitation(self->_libraryScope, v12, startDate, personUUIDs, progressCopy, completionCopy);
}

- (id)sourceLibraryInfo
{
  v3 = [PXSharedLibrarySourceLibraryInfoPhotoKit alloc];
  libraryScope = [(PXSharedLibraryPhotoKit *)self libraryScope];
  photoLibrary = [libraryScope photoLibrary];
  v6 = [(PXSharedLibrarySourceLibraryInfoPhotoKit *)v3 initWithPhotoLibrary:photoLibrary];

  return v6;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)fetchItemCounts
{
  libraryScope = [(PXSharedLibraryPhotoKit *)self libraryScope];
  photoLibrary = [libraryScope photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v6 = [MEMORY[0x1E69BE540] predicateToIncludeSharedLibraryAssetsAllowingIndexingOnParticipationState:1];
  [librarySpecificFetchOptions setInternalPredicate:v6];

  v7 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions];
  *retstr = *off_1E7721F78;
  if ([v7 count])
  {
    v8 = [v7 countOfAssetsWithMediaType:1];
    v9 = [v7 countOfAssetsWithMediaType:2];
    v10 = [v7 countOfAssetsWithMediaType:3];
    retstr->var0 = v8;
    retstr->var1 = v9;
    retstr->var2 = v10;
  }

  return result;
}

- (PXSharedLibraryRule)rule
{
  rule = self->_rule;
  if (!rule)
  {
    v4 = self->_libraryScope;
    autoSharePolicy = [(PHLibraryScope *)v4 autoSharePolicy];
    v6 = autoSharePolicy == 1;
    if (autoSharePolicy == 2)
    {
      v6 = 2;
    }

    if (v6 == 2)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy__67162;
      v23 = __Block_byref_object_dispose__67163;
      v24 = 0;
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      photoLibrary = [(PHLibraryScope *)v4 photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      v10 = [MEMORY[0x1E69788C0] fetchLibraryScopeRulesForLibraryScope:v4 options:librarySpecificFetchOptions];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = ___RuleForLibraryScope_block_invoke;
      v15[3] = &unk_1E77347A0;
      v18 = &v19;
      v16 = v4;
      v11 = v7;
      v17 = v11;
      [v10 enumerateObjectsUsingBlock:v15];
      v12 = [PXSharedLibraryRule customizedRuleWithStartDate:v20[5] personUUIDs:v11];

      _Block_object_dispose(&v19, 8);
    }

    else
    {
      if (v6 == 1)
      {
        +[PXSharedLibraryRule everythingRule];
      }

      else
      {
        +[PXSharedLibraryRule manualRule];
      }
      v12 = ;
    }

    v13 = self->_rule;
    self->_rule = v12;

    rule = self->_rule;
  }

  return rule;
}

- (NSArray)participants
{
  participants = self->_participants;
  if (!participants)
  {
    [(PXSharedLibraryPhotoKit *)self _updateParticipants];
    participants = self->_participants;
  }

  return [(PHFetchResult *)participants fetchedObjects];
}

- (PXSharedLibraryParticipant)owner
{
  owner = self->_owner;
  if (!owner)
  {
    [(PXSharedLibraryPhotoKit *)self _updateParticipants];
    owner = self->_owner;
  }

  return owner;
}

- (PXSharedLibraryPhotoKit)initWithLibraryScope:(id)scope
{
  scopeCopy = scope;
  if (!scopeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKit.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"libraryScope"}];
  }

  v11.receiver = self;
  v11.super_class = PXSharedLibraryPhotoKit;
  v7 = [(PXSharedLibraryPhotoKit *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_libraryScope, scope);
  }

  return v8;
}

- (PXSharedLibraryPhotoKit)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKit.m" lineNumber:42 description:{@"%s is not available as initializer", "-[PXSharedLibraryPhotoKit init]"}];

  abort();
}

@end