@interface PHMemory(PhotosUICore)
- (BOOL)px_canPerformFeatureLessAction;
- (id)px_blockableFeatureActions;
- (id)px_mutatedPhotosGraphPropertiesWithRejectReason:()PhotosUICore;
- (id)px_photosGraphDataByMutatingPropertiesUsingBlock:()PhotosUICore error:;
- (uint64_t)_blockablePeopleCount;
@end

@implementation PHMemory(PhotosUICore)

- (BOOL)px_canPerformFeatureLessAction
{
  creationType = [self creationType];
  if ([self px_isTrip])
  {
    return 0;
  }

  if (creationType == 1)
  {
    return [self _blockablePeopleCount] != 0;
  }

  return 1;
}

- (uint64_t)_blockablePeopleCount
{
  v13[1] = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PHMemory_PhotosUICore___blockablePeopleCount__block_invoke;
  aBlock[3] = &unk_1E773B320;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  if ([self _supportsBlockingAllVerifiedPeople])
  {
    photoLibrary = [self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v13[0] = *MEMORY[0x1E6978F38];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v5];

    [librarySpecificFetchOptions setPersonContext:3];
    px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
    [librarySpecificFetchOptions setIncludedDetectionTypes:px_defaultDetectionTypes];

    v7 = [MEMORY[0x1E6978980] fetchPersonsForAssetCollection:self options:librarySpecificFetchOptions];
    fetchedObjects = [v7 fetchedObjects];
    v9 = [PXPeopleWidgetUtilities verifiedPersonsFromMergeCandidatesForPersons:fetchedObjects];

    v10 = [v9 count];
  }

  else
  {
    v10 = v2[2](v2);
  }

  return v10;
}

- (id)px_blockableFeatureActions
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PHMemory_PhotosUICore__px_blockableFeatureActions__block_invoke;
  aBlock[3] = &unk_1E7735248;
  v4 = v3;
  v32 = v4;
  v5 = v2;
  v33 = v5;
  v6 = _Block_copy(aBlock);
  if ([self hasBlockableFeature])
  {
    userFeedbackProperties = [self userFeedbackProperties];
    userFeedback = [userFeedbackProperties userFeedback];

    if (!userFeedback)
    {
      v24 = v4;
      v25 = v5;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      selfCopy = self;
      blockableFeatures = [self blockableFeatures];
      v10 = [blockableFeatures countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v28;
        v13 = *off_1E7721C60;
        v26 = *off_1E7721C50;
        v14 = *off_1E7721C70;
        v15 = *off_1E7721C68;
        do
        {
          v16 = 0;
          do
          {
            if (*v28 != v12)
            {
              objc_enumerationMutation(blockableFeatures);
            }

            type = [*(*(&v27 + 1) + 8 * v16) type];
            if (type <= 511)
            {
              if (type == 16)
              {
                v6[2](v6, @"PXBlockMemoryActionTitleThisDay", v15);
              }

              else if (type == 32)
              {
                v6[2](v6, @"PXBlockMemoryActionTitleThisHoliday", v26);
              }
            }

            else if (type == 512)
            {
              v6[2](v6, @"PXBlockMemoryActionTitleThisDateInterval", v14);
            }

            else if (type == 4096 || type == 0x20000)
            {
              v6[2](v6, @"PXBlockMemoryActionTitleThisPlace", v13);
            }

            ++v16;
          }

          while (v11 != v16);
          v11 = [blockableFeatures countByEnumeratingWithState:&v27 objects:v34 count:16];
        }

        while (v11);
      }

      v4 = v24;
      v5 = v25;
      self = selfCopy;
    }
  }

  _blockablePeopleCount = [self _blockablePeopleCount];
  if (_blockablePeopleCount == 1 || (v19 = _blockablePeopleCount, ![self _supportsBlockingAllVerifiedPeople]))
  {
    v20 = @"PXBlockMemoryActionTitleThisPerson";
  }

  else
  {
    if (!v19)
    {
      goto LABEL_27;
    }

    v20 = @"PXBlockMemoryActionTitlePeople";
  }

  v6[2](v6, v20, *off_1E7721C58);
LABEL_27:
  if (![v5 count])
  {
    v6[2](v6, @"PXBlockMemoryActionTitleGeneric", *off_1E7721C48);
  }

  v21 = v5;

  return v5;
}

- (id)px_mutatedPhotosGraphPropertiesWithRejectReason:()PhotosUICore
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PHMemory_PhotosUICore__px_mutatedPhotosGraphPropertiesWithRejectReason___block_invoke;
  v7[3] = &__block_descriptor_40_e29_v16__0__NSMutableDictionary_8l;
  v7[4] = a3;
  v3 = [self px_photosGraphDataByMutatingPropertiesUsingBlock:v7 error:&v6];
  v4 = v6;
  if (!v3)
  {
    PXAssertGetLog();
  }

  return v3;
}

- (id)px_photosGraphDataByMutatingPropertiesUsingBlock:()PhotosUICore error:
{
  v6 = a3;
  photosGraphProperties = [self photosGraphProperties];
  v8 = [photosGraphProperties mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v11 = v10;

  v6[2](v6, v11);
  v12 = [objc_opt_class() px_photosGraphDataFromProperties:v11 error:a4];

  return v12;
}

@end