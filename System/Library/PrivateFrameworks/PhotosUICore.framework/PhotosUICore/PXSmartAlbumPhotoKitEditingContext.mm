@interface PXSmartAlbumPhotoKitEditingContext
- (NSArray)albumValues;
- (NSArray)conditionTypeValues;
- (NSArray)keywordValues;
- (NSArray)personNames;
- (PXSmartAlbumPhotoKitEditingContext)init;
- (PXSmartAlbumPhotoKitEditingContext)initWithPhotoLibrary:(id)a3;
@end

@implementation PXSmartAlbumPhotoKitEditingContext

- (NSArray)personNames
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [v4 setPersonContext:1];
  v5 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v4 setIncludedDetectionTypes:v5];

  v6 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v4];
  if ([v6 count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__PXSmartAlbumPhotoKitEditingContext_personNames__block_invoke;
    v12[3] = &unk_1E773D250;
    v7 = v3;
    v13 = v7;
    [v6 enumerateObjectsUsingBlock:v12];
    if ([v7 count])
    {
      [v7 sortUsingComparator:&__block_literal_global_122];
    }

    else
    {
      v9 = PLUIGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "PXSmartAlbums: found no named persons", &v11, 2u);
      }
    }

    v8 = v13;
  }

  else
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "PXSmartAlbums: found no persons", &v11, 2u);
    }
  }

  return v3;
}

void __49__PXSmartAlbumPhotoKitEditingContext_personNames__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 px_localizedName];
  if ([v3 length])
  {
    v4 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__PXSmartAlbumPhotoKitEditingContext_personNames__block_invoke_2;
    v6[3] = &unk_1E7732560;
    v5 = v3;
    v7 = v5;
    if ([v4 indexOfObjectPassingTest:v6] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 32) addObject:v5];
    }
  }
}

- (NSArray)keywordValues
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PHPhotoLibrary *)self->_photoLibrary photoLibrary];
  v5 = [v4 managedObjectContext];
  v6 = MEMORY[0x1E695D5E0];
  v7 = [MEMORY[0x1E69BE560] entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v21[0] = @"assetAttributes";
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"assetAttributes", @"asset"];
  v21[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [v8 setRelationshipKeyPathsForPrefetching:v10];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__PXSmartAlbumPhotoKitEditingContext_keywordValues__block_invoke;
  v17[3] = &unk_1E774A1B8;
  v18 = v5;
  v19 = v8;
  v11 = v3;
  v20 = v11;
  v12 = v8;
  v13 = v5;
  [v13 performBlockAndWait:v17];
  v14 = v20;
  v15 = v11;

  return v11;
}

void __51__PXSmartAlbumPhotoKitEditingContext_keywordValues__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v10];
  v5 = v10;
  if (v4)
  {
    if ([v4 count])
    {
      v6 = [v4 sortedArrayUsingComparator:&__block_literal_global_53923];

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __51__PXSmartAlbumPhotoKitEditingContext_keywordValues__block_invoke_3;
      v8[3] = &unk_1E7732538;
      v9 = *(a1 + 48);
      [v6 enumerateObjectsUsingBlock:v8];

      v4 = v6;
    }

    else
    {
      v7 = PLUIGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "PXSmartAlbums: found no keywords", buf, 2u);
      }
    }
  }

  else
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "PXSmartAlbums: failed to fetch keywords: %@", buf, 0xCu);
    }
  }
}

void __51__PXSmartAlbumPhotoKitEditingContext_keywordValues__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 title];
  v4 = v3;
  v5 = &stru_1F1741150;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [[PXLabeledValue alloc] initWithValue:v6 localizedLabel:v6];
  [*(a1 + 32) addObject:v7];
}

uint64_t __51__PXSmartAlbumPhotoKitEditingContext_keywordValues__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 title];
  v6 = [v4 title];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (NSArray)albumValues
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:1];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v4 setSortDescriptors:v6];

  v7 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:1 subtype:2 options:v4];
  if ([v7 count])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__PXSmartAlbumPhotoKitEditingContext_albumValues__block_invoke;
    v11[3] = &unk_1E7747438;
    v12 = v3;
    [v7 enumerateObjectsUsingBlock:v11];
    v8 = v12;
  }

  else
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "PXSmartAlbums: found no albums", v10, 2u);
    }
  }

  return v3;
}

void __49__PXSmartAlbumPhotoKitEditingContext_albumValues__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 uuid];
  v4 = [v3 localizedTitle];

  v5 = &stru_1F1741150;
  if (v4)
  {
    v5 = v4;
  }

  v6 = v5;

  v7 = [[PXLabeledValue alloc] initWithValue:v8 localizedLabel:v6];
  [*(a1 + 32) addObject:v7];
}

- (NSArray)conditionTypeValues
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = PXSmartAlbumLocalizedStringsForConditionTypeValues(&unk_1F19100A8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__PXSmartAlbumPhotoKitEditingContext_conditionTypeValues__block_invoke;
  v8[3] = &unk_1E77382F8;
  v9 = &unk_1F19100A8;
  v4 = v2;
  v10 = v4;
  [v3 enumerateObjectsUsingBlock:v8];
  v5 = v10;
  v6 = v4;

  return v4;
}

void __57__PXSmartAlbumPhotoKitEditingContext_conditionTypeValues__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v10 = [v5 objectAtIndexedSubscript:a3];
  v7 = [[PXLabeledValue alloc] initWithValue:v10 localizedLabel:v6];

  [*(a1 + 40) addObject:v7];
  if ([v10 integerValue] == 17)
  {
    v8 = *(a1 + 40);
    v9 = +[PXLabeledValue separatorLabeledValue];
    [v8 addObject:v9];
  }
}

- (PXSmartAlbumPhotoKitEditingContext)initWithPhotoLibrary:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitEditingContext.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v11.receiver = self;
  v11.super_class = PXSmartAlbumPhotoKitEditingContext;
  v7 = [(PXSmartAlbumPhotoKitEditingContext *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, a3);
  }

  return v8;
}

- (PXSmartAlbumPhotoKitEditingContext)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitEditingContext.m" lineNumber:37 description:{@"%s is not available as initializer", "-[PXSmartAlbumPhotoKitEditingContext init]"}];

  abort();
}

@end