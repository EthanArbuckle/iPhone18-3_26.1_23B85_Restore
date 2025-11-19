@interface VUIMPMediaEntitiesSingleFetchOperation
+ (id)_sortIndexesWithMediaQuerySection:(id)a3;
- (BOOL)_isSortingBeingPerformedByMediaQuery;
- (BOOL)_shouldSortUsingMediaQuery;
- (VUIMPMediaEntitiesSingleFetchOperation)init;
- (VUIMPMediaEntitiesSingleFetchOperation)initWithMediaLibrary:(id)a3 request:(id)a4;
- (id)_baseMediaQuery;
- (id)_bitTestMediaQueryPropertyPredicateWithKeyPathBitTestExpression:(id)a3 operatorType:(unint64_t)a4 constantExpression:(id)a5;
- (id)_coalesceResponses:(id)a3;
- (id)_collectionsFetchResponseWithMediaQuery:(id)a3;
- (id)_fetchResponseWithMediaEntities:(id)a3 mediaQuerySections:(id)a4;
- (id)_itemsFetchResponseWithMediaQuery:(id)a3;
- (id)_keyPathMediaQueryPropertyPredicateWithKeyPathExpression:(id)a3 operatorType:(unint64_t)a4 constantExpression:(id)a5;
- (id)_mediaEntities:(id)a3 subarrayWithRange:(_NSRange)a4;
- (id)_mediaEntityKind;
- (id)_mediaEntityPropertyDescriptorForFilteringWithKeyPath:(id)a3;
- (id)_mediaQuery;
- (id)_mediaQueryPredicateForCompoundPredicate:(id)a3;
- (id)_mediaQueryPredicateForPredicate:(id)a3;
- (id)_mediaQueryPropertyPredicateForComparisonPredicate:(id)a3;
- (id)_processFetchedMediaEntities:(id)a3;
- (id)_uniqueMediaCollectionsBySeasonNumber:(id)a3;
- (void)_addEntityLimitToMediaQuery:(id)a3;
- (void)_addPredicateToMediaQuery:(id)a3;
- (void)_addPrefetchPropertiesToMediaQuery:(id)a3;
- (void)_addSortingPropertiesToMediaQuery:(id)a3;
- (void)_populatePrefetchProperties;
- (void)_processPredicate;
- (void)_processRange;
- (void)_processSortDescriptors;
- (void)executionDidBegin;
- (void)setResponse:(id)a3;
@end

@implementation VUIMPMediaEntitiesSingleFetchOperation

- (VUIMPMediaEntitiesSingleFetchOperation)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMPMediaEntitiesSingleFetchOperation)initWithMediaLibrary:(id)a3 request:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaLibrary"}];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"request"}];
LABEL_3:
  v15.receiver = self;
  v15.super_class = VUIMPMediaEntitiesSingleFetchOperation;
  v10 = [(VUIMPMediaEntitiesSingleFetchOperation *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_request, a4);
    objc_storeStrong(&v11->_mediaLibrary, a3);
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    prefetchProperties = v11->_prefetchProperties;
    v11->_prefetchProperties = v12;
  }

  return v11;
}

- (void)setResponse:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_response)
  {
    v5 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _coalesceResponses:v4];
  }

  else
  {
    v5 = v4;
  }

  response = self->_response;
  self->_response = v5;
}

- (void)executionDidBegin
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  v15 = [v16 options];
  v3 = [v15 vui_BOOLForKey:@"CheckHasItems" defaultValue:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  v5 = [v4 mediaEntityTypes];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_storeStrong(&self->_currentFetchMediaEntityType, *(*(&v17 + 1) + 8 * v9));
        v10 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaEntityKind];
        [(VUIMPMediaEntitiesSingleFetchOperation *)self setMediaEntityKind:v10];
        [(VUIMPMediaEntitiesSingleFetchOperation *)self _populatePrefetchProperties];
        [(VUIMPMediaEntitiesSingleFetchOperation *)self _processRange];
        [(VUIMPMediaEntitiesSingleFetchOperation *)self _processSortDescriptors];
        [(VUIMPMediaEntitiesSingleFetchOperation *)self _processPredicate];
        v11 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaQuery];
        if ([(VUIMediaEntityType *)self->_currentFetchMediaEntityType subtype])
        {
          if (v3)
          {
            v12 = objc_alloc_init(VUIMediaEntityFetchResponse);
            v13 = [v11 _hasCollections];
LABEL_11:
            [(VUIMediaEntityFetchResponse *)v12 setHasDataForCheckHasItemsOption:v13];
            goto LABEL_15;
          }

          v14 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _collectionsFetchResponseWithMediaQuery:v11];
        }

        else
        {
          if (v3)
          {
            v12 = objc_alloc_init(VUIMediaEntityFetchResponse);
            v13 = [v11 _hasItems];
            goto LABEL_11;
          }

          v14 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _itemsFetchResponseWithMediaQuery:v11];
        }

        v12 = v14;
LABEL_15:
        [(VUIMPMediaEntitiesSingleFetchOperation *)self setResponse:v12];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(VUIAsynchronousOperation *)self finishExecutionIfPossible];
}

- (void)_processRange
{
  v3 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  [v3 range];
  v5 = v4;

  if (v5)
  {

    [(VUIMPMediaEntitiesSingleFetchOperation *)self setProcessRangeAfterFetch:1];
  }
}

- (BOOL)_shouldSortUsingMediaQuery
{
  v3 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  v4 = [v3 sortDescriptors];

  currentFetchMediaEntityType = self->_currentFetchMediaEntityType;
  v6 = +[VUIMediaEntityType episode];
  v7 = v6;
  if (currentFetchMediaEntityType == v6)
  {

    goto LABEL_7;
  }

  if (!v4)
  {
LABEL_9:

LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  v8 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  v9 = [v8 mediaEntityTypes];
  if ([v9 count] <= 1)
  {

    goto LABEL_9;
  }

  v10 = [v4 count];

  if (v10 < 2)
  {
    goto LABEL_10;
  }

LABEL_7:
  v11 = 0;
LABEL_11:

  return v11;
}

- (void)_processSortDescriptors
{
  v2 = self;
  v43 = *MEMORY[0x1E69E9840];
  v32 = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaEntityKind];
  v3 = [(VUIMPMediaEntitiesSingleFetchOperation *)v2 request];
  v4 = [v3 sortDescriptors];
  if ([v4 count])
  {
    v31 = [(VUIMPMediaEntitiesSingleFetchOperation *)v2 _shouldSortUsingMediaQuery];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      v27 = v3;
      v28 = *MEMORY[0x1E695D940];
      v25 = v2;
      v26 = v4;
      v30 = v5;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          v12 = [v11 key];
          v13 = [v32 propertyDescriptorForName:v12];
          if (!v13)
          {
            [MEMORY[0x1E695DF30] raise:v28 format:{@"Unknown key for sort descriptor! %@", v12}];
          }

          v14 = [v13 sourcePropertyNames];
          v15 = v14;
          if (!v31 || [v14 count] >= 2)
          {

            v21 = [(VUIMPMediaEntitiesSingleFetchOperation *)v25 mediaEntityKind];
            v33 = 0;
            v3 = v27;
            v22 = [v27 _manualSortDescriptorsWithMediaEntityKind:v21 propertiesRequiredForSort:&v33];
            v23 = v33;

            v24 = [(VUIMPMediaEntitiesSingleFetchOperation *)v25 prefetchProperties];
            [v24 unionSet:v23];

            [(VUIMPMediaEntitiesSingleFetchOperation *)v25 setPostFetchSortDescriptors:v22];
            [(VUIMPMediaEntitiesSingleFetchOperation *)v25 setProcessRangeAfterFetch:1];

            v4 = v26;
            v5 = v30;
            goto LABEL_20;
          }

          v16 = [v15 allObjects];
          v17 = [v16 firstObject];

          [v30 addObject:v17];
          if ([v11 ascending])
          {
            v18 = 1;
          }

          else
          {
            v18 = 2;
          }

          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18];
          [v6 setObject:v19 forKey:v17];
        }

        v8 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
        v4 = v26;
        v3 = v27;
        v2 = v25;
        v5 = v30;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v20 = VUIDefaultLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = v5;
      v40 = 2112;
      v41 = v6;
      _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "Sorting will be performed by MPMediaLibrary using %@ (%@)", buf, 0x16u);
    }

    [(VUIMPMediaEntitiesSingleFetchOperation *)v2 setMediaQuerySortOrderingProperties:v5];
    [(VUIMPMediaEntitiesSingleFetchOperation *)v2 setMediaQuerySortOrderingDirectionMappings:v6];
LABEL_20:
  }
}

- (BOOL)_isSortingBeingPerformedByMediaQuery
{
  v2 = [(VUIMPMediaEntitiesSingleFetchOperation *)self postFetchSortDescriptors];
  v3 = [v2 count] == 0;

  return v3;
}

- (void)_processPredicate
{
  v3 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  v4 = [v3 predicate];
  if (v4)
  {
    v5 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaQueryPredicateForPredicate:v4];
    if (v5)
    {
      goto LABEL_5;
    }

    v6 = [v4 vui_keyPathsInPredicate];
    v7 = [(VUIMPMediaEntitiesSingleFetchOperation *)self prefetchProperties];
    [v7 unionSet:v6];

    [(VUIMPMediaEntitiesSingleFetchOperation *)self setProcessPredicateAfterFetch:1];
  }

  v5 = 0;
LABEL_5:
  v8 = v5;
  [(VUIMPMediaEntitiesSingleFetchOperation *)self setMediaQueryPredicate:v5];
}

- (id)_mediaQueryPredicateForPredicate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaQueryPredicateForCompoundPredicate:v4];
LABEL_5:
    v6 = v5;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaQueryPropertyPredicateForComparisonPredicate:v4];
    goto LABEL_5;
  }

  v7 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v8 = [v4 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported predicate: %@", v4}];
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)_mediaQueryPredicateForCompoundPredicate:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v4 subpredicates];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaQueryPredicateForPredicate:*(*(&v17 + 1) + 8 * i)];
        if (!v11)
        {

          goto LABEL_13;
        }

        v12 = v11;
        [v5 vui_addObjectIfNotNil:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = [v4 compoundPredicateType];
  if (v13 == 2)
  {
    v14 = MEMORY[0x1E69705A0];
    goto LABEL_15;
  }

  if (v13 == 1)
  {
    v14 = MEMORY[0x1E6970598];
LABEL_15:
    v15 = [v14 predicateMatchingPredicates:v5];
    goto LABEL_16;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported compound predicate: %@", v4}];
LABEL_13:
  v15 = 0;
LABEL_16:

  return v15;
}

- (id)_mediaQueryPropertyPredicateForComparisonPredicate:(id)a3
{
  v4 = a3;
  v5 = [v4 leftExpression];
  v6 = [v4 rightExpression];
  v7 = [v5 expressionType];
  v8 = [v6 expressionType];
  if (v7 == 3 && !v8)
  {
    v9 = -[VUIMPMediaEntitiesSingleFetchOperation _keyPathMediaQueryPropertyPredicateWithKeyPathExpression:operatorType:constantExpression:](self, "_keyPathMediaQueryPropertyPredicateWithKeyPathExpression:operatorType:constantExpression:", v5, [v4 predicateOperatorType], v6);
LABEL_6:
    v10 = v9;
    goto LABEL_8;
  }

  if ([v5 vui_isKeyPathBitTestExpression])
  {
    v9 = -[VUIMPMediaEntitiesSingleFetchOperation _bitTestMediaQueryPropertyPredicateWithKeyPathBitTestExpression:operatorType:constantExpression:](self, "_bitTestMediaQueryPropertyPredicateWithKeyPathBitTestExpression:operatorType:constantExpression:", v5, [v4 predicateOperatorType], v6);
    goto LABEL_6;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported expressions in comparison predicate: %@", v4}];
  v10 = 0;
LABEL_8:

  return v10;
}

- (id)_keyPathMediaQueryPropertyPredicateWithKeyPathExpression:(id)a3 operatorType:(unint64_t)a4 constantExpression:(id)a5
{
  v8 = a5;
  v9 = [a3 keyPath];
  v10 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaEntityPropertyDescriptorForFilteringWithKeyPath:v9];
  if (v10)
  {
    v11 = [v8 constantValue];
    v12 = [v10 sourceFilterValueBlock];
    v13 = v12;
    if (v12)
    {
      v14 = (*(v12 + 16))(v12, v11);

      v11 = v14;
    }

    v15 = [v10 sourceFilterBlock];
    if (v15)
    {
      v16 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
      (v15)[2](v15, v16, a4, v11);
    }

    else
    {
      v18 = [v10 sourcePropertyNames];
      v19 = [v18 allObjects];
      v16 = [v19 firstObject];

      [MEMORY[0x1E6970610] vui_mediaPropertyPredicateWithProperty:v16 predicateOperatorType:a4 value:v11];
    }
    v17 = ;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_bitTestMediaQueryPropertyPredicateWithKeyPathBitTestExpression:(id)a3 operatorType:(unint64_t)a4 constantExpression:(id)a5
{
  v8 = a3;
  v9 = [a5 constantValue];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v9 unsignedIntegerValue] && (a4 == 5 || a4 == 2))
  {
    v12 = [v8 arguments];
    if ([v12 count] == 2)
    {
      v13 = [v12 objectAtIndex:0];
      v14 = [v12 objectAtIndex:1];
      if ([v13 expressionType] == 3 && !objc_msgSend(v14, "expressionType"))
      {
        v15 = [v14 constantValue];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v13 keyPath];
          v17 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaEntityPropertyDescriptorForFilteringWithKeyPath:v16];
          v18 = [v17 sourcePropertyNames];
          v19 = [v18 allObjects];

          if ([v19 count] == 1)
          {
            [v19 firstObject];
            v20 = v21 = v16;
            v10 = [MEMORY[0x1E6970610] predicateWithValue:v15 forProperty:v20 comparisonType:107];

            v16 = v21;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_mediaEntityPropertyDescriptorForFilteringWithKeyPath:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaEntityKind];
  v6 = [v5 propertyDescriptorForName:v4];
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unknown keypath %@ for entity kind %@", v4, v5}];
  }

  if ([v6 sourceSupportsFiltering])
  {
    v7 = v6;
  }

  else
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Filtering is not supported for keypath %@. Predicate cannot be satisfied by the MPMediaLibrary directly", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_mediaEntityKind
{
  if ([(VUIMediaEntityType *)self->_currentFetchMediaEntityType subtype])
  {
    currentFetchMediaEntityType = self->_currentFetchMediaEntityType;
    v4 = +[VUIMediaEntityType show];

    if (currentFetchMediaEntityType == v4)
    {
      v10 = VUIMPShowMediaCollectionKind();
    }

    else
    {
      v5 = self->_currentFetchMediaEntityType;
      v6 = +[VUIMediaEntityType season];

      if (v5 == v6)
      {
        v10 = VUIMPSeasonMediaCollectionKind();
      }

      else
      {
        v7 = MEMORY[0x1E695DF30];
        v8 = *MEMORY[0x1E695D930];
        v9 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
        [v7 raise:v8 format:{@"Unable to determine the VUIMediaEntityKind to use for this request: %@", v9}];

        v10 = 0;
      }
    }
  }

  else
  {
    v10 = VUIMPMediaItemKind();
  }

  return v10;
}

- (void)_populatePrefetchProperties
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(VUIMPMediaEntitiesSingleFetchOperation *)self prefetchProperties];
  v4 = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaEntityKind];
  v5 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  v6 = [v5 properties];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [v4 propertyDescriptorForName:v11];
        if ([v12 retrievesSourcePropertiesAtFetch])
        {
          [v3 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)_mediaQuery
{
  v3 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _baseMediaQuery];
  if (v3)
  {
    [(VUIMPMediaEntitiesSingleFetchOperation *)self _addEntityLimitToMediaQuery:v3];
    [(VUIMPMediaEntitiesSingleFetchOperation *)self _addPredicateToMediaQuery:v3];
    [(VUIMPMediaEntitiesSingleFetchOperation *)self _addSortingPropertiesToMediaQuery:v3];
    [(VUIMPMediaEntitiesSingleFetchOperation *)self _addPrefetchPropertiesToMediaQuery:v3];
  }

  return v3;
}

- (id)_baseMediaQuery
{
  v3 = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaLibrary];
  v4 = [v3 mediaLibrary];

  currentFetchMediaEntityType = self->_currentFetchMediaEntityType;
  v6 = +[VUIMediaEntityType movie];

  if (currentFetchMediaEntityType == v6)
  {
    v16 = [MEMORY[0x1E6970618] vui_moviesQueryWithMediaLibrary:v4];
    goto LABEL_11;
  }

  v7 = self->_currentFetchMediaEntityType;
  v8 = +[VUIMediaEntityType movieRental];

  if (v7 == v8)
  {
    v16 = [MEMORY[0x1E6970618] vui_movieRentalsQueryWithMediaLibrary:v4];
LABEL_11:
    v11 = v16;
    if (v16)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v9 = self->_currentFetchMediaEntityType;
  v10 = +[VUIMediaEntityType homeVideo];

  if (v9 == v10)
  {
    v11 = [MEMORY[0x1E6970618] vui_homeVideosQueryWithMediaLibrary:v4];
    goto LABEL_14;
  }

  if ([(VUIMediaEntityType *)self->_currentFetchMediaEntityType mediaCategoryType]!= 1)
  {
LABEL_15:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unable to create MPMediaQuery as the supplied media entity type is not supported: %@", self->_currentFetchMediaEntityType}];
    v11 = 0;
    goto LABEL_16;
  }

  v11 = [MEMORY[0x1E6970618] vui_episodesQueryWithMediaLibrary:v4];
  if (![(VUIMediaEntityType *)self->_currentFetchMediaEntityType subtype])
  {
LABEL_14:
    if (v11)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = self->_currentFetchMediaEntityType;
  v13 = +[VUIMediaEntityType season];

  if (v12 == v13)
  {
    v18 = v11;
    v19 = 1;
  }

  else
  {
    v14 = self->_currentFetchMediaEntityType;
    v15 = +[VUIMediaEntityType show];

    if (v14 != v15)
    {

      goto LABEL_15;
    }

    v18 = v11;
    v19 = 8;
  }

  [v18 setGroupingType:v19];
  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_16:
  [v11 setIgnoreSystemFilterPredicates:1];

  return v11;
}

- (void)_addEntityLimitToMediaQuery:(id)a3
{
  v6 = a3;
  v4 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  if (![(VUIMPMediaEntitiesSingleFetchOperation *)self processRangeAfterFetch])
  {
    [v4 range];
    if (v5)
    {
      [v6 setEntityLimit:v5];
    }
  }
}

- (void)_addPredicateToMediaQuery:(id)a3
{
  v5 = a3;
  v4 = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaQueryPredicate];
  if (v4)
  {
    [v5 addFilterPredicate:v4];
  }
}

- (void)_addSortingPropertiesToMediaQuery:(id)a3
{
  v6 = a3;
  if ([(VUIMPMediaEntitiesSingleFetchOperation *)self _isSortingBeingPerformedByMediaQuery])
  {
    v4 = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaQuerySortOrderingProperties];
    if ([v4 count])
    {
      [v6 _setOrderingProperties:v4];
      v5 = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaQuerySortOrderingDirectionMappings];
      [v6 _setOrderingDirectionMappings:v5];
    }
  }
}

- (void)_addPrefetchPropertiesToMediaQuery:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaEntityKind];
  v7 = [(VUIMPMediaEntitiesSingleFetchOperation *)self prefetchProperties];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v6 propertyDescriptorForName:*(*(&v14 + 1) + 8 * v11)];
        v13 = [v12 sourcePropertyNames];
        if (v13)
        {
          [v5 unionSet:v13];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v4 setItemPropertiesToFetch:v5];
}

- (id)_processFetchedMediaEntities:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    if ([(VUIMPMediaEntitiesSingleFetchOperation *)self processPredicateAfterFetch])
    {
      v5 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
      v6 = [v5 predicate];

      if (v6)
      {
        v7 = [v4 filteredArrayUsingPredicate:v6];

        v4 = v7;
      }
    }

    v8 = [(VUIMPMediaEntitiesSingleFetchOperation *)self postFetchSortDescriptors];
    if (v8)
    {
      v9 = VUIDefaultLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Sorting media entities returned from MPMediaQuery", buf, 2u);
      }

      v10 = [v4 sortedArrayUsingDescriptors:v8];

      v4 = v10;
    }

    if ([(VUIMPMediaEntitiesSingleFetchOperation *)self processRangeAfterFetch])
    {
      v11 = VUIDefaultLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Processing range on media entities returned from MPMediaQuery", v17, 2u);
      }

      v12 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
      v13 = [v12 range];
      v15 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaEntities:v4 subarrayWithRange:v13, v14];

      v4 = v15;
    }
  }

  return v4;
}

- (id)_mediaEntities:(id)a3 subarrayWithRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v7 = v6;
  if (location == 0x7FFFFFFFFFFFFFFFLL || !length || location + length > [v6 count] || (objc_msgSend(v7, "subarrayWithRange:", location, length), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = v7;
  }

  return v8;
}

- (id)_itemsFetchResponseWithMediaQuery:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaLibrary];
  v6 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  v7 = [v6 properties];

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = v4;
  v9 = [v4 items];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [[VUIMPMediaItem alloc] initWithMediaLibrary:v5 mediaItem:*(*(&v19 + 1) + 8 * i) requestedProperties:v7];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v15 = [v18 itemSections];
  v16 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _fetchResponseWithMediaEntities:v8 mediaQuerySections:v15];

  return v16;
}

- (id)_collectionsFetchResponseWithMediaQuery:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27 = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaLibrary];
  v5 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  v6 = [(VUIMediaEntityType *)self->_currentFetchMediaEntityType mediaCollectionType];
  if (v6 == 1 || v6 == 2)
  {
    v7 = objc_opt_class();
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Unexpected media collection type!"];
    v7 = 0;
  }

  v25 = v5;
  v8 = [v5 properties];
  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [v4 collections];
  v10 = [v4 collectionSections];
  if ([(VUIMediaEntityType *)self->_currentFetchMediaEntityType mediaCollectionType]== 1)
  {
    v11 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _uniqueMediaCollectionsBySeasonNumber:v9];

    v9 = v11;
  }

  v24 = self;
  v26 = v4;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    v16 = v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        v19 = [[v7 alloc] initWithMediaLibrary:v16 mediaItemCollection:v18 requestedProperties:v8];
        if (v19)
        {
          [v28 addObject:v19];
        }

        else
        {
          v20 = VUIDefaultLogObject();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v34 = v18;
            _os_log_error_impl(&dword_1E323F000, v20, OS_LOG_TYPE_ERROR, "Unable to create VUIMediaCollection for MPMediaItemCollection: %@", buf, 0xCu);
          }

          v10 = 0;
          v16 = v27;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v14);
  }

  else
  {
    v16 = v27;
  }

  [(VUIMPMediaEntitiesSingleFetchOperation *)v24 _fetchResponseWithMediaEntities:v28 mediaQuerySections:v10];
  v22 = v21 = v16;

  return v22;
}

- (id)_fetchResponseWithMediaEntities:(id)a3 mediaQuerySections:(id)a4
{
  v6 = a4;
  v7 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _processFetchedMediaEntities:a3];
  v8 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  v9 = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaEntityKind];
  v10 = [v8 _sortIndexPropertyKeyWithMediaEntityKind:v9];
  if ([v8 _shouldGenerateSortIndexes])
  {
    if (v6 && [(VUIMPMediaEntitiesSingleFetchOperation *)self _isSortingBeingPerformedByMediaQuery])
    {
      v11 = [objc_opt_class() _sortIndexesWithMediaQuerySection:v6];
LABEL_7:
      v12 = v11;
      goto LABEL_9;
    }

    if (v10)
    {
      v11 = [VUIMediaLibraryUtilities sortIndexesForMediaEntities:v7 sortIndexPropertyKey:v10];
      goto LABEL_7;
    }
  }

  v12 = 0;
LABEL_9:
  v13 = [v8 groupingKeyPath];
  if (v13)
  {
    v14 = [v8 groupingSortComparator];
    v15 = [VUIMediaLibraryUtilities groupingForMediaEntities:v7 groupingKeyPath:v13 groupingSortComparator:v14 performDefaultSort:1 sortIndexPropertyKey:v10];

    if ([v8 _shouldGenerateGroupingSortIndexes])
    {
      v16 = [VUIMediaLibraryUtilities sortIndexesForGrouping:v15];
      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = 0;
LABEL_14:
  v17 = objc_alloc_init(VUIMediaEntityFetchResponse);
  [(VUIMediaEntityFetchResponse *)v17 setMediaEntities:v7];
  [(VUIMediaEntityFetchResponse *)v17 setSortIndexes:v12];
  [(VUIMediaEntityFetchResponse *)v17 setGrouping:v15];
  [(VUIMediaEntityFetchResponse *)v17 setGroupingSortIndexes:v16];

  return v17;
}

+ (id)_sortIndexesWithMediaQuerySection:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 range];
        v13 = v12;
        v14 = [VUIMediaEntitySortIndex alloc];
        v15 = [v10 title];
        v16 = [(VUIMediaEntitySortIndex *)v14 initWithTitle:v15 startIndex:v11 count:v13];

        [v4 addObject:v16];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v17 = [v4 copy];

  return v17;
}

- (id)_coalesceResponses:(id)a3
{
  v4 = a3;
  v5 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaQuery];
  v6 = objc_opt_new();
  v7 = [(VUIMediaEntityFetchResponse *)self->_response mediaEntities];
  [v6 addObjectsFromArray:v7];
  v8 = [v4 mediaEntities];
  [v6 addObjectsFromArray:v8];

  v9 = [v5 collectionSections];
  v10 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _fetchResponseWithMediaEntities:v6 mediaQuerySections:v9];

  if ([(VUIMediaEntityFetchResponse *)self->_response hasDataForCheckHasItemsOption])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v4 hasDataForCheckHasItemsOption];
  }

  [v10 setHasDataForCheckHasItemsOption:v11];

  return v10;
}

- (id)_uniqueMediaCollectionsBySeasonNumber:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      v10 = 0;
      do
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = __80__VUIMPMediaEntitiesSingleFetchOperation__uniqueMediaCollectionsBySeasonNumber___block_invoke(v7, *(*(&v44 + 1) + 8 * v10));
        if ([v4 containsObject:v11])
        {
          [v5 addObject:v11];
        }

        [v4 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v7 = [v6 countByEnumeratingWithState:&v44 objects:v50 count:16];
      v8 = v7;
    }

    while (v7);
  }

  if ([v5 count])
  {
    v12 = objc_opt_new();
    v13 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v31 = v6;
    obj = v6;
    v14 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    v33 = v13;
    if (v14)
    {
      v15 = v14;
      v16 = *v41;
      do
      {
        v17 = 0;
        do
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v40 + 1) + 8 * v17);
          v19 = __80__VUIMPMediaEntitiesSingleFetchOperation__uniqueMediaCollectionsBySeasonNumber___block_invoke(v14, v18);
          if ([v5 containsObject:v19])
          {
            v20 = [v13 objectForKeyedSubscript:v19];
            v21 = [v18 items];
            if (v20)
            {
              v22 = [v20 arrayByAddingObjectsFromArray:v21];
              [v33 setObject:v22 forKeyedSubscript:v19];

              v13 = v33;
            }

            else
            {
              [v13 setObject:v21 forKeyedSubscript:v19];
            }
          }

          else
          {
            [v12 addObject:v18];
          }

          ++v17;
        }

        while (v15 != v17);
        v14 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
        v15 = v14;
      }

      while (v14);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v23 = [v13 allValues];
    v24 = [v23 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v37;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [objc_alloc(MEMORY[0x1E69705E0]) initWithItems:*(*(&v36 + 1) + 8 * i)];
          [v12 addObject:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v25);
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __80__VUIMPMediaEntitiesSingleFetchOperation__uniqueMediaCollectionsBySeasonNumber___block_invoke_2;
    v34[3] = &unk_1E872D968;
    v35 = &__block_literal_global_1;
    v29 = [v12 sortedArrayUsingComparator:v34];

    v6 = v31;
  }

  else
  {
    v29 = v6;
  }

  return v29;
}

id __80__VUIMPMediaEntitiesSingleFetchOperation__uniqueMediaCollectionsBySeasonNumber___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 representativeItem];
  v3 = [v2 valueForProperty:*MEMORY[0x1E696FB10]];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:0xFFFFFFFFLL];
  }

  v5 = v4;

  return v5;
}

uint64_t __80__VUIMPMediaEntitiesSingleFetchOperation__uniqueMediaCollectionsBySeasonNumber___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = v6(v5, a2);
  v9 = (*(*(a1 + 32) + 16))();

  v10 = [v8 compare:v9];
  return v10;
}

@end