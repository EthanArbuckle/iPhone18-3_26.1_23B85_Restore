@interface PXSmartAlbumPhotoKitQuery
+ (id)queryWithSmartAlbum:(id)album collectionList:(id)list photoLibrary:(id)library error:(id *)error;
+ (void)_createSmartAlbumWithTitle:(id)title inCollectionList:(id)list query:(id)query photoLibrary:(id)library completionHandler:(id)handler;
+ (void)_editSmartAlbum:(id)album title:(id)title query:(id)query completionHandler:(id)handler;
- (PXLabeledValue)conjunctionValue;
- (PXSmartAlbumPhotoKitQuery)init;
- (PXSmartAlbumQueryDelegate)delegate;
- (id)_initWithSmartAlbum:(id)album collectionList:(id)list photoLibrary:(id)library query:(id)query editingContext:(id)context conditions:(id)conditions;
- (id)_updatedStatusString;
- (id)addNewConditionAfterCondition:(id)condition;
- (id)replaceCondition:(id)condition withConditionOfType:(int64_t)type;
- (void)_updateCanPersistChanges;
- (void)_updateFetchResultCountObserver;
- (void)_updateQueryFromConditions;
- (void)_updateStatusString;
- (void)persistChangesWithCompletion:(id)completion;
- (void)removeCondition:(id)condition;
- (void)setCanPersistChanges:(BOOL)changes;
- (void)setConjunctionValue:(id)value;
- (void)setStatusString:(id)string;
- (void)setTitle:(id)title;
@end

@implementation PXSmartAlbumPhotoKitQuery

- (PXSmartAlbumQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateStatusString
{
  _updatedStatusString = [(PXSmartAlbumPhotoKitQuery *)self _updatedStatusString];
  [(PXSmartAlbumPhotoKitQuery *)self setStatusString:_updatedStatusString];
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
    logDescription = [(PLQuery *)self->_query logDescription];
    *buf = 138412290;
    v8 = logDescription;
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
  photoLibrary = [(PHPhotoLibrary *)self->_photoLibrary photoLibrary];
  v4 = objc_alloc_init(MEMORY[0x1E69BE700]);
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v6 = [MEMORY[0x1E69BE708] predicateForQuery:self->_query inLibrary:photoLibrary changeDetectionCriteria:v4];
  [librarySpecificFetchOptions setInternalPredicate:v6];

  [librarySpecificFetchOptions setIncludeHiddenAssets:{objc_msgSend(MEMORY[0x1E69BE708], "includesHiddenAssetsKeyInQuery:", self->_query)}];
  v7 = [PXFetchResultCountObserver alloc];
  photoLibrary = self->_photoLibrary;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__PXSmartAlbumPhotoKitQuery__updateFetchResultCountObserver__block_invoke;
  v14[3] = &unk_1E7743C20;
  v9 = librarySpecificFetchOptions;
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
  title = [(PXSmartAlbumPhotoKitQuery *)self title];
  -[PXSmartAlbumPhotoKitQuery setCanPersistChanges:](self, "setCanPersistChanges:", [title length] != 0);
}

- (void)setStatusString:(id)string
{
  v15 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:230 description:{@"Invalid parameter not satisfying: %@", @"statusString"}];
  }

  v7 = self->_statusString;
  v8 = v7;
  if (v7 == stringCopy)
  {
  }

  else
  {
    v9 = [(NSString *)v7 isEqualToString:stringCopy];

    if (!v9)
    {
      objc_storeStrong(&self->_statusString, string);
      v10 = PLUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v14 = stringCopy;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: status string set to: %@", buf, 0xCu);
      }

      delegate = [(PXSmartAlbumPhotoKitQuery *)self delegate];
      [delegate statusStringDidChangeForQuery:self];
    }
  }
}

- (void)persistChangesWithCompletion:(id)completion
{
  completionCopy = completion;
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
    v20 = completionCopy;
    v11 = completionCopy;
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
    v18 = completionCopy;
    v16 = completionCopy;
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

- (void)setCanPersistChanges:(BOOL)changes
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_canPersistChanges != changes)
  {
    changesCopy = changes;
    self->_canPersistChanges = changes;
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (changesCopy)
      {
        v6 = @"YES";
      }

      v7 = v6;
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: can persist changes set to: %@", &v9, 0xCu);
    }

    delegate = [(PXSmartAlbumPhotoKitQuery *)self delegate];
    [delegate canPersistChangesDidChangeForQuery:self];
  }
}

- (void)removeCondition:(id)condition
{
  conditionCopy = condition;
  [conditionCopy setDelegate:0];
  [(NSMutableArray *)self->_conditions removeObject:conditionCopy];

  [(PXSmartAlbumPhotoKitQuery *)self _updateQueryFromConditions];
}

- (id)replaceCondition:(id)condition withConditionOfType:(int64_t)type
{
  conditionCopy = condition;
  v8 = [(NSMutableArray *)self->_conditions indexOfObject:conditionCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"index != NSNotFound"}];
  }

  [conditionCopy setDelegate:0];
  v9 = [PXSmartAlbumCondition conditionWithConditionType:type editingContext:self->_editingContext];
  [v9 setDelegate:self];
  [(NSMutableArray *)self->_conditions replaceObjectAtIndex:v8 withObject:v9];
  [(PXSmartAlbumPhotoKitQuery *)self _updateQueryFromConditions];

  return v9;
}

- (id)addNewConditionAfterCondition:(id)condition
{
  v5 = [(NSMutableArray *)self->_conditions indexOfObject:condition];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"index != NSNotFound"}];
  }

  v6 = [PXSmartAlbumCondition conditionWithConditionType:4 editingContext:self->_editingContext];
  [v6 setDelegate:self];
  [(NSMutableArray *)self->_conditions insertObject:v6 atIndex:v5 + 1];
  [(PXSmartAlbumPhotoKitQuery *)self _updateQueryFromConditions];

  return v6;
}

- (void)setConjunctionValue:(id)value
{
  v13 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"conjunctionValue"}];
  }

  value = [valueCopy value];
  integerValue = [value integerValue];
  if ([(PLQuery *)self->_query conjunction]!= integerValue)
  {
    [(PLQuery *)self->_query setConjunction:integerValue];
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
  conjunction = [(PLQuery *)self->_query conjunction];
  conjunctionValues = [(PXSmartAlbumPhotoKitQuery *)self conjunctionValues];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:conjunction];
  v6 = PXLabeledValueForValueInLabeledValues(conjunctionValues, v5);

  return v6;
}

- (void)setTitle:(id)title
{
  v14 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"title"}];
  }

  v7 = self->_title;
  v8 = v7;
  if (v7 == titleCopy)
  {
  }

  else
  {
    v9 = [(NSString *)v7 isEqualToString:titleCopy];

    if (!v9)
    {
      objc_storeStrong(&self->_title, title);
      v10 = PLUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v13 = titleCopy;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: title set to: %@", buf, 0xCu);
      }

      [(PXSmartAlbumPhotoKitQuery *)self _updateCanPersistChanges];
    }
  }
}

- (id)_initWithSmartAlbum:(id)album collectionList:(id)list photoLibrary:(id)library query:(id)query editingContext:(id)context conditions:(id)conditions
{
  albumCopy = album;
  listCopy = list;
  libraryCopy = library;
  queryCopy = query;
  contextCopy = context;
  conditionsCopy = conditions;
  if (libraryCopy)
  {
    if (queryCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (contextCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

  if (!queryCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (contextCopy)
  {
    goto LABEL_4;
  }

LABEL_14:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"editingContext"}];

LABEL_4:
  if (![conditionsCopy count])
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"conditions.count"}];
  }

  v42.receiver = self;
  v42.super_class = PXSmartAlbumPhotoKitQuery;
  v19 = [(PXSmartAlbumPhotoKitQuery *)&v42 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_albumToEdit, album);
    objc_storeStrong(&v20->_collectionList, list);
    objc_storeStrong(&v20->_photoLibrary, library);
    objc_storeStrong(&v20->_query, query);
    localizedTitle = [albumCopy localizedTitle];
    v22 = localizedTitle;
    if (localizedTitle)
    {
      v23 = localizedTitle;
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

    objc_storeStrong(&v20->_editingContext, context);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __109__PXSmartAlbumPhotoKitQuery__initWithSmartAlbum_collectionList_photoLibrary_query_editingContext_conditions___block_invoke;
    v40[3] = &unk_1E772E9A0;
    v28 = v20;
    v41 = v28;
    [conditionsCopy enumerateObjectsUsingBlock:v40];
    v29 = [conditionsCopy mutableCopy];
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:70 description:{@"%s is not available as initializer", "-[PXSmartAlbumPhotoKitQuery init]"}];

  abort();
}

+ (void)_editSmartAlbum:(id)album title:(id)title query:(id)query completionHandler:(id)handler
{
  albumCopy = album;
  titleCopy = title;
  queryCopy = query;
  handlerCopy = handler;
  if (!albumCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:315 description:{@"Invalid parameter not satisfying: %@", @"albumToEdit"}];
  }

  if ([albumCopy assetCollectionType] != 2)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:316 description:{@"Invalid parameter not satisfying: %@", @"albumToEdit.assetCollectionType == PHAssetCollectionTypeSmartAlbum"}];
  }

  if ([titleCopy length])
  {
    if (queryCopy)
    {
      goto LABEL_7;
    }

LABEL_10:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:318 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (handlerCopy)
    {
      goto LABEL_8;
    }

LABEL_11:
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_8;
  }

  currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"title.length"}];

  if (!queryCopy)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (!handlerCopy)
  {
    goto LABEL_11;
  }

LABEL_8:
  photoLibrary = [albumCopy photoLibrary];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __75__PXSmartAlbumPhotoKitQuery__editSmartAlbum_title_query_completionHandler___block_invoke;
  v29[3] = &unk_1E774A1B8;
  v30 = albumCopy;
  v31 = titleCopy;
  v32 = queryCopy;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __75__PXSmartAlbumPhotoKitQuery__editSmartAlbum_title_query_completionHandler___block_invoke_2;
  v25[3] = &unk_1E774ACE8;
  v26 = v30;
  v27 = v32;
  v28 = handlerCopy;
  v16 = handlerCopy;
  v17 = v32;
  v18 = v30;
  v19 = titleCopy;
  [photoLibrary performChanges:v29 completionHandler:v25];
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

+ (void)_createSmartAlbumWithTitle:(id)title inCollectionList:(id)list query:(id)query photoLibrary:(id)library completionHandler:(id)handler
{
  titleCopy = title;
  listCopy = list;
  queryCopy = query;
  libraryCopy = library;
  handlerCopy = handler;
  if ([titleCopy length])
  {
    if (listCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"title.length"}];

    if (listCopy)
    {
LABEL_3:
      if (queryCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"collectionList"}];

  if (queryCopy)
  {
LABEL_4:
    if (libraryCopy)
    {
      goto LABEL_5;
    }

LABEL_10:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    if (handlerCopy)
    {
      goto LABEL_6;
    }

LABEL_11:
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:279 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_6;
  }

LABEL_9:
  currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:277 description:{@"Invalid parameter not satisfying: %@", @"query"}];

  if (!libraryCopy)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (!handlerCopy)
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
  v18 = titleCopy;
  v34 = v18;
  v35 = queryCopy;
  v38 = v39;
  v36 = libraryCopy;
  v19 = listCopy;
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
  v22 = handlerCopy;
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

+ (id)queryWithSmartAlbum:(id)album collectionList:(id)list photoLibrary:(id)library error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  albumCopy = album;
  listCopy = list;
  libraryCopy = library;
  photoLibrary = libraryCopy;
  if (albumCopy || listCopy && libraryCopy)
  {
    if (error)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"albumToEdit || (collectionList && photoLibrary)"}];

    if (error)
    {
LABEL_5:
      if (photoLibrary)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"error"}];

  if (!photoLibrary)
  {
LABEL_6:
    photoLibrary = [albumCopy photoLibrary];
  }

LABEL_7:
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__13537;
  v41 = __Block_byref_object_dispose__13538;
  v42 = 0;
  if (albumCopy)
  {
    photoLibrary2 = [albumCopy photoLibrary];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __83__PXSmartAlbumPhotoKitQuery_queryWithSmartAlbum_collectionList_photoLibrary_error___block_invoke;
    v34[3] = &unk_1E7749A28;
    v35 = albumCopy;
    v36 = &v37;
    v33 = 0;
    [photoLibrary2 performChangesAndWait:v34 error:&v33];
    v16 = v33;

    v17 = v35;
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x1E69BF2C0]) initWithConjunction:1];
    [v17 addIsFavoriteQuery:1];
    query = [v17 query];
    v19 = v38[5];
    v38[5] = query;

    v16 = 0;
  }

  if (v38[5])
  {
    v20 = [[PXSmartAlbumPhotoKitEditingContext alloc] initWithPhotoLibrary:photoLibrary];
    v21 = v38[5];
    v32 = 0;
    v22 = [PXSmartAlbumCondition conditionsForQuery:v21 editingContext:v20 error:&v32];
    v23 = v32;
    if (v22)
    {
      if (![v22 count])
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoKitQuery.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"conditions.count"}];
      }

      v24 = [self alloc];
      v25 = [v24 _initWithSmartAlbum:albumCopy collectionList:listCopy photoLibrary:photoLibrary query:v38[5] editingContext:v20 conditions:v22];
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
    *error = v23;
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