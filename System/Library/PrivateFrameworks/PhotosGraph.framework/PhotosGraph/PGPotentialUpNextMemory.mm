@interface PGPotentialUpNextMemory
- (BOOL)isBlockedByUserFeedback;
- (NSString)keyAssetLocalIdentifier;
- (PGPotentialUpNextMemory)initWithMemory:(id)memory photoLibrary:(id)library userFeedbackCalculator:(id)calculator;
- (PHAsset)keyAsset;
@end

@implementation PGPotentialUpNextMemory

- (BOOL)isBlockedByUserFeedback
{
  v26 = *MEMORY[0x277D85DE8];
  keyAsset = [(PGPotentialUpNextMemory *)self keyAsset];
  if (keyAsset)
  {
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_284485988];
    v5 = [MEMORY[0x277CD9938] fetchPersonsInAsset:keyAsset options:librarySpecificFetchOptions];
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

            uuid = [*(*(&v21 + 1) + 8 * i) uuid];
            [v6 addObject:uuid];
          }

          v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v9);
      }

      userFeedbackCalculator = self->_userFeedbackCalculator;
      uuid2 = [keyAsset uuid];
      blockableFeatures = [(PHMemory *)self->_memory blockableFeatures];
      [(PHUserFeedbackCalculator *)userFeedbackCalculator scoreForKeyAssetUUID:uuid2 personsUUIDsInKeyAsset:v6 memoryFeatures:blockableFeatures];
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
  keyAsset = [(PGPotentialUpNextMemory *)self keyAsset];
  localIdentifier = [keyAsset localIdentifier];

  return localIdentifier;
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
      librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      v7 = [v4 fetchKeyCuratedAssetInAssetCollection:memory referenceAsset:0 options:librarySpecificFetchOptions];
      firstObject = [v7 firstObject];
      v9 = self->_keyAsset;
      self->_keyAsset = firstObject;

      keyAsset = self->_keyAsset;
      if (!keyAsset)
      {
        self->_noKeyAsset = 1;
      }
    }
  }

  return keyAsset;
}

- (PGPotentialUpNextMemory)initWithMemory:(id)memory photoLibrary:(id)library userFeedbackCalculator:(id)calculator
{
  memoryCopy = memory;
  libraryCopy = library;
  calculatorCopy = calculator;
  v15.receiver = self;
  v15.super_class = PGPotentialUpNextMemory;
  v12 = [(PGPotentialUpNextMemory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_memory, memory);
    objc_storeStrong(&v13->_photoLibrary, library);
    objc_storeStrong(&v13->_userFeedbackCalculator, calculator);
  }

  return v13;
}

@end