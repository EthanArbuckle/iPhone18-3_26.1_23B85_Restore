@interface VUIMPMediaEntitiesSingleFetchOperation
+ (id)_sortIndexesWithMediaQuerySection:(id)section;
- (BOOL)_isSortingBeingPerformedByMediaQuery;
- (BOOL)_shouldSortUsingMediaQuery;
- (VUIMPMediaEntitiesSingleFetchOperation)init;
- (VUIMPMediaEntitiesSingleFetchOperation)initWithMediaLibrary:(id)library request:(id)request;
- (id)_baseMediaQuery;
- (id)_bitTestMediaQueryPropertyPredicateWithKeyPathBitTestExpression:(id)expression operatorType:(unint64_t)type constantExpression:(id)constantExpression;
- (id)_coalesceResponses:(id)responses;
- (id)_collectionsFetchResponseWithMediaQuery:(id)query;
- (id)_fetchResponseWithMediaEntities:(id)entities mediaQuerySections:(id)sections;
- (id)_itemsFetchResponseWithMediaQuery:(id)query;
- (id)_keyPathMediaQueryPropertyPredicateWithKeyPathExpression:(id)expression operatorType:(unint64_t)type constantExpression:(id)constantExpression;
- (id)_mediaEntities:(id)entities subarrayWithRange:(_NSRange)range;
- (id)_mediaEntityKind;
- (id)_mediaEntityPropertyDescriptorForFilteringWithKeyPath:(id)path;
- (id)_mediaQuery;
- (id)_mediaQueryPredicateForCompoundPredicate:(id)predicate;
- (id)_mediaQueryPredicateForPredicate:(id)predicate;
- (id)_mediaQueryPropertyPredicateForComparisonPredicate:(id)predicate;
- (id)_processFetchedMediaEntities:(id)entities;
- (id)_uniqueMediaCollectionsBySeasonNumber:(id)number;
- (void)_addEntityLimitToMediaQuery:(id)query;
- (void)_addPredicateToMediaQuery:(id)query;
- (void)_addPrefetchPropertiesToMediaQuery:(id)query;
- (void)_addSortingPropertiesToMediaQuery:(id)query;
- (void)_populatePrefetchProperties;
- (void)_processPredicate;
- (void)_processRange;
- (void)_processSortDescriptors;
- (void)executionDidBegin;
- (void)setResponse:(id)response;
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

- (VUIMPMediaEntitiesSingleFetchOperation)initWithMediaLibrary:(id)library request:(id)request
{
  libraryCopy = library;
  requestCopy = request;
  v9 = requestCopy;
  if (libraryCopy)
  {
    if (requestCopy)
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
    objc_storeStrong(&v10->_request, request);
    objc_storeStrong(&v11->_mediaLibrary, library);
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    prefetchProperties = v11->_prefetchProperties;
    v11->_prefetchProperties = v12;
  }

  return v11;
}

- (void)setResponse:(id)response
{
  responseCopy = response;
  v7 = responseCopy;
  if (self->_response)
  {
    v5 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _coalesceResponses:responseCopy];
  }

  else
  {
    v5 = responseCopy;
  }

  response = self->_response;
  self->_response = v5;
}

- (void)executionDidBegin
{
  v22 = *MEMORY[0x1E69E9840];
  request = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  options = [request options];
  v3 = [options vui_BOOLForKey:@"CheckHasItems" defaultValue:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  request2 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  mediaEntityTypes = [request2 mediaEntityTypes];

  v6 = [mediaEntityTypes countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(mediaEntityTypes);
        }

        objc_storeStrong(&self->_currentFetchMediaEntityType, *(*(&v17 + 1) + 8 * v9));
        _mediaEntityKind = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaEntityKind];
        [(VUIMPMediaEntitiesSingleFetchOperation *)self setMediaEntityKind:_mediaEntityKind];
        [(VUIMPMediaEntitiesSingleFetchOperation *)self _populatePrefetchProperties];
        [(VUIMPMediaEntitiesSingleFetchOperation *)self _processRange];
        [(VUIMPMediaEntitiesSingleFetchOperation *)self _processSortDescriptors];
        [(VUIMPMediaEntitiesSingleFetchOperation *)self _processPredicate];
        _mediaQuery = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaQuery];
        if ([(VUIMediaEntityType *)self->_currentFetchMediaEntityType subtype])
        {
          if (v3)
          {
            v12 = objc_alloc_init(VUIMediaEntityFetchResponse);
            _hasCollections = [_mediaQuery _hasCollections];
LABEL_11:
            [(VUIMediaEntityFetchResponse *)v12 setHasDataForCheckHasItemsOption:_hasCollections];
            goto LABEL_15;
          }

          v14 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _collectionsFetchResponseWithMediaQuery:_mediaQuery];
        }

        else
        {
          if (v3)
          {
            v12 = objc_alloc_init(VUIMediaEntityFetchResponse);
            _hasCollections = [_mediaQuery _hasItems];
            goto LABEL_11;
          }

          v14 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _itemsFetchResponseWithMediaQuery:_mediaQuery];
        }

        v12 = v14;
LABEL_15:
        [(VUIMPMediaEntitiesSingleFetchOperation *)self setResponse:v12];

        ++v9;
      }

      while (v7 != v9);
      v7 = [mediaEntityTypes countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(VUIAsynchronousOperation *)self finishExecutionIfPossible];
}

- (void)_processRange
{
  request = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  [request range];
  v5 = v4;

  if (v5)
  {

    [(VUIMPMediaEntitiesSingleFetchOperation *)self setProcessRangeAfterFetch:1];
  }
}

- (BOOL)_shouldSortUsingMediaQuery
{
  request = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  sortDescriptors = [request sortDescriptors];

  currentFetchMediaEntityType = self->_currentFetchMediaEntityType;
  v6 = +[VUIMediaEntityType episode];
  v7 = v6;
  if (currentFetchMediaEntityType == v6)
  {

    goto LABEL_7;
  }

  if (!sortDescriptors)
  {
LABEL_9:

LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  request2 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  mediaEntityTypes = [request2 mediaEntityTypes];
  if ([mediaEntityTypes count] <= 1)
  {

    goto LABEL_9;
  }

  v10 = [sortDescriptors count];

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
  selfCopy = self;
  v43 = *MEMORY[0x1E69E9840];
  mediaEntityKind = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaEntityKind];
  request = [(VUIMPMediaEntitiesSingleFetchOperation *)selfCopy request];
  sortDescriptors = [request sortDescriptors];
  if ([sortDescriptors count])
  {
    _shouldSortUsingMediaQuery = [(VUIMPMediaEntitiesSingleFetchOperation *)selfCopy _shouldSortUsingMediaQuery];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = sortDescriptors;
    v7 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      v27 = request;
      v28 = *MEMORY[0x1E695D940];
      v25 = selfCopy;
      v26 = sortDescriptors;
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
          v13 = [mediaEntityKind propertyDescriptorForName:v12];
          if (!v13)
          {
            [MEMORY[0x1E695DF30] raise:v28 format:{@"Unknown key for sort descriptor! %@", v12}];
          }

          sourcePropertyNames = [v13 sourcePropertyNames];
          v15 = sourcePropertyNames;
          if (!_shouldSortUsingMediaQuery || [sourcePropertyNames count] >= 2)
          {

            mediaEntityKind2 = [(VUIMPMediaEntitiesSingleFetchOperation *)v25 mediaEntityKind];
            v33 = 0;
            request = v27;
            v22 = [v27 _manualSortDescriptorsWithMediaEntityKind:mediaEntityKind2 propertiesRequiredForSort:&v33];
            v23 = v33;

            prefetchProperties = [(VUIMPMediaEntitiesSingleFetchOperation *)v25 prefetchProperties];
            [prefetchProperties unionSet:v23];

            [(VUIMPMediaEntitiesSingleFetchOperation *)v25 setPostFetchSortDescriptors:v22];
            [(VUIMPMediaEntitiesSingleFetchOperation *)v25 setProcessRangeAfterFetch:1];

            sortDescriptors = v26;
            v5 = v30;
            goto LABEL_20;
          }

          allObjects = [v15 allObjects];
          firstObject = [allObjects firstObject];

          [v30 addObject:firstObject];
          if ([v11 ascending])
          {
            v18 = 1;
          }

          else
          {
            v18 = 2;
          }

          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18];
          [v6 setObject:v19 forKey:firstObject];
        }

        v8 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
        sortDescriptors = v26;
        request = v27;
        selfCopy = v25;
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

    [(VUIMPMediaEntitiesSingleFetchOperation *)selfCopy setMediaQuerySortOrderingProperties:v5];
    [(VUIMPMediaEntitiesSingleFetchOperation *)selfCopy setMediaQuerySortOrderingDirectionMappings:v6];
LABEL_20:
  }
}

- (BOOL)_isSortingBeingPerformedByMediaQuery
{
  postFetchSortDescriptors = [(VUIMPMediaEntitiesSingleFetchOperation *)self postFetchSortDescriptors];
  v3 = [postFetchSortDescriptors count] == 0;

  return v3;
}

- (void)_processPredicate
{
  request = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  predicate = [request predicate];
  if (predicate)
  {
    v5 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaQueryPredicateForPredicate:predicate];
    if (v5)
    {
      goto LABEL_5;
    }

    vui_keyPathsInPredicate = [predicate vui_keyPathsInPredicate];
    prefetchProperties = [(VUIMPMediaEntitiesSingleFetchOperation *)self prefetchProperties];
    [prefetchProperties unionSet:vui_keyPathsInPredicate];

    [(VUIMPMediaEntitiesSingleFetchOperation *)self setProcessPredicateAfterFetch:1];
  }

  v5 = 0;
LABEL_5:
  v8 = v5;
  [(VUIMPMediaEntitiesSingleFetchOperation *)self setMediaQueryPredicate:v5];
}

- (id)_mediaQueryPredicateForPredicate:(id)predicate
{
  predicateCopy = predicate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaQueryPredicateForCompoundPredicate:predicateCopy];
LABEL_5:
    v6 = v5;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaQueryPropertyPredicateForComparisonPredicate:predicateCopy];
    goto LABEL_5;
  }

  v7 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v8 = [predicateCopy isEqual:v7];

  if ((v8 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported predicate: %@", predicateCopy}];
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)_mediaQueryPredicateForCompoundPredicate:(id)predicate
{
  v22 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  subpredicates = [predicateCopy subpredicates];
  v7 = [subpredicates countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(subpredicates);
        }

        v11 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaQueryPredicateForPredicate:*(*(&v17 + 1) + 8 * i)];
        if (!v11)
        {

          goto LABEL_13;
        }

        v12 = v11;
        [v5 vui_addObjectIfNotNil:v11];
      }

      v8 = [subpredicates countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  compoundPredicateType = [predicateCopy compoundPredicateType];
  if (compoundPredicateType == 2)
  {
    v14 = MEMORY[0x1E69705A0];
    goto LABEL_15;
  }

  if (compoundPredicateType == 1)
  {
    v14 = MEMORY[0x1E6970598];
LABEL_15:
    v15 = [v14 predicateMatchingPredicates:v5];
    goto LABEL_16;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported compound predicate: %@", predicateCopy}];
LABEL_13:
  v15 = 0;
LABEL_16:

  return v15;
}

- (id)_mediaQueryPropertyPredicateForComparisonPredicate:(id)predicate
{
  predicateCopy = predicate;
  leftExpression = [predicateCopy leftExpression];
  rightExpression = [predicateCopy rightExpression];
  expressionType = [leftExpression expressionType];
  expressionType2 = [rightExpression expressionType];
  if (expressionType == 3 && !expressionType2)
  {
    v9 = -[VUIMPMediaEntitiesSingleFetchOperation _keyPathMediaQueryPropertyPredicateWithKeyPathExpression:operatorType:constantExpression:](self, "_keyPathMediaQueryPropertyPredicateWithKeyPathExpression:operatorType:constantExpression:", leftExpression, [predicateCopy predicateOperatorType], rightExpression);
LABEL_6:
    v10 = v9;
    goto LABEL_8;
  }

  if ([leftExpression vui_isKeyPathBitTestExpression])
  {
    v9 = -[VUIMPMediaEntitiesSingleFetchOperation _bitTestMediaQueryPropertyPredicateWithKeyPathBitTestExpression:operatorType:constantExpression:](self, "_bitTestMediaQueryPropertyPredicateWithKeyPathBitTestExpression:operatorType:constantExpression:", leftExpression, [predicateCopy predicateOperatorType], rightExpression);
    goto LABEL_6;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported expressions in comparison predicate: %@", predicateCopy}];
  v10 = 0;
LABEL_8:

  return v10;
}

- (id)_keyPathMediaQueryPropertyPredicateWithKeyPathExpression:(id)expression operatorType:(unint64_t)type constantExpression:(id)constantExpression
{
  constantExpressionCopy = constantExpression;
  keyPath = [expression keyPath];
  v10 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaEntityPropertyDescriptorForFilteringWithKeyPath:keyPath];
  if (v10)
  {
    constantValue = [constantExpressionCopy constantValue];
    sourceFilterValueBlock = [v10 sourceFilterValueBlock];
    v13 = sourceFilterValueBlock;
    if (sourceFilterValueBlock)
    {
      v14 = (*(sourceFilterValueBlock + 16))(sourceFilterValueBlock, constantValue);

      constantValue = v14;
    }

    sourceFilterBlock = [v10 sourceFilterBlock];
    if (sourceFilterBlock)
    {
      request = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
      (sourceFilterBlock)[2](sourceFilterBlock, request, type, constantValue);
    }

    else
    {
      sourcePropertyNames = [v10 sourcePropertyNames];
      allObjects = [sourcePropertyNames allObjects];
      request = [allObjects firstObject];

      [MEMORY[0x1E6970610] vui_mediaPropertyPredicateWithProperty:request predicateOperatorType:type value:constantValue];
    }
    v17 = ;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_bitTestMediaQueryPropertyPredicateWithKeyPathBitTestExpression:(id)expression operatorType:(unint64_t)type constantExpression:(id)constantExpression
{
  expressionCopy = expression;
  constantValue = [constantExpression constantValue];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![constantValue unsignedIntegerValue] && (type == 5 || type == 2))
  {
    arguments = [expressionCopy arguments];
    if ([arguments count] == 2)
    {
      v13 = [arguments objectAtIndex:0];
      v14 = [arguments objectAtIndex:1];
      if ([v13 expressionType] == 3 && !objc_msgSend(v14, "expressionType"))
      {
        constantValue2 = [v14 constantValue];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          keyPath = [v13 keyPath];
          v17 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaEntityPropertyDescriptorForFilteringWithKeyPath:keyPath];
          sourcePropertyNames = [v17 sourcePropertyNames];
          allObjects = [sourcePropertyNames allObjects];

          if ([allObjects count] == 1)
          {
            [allObjects firstObject];
            v20 = v21 = keyPath;
            v10 = [MEMORY[0x1E6970610] predicateWithValue:constantValue2 forProperty:v20 comparisonType:107];

            keyPath = v21;
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

- (id)_mediaEntityPropertyDescriptorForFilteringWithKeyPath:(id)path
{
  v12 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  mediaEntityKind = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaEntityKind];
  v6 = [mediaEntityKind propertyDescriptorForName:pathCopy];
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unknown keypath %@ for entity kind %@", pathCopy, mediaEntityKind}];
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
      v11 = pathCopy;
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
        request = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
        [v7 raise:v8 format:{@"Unable to determine the VUIMediaEntityKind to use for this request: %@", request}];

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
  prefetchProperties = [(VUIMPMediaEntitiesSingleFetchOperation *)self prefetchProperties];
  mediaEntityKind = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaEntityKind];
  request = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  properties = [request properties];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [properties countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(properties);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [mediaEntityKind propertyDescriptorForName:v11];
        if ([v12 retrievesSourcePropertiesAtFetch])
        {
          [prefetchProperties addObject:v11];
        }
      }

      v8 = [properties countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)_mediaQuery
{
  _baseMediaQuery = [(VUIMPMediaEntitiesSingleFetchOperation *)self _baseMediaQuery];
  if (_baseMediaQuery)
  {
    [(VUIMPMediaEntitiesSingleFetchOperation *)self _addEntityLimitToMediaQuery:_baseMediaQuery];
    [(VUIMPMediaEntitiesSingleFetchOperation *)self _addPredicateToMediaQuery:_baseMediaQuery];
    [(VUIMPMediaEntitiesSingleFetchOperation *)self _addSortingPropertiesToMediaQuery:_baseMediaQuery];
    [(VUIMPMediaEntitiesSingleFetchOperation *)self _addPrefetchPropertiesToMediaQuery:_baseMediaQuery];
  }

  return _baseMediaQuery;
}

- (id)_baseMediaQuery
{
  mediaLibrary = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaLibrary];
  v3MediaLibrary = [mediaLibrary mediaLibrary];

  currentFetchMediaEntityType = self->_currentFetchMediaEntityType;
  v6 = +[VUIMediaEntityType movie];

  if (currentFetchMediaEntityType == v6)
  {
    v16 = [MEMORY[0x1E6970618] vui_moviesQueryWithMediaLibrary:v3MediaLibrary];
    goto LABEL_11;
  }

  v7 = self->_currentFetchMediaEntityType;
  v8 = +[VUIMediaEntityType movieRental];

  if (v7 == v8)
  {
    v16 = [MEMORY[0x1E6970618] vui_movieRentalsQueryWithMediaLibrary:v3MediaLibrary];
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
    v11 = [MEMORY[0x1E6970618] vui_homeVideosQueryWithMediaLibrary:v3MediaLibrary];
    goto LABEL_14;
  }

  if ([(VUIMediaEntityType *)self->_currentFetchMediaEntityType mediaCategoryType]!= 1)
  {
LABEL_15:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unable to create MPMediaQuery as the supplied media entity type is not supported: %@", self->_currentFetchMediaEntityType}];
    v11 = 0;
    goto LABEL_16;
  }

  v11 = [MEMORY[0x1E6970618] vui_episodesQueryWithMediaLibrary:v3MediaLibrary];
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

- (void)_addEntityLimitToMediaQuery:(id)query
{
  queryCopy = query;
  request = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  if (![(VUIMPMediaEntitiesSingleFetchOperation *)self processRangeAfterFetch])
  {
    [request range];
    if (v5)
    {
      [queryCopy setEntityLimit:v5];
    }
  }
}

- (void)_addPredicateToMediaQuery:(id)query
{
  queryCopy = query;
  mediaQueryPredicate = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaQueryPredicate];
  if (mediaQueryPredicate)
  {
    [queryCopy addFilterPredicate:mediaQueryPredicate];
  }
}

- (void)_addSortingPropertiesToMediaQuery:(id)query
{
  queryCopy = query;
  if ([(VUIMPMediaEntitiesSingleFetchOperation *)self _isSortingBeingPerformedByMediaQuery])
  {
    mediaQuerySortOrderingProperties = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaQuerySortOrderingProperties];
    if ([mediaQuerySortOrderingProperties count])
    {
      [queryCopy _setOrderingProperties:mediaQuerySortOrderingProperties];
      mediaQuerySortOrderingDirectionMappings = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaQuerySortOrderingDirectionMappings];
      [queryCopy _setOrderingDirectionMappings:mediaQuerySortOrderingDirectionMappings];
    }
  }
}

- (void)_addPrefetchPropertiesToMediaQuery:(id)query
{
  v19 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  mediaEntityKind = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaEntityKind];
  prefetchProperties = [(VUIMPMediaEntitiesSingleFetchOperation *)self prefetchProperties];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [prefetchProperties countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(prefetchProperties);
        }

        v12 = [mediaEntityKind propertyDescriptorForName:*(*(&v14 + 1) + 8 * v11)];
        sourcePropertyNames = [v12 sourcePropertyNames];
        if (sourcePropertyNames)
        {
          [v5 unionSet:sourcePropertyNames];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [prefetchProperties countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [queryCopy setItemPropertiesToFetch:v5];
}

- (id)_processFetchedMediaEntities:(id)entities
{
  entitiesCopy = entities;
  if ([entitiesCopy count])
  {
    if ([(VUIMPMediaEntitiesSingleFetchOperation *)self processPredicateAfterFetch])
    {
      request = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
      predicate = [request predicate];

      if (predicate)
      {
        v7 = [entitiesCopy filteredArrayUsingPredicate:predicate];

        entitiesCopy = v7;
      }
    }

    postFetchSortDescriptors = [(VUIMPMediaEntitiesSingleFetchOperation *)self postFetchSortDescriptors];
    if (postFetchSortDescriptors)
    {
      v9 = VUIDefaultLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Sorting media entities returned from MPMediaQuery", buf, 2u);
      }

      v10 = [entitiesCopy sortedArrayUsingDescriptors:postFetchSortDescriptors];

      entitiesCopy = v10;
    }

    if ([(VUIMPMediaEntitiesSingleFetchOperation *)self processRangeAfterFetch])
    {
      v11 = VUIDefaultLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Processing range on media entities returned from MPMediaQuery", v17, 2u);
      }

      request2 = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
      range = [request2 range];
      v15 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaEntities:entitiesCopy subarrayWithRange:range, v14];

      entitiesCopy = v15;
    }
  }

  return entitiesCopy;
}

- (id)_mediaEntities:(id)entities subarrayWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  entitiesCopy = entities;
  v7 = entitiesCopy;
  if (location == 0x7FFFFFFFFFFFFFFFLL || !length || location + length > [entitiesCopy count] || (objc_msgSend(v7, "subarrayWithRange:", location, length), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = v7;
  }

  return v8;
}

- (id)_itemsFetchResponseWithMediaQuery:(id)query
{
  v24 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  mediaLibrary = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaLibrary];
  request = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  properties = [request properties];

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = queryCopy;
  items = [queryCopy items];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(items);
        }

        v14 = [[VUIMPMediaItem alloc] initWithMediaLibrary:mediaLibrary mediaItem:*(*(&v19 + 1) + 8 * i) requestedProperties:properties];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  itemSections = [v18 itemSections];
  v16 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _fetchResponseWithMediaEntities:v8 mediaQuerySections:itemSections];

  return v16;
}

- (id)_collectionsFetchResponseWithMediaQuery:(id)query
{
  v36 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  mediaLibrary = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaLibrary];
  request = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  mediaCollectionType = [(VUIMediaEntityType *)self->_currentFetchMediaEntityType mediaCollectionType];
  if (mediaCollectionType == 1 || mediaCollectionType == 2)
  {
    v7 = objc_opt_class();
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Unexpected media collection type!"];
    v7 = 0;
  }

  v25 = request;
  properties = [request properties];
  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  collections = [queryCopy collections];
  collectionSections = [queryCopy collectionSections];
  if ([(VUIMediaEntityType *)self->_currentFetchMediaEntityType mediaCollectionType]== 1)
  {
    v11 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _uniqueMediaCollectionsBySeasonNumber:collections];

    collections = v11;
  }

  selfCopy = self;
  v26 = queryCopy;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = collections;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    v16 = mediaLibrary;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        v19 = [[v7 alloc] initWithMediaLibrary:v16 mediaItemCollection:v18 requestedProperties:properties];
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

          collectionSections = 0;
          v16 = mediaLibrary;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v14);
  }

  else
  {
    v16 = mediaLibrary;
  }

  [(VUIMPMediaEntitiesSingleFetchOperation *)selfCopy _fetchResponseWithMediaEntities:v28 mediaQuerySections:collectionSections];
  v22 = v21 = v16;

  return v22;
}

- (id)_fetchResponseWithMediaEntities:(id)entities mediaQuerySections:(id)sections
{
  sectionsCopy = sections;
  v7 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _processFetchedMediaEntities:entities];
  request = [(VUIMPMediaEntitiesSingleFetchOperation *)self request];
  mediaEntityKind = [(VUIMPMediaEntitiesSingleFetchOperation *)self mediaEntityKind];
  v10 = [request _sortIndexPropertyKeyWithMediaEntityKind:mediaEntityKind];
  if ([request _shouldGenerateSortIndexes])
  {
    if (sectionsCopy && [(VUIMPMediaEntitiesSingleFetchOperation *)self _isSortingBeingPerformedByMediaQuery])
    {
      v11 = [objc_opt_class() _sortIndexesWithMediaQuerySection:sectionsCopy];
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
  groupingKeyPath = [request groupingKeyPath];
  if (groupingKeyPath)
  {
    groupingSortComparator = [request groupingSortComparator];
    v15 = [VUIMediaLibraryUtilities groupingForMediaEntities:v7 groupingKeyPath:groupingKeyPath groupingSortComparator:groupingSortComparator performDefaultSort:1 sortIndexPropertyKey:v10];

    if ([request _shouldGenerateGroupingSortIndexes])
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

+ (id)_sortIndexesWithMediaQuerySection:(id)section
{
  v24 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = sectionCopy;
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
        range = [v10 range];
        v13 = v12;
        v14 = [VUIMediaEntitySortIndex alloc];
        title = [v10 title];
        v16 = [(VUIMediaEntitySortIndex *)v14 initWithTitle:title startIndex:range count:v13];

        [v4 addObject:v16];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v17 = [v4 copy];

  return v17;
}

- (id)_coalesceResponses:(id)responses
{
  responsesCopy = responses;
  _mediaQuery = [(VUIMPMediaEntitiesSingleFetchOperation *)self _mediaQuery];
  v6 = objc_opt_new();
  mediaEntities = [(VUIMediaEntityFetchResponse *)self->_response mediaEntities];
  [v6 addObjectsFromArray:mediaEntities];
  mediaEntities2 = [responsesCopy mediaEntities];
  [v6 addObjectsFromArray:mediaEntities2];

  collectionSections = [_mediaQuery collectionSections];
  v10 = [(VUIMPMediaEntitiesSingleFetchOperation *)self _fetchResponseWithMediaEntities:v6 mediaQuerySections:collectionSections];

  if ([(VUIMediaEntityFetchResponse *)self->_response hasDataForCheckHasItemsOption])
  {
    hasDataForCheckHasItemsOption = 1;
  }

  else
  {
    hasDataForCheckHasItemsOption = [responsesCopy hasDataForCheckHasItemsOption];
  }

  [v10 setHasDataForCheckHasItemsOption:hasDataForCheckHasItemsOption];

  return v10;
}

- (id)_uniqueMediaCollectionsBySeasonNumber:(id)number
{
  v51 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = numberCopy;
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
            items = [v18 items];
            if (v20)
            {
              v22 = [v20 arrayByAddingObjectsFromArray:items];
              [v33 setObject:v22 forKeyedSubscript:v19];

              v13 = v33;
            }

            else
            {
              [v13 setObject:items forKeyedSubscript:v19];
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
    allValues = [v13 allValues];
    v24 = [allValues countByEnumeratingWithState:&v36 objects:v48 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v28 = [objc_alloc(MEMORY[0x1E69705E0]) initWithItems:*(*(&v36 + 1) + 8 * i)];
          [v12 addObject:v28];
        }

        v25 = [allValues countByEnumeratingWithState:&v36 objects:v48 count:16];
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