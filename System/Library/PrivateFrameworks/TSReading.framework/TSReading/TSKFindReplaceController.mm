@interface TSKFindReplaceController
+ (BOOL)p_searchReference:(id)a3 comparedWithSearchReference:(id)a4 orEqual:(BOOL)a5 inDirection:(unint64_t)a6 before:(BOOL)a7 comparator:(id)a8;
+ (void)_recursiveSearchWithSearchTarget:(id)a3 forAnnotationsWithHitBlock:(id)a4;
+ (void)_recursiveSearchWithSearchTarget:(id)a3 forString:(id)a4 options:(unint64_t)a5 hitBlock:(id)a6;
- (BOOL)p_shouldCountAnnotation:(id)a3;
- (TSKFindReplaceController)initWithDocumentRootProvider:(id)a3 delegate:(id)a4 onlySearchesAnnotations:(BOOL)a5;
- (TSKFindReplaceController)initWithDocumentRootProvider:(id)a3 delegate:(id)a4 targetProvider:(id)a5 onlySearchesAnnotations:(BOOL)a6;
- (_NSRange)currentRootSearchTargetRange;
- (id)_firstResultInDirection:(unint64_t)a3;
- (id)_lastResultInDirection:(unint64_t)a3;
- (id)annotationSearchReferenceForAnnotation:(id)a3;
- (id)documentRoot;
- (id)firstVisibleResultInRect:(CGRect)a3;
- (id)searchReferenceAfterReference:(id)a3 inDirection:(unint64_t)a4;
- (id)searchReferencesToHighlightInVisibleRootObjectRange:(_NSRange)a3;
- (unint64_t)_nextRootSearchTargetFromIndex:(unint64_t)a3 inDirection:(unint64_t)a4 wrapped:(BOOL *)a5;
- (unint64_t)_resultCountInRootObjectRange:(_NSRange)a3;
- (unint64_t)indexOfVisibleSearchReference:(id)a3;
- (unint64_t)searchResultsCount;
- (void)_buildLayoutSearchResultsForRootSearchTargetsInRange:(_NSRange)a3 resultsArray:(id)a4;
- (void)_nextSearchTargetWithMatchInDirection:(unint64_t)a3;
- (void)dealloc;
- (void)invalidateSearchResults;
- (void)p_buildSearchResultsIfNecessary;
- (void)p_buildVisibleSearchResultsIfNecessary;
- (void)p_continueCountingHits;
- (void)p_startCountingHits;
- (void)p_stopCountingHits;
- (void)setDocumentRootProvider:(id)a3;
- (void)setSearchOptions:(unint64_t)a3;
- (void)setSearchProgressBlock:(id)a3;
- (void)setSearchResultComparator:(id)a3;
@end

@implementation TSKFindReplaceController

- (void)setDocumentRootProvider:(id)a3
{
  if (self->_documentRootProvider != a3)
  {
    self->_documentRootProvider = a3;
    [(TSKFindReplaceController *)self p_stopCountingHits];
  }
}

- (TSKFindReplaceController)initWithDocumentRootProvider:(id)a3 delegate:(id)a4 onlySearchesAnnotations:(BOOL)a5
{
  v5 = a5;
  v9 = [a3 documentRoot];

  return [(TSKFindReplaceController *)self initWithDocumentRootProvider:a3 delegate:a4 targetProvider:v9 onlySearchesAnnotations:v5];
}

- (TSKFindReplaceController)initWithDocumentRootProvider:(id)a3 delegate:(id)a4 targetProvider:(id)a5 onlySearchesAnnotations:(BOOL)a6
{
  v14.receiver = self;
  v14.super_class = TSKFindReplaceController;
  v10 = [(TSKFindReplaceController *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(TSKFindReplaceController *)v10 setDocumentRootProvider:a3];
    -[TSKFindReplaceController setLayoutSearchResults:](v11, "setLayoutSearchResults:", [MEMORY[0x277CBEB18] array]);
    -[TSKFindReplaceController setAnnotationDisplayStringTypes:](v11, "setAnnotationDisplayStringTypes:", [MEMORY[0x277CBEB58] set]);
    v11->_searchTargetProvider = a5;
    -[TSKFindReplaceController setLayoutSearchCountForRootIndexMap:](v11, "setLayoutSearchCountForRootIndexMap:", [MEMORY[0x277CBEB38] dictionary]);
    v11->_findReplaceDelegate = a4;
    v11->_searchOptions = 16;
    v11->_countSearchHits = 1;
    [(TSKFindReplaceController *)v11 setSearchResultComparator:&__block_literal_global_17];
    v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if (([v12 BOOLForKey:@"FindReplaceMatchCaseKey"] & 1) == 0)
    {
      v11->_searchOptions |= 1uLL;
    }

    if ([v12 BOOLForKey:@"FindReplaceWholeWordsKey"])
    {
      v11->_searchOptions |= 8uLL;
    }

    v11->_onlySearchesAnnotations = a6;
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

- (void)setSearchProgressBlock:(id)a3
{
  if ([(TSKFindReplaceController *)self progressBlock]!= a3)
  {
    [(TSKFindReplaceController *)self p_stopCountingHits];
    [(TSKFindReplaceController *)self setProgressBlock:a3];
    if ([(TSKFindReplaceController *)self progressBlock])
    {

      [(TSKFindReplaceController *)self p_startCountingHits];
    }
  }
}

- (void)setSearchOptions:(unint64_t)a3
{
  if (self->_searchOptions != a3)
  {
    self->_searchOptions = a3;
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v6 setBool:(a3 & 1) == 0 forKey:@"FindReplaceMatchCaseKey"];
    [v6 setBool:(a3 >> 3) & 1 forKey:@"FindReplaceWholeWordsKey"];

    [(TSKFindReplaceController *)self invalidateSearchResults];
  }
}

- (unint64_t)searchResultsCount
{
  v3 = [(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] count];
  result = self->_searchResultsCount;
  if (v3 > result)
  {
    v5 = [(TSKFindReplaceController *)self layoutSearchResults];

    return [(NSMutableArray *)v5 count];
  }

  return result;
}

- (void)setSearchResultComparator:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = &__block_literal_global_17;
  }

  searchResultComparator = self->_searchResultComparator;
  if (v3 != searchResultComparator)
  {

    self->_searchResultComparator = [v3 copy];
  }
}

- (id)documentRoot
{
  v2 = [(TSKFindReplaceController *)self documentRootProvider];

  return [(TSKDocumentRootProvider *)v2 documentRoot];
}

- (BOOL)p_shouldCountAnnotation:(id)a3
{
  if (a3)
  {
    return [a3 annotationType] != 1 || self->_commentsIncludedInAnnotationSearch;
  }

  else
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController p_shouldCountAnnotation:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 251, @"invalid nil value for '%s'", "annotation"}];
    return 0;
  }
}

- (void)p_continueCountingHits
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController p_continueCountingHits]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 319, @"This operation must only be performed on the main thread."}];
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
      v7 = [(NSEnumerator *)self->_currentModelEnumerator nextObject];
      v6 = v7 == 0;
      if (v7)
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
      v19 = [(TSKSearch *)currentSearch isComplete];
      v20 = self->_currentSearch;
      if (v19)
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
            v22 = [(TSKFindReplaceController *)self progressBlock];
            v22[2](v22, self->_searchResultsCount, v21);
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
      v11 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController p_continueCountingHits]"];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 347, @"Every searchable should respond to atleast a string search or an annotation search"}];
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
      v16 = [(TSKFindReplaceController *)self searchString];
      v17 = [(TSKFindReplaceController *)self searchOptions];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __50__TSKFindReplaceController_p_continueCountingHits__block_invoke;
      v25[3] = &unk_279D47CF0;
      v25[4] = self;
      v14 = [(TSKSearchable *)v15 searchForString:v16 options:v17 onHit:v25];
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
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController p_stopCountingHits]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 414, @"This operation must only be performed on the main thread."}];
  }

  self->_searchResultsCount = 0;

  self->_currentModelEnumerator = 0;
  self->_currentSearch = 0;
}

- (void)p_startCountingHits
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController p_startCountingHits]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 423, @"This operation must only be performed on the main thread."}];
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

+ (void)_recursiveSearchWithSearchTarget:(id)a3 forString:(id)a4 options:(unint64_t)a5 hitBlock:(id)a6
{
  v21 = *MEMORY[0x277D85DE8];
  [a1 _assertSearchTargetImplementsProperMethods:?];
  if (objc_opt_respondsToSelector())
  {
    [a3 layoutSearchForString:a4 options:a5 hitBlock:a6];
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = [a3 childSearchTargets];
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v11);
          }

          [a1 _recursiveSearchWithSearchTarget:*(*(&v16 + 1) + 8 * v15++) forString:a4 options:a5 hitBlock:a6];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

+ (void)_recursiveSearchWithSearchTarget:(id)a3 forAnnotationsWithHitBlock:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  [a1 _assertSearchTargetImplementsProperMethods:?];
  if (objc_opt_respondsToSelector())
  {
    [a3 layoutSearchForAnnotationWithHitBlock:a4];
  }

  if (objc_opt_respondsToSelector())
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [a3 childAnnotationSearchTargets];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
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

          [a1 _recursiveSearchWithSearchTarget:*(*(&v21 + 1) + 8 * i) forAnnotationsWithHitBlock:a4];
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
    v12 = [a3 childSearchTargets];
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
            objc_enumerationMutation(v12);
          }

          [a1 _recursiveSearchWithSearchTarget:*(*(&v17 + 1) + 8 * j) forAnnotationsWithHitBlock:a4];
        }

        v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v14);
    }
  }
}

- (id)searchReferencesToHighlightInVisibleRootObjectRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [MEMORY[0x277D6C348] dictionary];
  if ([(TSKFindReplaceController *)self searchString]&& [(NSString *)[(TSKFindReplaceController *)self searchString] length]&& location < location + length)
  {
    do
    {
      v7 = [(TSKFindReplaceController *)self searchTargetProvider];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __80__TSKFindReplaceController_searchReferencesToHighlightInVisibleRootObjectRange___block_invoke;
      v9[3] = &unk_279D47D18;
      v9[4] = self;
      v9[5] = v6;
      [(TSKSearchTargetProvider *)v7 withRootSearchTargetAtIndex:location++ executeBlock:v9];
      --length;
    }

    while (length);
  }

  return v6;
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
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController invalidateSearchResults]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 525, @"This operation must only be performed on the main thread."}];
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

- (void)_buildLayoutSearchResultsForRootSearchTargetsInRange:(_NSRange)a3 resultsArray:(id)a4
{
  length = a3.length;
  location = a3.location;
  if (a3.location != [(TSKFindReplaceController *)self currentRootSearchTargetRange]|| length != v8)
  {
    [(TSKFindReplaceController *)self setCurrentRootSearchTargetRange:location, length];
    [a4 removeAllObjects];
    if (self->_onlySearchesAnnotations)
    {
      v9 = v18;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __94__TSKFindReplaceController__buildLayoutSearchResultsForRootSearchTargetsInRange_resultsArray___block_invoke;
      v18[3] = &unk_279D47D60;
      v18[4] = self;
      v18[5] = a4;
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
        v12 = [a4 count];
        [(TSKSearchTargetProvider *)[(TSKFindReplaceController *)self searchTargetProvider] withRootSearchTargetAtIndex:location executeBlock:v10];
        v13 = [a4 count];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:location];
        -[NSMutableDictionary setObject:forKey:](-[TSKFindReplaceController layoutSearchCountForRootIndexMap](self, "layoutSearchCountForRootIndexMap"), "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13 - v12], v14);
        ++location;
        --length;
      }

      while (length);
    }

    [(TSKFindReplaceController *)self sortLayoutSearchResultsArray:a4];
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

- (unint64_t)_nextRootSearchTargetFromIndex:(unint64_t)a3 inDirection:(unint64_t)a4 wrapped:(BOOL *)a5
{
  while (1)
  {
    v9 = [(TSKFindReplaceController *)self searchTargetProvider];
    v10 = self->_onlySearchesAnnotations ? 0 : [(TSKFindReplaceController *)self searchString];
    result = [(TSKSearchTargetProvider *)v9 nextRootSearchTargetIndexFromIndex:a3 forString:v10 options:[(TSKFindReplaceController *)self searchOptions] inDirection:a4];
    if (a3 == 0x7FFFFFFFFFFFFFFFLL || result != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    *a5 = 1;
    a3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (result == 0x7FFFFFFFFFFFFFFFLL && a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return result;
}

- (void)_nextSearchTargetWithMatchInDirection:(unint64_t)a3
{
  v5 = MEMORY[0x277CCAB58];
  v6 = [(TSKFindReplaceController *)self currentRootSearchTargetRange];
  for (i = [v5 indexSetWithIndexesInRange:{v6, v7}]; ; objc_msgSend(i, "addIndexesInRange:", v18, v19))
  {
    v9 = [(TSKFindReplaceController *)self currentRootSearchTargetRange];
    v11 = v10 - 1;
    if (a3)
    {
      v11 = 0;
    }

    v20 = 0;
    v12 = [(TSKFindReplaceController *)self _nextRootSearchTargetFromIndex:v9 + v11 inDirection:a3 wrapped:&v20];
    v13 = [(TSKFindReplaceController *)self currentRootSearchTargetRange];
    if (v12 < v13 || v12 - v13 >= v14)
    {
      [(TSKFindReplaceController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:v12 resultsArray:1, [(TSKFindReplaceController *)self layoutSearchResults]];
    }

    if ([(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] count])
    {
      break;
    }

    v16 = [(TSKFindReplaceController *)self currentRootSearchTargetRange];
    if ([i containsIndexesInRange:{v16, v17}])
    {
      [(TSKFindReplaceController *)self findReplaceDelegate];
      if (objc_opt_respondsToSelector())
      {
        [(TSKFindReplaceDelegate *)[(TSKFindReplaceController *)self findReplaceDelegate] findReplaceControllerDidFindNoResults:self];
      }

      return;
    }

    v18 = [(TSKFindReplaceController *)self currentRootSearchTargetRange];
  }

  if (v20 == 1)
  {
    [(TSKFindReplaceController *)self findReplaceDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(TSKFindReplaceDelegate *)[(TSKFindReplaceController *)self findReplaceDelegate] findReplaceController:self didWrapInDirection:a3];
    }
  }
}

- (id)_firstResultInDirection:(unint64_t)a3
{
  result = [(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] count];
  if (result)
  {
    v6 = [(TSKFindReplaceController *)self layoutSearchResults];
    if (a3)
    {

      return [(NSMutableArray *)v6 lastObject];
    }

    else
    {

      return [(NSMutableArray *)v6 objectAtIndex:0];
    }
  }

  return result;
}

- (id)_lastResultInDirection:(unint64_t)a3
{
  result = [(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] count];
  if (result)
  {
    v6 = [(TSKFindReplaceController *)self layoutSearchResults];
    if (a3)
    {

      return [(NSMutableArray *)v6 objectAtIndex:0];
    }

    else
    {

      return [(NSMutableArray *)v6 lastObject];
    }
  }

  return result;
}

- (void)p_buildSearchResultsIfNecessary
{
  v3 = [(TSKFindReplaceController *)self currentRootSearchTargetRange];
  if (v3 == *MEMORY[0x277D6C268] && v4 == *(MEMORY[0x277D6C268] + 8))
  {
    v6 = [(TSKFindReplaceDelegate *)[(TSKFindReplaceController *)self findReplaceDelegate] visibleRootIndexRange];
    v8 = v7;
    v9 = [(TSKFindReplaceController *)self layoutSearchResults];

    [(TSKFindReplaceController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:v6 resultsArray:v8, v9];
  }
}

- (void)p_buildVisibleSearchResultsIfNecessary
{
  v3 = [(TSKFindReplaceController *)self currentRootSearchTargetRange];
  v5 = v4;
  if (v3 != [(TSKFindReplaceDelegate *)[(TSKFindReplaceController *)self findReplaceDelegate] visibleRootIndexRange]|| v5 != v6)
  {
    v7 = [(TSKFindReplaceDelegate *)[(TSKFindReplaceController *)self findReplaceDelegate] visibleRootIndexRange];
    v9 = v8;
    v10 = [(TSKFindReplaceController *)self layoutSearchResults];

    [(TSKFindReplaceController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:v7 resultsArray:v9, v10];
  }
}

- (id)firstVisibleResultInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [(TSKFindReplaceDelegate *)[(TSKFindReplaceController *)self findReplaceDelegate] visibleRootIndexRange];
  [(TSKFindReplaceController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:v9 resultsArray:v10, v8];
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

- (id)annotationSearchReferenceForAnnotation:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  [(TSKFindReplaceController *)self p_buildSearchResultsIfNecessary];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(TSKFindReplaceController *)self layoutSearchResults];
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      if ([objc_msgSend(v10 "annotation")])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
  v11 = [(TSKFindReplaceController *)self layoutSearchResults];
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
      objc_enumerationMutation(v11);
    }

    v10 = *(*(&v17 + 1) + 8 * v15);
    if ([objc_msgSend(v10 "annotation")])
    {
      return v10;
    }

    if (v13 == ++v15)
    {
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
      v10 = 0;
      if (v13)
      {
        goto LABEL_13;
      }

      return v10;
    }
  }
}

- (unint64_t)indexOfVisibleSearchReference:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] indexOfObject:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v4 + [(TSKFindReplaceController *)self _resultCountInRootObjectRange:0, [(TSKFindReplaceController *)self currentRootSearchTargetRange]]+ 1;
  }

  v5 = [MEMORY[0x277D6C290] currentHandler];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController indexOfVisibleSearchReference:]"];
  [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 797, @"Could not find searchReference in current root search target range"}];
  return 0;
}

- (unint64_t)_resultCountInRootObjectRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(TSKFindReplaceController *)self currentRootSearchTargetRange];
  v15 = v7;
  v16 = v6;
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
        v12 = [MEMORY[0x277D6C290] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKFindReplaceController _resultCountInRootObjectRange:]"];
        [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKFindReplaceController.m"), 825, @"invalid nil value for '%s'", "rootCount"}];
      }

      ++location;
      --length;
    }

    while (length);
  }

  [(TSKFindReplaceController *)self _buildLayoutSearchResultsForRootSearchTargetsInRange:v16 resultsArray:v15, v8];

  return v9;
}

- (id)searchReferenceAfterReference:(id)a3 inDirection:(unint64_t)a4
{
  [(TSKFindReplaceController *)self p_buildSearchResultsIfNecessary];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy__6;
  v27 = __Block_byref_object_dispose__6;
  v28 = 0;
  if (!a3)
  {
    if (![(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] count])
    {
      [(TSKFindReplaceController *)self _nextSearchTargetWithMatchInDirection:a4];
    }

    goto LABEL_8;
  }

  v7 = [(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] indexOfObject:a3];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      v9 = 0;
    }

    else
    {
      v9 = [(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] count]- 1;
    }

    if (v7 == v9)
    {
      [(TSKFindReplaceController *)self _nextSearchTargetWithMatchInDirection:a4];
      v8 = [(TSKFindReplaceController *)self _firstResultInDirection:a4];
    }

    else
    {
      v10 = [(TSKFindReplaceController *)self layoutSearchResults];
      if (a4)
      {
        v11 = v7 - 1;
      }

      else
      {
        v11 = v7 + 1;
      }

      v8 = [(NSMutableArray *)v10 objectAtIndex:v11];
    }

    goto LABEL_21;
  }

  if (![(NSMutableArray *)[(TSKFindReplaceController *)self layoutSearchResults] count])
  {
    [(TSKFindReplaceController *)self _nextSearchTargetWithMatchInDirection:a4];
  }

  if ([objc_opt_class() searchReference:a3 isBeforeSearchReference:-[TSKFindReplaceController _firstResultInDirection:](self orEqual:"_firstResultInDirection:" inDirection:a4) comparator:{0, a4, -[TSKFindReplaceController searchResultComparator](self, "searchResultComparator")}])
  {
    goto LABEL_8;
  }

  if ([objc_opt_class() searchReference:a3 isAfterSearchReference:-[TSKFindReplaceController _lastResultInDirection:](self orEqual:"_lastResultInDirection:" inDirection:a4) comparator:{1, a4, -[TSKFindReplaceController searchResultComparator](self, "searchResultComparator")}])
  {
    [(TSKFindReplaceController *)self _nextSearchTargetWithMatchInDirection:a4];
LABEL_8:
    v8 = [(TSKFindReplaceController *)self _firstResultInDirection:a4];
    goto LABEL_21;
  }

  v14 = [(TSKFindReplaceController *)self layoutSearchResults];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __70__TSKFindReplaceController_searchReferenceAfterReference_inDirection___block_invoke;
  v18 = &unk_279D47DD8;
  v19 = self;
  v20 = a3;
  v21 = &v23;
  v22 = a4;
  [(NSMutableArray *)v14 enumerateObjectsWithOptions:2 * (a4 != 0) usingBlock:&v15];
  v12 = v24[5];
  if (v12)
  {
    goto LABEL_22;
  }

  [(TSKFindReplaceController *)self _nextSearchTargetWithMatchInDirection:a4, v15, v16, v17, v18];
  v8 = [(TSKFindReplaceController *)self _firstResultInDirection:a4];
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

+ (BOOL)p_searchReference:(id)a3 comparedWithSearchReference:(id)a4 orEqual:(BOOL)a5 inDirection:(unint64_t)a6 before:(BOOL)a7 comparator:(id)a8
{
  v8 = a7;
  v11 = (*(a8 + 2))(a8, a3, a4);
  if (a6)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else if (!v8)
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
    LOBYTE(v11) = a5;
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