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
  v2 = [a1 creationType];
  if ([a1 px_isTrip])
  {
    return 0;
  }

  if (v2 == 1)
  {
    return [a1 _blockablePeopleCount] != 0;
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
  aBlock[4] = a1;
  v2 = _Block_copy(aBlock);
  if ([a1 _supportsBlockingAllVerifiedPeople])
  {
    v3 = [a1 photoLibrary];
    v4 = [v3 librarySpecificFetchOptions];

    v13[0] = *MEMORY[0x1E6978F38];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v4 setFetchPropertySets:v5];

    [v4 setPersonContext:3];
    v6 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
    [v4 setIncludedDetectionTypes:v6];

    v7 = [MEMORY[0x1E6978980] fetchPersonsForAssetCollection:a1 options:v4];
    v8 = [v7 fetchedObjects];
    v9 = [PXPeopleWidgetUtilities verifiedPersonsFromMergeCandidatesForPersons:v8];

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
  if ([a1 hasBlockableFeature])
  {
    v7 = [a1 userFeedbackProperties];
    v8 = [v7 userFeedback];

    if (!v8)
    {
      v24 = v4;
      v25 = v5;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v23 = a1;
      v9 = [a1 blockableFeatures];
      v10 = [v9 countByEnumeratingWithState:&v27 objects:v34 count:16];
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
              objc_enumerationMutation(v9);
            }

            v17 = [*(*(&v27 + 1) + 8 * v16) type];
            if (v17 <= 511)
            {
              if (v17 == 16)
              {
                v6[2](v6, @"PXBlockMemoryActionTitleThisDay", v15);
              }

              else if (v17 == 32)
              {
                v6[2](v6, @"PXBlockMemoryActionTitleThisHoliday", v26);
              }
            }

            else if (v17 == 512)
            {
              v6[2](v6, @"PXBlockMemoryActionTitleThisDateInterval", v14);
            }

            else if (v17 == 4096 || v17 == 0x20000)
            {
              v6[2](v6, @"PXBlockMemoryActionTitleThisPlace", v13);
            }

            ++v16;
          }

          while (v11 != v16);
          v11 = [v9 countByEnumeratingWithState:&v27 objects:v34 count:16];
        }

        while (v11);
      }

      v4 = v24;
      v5 = v25;
      a1 = v23;
    }
  }

  v18 = [a1 _blockablePeopleCount];
  if (v18 == 1 || (v19 = v18, ![a1 _supportsBlockingAllVerifiedPeople]))
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
  v3 = [a1 px_photosGraphDataByMutatingPropertiesUsingBlock:v7 error:&v6];
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
  v7 = [a1 photosGraphProperties];
  v8 = [v7 mutableCopy];
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