@interface PGPotentialUpNextMemory
- (BOOL)isBlockedByUserFeedback;
- (NSString)keyAssetLocalIdentifier;
- (PGPotentialUpNextMemory)initWithMemory:(id)a3 photoLibrary:(id)a4 userFeedbackCalculator:(id)a5;
- (PHAsset)keyAsset;
@end

@implementation PGPotentialUpNextMemory

- (BOOL)isBlockedByUserFeedback
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(PGPotentialUpNextMemory *)self keyAsset];
  if (v3)
  {
    v4 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    [v4 setIncludedDetectionTypes:&unk_284485988];
    v5 = [MEMORY[0x277CD9938] fetchPersonsInAsset:v3 options:v4];
    if ([v5 count])
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v22;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [*(*(&v21 + 1) + 8 * i) uuid];
            [v6 addObject:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v9);
      }

      userFeedbackCalculator = self->_userFeedbackCalculator;
      v14 = [v3 uuid];
      v15 = [(PHMemory *)self->_memory blockableFeatures];
      [(PHUserFeedbackCalculator *)userFeedbackCalculator scoreForKeyAssetUUID:v14 personsUUIDsInKeyAsset:v6 memoryFeatures:v15];
      v17 = v16;

      v18 = [MEMORY[0x277CD99F8] score:v17 meetsScoreThreshold:*MEMORY[0x277CD9CB8]] ^ 1;
    }

    else
    {
      LOBYTE(v18) = 0;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (NSString)keyAssetLocalIdentifier
{
  v2 = [(PGPotentialUpNextMemory *)self keyAsset];
  v3 = [v2 localIdentifier];

  return v3;
}

- (PHAsset)keyAsset
{
  keyAsset = self->_keyAsset;
  if (!keyAsset)
  {
    if (self->_noKeyAsset)
    {
      keyAsset = 0;
    }

    else
    {
      v4 = MEMORY[0x277CD97A8];
      memory = self->_memory;
      v6 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      v7 = [v4 fetchKeyCuratedAssetInAssetCollection:memory referenceAsset:0 options:v6];
      v8 = [v7 firstObject];
      v9 = self->_keyAsset;
      self->_keyAsset = v8;

      keyAsset = self->_keyAsset;
      if (!keyAsset)
      {
        self->_noKeyAsset = 1;
      }
    }
  }

  return keyAsset;
}

- (PGPotentialUpNextMemory)initWithMemory:(id)a3 photoLibrary:(id)a4 userFeedbackCalculator:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGPotentialUpNextMemory;
  v12 = [(PGPotentialUpNextMemory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_memory, a3);
    objc_storeStrong(&v13->_photoLibrary, a4);
    objc_storeStrong(&v13->_userFeedbackCalculator, a5);
  }

  return v13;
}

@end