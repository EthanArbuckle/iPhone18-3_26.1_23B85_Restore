@interface PXSmartAlbumPhotoKitQuery
+ (id)queryWithSmartAlbum:(id)a3 collectionList:(id)a4 photoLibrary:(id)a5 error:(id *)a6;
+ (void)_createSmartAlbumWithTitle:(id)a3 inCollectionList:(id)a4 query:(id)a5 photoLibrary:(id)a6 completionHandler:(id)a7;
+ (void)_editSmartAlbum:(id)a3 title:(id)a4 query:(id)a5 completionHandler:(id)a6;
- (PXLabeledValue)conjunctionValue;
- (PXSmartAlbumPhotoKitQuery)init;
- (PXSmartAlbumQueryDelegate)delegate;
- (id)_initWithSmartAlbum:(id)a3 collectionList:(id)a4 photoLibrary:(id)a5 query:(id)a6 editingContext:(id)a7 conditions:(id)a8;
- (id)_updatedStatusString;
- (id)addNewConditionAfterCondition:(id)a3;
- (id)replaceCondition:(id)a3 withConditionOfType:(int64_t)a4;
- (void)_updateCanPersistChanges;
- (void)_updateFetchResultCountObserver;
- (void)_updateQueryFromConditions;
- (void)_updateStatusString;
- (void)persistChangesWithCompletion:(id)a3;
- (void)removeCondition:(id)a3;
- (void)setCanPersistChanges:(BOOL)a3;
- (void)setConjunctionValue:(id)a3;
- (void)setStatusString:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PXSmartAlbumPhotoKitQuery

- (PXSmartAlbumQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateStatusString
{
  v3 = [(PXSmartAlbumPhotoKitQuery *)self _updatedStatusString];
  [(PXSmartAlbumPhotoKitQuery *)self setStatusString:v3];
}

- (id)_updatedStatusString
{
  if ([(PXFetchResultCountObserver *)self->_fetchResultCountObserver fetchResultCount]!= -1)
  {
    if (![MEMORY[0x1E69BE708] includesHiddenAssetsKeyInQuery:self->_query] || !PLIsContentPrivacyEnabled())
    {
      PXLocalizedStringFromTable(@"PXSmartAlbumResultsCountString", @"PXSmartAlbumStrings");
      objc_claimAutoreleasedReturnValue();
      PXLocalizedStringWithValidatedFormat();
    }

    v3 = PLUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "PXSmartAlbums: Query contains hidden assets so clearing status string", buf, 2u);
    }
  }

  return &stru_1F1741150;
}

- (void)_updateQueryFromConditions
{
  v9 = *MEMORY[0x1E69E9840];
  [(PLQuery *)self->_query clearSingleQueries];
  conditions = self->_conditions;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PXSmartAlbumPhotoKitQuery__updateQueryFromConditions__block_invoke;
  v6[3] = &unk_1E772E9A0;
  v6[4] = self;
  [(NSMutableArray *)conditions enumerateObjectsUsingBlock:v6];
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [(PLQuery *)self->_query logDescription];
    *buf = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: updated query: %@", buf, 0xCu);
  }

  [(PXSmartAlbumPhotoKitQuery *)self _updateStatusString];
  [(PXSmartAlbumPhotoKitQuery *)self _updateFetchResultCountObserver];
}

void __55__PXSmartAlbumPhotoKitQuery__updateQueryFromConditions__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 singleQuery];
  [*(*(a1 + 32) + 48) addSingleQueries:v3];
}

- (void)_updateFetchResultCountObserver
{
  v3 = [(PHPhotoLibrary *)self->_photoLibrary photoLibrary];
  v4 = objc_alloc_init(MEMORY[0x1E69BE700]);
  v5 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v6 = [MEMORY[0x1E69BE708] predicateForQuery:self->_query inLibrary:v3 changeDetectionCriteria:v4];
  [v5 setInternalPredicate:v6];

  [v5 setIncludeHiddenAssets:{objc_msgSend(MEMORY[0x1E69BE708], "includesHiddenAssetsKeyInQuery:", self->_query)}];
  v7 = [PXFetchResultCountObserver alloc];
  photoLibrary = self->_photoLibrary;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__PXSmartAlbumPhotoKitQuery__updateFetchResultCountObserver__block_invoke;
  v14[3] = &unk_1E7743C20;
  v9 = v5;
  v15 = v9;
  v10 = [(PXFetchResultCountObserver *)v7 initWithQOSClass:25 photoLibrary:photoLibrary fetchResultBlock:v14];
  fetchResultCountObserver = self->_fetchResultCountObserver;
  self->_fetchResultCountObserver = v10;

  [(PXFetchResultCountObserver *)self->_fetchResultCountObserver setDelegate:self];
  v12 = PLUIGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *v13 = 0;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: updated asset count observer", v13, 2u);
  }
}

- (void)_updateCanPersistChanges
{
  v3 = [(PXSmartAlbumPhotoKitQuery *)self title];
  -[PXSmartAlbumPhotoKitQuery setCanPersistChanges:](self, "setCanPersistChanges:", [v3 length] != 0);
}

- (void)setStatusString:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:230 description:{@"Invalid parameter not satisfying: %@", @"statusString"}];
  }

  v7 = self->_statusString;
  v8 = v7;
  if (v7 == v6)
  {
  }

  else
  {
    v9 = [(NSString *)v7 isEqualToString:v6];

    if (!v9)
    {
      objc_storeStrong(&self->_statusString, a3);
      v10 = PLUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: status string set to: %@", buf, 0xCu);
      }

      v11 = [(PXSmartAlbumPhotoKitQuery *)self delegate];
      [v11 statusStringDidChangeForQuery:self];
    }
  }
}

- (void)persistChangesWithCompletion:(id)a3
{
  v4 = a3;
  albumToEdit = self->_albumToEdit;
  v6 = objc_opt_class();
  if (albumToEdit)
  {
    v7 = self->_albumToEdit;
    title = self->_title;
    query = self->_query;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __58__PXSmartAlbumPhotoKitQuery_persistChangesWithCompletion___block_invoke;
    v19[3] = &unk_1E772E9C8;
    v10 = &v20;
    v20 = v4;
    v11 = v4;
    [v6 _editSmartAlbum:v7 title:title query:query completionHandler:v19];
  }

  else
  {
    v12 = self->_title;
    v13 = self->_query;
    collectionList = self->_collectionList;
    photoLibrary = self->_photoLibrary;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__PXSmartAlbumPhotoKitQuery_persistChangesWithCompletion___block_invoke_2;
    v17[3] = &unk_1E772E9C8;
    v10 = &v18;
    v18 = v4;
    v16 = v4;
    [v6 _createSmartAlbumWithTitle:v12 inCollectionList:collectionList query:v13 photoLibrary:photoLibrary completionHandler:v17];
  }
}

uint64_t __58__PXSmartAlbumPhotoKitQuery_persistChangesWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __58__PXSmartAlbumPhotoKitQuery_persistChangesWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setCanPersistChanges:(BOOL)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_canPersistChanges != a3)
  {
    v3 = a3;
    self->_canPersistChanges = a3;
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = v6;
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: can persist changes set to: %@", &v9, 0xCu);
    }

    v8 = [(PXSmartAlbumPhotoKitQuery *)self delegate];
    [v8 canPersistChangesDidChangeForQuery:self];
  }
}

- (void)removeCondition:(id)a3
{
  v4 = a3;
  [v4 setDelegate:0];
  [(NSMutableArray *)self->_conditions removeObject:v4];

  [(PXSmartAlbumPhotoKitQuery *)self _updateQueryFromConditions];
}

- (id)replaceCondition:(id)a3 withConditionOfType:(int64_t)a4
{
  v7 = a3;
  v8 = [(NSMutableArray *)self->_conditions indexOfObject:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"index != NSNotFound"}];
  }

  [v7 setDelegate:0];
  v9 = [PXSmartAlbumCondition conditionWithConditionType:a4 editingContext:self->_editingContext];
  [v9 setDelegate:self];
  [(NSMutableArray *)self->_conditions replaceObjectAtIndex:v8 withObject:v9];
  [(PXSmartAlbumPhotoKitQuery *)self _updateQueryFromConditions];

  return v9;
}

- (id)addNewConditionAfterCondition:(id)a3
{
  v5 = [(NSMutableArray *)self->_conditions indexOfObject:a3];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"index != NSNotFound"}];
  }

  v6 = [PXSmartAlbumCondition conditionWithConditionType:4 editingContext:self->_editingContext];
  [v6 setDelegate:self];
  [(NSMutableArray *)self->_conditions insertObject:v6 atIndex:v5 + 1];
  [(PXSmartAlbumPhotoKitQuery *)self _updateQueryFromConditions];

  return v6;
}

- (void)setConjunctionValue:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"conjunctionValue"}];
  }

  v6 = [v5 value];
  v7 = [v6 integerValue];
  if ([(PLQuery *)self->_query conjunction]!= v7)
  {
    [(PLQuery *)self->_query setConjunction:v7];
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = PLStringFromPLQueryConjunction();
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: conjunction value set to: %@", buf, 0xCu);
    }

    [(PXSmartAlbumPhotoKitQuery *)self _updateFetchResultCountObserver];
  }
}

- (PXLabeledValue)conjunctionValue
{
  v3 = [(PLQuery *)self->_query conjunction];
  v4 = [(PXSmartAlbumPhotoKitQuery *)self conjunctionValues];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v6 = PXLabeledValueForValueInLabeledValues(v4, v5);

  return v6;
}

- (void)setTitle:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"title"}];
  }

  v7 = self->_title;
  v8 = v7;
  if (v7 == v6)
  {
  }

  else
  {
    v9 = [(NSString *)v7 isEqualToString:v6];

    if (!v9)
    {
      objc_storeStrong(&self->_title, a3);
      v10 = PLUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: title set to: %@", buf, 0xCu);
      }

      [(PXSmartAlbumPhotoKitQuery *)self _updateCanPersistChanges];
    }
  }
}

- (id)_initWithSmartAlbum:(id)a3 collectionList:(id)a4 photoLibrary:(id)a5 query:(id)a6 editingContext:(id)a7 conditions:(id)a8
{
  v39 = a3;
  v38 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_13:
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (v17)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v33 = [MEMORY[0x1E696AAA8] currentHandler];
  [v33 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

  if (!v16)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v17)
  {
    goto LABEL_4;
  }

LABEL_14:
  v35 = [MEMORY[0x1E696AAA8] currentHandler];
  [v35 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"editingContext"}];

LABEL_4:
  if (![v18 count])
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"conditions.count"}];
  }

  v42.receiver = self;
  v42.super_class = PXSmartAlbumPhotoKitQuery;
  v19 = [(PXSmartAlbumPhotoKitQuery *)&v42 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_albumToEdit, a3);
    objc_storeStrong(&v20->_collectionList, a4);
    objc_storeStrong(&v20->_photoLibrary, a5);
    objc_storeStrong(&v20->_query, a6);
    v21 = [v39 localizedTitle];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = PXLocalizedStringFromTable(@"PXSmartAlbumDefaultName", @"PXSmartAlbumStrings");
    }

    title = v20->_title;
    v20->_title = v23;

    v25 = PXSmartAlbumLocalizedStringsForConjunctionValues(&unk_1F190FA18);
    v26 = PXLabeledValuesWithValuesAndLocalizedLabels(&unk_1F190FA18, v25);
    conjunctionValues = v20->_conjunctionValues;
    v20->_conjunctionValues = v26;

    objc_storeStrong(&v20->_editingContext, a7);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __109__PXSmartAlbumPhotoKitQuery__initWithSmartAlbum_collectionList_photoLibrary_query_editingContext_conditions___block_invoke;
    v40[3] = &unk_1E772E9A0;
    v28 = v20;
    v41 = v28;
    [v18 enumerateObjectsUsingBlock:v40];
    v29 = [v18 mutableCopy];
    conditions = v28->_conditions;
    v28->_conditions = v29;

    [(PXSmartAlbumPhotoKitQuery *)v28 _updateCanPersistChanges];
    statusString = v28->_statusString;
    v28->_statusString = &stru_1F1741150;

    [(PXSmartAlbumPhotoKitQuery *)v28 _updateFetchResultCountObserver];
  }

  return v20;
}

- (PXSmartAlbumPhotoKitQuery)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:70 description:{@"%s is not available as initializer", "-[PXSmartAlbumPhotoKitQuery init]"}];

  abort();
}

+ (void)_editSmartAlbum:(id)a3 title:(id)a4 query:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:315 description:{@"Invalid parameter not satisfying: %@", @"albumToEdit"}];
  }

  if ([v11 assetCollectionType] != 2)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:316 description:{@"Invalid parameter not satisfying: %@", @"albumToEdit.assetCollectionType == PHAssetCollectionTypeSmartAlbum"}];
  }

  if ([v12 length])
  {
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_10:
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:318 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (v14)
    {
      goto LABEL_8;
    }

LABEL_11:
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_8;
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"title.length"}];

  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_8:
  v15 = [v11 photoLibrary];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __75__PXSmartAlbumPhotoKitQuery__editSmartAlbum_title_query_completionHandler___block_invoke;
  v29[3] = &unk_1E774A1B8;
  v30 = v11;
  v31 = v12;
  v32 = v13;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __75__PXSmartAlbumPhotoKitQuery__editSmartAlbum_title_query_completionHandler___block_invoke_2;
  v25[3] = &unk_1E774ACE8;
  v26 = v30;
  v27 = v32;
  v28 = v14;
  v16 = v14;
  v17 = v32;
  v18 = v30;
  v19 = v12;
  [v15 performChanges:v29 completionHandler:v25];
}

void __75__PXSmartAlbumPhotoKitQuery__editSmartAlbum_title_query_completionHandler___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E6978AD0] changeRequestForSmartAlbum:a1[4]];
  [v2 setTitle:a1[5]];
  [v2 setUserQuery:a1[6]];
}

void __75__PXSmartAlbumPhotoKitQuery__editSmartAlbum_title_query_completionHandler___block_invoke_2(id *a1, int a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [a1[4] localIdentifier];
    v7 = [a1[4] photoLibrary];
    v8 = [v7 librarySpecificFetchOptions];

    [v8 setIncludeUserSmartAlbums:1];
    v9 = MEMORY[0x1E6978650];
    v23[0] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v11 = [v9 fetchAssetCollectionsWithLocalIdentifiers:v10 options:v8];

    v12 = [v11 firstObject];
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [a1[5] logDescription];
      *buf = 138412546;
      v20 = v12;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "PXSmartAlbums: Edited existing smart album: %@, query: %@", buf, 0x16u);
    }

    v15 = 0;
  }

  else
  {
    v16 = PLUIGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "PXSmartAlbums: Failed to edit existing smart album: %@", buf, 0xCu);
    }

    v15 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSmartAlbumErrorDomain" code:-1001 underlyingError:v5 debugDescription:@"Failed to edit existing smart album: underlying error"];
    v12 = 0;
  }

  a1[6];
  v17 = v15;
  v18 = v12;
  px_dispatch_on_main_queue();
}

+ (void)_createSmartAlbumWithTitle:(id)a3 inCollectionList:(id)a4 query:(id)a5 photoLibrary:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if ([v13 length])
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"title.length"}];

    if (v14)
    {
LABEL_3:
      if (v15)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"collectionList"}];

  if (v15)
  {
LABEL_4:
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_10:
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    if (v17)
    {
      goto LABEL_6;
    }

LABEL_11:
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:279 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_6;
  }

LABEL_9:
  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:277 description:{@"Invalid parameter not satisfying: %@", @"query"}];

  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (!v17)
  {
    goto LABEL_11;
  }

LABEL_6:
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__13537;
  v39[4] = __Block_byref_object_dispose__13538;
  v40 = 0;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __110__PXSmartAlbumPhotoKitQuery__createSmartAlbumWithTitle_inCollectionList_query_photoLibrary_completionHandler___block_invoke;
  v33[3] = &unk_1E77396E8;
  v18 = v13;
  v34 = v18;
  v35 = v15;
  v38 = v39;
  v36 = v16;
  v19 = v14;
  v37 = v19;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __110__PXSmartAlbumPhotoKitQuery__createSmartAlbumWithTitle_inCollectionList_query_photoLibrary_completionHandler___block_invoke_2;
  v28[3] = &unk_1E7744148;
  v20 = v36;
  v29 = v20;
  v32 = v39;
  v21 = v35;
  v30 = v21;
  v22 = v17;
  v31 = v22;
  [v20 performChanges:v33 completionHandler:v28];

  _Block_object_dispose(v39, 8);
}

void __110__PXSmartAlbumPhotoKitQuery__createSmartAlbumWithTitle_inCollectionList_query_photoLibrary_completionHandler___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6978AD0] creationRequestForSmartAlbumWithTitle:*(a1 + 32) userQuery:*(a1 + 40)];
  v3 = [v2 placeholderForCreatedSmartAlbum];
  v4 = [v3 localIdentifier];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 48) librarySpecificFetchOptions];
  [v7 setIncludeUserSmartAlbums:1];
  v8 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:*(a1 + 56) options:v7];
  v9 = [MEMORY[0x1E6978768] changeRequestForCollectionList:*(a1 + 56) childCollections:v8];
  v12[0] = v3;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v11 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  [v9 insertChildCollections:v10 atIndexes:v11];
}

void __110__PXSmartAlbumPhotoKitQuery__createSmartAlbumWithTitle_inCollectionList_query_photoLibrary_completionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) librarySpecificFetchOptions];
    [v6 setIncludeUserSmartAlbums:1];
    v7 = MEMORY[0x1E6978650];
    v21[0] = *(*(*(a1 + 56) + 8) + 40);
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v9 = [v7 fetchAssetCollectionsWithLocalIdentifiers:v8 options:v6];

    v10 = [v9 firstObject];
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) logDescription];
      *buf = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "PXSmartAlbums: Created new smart album: %@, query: %@", buf, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    v14 = PLUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "PXSmartAlbums: Failed to create new smart album: %@", buf, 0xCu);
    }

    v13 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSmartAlbumErrorDomain" code:-1001 underlyingError:v5 debugDescription:@"Failed to create new smart album: underlying error"];
    v10 = 0;
  }

  *(a1 + 48);
  v15 = v13;
  v16 = v10;
  px_dispatch_on_main_queue();
}

+ (id)queryWithSmartAlbum:(id)a3 collectionList:(id)a4 photoLibrary:(id)a5 error:(id *)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (v11 || v12 && v13)
  {
    if (a6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"albumToEdit || (collectionList && photoLibrary)"}];

    if (a6)
    {
LABEL_5:
      if (v14)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  [v30 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"error"}];

  if (!v14)
  {
LABEL_6:
    v14 = [v11 photoLibrary];
  }

LABEL_7:
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__13537;
  v41 = __Block_byref_object_dispose__13538;
  v42 = 0;
  if (v11)
  {
    v15 = [v11 photoLibrary];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __83__PXSmartAlbumPhotoKitQuery_queryWithSmartAlbum_collectionList_photoLibrary_error___block_invoke;
    v34[3] = &unk_1E7749A28;
    v35 = v11;
    v36 = &v37;
    v33 = 0;
    [v15 performChangesAndWait:v34 error:&v33];
    v16 = v33;

    v17 = v35;
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x1E69BF2C0]) initWithConjunction:1];
    [v17 addIsFavoriteQuery:1];
    v18 = [v17 query];
    v19 = v38[5];
    v38[5] = v18;

    v16 = 0;
  }

  if (v38[5])
  {
    v20 = [[PXSmartAlbumPhotoKitEditingContext alloc] initWithPhotoLibrary:v14];
    v21 = v38[5];
    v32 = 0;
    v22 = [PXSmartAlbumCondition conditionsForQuery:v21 editingContext:v20 error:&v32];
    v23 = v32;
    if (v22)
    {
      if (![v22 count])
      {
        v31 = [MEMORY[0x1E696AAA8] currentHandler];
        [v31 handleFailureInMethod:a2 object:a1 file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"conditions.count"}];
      }

      v24 = [a1 alloc];
      v25 = [v24 _initWithSmartAlbum:v11 collectionList:v12 photoLibrary:v14 query:v38[5] editingContext:v20 conditions:v22];
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v26 = PLUIGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v16;
      _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_ERROR, "PXSmartAlbums: Failed to get query from smart album: %@", buf, 0xCu);
    }

    v23 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSmartAlbumErrorDomain" code:-1001 underlyingError:v16 debugDescription:@"Failed to get query from smart album: underlying error"];
    v25 = 0;
  }

  if (v23)
  {

    v27 = v23;
    v25 = 0;
    *a6 = v23;
  }

  _Block_object_dispose(&v37, 8);

  return v25;
}

void __83__PXSmartAlbumPhotoKitQuery_queryWithSmartAlbum_collectionList_photoLibrary_error___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E6978AD0] changeRequestForSmartAlbum:*(a1 + 32)];
  v2 = [v5 userQuery];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end