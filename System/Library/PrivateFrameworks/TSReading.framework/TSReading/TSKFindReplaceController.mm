@interface TSKFindReplaceController
+ (BOOL)p_searchReference:(id)reference comparedWithSearchReference:(id)searchReference orEqual:(BOOL)equal inDirection:(unint64_t)direction before:(BOOL)before comparator:(id)comparator;
+ (void)_recursiveSearchWithSearchTarget:(id)target forAnnotationsWithHitBlock:(id)block;
+ (void)_recursiveSearchWithSearchTarget:(id)target forString:(id)string options:(unint64_t)options hitBlock:(id)block;
- (BOOL)p_shouldCountAnnotation:(id)annotation;
- (TSKFindReplaceController)initWithDocumentRootProvider:(id)provider delegate:(id)delegate onlySearchesAnnotations:(BOOL)annotations;
- (TSKFindReplaceController)initWithDocumentRootProvider:(id)provider delegate:(id)delegate targetProvider:(id)targetProvider onlySearchesAnnotations:(BOOL)annotations;
- (_NSRange)currentRootSearchTargetRange;
- (id)_firstResultInDirection:(unint64_t)direction;
- (id)_lastResultInDirection:(unint64_t)direction;
- (id)annotationSearchReferenceForAnnotation:(id)annotation;
- (id)documentRoot;
- (id)firstVisibleResultInRect:(CGRect)rect;
- (id)searchReferenceAfterReference:(id)reference inDirection:(unint64_t)direction;
- (id)searchReferencesToHighlightInVisibleRootObjectRange:(_NSRange)range;
- (unint64_t)_nextRootSearchTargetFromIndex:(unint64_t)index inDirection:(unint64_t)direction wrapped:(BOOL *)wrapped;
- (unint64_t)_resultCountInRootObjectRange:(_NSRange)range;
- (unint64_t)indexOfVisibleSearchReference:(id)reference;
- (unint64_t)searchResultsCount;
- (void)_buildLayoutSearchResultsForRootSearchTargetsInRange:(_NSRange)range resultsArray:(id)array;
- (void)_nextSearchTargetWithMatchInDirection:(unint64_t)direction;
- (void)dealloc;
- (void)invalidateSearchResults;
- (void)p_buildSearchResultsIfNecessary;
- (void)p_buildVisibleSearchResultsIfNecessary;
- (void)p_continueCountingHits;
- (void)p_startCountingHits;
- (void)p_stopCountingHits;
- (void)setDocumentRootProvider:(id)provider;
- (void)setSearchOptions:(unint64_t)options;
- (void)setSearchProgressBlock:(id)block;
- (void)setSearchResultComparator:(id)comparator;
@end

@implementation TSKFindReplaceController

- (void)setDocumentRootProvider:(id)provider
{
  if (self->_documentRootProvider != provider)
  {
    self->_documentRootProvider = provider;
    [(TSKFindReplaceController *)self p_stopCountingHits];
  }
}

- (TSKFindReplaceController)initWithDocumentRootProvider:(id)provider delegate:(id)delegate onlySearchesAnnotations:(BOOL)annotations
{
  annotationsCopy = annotations;
  documentRoot = [provider documentRoot];

  return [(TSKFindReplaceController *)self initWithDocumentRootProvider:provider delegate:delegate targetProvider:documentRoot onlySearchesAnnotations:annotationsCopy];
}

- (TSKFindReplaceController)initWithDocumentRootProvider:(id)provider delegate:(id)delegate targetProvider:(id)targetProvider onlySearchesAnnotations:(BOOL)annotations
{
  v14.receiver = self;
  v14.super_class = TSKFindReplaceController;
  v10 = [(TSKFindReplaceController *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(TSKFindReplaceController *)v10 setDocumentRootProvider:provider];
    -[TSKFindReplaceController setLayoutSearchResults:](v11, "setLayoutSearchResults:", [MEMORY[0x277CBEB18] array]);
    -[TSKFindReplaceController setAnnotationDisplayStringTypes:](v11, "setAnnotationDisplayStringTypes:", [MEMORY[0x277CBEB58] set]);
    v11->_searchTargetProvider = targetProvider;
    -[TSKFindReplaceController setLayoutSearchCountForRootIndexMap:](v11, "setLayoutSearchCountForRootIndexMap:", [MEMORY[0x277CBEB38] dictionary]);
    v11->_findReplaceDelegate = delegate;
    v11->_searchOptions = 16;
    v11->_countSearchHits = 1;
    [(TSKFindReplaceController *)v11 setSearchResultComparator:&__block_literal_global_17];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if (([standardUserDefaults BOOLForKey:@"FindReplaceMatchCaseKey"] & 1) == 0)
    {
      v11->_searchOptions |= 1uLL;
    }

    if ([standardUserDefaults BOOLForKey:@"FindReplaceWholeWordsKey"])
    {
      v11->_searchOptions |= 8uLL;
    }

    v11->_onlySearchesAnnotations = annotations;
  }

  return v11;
}

- (void)dealloc
{
  [(TSKFindReplaceController *)self setLayoutSearchResults:0];
  [(TSKFindReplaceController *)self setLayoutSearchCountForRootIndexMap:0];
  [(TSKFindReplaceController *)self setAnnotationDisplayStringTypes:0];

  v3.receiver = self;
  v3.super_class = TSKFindReplaceController;
  [(TSKFindReplaceController *)&v3 dealloc];
}

- (void)setSearchProgressBlock:(id)block
{
  if ([(TSKFindReplaceController *)self progressBlock]!= block)
  {
    [(TSKFindReplaceController *)self p_stopCountingHits];
    [(TSKFindReplaceController *)self setProgressBlock:block];
    if ([(TSKFindReplaceController *)self progressBlock])
    {

      [(TSKFindReplaceController *)self p_startCountingHits];
    }
  }
}

- (void)setSearchOptions:(unint64_t)options
{
  if (self->_searchOptions != options)
  {
    self->_searchOptions = options;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setBool:(options & 1) == 0 forKey:@"FindReplaceMatchCaseKey"];
    [standardUserDefaults setBool:(options >> 3) & 1 forKey:@"FindReplaceWholeWordsKey"];

    [(TSKFindReplaceController *)self invalidateSearchResults];
  }
}

- (unint64_t)searchResultsCount
{
  v3 = [(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] count];
  result = self->_searchResultsCount;
  if (v3 > result)
  {
    layoutSearchResults = [(TSKFindReplaceController *)self layoutSearchResults];

    return [(NSMutableArray *)layoutSearchResults count];
  }

  return result;
}

- (void)setSearchResultComparator:(id)comparator
{
  if (comparator)
  {
    comparatorCopy = comparator;
  }

  else
  {
    comparatorCopy = &__block_literal_global_17;
  }

  searchResultComparator = self->_searchResultComparator;
  if (comparatorCopy != searchResultComparator)
  {

    self->_searchResultComparator = [comparatorCopy copy];
  }
}

- (id)documentRoot
{
  documentRootProvider = [(TSKFindReplaceController *)self documentRootProvider];

  return [(TSKDocumentRootProvider *)documentRootProvider documentRoot];
}

- (BOOL)p_shouldCountAnnotation:(id)annotation
{
  if (annotation)
  {
    return [annotation annotationType] != 1 || self->_commentsIncludedInAnnotationSearch;
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController p_shouldCountAnnotation:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 251, @"invalid nil value for '%s'", "annotation"}];
    return 0;
  }
}

- (void)p_continueCountingHits
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController p_continueCountingHits]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 319, @"This operation must only be performed on the main thread."}];
  }

  if (self->_currentModelEnumerator && [(TSKFindReplaceController *)self p_searchCriteriaIsValid])
  {
    currentSearchable = self->_currentSearchable;
    if (currentSearchable)
    {
      v6 = 0;
    }

    else
    {
      nextObject = [(NSEnumerator *)self->_currentModelEnumerator nextObject];
      v6 = nextObject == 0;
      if (nextObject)
      {
        currentSearchable = TSUProtocolCast();
        self->_currentSearchable = currentSearchable;
        if (!currentSearchable)
        {
          goto LABEL_29;
        }
      }

      else
      {
        currentSearchable = self->_currentSearchable;
        if (!currentSearchable)
        {
          goto LABEL_29;
        }
      }
    }

    if (self->_currentSearch)
    {
      if (self->_onlySearchesAnnotations)
      {
        [(TSKSearchable *)currentSearchable continueAnnotationSearch:?];
      }

      else
      {
        [(TSKSearchable *)currentSearchable continueSearch:?];
      }

LABEL_25:
      currentSearch = self->_currentSearch;
      if (!currentSearch)
      {
        goto LABEL_31;
      }

LABEL_26:
      isComplete = [(TSKSearch *)currentSearch isComplete];
      v20 = self->_currentSearch;
      if (isComplete)
      {

        self->_currentSearch = 0;
        goto LABEL_31;
      }

      if (v20)
      {
LABEL_29:
        if (v6)
        {
LABEL_32:

          self->_currentModelEnumerator = 0;
          v21 = 1;
LABEL_33:
          if ([(TSKFindReplaceController *)self progressBlock])
          {
            progressBlock = [(TSKFindReplaceController *)self progressBlock];
            progressBlock[2](progressBlock, self->_searchResultsCount, v21);
          }

          return;
        }

LABEL_30:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__TSKFindReplaceController_p_continueCountingHits__block_invoke_3;
        block[3] = &unk_279D46770;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
        v21 = 0;
        goto LABEL_33;
      }

LABEL_31:
      self->_currentSearchable = 0;
      if (v6)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v8 = objc_opt_respondsToSelector();
    v9 = objc_opt_respondsToSelector();
    v10 = v9;
    if ((v8 & 1) == 0 && (v9 & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController p_continueCountingHits]"];
      [currentHandler2 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 347, @"Every searchable should respond to atleast a string search or an annotation search"}];
    }

    if (self->_onlySearchesAnnotations)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_25;
      }

      v13 = self->_currentSearchable;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __50__TSKFindReplaceController_p_continueCountingHits__block_invoke_2;
      v24[3] = &unk_279D47CF0;
      v24[4] = self;
      v14 = [(TSKSearchable *)v13 searchForAnnotationsWithHitBlock:v24];
    }

    else
    {
      if ((v8 & 1) == 0)
      {
        goto LABEL_25;
      }

      v15 = self->_currentSearchable;
      searchString = [(TSKFindReplaceController *)self searchString];
      searchOptions = [(TSKFindReplaceController *)self searchOptions];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __50__TSKFindReplaceController_p_continueCountingHits__block_invoke;
      v25[3] = &unk_279D47CF0;
      v25[4] = self;
      v14 = [(TSKSearchable *)v15 searchForString:searchString options:searchOptions onHit:v25];
    }

    currentSearch = v14;
    self->_currentSearch = currentSearch;
    if (!currentSearch)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }
}

uint64_t __50__TSKFindReplaceController_p_continueCountingHits__block_invoke_2(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) p_shouldCountAnnotation:{objc_msgSend(a2, "annotation")}];
  if (result)
  {
    ++*(*(a1 + 32) + 72);
    v5 = *(*(a1 + 32) + 56);
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(objc_msgSend(a2, "annotation"), "annotationDisplayStringType")}];

    return [v5 addObject:v6];
  }

  return result;
}

- (void)p_stopCountingHits
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController p_stopCountingHits]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 414, @"This operation must only be performed on the main thread."}];
  }

  self->_searchResultsCount = 0;

  self->_currentModelEnumerator = 0;
  self->_currentSearch = 0;
}

- (void)p_startCountingHits
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController p_startCountingHits]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 423, @"This operation must only be performed on the main thread."}];
  }

  self->_currentSearchable = 0;
  self->_currentModelEnumerator = [-[TSKFindReplaceController documentRoot](self "documentRoot")];
  self->_searchResultsCount = 0;
  [(NSMutableSet *)self->_annotationDisplayStringTypes removeAllObjects];
  self->_currentSearchStartTime = CFAbsoluteTimeGetCurrent();
  if (self->_currentModelEnumerator)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__TSKFindReplaceController_p_startCountingHits__block_invoke;
    block[3] = &unk_279D46770;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

+ (void)_recursiveSearchWithSearchTarget:(id)target forString:(id)string options:(unint64_t)options hitBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  [self _assertSearchTargetImplementsProperMethods:?];
  if (objc_opt_respondsToSelector())
  {
    [target layoutSearchForString:string options:options hitBlock:block];
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    childSearchTargets = [target childSearchTargets];
    v12 = [childSearchTargets countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(childSearchTargets);
          }

          [self _recursiveSearchWithSearchTarget:*(*(&v16 + 1) + 8 * v15++) forString:string options:options hitBlock:block];
        }

        while (v13 != v15);
        v13 = [childSearchTargets countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

+ (void)_recursiveSearchWithSearchTarget:(id)target forAnnotationsWithHitBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  [self _assertSearchTargetImplementsProperMethods:?];
  if (objc_opt_respondsToSelector())
  {
    [target layoutSearchForAnnotationWithHitBlock:block];
  }

  if (objc_opt_respondsToSelector())
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    childAnnotationSearchTargets = [target childAnnotationSearchTargets];
    v8 = [childAnnotationSearchTargets countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(childAnnotationSearchTargets);
          }

          [self _recursiveSearchWithSearchTarget:*(*(&v21 + 1) + 8 * i) forAnnotationsWithHitBlock:block];
        }

        v9 = [childAnnotationSearchTargets countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v9);
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    childSearchTargets = [target childSearchTargets];
    v13 = [childSearchTargets countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(childSearchTargets);
          }

          [self _recursiveSearchWithSearchTarget:*(*(&v17 + 1) + 8 * j) forAnnotationsWithHitBlock:block];
        }

        v14 = [childSearchTargets countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v14);
    }
  }
}

- (id)searchReferencesToHighlightInVisibleRootObjectRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  dictionary = [MEMORY[0x277D6C348] dictionary];
  if ([(TSKFindReplaceController *)self searchString]&& [(NSString *)[(TSKFindReplaceController *)self searchString] length]&& location < location + length)
  {
    do
    {
      searchTargetProvider = [(TSKFindReplaceController *)self searchTargetProvider];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __80__TSKFindReplaceController_searchReferencesToHighlightInVisibleRootObjectRange___block_invoke;
      v9[3] = &unk_279D47D18;
      v9[4] = self;
      v9[5] = dictionary;
      [(TSKSearchTargetProvider *)searchTargetProvider withRootSearchTargetAtIndex:location++ executeBlock:v9];
      --length;
    }

    while (length);
  }

  return dictionary;
}

uint64_t __80__TSKFindReplaceController_searchReferencesToHighlightInVisibleRootObjectRange___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) searchString];
  v6 = [*(a1 + 32) searchOptions];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__TSKFindReplaceController_searchReferencesToHighlightInVisibleRootObjectRange___block_invoke_2;
  v8[3] = &unk_279D47CF0;
  v8[4] = *(a1 + 40);
  return [v4 _recursiveSearchWithSearchTarget:a2 forString:v5 options:v6 hitBlock:v8];
}

uint64_t __80__TSKFindReplaceController_searchReferencesToHighlightInVisibleRootObjectRange___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) objectForKey:{objc_msgSend(a2, "model")}];
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    [*(a1 + 32) setObject:v4 forUncopiedKey:{objc_msgSend(a2, "model")}];
  }

  return [v4 addObject:a2];
}

- (void)invalidateSearchResults
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController invalidateSearchResults]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 525, @"This operation must only be performed on the main thread."}];
  }

  [(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] removeAllObjects];
  [(NSMutableSet *)self->_annotationDisplayStringTypes removeAllObjects];
  [(TSKFindReplaceController *)self setCurrentRootSearchTargetRange:*MEMORY[0x277D6C268], *(MEMORY[0x277D6C268] + 8)];
  if (self->_countSearchHits)
  {
    [(TSKFindReplaceController *)self p_stopCountingHits];
    if ([(TSKFindReplaceController *)self progressBlock])
    {
      if ([(TSKFindReplaceController *)self p_searchCriteriaIsValid])
      {

        [(TSKFindReplaceController *)self p_startCountingHits];
      }
    }
  }
}

- (void)_buildLayoutSearchResultsForRootSearchTargetsInRange:(_NSRange)range resultsArray:(id)array
{
  length = range.length;
  location = range.location;
  if (range.location != [(TSKFindReplaceController *)self currentRootSearchTargetRange]|| length != v8)
  {
    [(TSKFindReplaceController *)self setCurrentRootSearchTargetRange:location, length];
    [array removeAllObjects];
    if (self->_onlySearchesAnnotations)
    {
      v9 = v18;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __94__TSKFindReplaceController__buildLayoutSearchResultsForRootSearchTargetsInRange_resultsArray___block_invoke;
      v18[3] = &unk_279D47D60;
      v18[4] = self;
      v18[5] = array;
      v10 = v17;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v11 = __94__TSKFindReplaceController__buildLayoutSearchResultsForRootSearchTargetsInRange_resultsArray___block_invoke_2;
    }

    else
    {
      v9 = v16;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __94__TSKFindReplaceController__buildLayoutSearchResultsForRootSearchTargetsInRange_resultsArray___block_invoke_3;
      v16[3] = &unk_279D47CF0;
      v16[4] = self;
      v10 = v15;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v11 = __94__TSKFindReplaceController__buildLayoutSearchResultsForRootSearchTargetsInRange_resultsArray___block_invoke_4;
    }

    v10[2] = v11;
    v10[3] = &unk_279D47D88;
    v10[4] = self;
    v10[5] = v9;
    if (location < location + length)
    {
      do
      {
        v12 = [array count];
        [(TSKSearchTargetProvider *)[(TSKFindReplaceController *)self searchTargetProvider] withRootSearchTargetAtIndex:location executeBlock:v10];
        v13 = [array count];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:location];
        -[NSMutableDictionary setObject:forKey:](-[TSKFindReplaceController layoutSearchCountForRootIndexMap](self, "layoutSearchCountForRootIndexMap"), "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13 - v12], v14);
        ++location;
        --length;
      }

      while (length);
    }

    [(TSKFindReplaceController *)self sortLayoutSearchResultsArray:array];
  }
}

uint64_t __94__TSKFindReplaceController__buildLayoutSearchResultsForRootSearchTargetsInRange_resultsArray___block_invoke(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) p_shouldCountAnnotation:{objc_msgSend(a2, "annotation")}];
  if (result)
  {
    [a2 searchReferencePoint];
    if ((TSUPointIsFinite() & 1) == 0)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController _buildLayoutSearchResultsForRootSearchTargetsInRange:resultsArray:]_block_invoke"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 564, @"the hit reference should have a valid point"}];
    }

    v7 = *(a1 + 40);

    return [v7 addObject:a2];
  }

  return result;
}

uint64_t __94__TSKFindReplaceController__buildLayoutSearchResultsForRootSearchTargetsInRange_resultsArray___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_class();
  v5 = *(a1 + 40);

  return [v4 _recursiveSearchWithSearchTarget:a2 forAnnotationsWithHitBlock:v5];
}

uint64_t __94__TSKFindReplaceController__buildLayoutSearchResultsForRootSearchTargetsInRange_resultsArray___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 searchReferencePoint];
  if ((TSUPointIsFinite() & 1) == 0)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController _buildLayoutSearchResultsForRootSearchTargetsInRange:resultsArray:]_block_invoke_3"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 575, @"the hit reference should have a valid point"}];
  }

  [*(a1 + 32) findReplaceDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (result = [objc_msgSend(*(a1 + 32) "findReplaceDelegate")], (result & 1) == 0))
  {
    v7 = [*(a1 + 32) layoutSearchResults];

    return [v7 addObject:a2];
  }

  return result;
}

uint64_t __94__TSKFindReplaceController__buildLayoutSearchResultsForRootSearchTargetsInRange_resultsArray___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) searchString];
  v6 = [*(a1 + 32) searchOptions];
  v7 = *(a1 + 40);

  return [v4 _recursiveSearchWithSearchTarget:a2 forString:v5 options:v6 hitBlock:v7];
}

- (unint64_t)_nextRootSearchTargetFromIndex:(unint64_t)index inDirection:(unint64_t)direction wrapped:(BOOL *)wrapped
{
  while (1)
  {
    searchTargetProvider = [(TSKFindReplaceController *)self searchTargetProvider];
    v10 = self->_onlySearchesAnnotations ? 0 : [(TSKFindReplaceController *)self searchString];
    result = [(TSKSearchTargetProvider *)searchTargetProvider nextRootSearchTargetIndexFromIndex:index forString:v10 options:[(TSKFindReplaceController *)self searchOptions] inDirection:direction];
    if (index == 0x7FFFFFFFFFFFFFFFLL || result != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    *wrapped = 1;
    index = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (result == 0x7FFFFFFFFFFFFFFFLL && index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return result;
}

- (void)_nextSearchTargetWithMatchInDirection:(unint64_t)direction
{
  v5 = MEMORY[0x277CCAB58];
  currentRootSearchTargetRange = [(TSKFindReplaceController *)self currentRootSearchTargetRange];
  for (i = [v5 indexSetWithIndexesInRange:{currentRootSearchTargetRange, v7}]; ; objc_msgSend(i, "addIndexesInRange:", currentRootSearchTargetRange5, v19))
  {
    currentRootSearchTargetRange2 = [(TSKFindReplaceController *)self currentRootSearchTargetRange];
    v11 = v10 - 1;
    if (direction)
    {
      v11 = 0;
    }

    v20 = 0;
    v12 = [(TSKFindReplaceController *)self _nextRootSearchTargetFromIndex:currentRootSearchTargetRange2 + v11 inDirection:direction wrapped:&v20];
    currentRootSearchTargetRange3 = [(TSKFindReplaceController *)self currentRootSearchTargetRange];
    if (v12 < currentRootSearchTargetRange3 || v12 - currentRootSearchTargetRange3 >= v14)
    {
      [(TSKFindReplaceController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:v12 resultsArray:1, [(TSKFindReplaceController *)self layoutSearchResults]];
    }

    if ([(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] count])
    {
      break;
    }

    currentRootSearchTargetRange4 = [(TSKFindReplaceController *)self currentRootSearchTargetRange];
    if ([i containsIndexesInRange:{currentRootSearchTargetRange4, v17}])
    {
      [(TSKFindReplaceController *)self findReplaceDelegate];
      if (objc_opt_respondsToSelector())
      {
        [(TSKFindReplaceDelegate *)[(TSKFindReplaceController *)self findReplaceDelegate] findReplaceControllerDidFindNoResults:self];
      }

      return;
    }

    currentRootSearchTargetRange5 = [(TSKFindReplaceController *)self currentRootSearchTargetRange];
  }

  if (v20 == 1)
  {
    [(TSKFindReplaceController *)self findReplaceDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(TSKFindReplaceDelegate *)[(TSKFindReplaceController *)self findReplaceDelegate] findReplaceController:self didWrapInDirection:direction];
    }
  }
}

- (id)_firstResultInDirection:(unint64_t)direction
{
  result = [(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] count];
  if (result)
  {
    layoutSearchResults = [(TSKFindReplaceController *)self layoutSearchResults];
    if (direction)
    {

      return [(NSMutableArray *)layoutSearchResults lastObject];
    }

    else
    {

      return [(NSMutableArray *)layoutSearchResults objectAtIndex:0];
    }
  }

  return result;
}

- (id)_lastResultInDirection:(unint64_t)direction
{
  result = [(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] count];
  if (result)
  {
    layoutSearchResults = [(TSKFindReplaceController *)self layoutSearchResults];
    if (direction)
    {

      return [(NSMutableArray *)layoutSearchResults objectAtIndex:0];
    }

    else
    {

      return [(NSMutableArray *)layoutSearchResults lastObject];
    }
  }

  return result;
}

- (void)p_buildSearchResultsIfNecessary
{
  currentRootSearchTargetRange = [(TSKFindReplaceController *)self currentRootSearchTargetRange];
  if (currentRootSearchTargetRange == *MEMORY[0x277D6C268] && v4 == *(MEMORY[0x277D6C268] + 8))
  {
    visibleRootIndexRange = [(TSKFindReplaceDelegate *)[(TSKFindReplaceController *)self findReplaceDelegate] visibleRootIndexRange];
    v8 = v7;
    layoutSearchResults = [(TSKFindReplaceController *)self layoutSearchResults];

    [(TSKFindReplaceController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:visibleRootIndexRange resultsArray:v8, layoutSearchResults];
  }
}

- (void)p_buildVisibleSearchResultsIfNecessary
{
  currentRootSearchTargetRange = [(TSKFindReplaceController *)self currentRootSearchTargetRange];
  v5 = v4;
  if (currentRootSearchTargetRange != [(TSKFindReplaceDelegate *)[(TSKFindReplaceController *)self findReplaceDelegate] visibleRootIndexRange]|| v5 != v6)
  {
    visibleRootIndexRange = [(TSKFindReplaceDelegate *)[(TSKFindReplaceController *)self findReplaceDelegate] visibleRootIndexRange];
    v9 = v8;
    layoutSearchResults = [(TSKFindReplaceController *)self layoutSearchResults];

    [(TSKFindReplaceController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:visibleRootIndexRange resultsArray:v9, layoutSearchResults];
  }
}

- (id)firstVisibleResultInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  visibleRootIndexRange = [(TSKFindReplaceDelegate *)[(TSKFindReplaceController *)self findReplaceDelegate] visibleRootIndexRange];
  [(TSKFindReplaceController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:visibleRootIndexRange resultsArray:v10, v8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__TSKFindReplaceController_firstVisibleResultInRect___block_invoke;
  v13[3] = &unk_279D47DB0;
  *&v13[5] = x;
  *&v13[6] = y;
  *&v13[7] = width;
  *&v13[8] = height;
  v13[4] = &v14;
  [v8 enumerateObjectsUsingBlock:v13];

  v11 = v15[5];
  _Block_object_dispose(&v14, 8);
  return v11;
}

BOOL __53__TSKFindReplaceController_firstVisibleResultInRect___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 searchReferencePoint];
  v10.x = v7;
  v10.y = v8;
  result = CGRectContainsPoint(*(a1 + 40), v10);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

- (id)annotationSearchReferenceForAnnotation:(id)annotation
{
  v27 = *MEMORY[0x277D85DE8];
  [(TSKFindReplaceController *)self p_buildSearchResultsIfNecessary];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  layoutSearchResults = [(TSKFindReplaceController *)self layoutSearchResults];
  v6 = [(NSMutableArray *)layoutSearchResults countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(layoutSearchResults);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      if ([objc_msgSend(v10 "annotation")])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)layoutSearchResults countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    if (v10)
    {
      return v10;
    }
  }

LABEL_11:
  [(TSKFindReplaceController *)self p_buildVisibleSearchResultsIfNecessary];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  layoutSearchResults2 = [(TSKFindReplaceController *)self layoutSearchResults];
  v12 = [(NSMutableArray *)layoutSearchResults2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = *v18;
LABEL_13:
  v15 = 0;
  while (1)
  {
    if (*v18 != v14)
    {
      objc_enumerationMutation(layoutSearchResults2);
    }

    v10 = *(*(&v17 + 1) + 8 * v15);
    if ([objc_msgSend(v10 "annotation")])
    {
      return v10;
    }

    if (v13 == ++v15)
    {
      v13 = [(NSMutableArray *)layoutSearchResults2 countByEnumeratingWithState:&v17 objects:v25 count:16];
      v10 = 0;
      if (v13)
      {
        goto LABEL_13;
      }

      return v10;
    }
  }
}

- (unint64_t)indexOfVisibleSearchReference:(id)reference
{
  if (!reference)
  {
    return 0;
  }

  v4 = [(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] indexOfObject:reference];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v4 + [(TSKFindReplaceController *)self _resultCountInRootObjectRange:0, [(TSKFindReplaceController *)self currentRootSearchTargetRange]]+ 1;
  }

  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController indexOfVisibleSearchReference:]"];
  [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 797, @"Could not find searchReference in current root search target range"}];
  return 0;
}

- (unint64_t)_resultCountInRootObjectRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  currentRootSearchTargetRange = [(TSKFindReplaceController *)self currentRootSearchTargetRange];
  v15 = v7;
  v16 = currentRootSearchTargetRange;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (location >= location + length)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:location];
      if (![(NSMutableDictionary *)[(TSKFindReplaceController *)self layoutSearchCountForRootIndexMap] objectForKey:v10])
      {
        [(TSKFindReplaceController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:location resultsArray:1, v8];
      }

      v11 = [(NSMutableDictionary *)[(TSKFindReplaceController *)self layoutSearchCountForRootIndexMap] objectForKey:v10];
      if (v11)
      {
        v9 += [v11 intValue];
      }

      else
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController _resultCountInRootObjectRange:]"];
        [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 825, @"invalid nil value for '%s'", "rootCount"}];
      }

      ++location;
      --length;
    }

    while (length);
  }

  [(TSKFindReplaceController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:v16 resultsArray:v15, v8];

  return v9;
}

- (id)searchReferenceAfterReference:(id)reference inDirection:(unint64_t)direction
{
  [(TSKFindReplaceController *)self p_buildSearchResultsIfNecessary];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy__6;
  v27 = __Block_byref_object_dispose__6;
  v28 = 0;
  if (!reference)
  {
    if (![(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] count])
    {
      [(TSKFindReplaceController *)self _nextSearchTargetWithMatchInDirection:direction];
    }

    goto LABEL_8;
  }

  v7 = [(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] indexOfObject:reference];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (direction)
    {
      v9 = 0;
    }

    else
    {
      v9 = [(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] count]- 1;
    }

    if (v7 == v9)
    {
      [(TSKFindReplaceController *)self _nextSearchTargetWithMatchInDirection:direction];
      v8 = [(TSKFindReplaceController *)self _firstResultInDirection:direction];
    }

    else
    {
      layoutSearchResults = [(TSKFindReplaceController *)self layoutSearchResults];
      if (direction)
      {
        v11 = v7 - 1;
      }

      else
      {
        v11 = v7 + 1;
      }

      v8 = [(NSMutableArray *)layoutSearchResults objectAtIndex:v11];
    }

    goto LABEL_21;
  }

  if (![(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] count])
  {
    [(TSKFindReplaceController *)self _nextSearchTargetWithMatchInDirection:direction];
  }

  if ([objc_opt_class() searchReference:reference isBeforeSearchReference:-[TSKFindReplaceController _firstResultInDirection:](self orEqual:"_firstResultInDirection:" inDirection:direction) comparator:{0, direction, -[TSKFindReplaceController searchResultComparator](self, "searchResultComparator")}])
  {
    goto LABEL_8;
  }

  if ([objc_opt_class() searchReference:reference isAfterSearchReference:-[TSKFindReplaceController _lastResultInDirection:](self orEqual:"_lastResultInDirection:" inDirection:direction) comparator:{1, direction, -[TSKFindReplaceController searchResultComparator](self, "searchResultComparator")}])
  {
    [(TSKFindReplaceController *)self _nextSearchTargetWithMatchInDirection:direction];
LABEL_8:
    v8 = [(TSKFindReplaceController *)self _firstResultInDirection:direction];
    goto LABEL_21;
  }

  layoutSearchResults2 = [(TSKFindReplaceController *)self layoutSearchResults];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __70__TSKFindReplaceController_searchReferenceAfterReference_inDirection___block_invoke;
  v18 = &unk_279D47DD8;
  selfCopy = self;
  referenceCopy = reference;
  v21 = &v23;
  directionCopy = direction;
  [(NSMutableArray *)layoutSearchResults2 enumerateObjectsWithOptions:2 * (direction != 0) usingBlock:&v15];
  v12 = v24[5];
  if (v12)
  {
    goto LABEL_22;
  }

  [(TSKFindReplaceController *)self _nextSearchTargetWithMatchInDirection:direction, v15, v16, v17, v18];
  v8 = [(TSKFindReplaceController *)self _firstResultInDirection:direction];
LABEL_21:
  v12 = v8;
  v24[5] = v8;
LABEL_22:
  _Block_object_dispose(&v23, 8);
  return v12;
}

uint64_t __70__TSKFindReplaceController_searchReferenceAfterReference_inDirection___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_opt_class() searchReference:a2 isAfterSearchReference:*(a1 + 40) orEqual:0 inDirection:*(a1 + 56) comparator:{objc_msgSend(*(a1 + 32), "searchResultComparator")}];
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

+ (BOOL)p_searchReference:(id)reference comparedWithSearchReference:(id)searchReference orEqual:(BOOL)equal inDirection:(unint64_t)direction before:(BOOL)before comparator:(id)comparator
{
  beforeCopy = before;
  v11 = (*(comparator + 2))(comparator, reference, searchReference);
  if (direction)
  {
    if (beforeCopy)
    {
      goto LABEL_3;
    }
  }

  else if (!beforeCopy)
  {
LABEL_3:
    if (v11 == 1)
    {
      return v11;
    }

    goto LABEL_7;
  }

  if (v11 == -1)
  {
    LOBYTE(v11) = 1;
    return v11;
  }

LABEL_7:
  if (v11)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    LOBYTE(v11) = equal;
  }

  return v11;
}

- (_NSRange)currentRootSearchTargetRange
{
  length = self->_currentRootSearchTargetRange.length;
  location = self->_currentRootSearchTargetRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end