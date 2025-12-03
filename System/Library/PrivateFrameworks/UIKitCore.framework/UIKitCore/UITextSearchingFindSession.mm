@interface UITextSearchingFindSession
- (BOOL)_isCurrentSearchQueryValid;
- (BOOL)allowsReplacementForCurrentlyHighlightedResult;
- (BOOL)supportsReplacement;
- (UITextSearchingFindSession)initWithSearchableObject:(id)searchableObject;
- (UITextSearchingFindSession)initWithStronglyHeldSearchableObject:(id)object;
- (id)_allFoundRanges;
- (id)_documentComparator;
- (id)_nearestRangeToSelectedRangeInDocument:(id)document;
- (id)_nextItemInOrderedSet:(id)set usingComparator:(id)comparator fromItem:(id)item inDirection:(int64_t)direction loopAround:(BOOL)around;
- (id)_textRangeComparatorForDocument:(id)document;
- (id)parentInteraction;
- (id)searchableObject;
- (int64_t)highlightedResultIndex;
- (int64_t)resultCount;
- (void)_finishedSearching;
- (void)_foundRange:(id)range forSearchString:(id)string inDocument:(id)document;
- (void)_invalidateAllFoundRanges;
- (void)_invalidateFoundRange:(id)range inDocument:(id)document;
- (void)_nextResultRelativeToRange:(id *)range document:(id *)document inDirection:(int64_t)direction;
- (void)_performBlockWhenSearchResultsAreAvailable:(id)available;
- (void)_performDelayedSearchOperations;
- (void)_readilyHighlightNearestRangeToSelectedRangeIfNecessary;
- (void)_readilyHighlightNextResultInDirection:(int64_t)direction;
- (void)_replaceHighlightedTextRangeWithReplacementString:(id)string;
- (void)_setHighlightedRange:(id)range inDocument:(id)document;
- (void)_setNeedsResultCountUpdate;
- (void)_setReadyToPerformDelayedSearchOperations;
- (void)_updateResultCountLabel;
- (void)_updateSearchableObjectProtocolConformance;
- (void)highlightNearestFoundRangeToSelectedRangeIfNecessary;
- (void)highlightNextResultInDirection:(int64_t)direction;
- (void)performSearchWithQuery:(id)query options:(id)options;
- (void)performSingleReplacementWithSearchQuery:(id)query replacementString:(id)string options:(id)options;
- (void)replaceAllInstancesOfSearchQuery:(id)query withReplacementString:(id)string options:(id)options;
- (void)reset;
@end

@implementation UITextSearchingFindSession

- (UITextSearchingFindSession)initWithSearchableObject:(id)searchableObject
{
  v4 = searchableObject;
  v10.receiver = self;
  v10.super_class = UITextSearchingFindSession;
  v5 = [(UITextSearchingFindSession *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_searchableObject, v4);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    blocksAwaitingSearchResults = v6->_blocksAwaitingSearchResults;
    v6->_blocksAwaitingSearchResults = v7;

    [(UITextSearchingFindSession *)v6 _updateSearchableObjectProtocolConformance];
  }

  return v6;
}

- (UITextSearchingFindSession)initWithStronglyHeldSearchableObject:(id)object
{
  objectCopy = object;
  v6 = [(UITextSearchingFindSession *)self initWithSearchableObject:objectCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stronglyHeldSearchableObject, object);
  }

  return v7;
}

- (BOOL)supportsReplacement
{
  if ((*&self->_searchableObjectConformsTo & 1) == 0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_searchableObject);
  supportsTextReplacement = [WeakRetained supportsTextReplacement];

  return supportsTextReplacement;
}

- (BOOL)allowsReplacementForCurrentlyHighlightedResult
{
  supportsReplacement = [(UITextSearchingFindSession *)self supportsReplacement];
  if (supportsReplacement)
  {
    if (self->_highlightedTextRange)
    {
      if ((*&self->_searchableObjectConformsTo & 2) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_searchableObject);
        v5 = [WeakRetained shouldReplaceFoundTextInRange:self->_highlightedTextRange inDocument:self->_highlightedDocument withText:&stru_1EFB14550];

        LOBYTE(supportsReplacement) = v5;
      }

      else
      {
        LOBYTE(supportsReplacement) = 1;
      }
    }

    else
    {
      LOBYTE(supportsReplacement) = 0;
    }
  }

  return supportsReplacement;
}

- (BOOL)_isCurrentSearchQueryValid
{
  _hasResults = [(UITextSearchingFindSession *)self _hasResults];
  if (_hasResults)
  {
    searchText = [(UIFindSession *)self searchText];
    v5 = [searchText isEqualToString:self->_lastSearchQuery];

    LOBYTE(_hasResults) = v5;
  }

  return _hasResults;
}

- (void)_nextResultRelativeToRange:(id *)range document:(id *)document inDirection:(int64_t)direction
{
  v9 = [(NSMutableOrderedSet *)self->_sortedDocumentIdentifiers count]< 2;
  v10 = [(NSMutableDictionary *)self->_sortedResultsByDocument objectForKey:*document];
  v11 = [(UITextSearchingFindSession *)self _textRangeComparatorForDocument:*document];
  v12 = [(UITextSearchingFindSession *)self _nextItemInOrderedSet:v10 usingComparator:v11 fromItem:*range inDirection:direction loopAround:v9];

  if (!v12)
  {
    sortedDocumentIdentifiers = self->_sortedDocumentIdentifiers;
    _documentComparator = [(UITextSearchingFindSession *)self _documentComparator];
    v15 = [(UITextSearchingFindSession *)self _nextItemInOrderedSet:sortedDocumentIdentifiers usingComparator:_documentComparator fromItem:*document inDirection:direction loopAround:1];

    if (v15)
    {
      objc_storeStrong(document, v15);
      v16 = [(NSMutableDictionary *)self->_sortedResultsByDocument objectForKey:v15];
      v17 = v16;
      if (direction)
      {
        [v16 lastObject];
      }

      else
      {
        [v16 firstObject];
      }
      v12 = ;
    }

    else
    {
      v12 = 0;
    }
  }

  v18 = *range;
  *range = v12;
}

- (void)_readilyHighlightNextResultInDirection:(int64_t)direction
{
  if (!self->_awaitingFirstResults && ![(UITextSearchingFindSession *)self _isCurrentSearchQueryValid])
  {
    searchText = [(UIFindSession *)self searchText];
    v6 = [searchText length];

    if (v6)
    {
      [(UITextSearchingFindSession *)self _setHighlightedRange:0 inDocument:0];
      lastSearchOptions = self->_lastSearchOptions;
      if (lastSearchOptions)
      {
        v8 = lastSearchOptions;
      }

      else
      {
        v8 = +[UITextSearchOptions defaultSearchOptions];
      }

      v9 = v8;
      searchText2 = [(UIFindSession *)self searchText];
      [(UITextSearchingFindSession *)self performSearchWithQuery:searchText2 options:v9];
    }
  }

  highlightedTextRange = self->_highlightedTextRange;
  if (highlightedTextRange)
  {
    v13 = highlightedTextRange;
    v12 = self->_highlightedDocument;
    [(UITextSearchingFindSession *)self _nextResultRelativeToRange:&v13 document:&v12 inDirection:direction];
    [(UITextSearchingFindSession *)self _setHighlightedRange:v13 inDocument:v12];
  }

  else
  {

    [(UITextSearchingFindSession *)self highlightNearestFoundRangeToSelectedRangeIfNecessary];
  }
}

- (void)highlightNextResultInDirection:(int64_t)direction
{
  if ([(UITextSearchingFindSession *)self _hasResults]|| !self->_isSearching)
  {

    [(UITextSearchingFindSession *)self _readilyHighlightNextResultInDirection:direction];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__UITextSearchingFindSession_highlightNextResultInDirection___block_invoke;
    v5[3] = &unk_1E70F32F0;
    v5[4] = self;
    v5[5] = direction;
    [(UITextSearchingFindSession *)self _performBlockWhenSearchResultsAreAvailable:v5];
  }
}

void __61__UITextSearchingFindSession_highlightNextResultInDirection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[19];
  if (v3)
  {
    v10 = v3;
    v9 = *(*(a1 + 32) + 160);
    [*(a1 + 32) _nextResultRelativeToRange:&v10 document:&v9 inDirection:*(a1 + 40)];
    [*(a1 + 32) _setHighlightedRange:v10 inDocument:v9];
    v4 = *(a1 + 32);
    v5 = *(v4 + 152);
    *(v4 + 152) = 0;

    v6 = *(a1 + 32);
    v7 = *(v6 + 160);
    *(v6 + 160) = 0;
  }

  else
  {
    v8 = *(a1 + 40);

    [v2 _readilyHighlightNextResultInDirection:v8];
  }
}

- (int64_t)highlightedResultIndex
{
  _allFoundRanges = [(UITextSearchingFindSession *)self _allFoundRanges];
  v4 = [_allFoundRanges indexOfObject:self->_highlightedTextRange];

  return v4;
}

- (void)performSearchWithQuery:(id)query options:(id)options
{
  queryCopy = query;
  optionsCopy = options;
  self->_isSearching = 1;
  [(UITextSearchingFindSession *)self reset];
  if (!optionsCopy)
  {
    optionsCopy = +[UITextSearchOptions defaultSearchOptions];
  }

  lastSearchQuery = self->_lastSearchQuery;
  self->_lastSearchQuery = queryCopy;
  v9 = queryCopy;

  lastSearchOptions = self->_lastSearchOptions;
  self->_lastSearchOptions = optionsCopy;
  v11 = optionsCopy;

  self->_awaitingFirstResults = 1;
  WeakRetained = objc_loadWeakRetained(&self->_parentInteraction);
  [WeakRetained updateResultCount];

  [(_UITextSearchingFindSessionAggregator *)self->_aggregator setValid:0];
  v13 = [[_UITextSearchingFindSessionAggregator alloc] initWithSession:self];
  aggregator = self->_aggregator;
  self->_aggregator = v13;

  v15 = objc_loadWeakRetained(&self->_searchableObject);
  [v15 performTextSearchWithQueryString:v9 usingOptions:v11 resultAggregator:self->_aggregator];
}

- (void)_replaceHighlightedTextRangeWithReplacementString:(id)string
{
  stringCopy = string;
  highlightedTextRange = self->_highlightedTextRange;
  if (highlightedTextRange || ([(UITextSearchingFindSession *)self _readilyHighlightNearestRangeToSelectedRangeIfNecessary], (highlightedTextRange = self->_highlightedTextRange) != 0))
  {
    v5 = highlightedTextRange;
    v6 = self->_highlightedDocument;
    WeakRetained = objc_loadWeakRetained(&self->_searchableObject);
    [WeakRetained replaceFoundTextInRange:v5 inDocument:v6 withText:stringCopy];

    v8 = [stringCopy length];
    if (v8 == [(NSString *)self->_lastSearchQuery length])
    {
      if (([stringCopy isEqualToString:self->_lastSearchQuery] & 1) == 0)
      {
        v9 = objc_loadWeakRetained(&self->_searchableObject);
        [v9 decorateFoundTextRange:v5 inDocument:v6 usingStyle:0];

        if (v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = @"__singleton__";
        }

        v11 = [(NSMutableDictionary *)self->_sortedResultsByDocument objectForKey:v10];
        [v11 removeObject:v5];

        [(UITextSearchingFindSession *)self _updateResultCountLabel];
      }
    }

    else
    {
      if (self->_highlightedTextRange)
      {
        v12 = objc_loadWeakRetained(&self->_searchableObject);
        selectedTextRange = [v12 selectedTextRange];

        if (!selectedTextRange)
        {
          objc_storeStrong(&self->_highlightedRangeBeforeSubsequentSearch, self->_highlightedTextRange);
          objc_storeStrong(&self->_highlightedDocumentBeforeSubsequentSearch, self->_highlightedDocument);
        }
      }

      [(UITextSearchingFindSession *)self performSearchWithQuery:self->_lastSearchQuery options:self->_lastSearchOptions];
    }
  }
}

- (void)performSingleReplacementWithSearchQuery:(id)query replacementString:(id)string options:(id)options
{
  queryCopy = query;
  stringCopy = string;
  optionsCopy = options;
  if ([(UITextSearchingFindSession *)self supportsReplacement])
  {
    [(UIFindSession *)self setSearchText:queryCopy];
    [(UIFindSession *)self setReplacementText:stringCopy];
    if (-[UITextSearchingFindSession _hasResults](self, "_hasResults") && [queryCopy isEqualToString:self->_lastSearchQuery])
    {
      [(UITextSearchingFindSession *)self _replaceHighlightedTextRangeWithReplacementString:stringCopy];
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __96__UITextSearchingFindSession_performSingleReplacementWithSearchQuery_replacementString_options___block_invoke;
      v12[3] = &unk_1E70F6228;
      v11 = queryCopy;
      v13 = v11;
      selfCopy = self;
      v15 = stringCopy;
      [(UITextSearchingFindSession *)self _performBlockWhenSearchResultsAreAvailable:v12];
      [(UITextSearchingFindSession *)self performSearchWithQuery:v11 options:optionsCopy];
      [(UITextSearchingFindSession *)self highlightNearestFoundRangeToSelectedRangeIfNecessary];
    }
  }
}

uint64_t __96__UITextSearchingFindSession_performSingleReplacementWithSearchQuery_replacementString_options___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:*(*(a1 + 40) + 128)];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v3 _replaceHighlightedTextRangeWithReplacementString:v4];
  }

  return result;
}

- (void)replaceAllInstancesOfSearchQuery:(id)query withReplacementString:(id)string options:(id)options
{
  queryCopy = query;
  stringCopy = string;
  optionsCopy = options;
  if ([(UITextSearchingFindSession *)self supportsReplacement])
  {
    [(UIFindSession *)self setSearchText:queryCopy];
    [(UIFindSession *)self setReplacementText:stringCopy];
    if ((*&self->_searchableObjectConformsTo & 8) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_searchableObject);
      [WeakRetained replaceAllOccurrencesOfQueryString:queryCopy usingOptions:optionsCopy withText:stringCopy];

      [(UITextSearchingFindSession *)self performSearchWithQuery:stringCopy options:self->_lastSearchOptions];
    }

    else
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __93__UITextSearchingFindSession_replaceAllInstancesOfSearchQuery_withReplacementString_options___block_invoke;
      v16 = &unk_1E70F35B8;
      selfCopy = self;
      v18 = stringCopy;
      v11 = _Block_copy(&v13);
      if ([queryCopy isEqualToString:{self->_lastSearchQuery, v13, v14, v15, v16, selfCopy}] && -[UITextSearchingFindSession _hasResults](self, "_hasResults"))
      {
        v11[2](v11);
      }

      else
      {
        [(UITextSearchingFindSession *)self _performBlockWhenSearchResultsAreAvailable:v11];
        [(UITextSearchingFindSession *)self performSearchWithQuery:queryCopy options:optionsCopy];
      }
    }
  }
}

void __93__UITextSearchingFindSession_replaceAllInstancesOfSearchQuery_withReplacementString_options___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 112);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __93__UITextSearchingFindSession_replaceAllInstancesOfSearchQuery_withReplacementString_options___block_invoke_2;
  v8 = &unk_1E7122CE0;
  v9 = v3;
  v10 = v2;
  [v4 enumerateKeysAndObjectsUsingBlock:&v5];
  [*(a1 + 32) performSearchWithQuery:*(a1 + 40) options:{*(*(a1 + 32) + 136), v5, v6, v7, v8, v9}];
}

void __93__UITextSearchingFindSession_replaceAllInstancesOfSearchQuery_withReplacementString_options___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 reverseObjectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
        [WeakRetained replaceFoundTextInRange:v11 inDocument:v5 withText:*(a1 + 40)];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (int64_t)resultCount
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_sortedResultsByDocument allValues];
  v3 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) count];
      }

      v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)reset
{
  [(NSMutableDictionary *)self->_sortedResultsByDocument removeAllObjects];
  [(NSMutableOrderedSet *)self->_sortedDocumentIdentifiers removeAllObjects];
  WeakRetained = objc_loadWeakRetained(&self->_searchableObject);
  [WeakRetained clearAllDecoratedFoundText];

  self->_awaitingFirstResults = 0;
  highlightedTextRange = self->_highlightedTextRange;
  self->_highlightedTextRange = 0;

  highlightedDocument = self->_highlightedDocument;
  self->_highlightedDocument = 0;

  lastSearchOptions = self->_lastSearchOptions;
  self->_lastSearchOptions = 0;

  lastSearchQuery = self->_lastSearchQuery;
  self->_lastSearchQuery = 0;

  v8 = objc_loadWeakRetained(&self->_parentInteraction);
  [v8 updateResultCount];
}

- (void)_updateSearchableObjectProtocolConformance
{
  WeakRetained = objc_loadWeakRetained(&self->_searchableObject);
  *&self->_searchableObjectConformsTo = *&self->_searchableObjectConformsTo & 0xFFFE | objc_opt_respondsToSelector() & 1;

  v4 = objc_loadWeakRetained(&self->_searchableObject);
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_searchableObjectConformsTo = *&self->_searchableObjectConformsTo & 0xFFFD | v5;

  v6 = objc_loadWeakRetained(&self->_searchableObject);
  if (objc_opt_respondsToSelector())
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *&self->_searchableObjectConformsTo = *&self->_searchableObjectConformsTo & 0xFFFB | v7;

  v8 = objc_loadWeakRetained(&self->_searchableObject);
  if (objc_opt_respondsToSelector())
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  *&self->_searchableObjectConformsTo = *&self->_searchableObjectConformsTo & 0xFFF7 | v9;

  v10 = objc_loadWeakRetained(&self->_searchableObject);
  if (objc_opt_respondsToSelector())
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  *&self->_searchableObjectConformsTo = *&self->_searchableObjectConformsTo & 0xFFEF | v11;

  v12 = objc_loadWeakRetained(&self->_searchableObject);
  if (objc_opt_respondsToSelector())
  {
    v13 = 32;
  }

  else
  {
    v13 = 0;
  }

  *&self->_searchableObjectConformsTo = *&self->_searchableObjectConformsTo & 0xFFDF | v13;

  v14 = objc_loadWeakRetained(&self->_searchableObject);
  if (objc_opt_respondsToSelector())
  {
    v15 = 64;
  }

  else
  {
    v15 = 0;
  }

  *&self->_searchableObjectConformsTo = *&self->_searchableObjectConformsTo & 0xFFBF | v15;

  v16 = objc_loadWeakRetained(&self->_searchableObject);
  if (objc_opt_respondsToSelector())
  {
    v17 = 128;
  }

  else
  {
    v17 = 0;
  }

  *&self->_searchableObjectConformsTo = *&self->_searchableObjectConformsTo & 0xFF7F | v17;

  v18 = objc_loadWeakRetained(&self->_searchableObject);
  if (objc_opt_respondsToSelector())
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  *&self->_searchableObjectConformsTo = *&self->_searchableObjectConformsTo & 0xFEFF | v19;

  v20 = objc_loadWeakRetained(&self->_searchableObject);
  if (objc_opt_respondsToSelector())
  {
    v21 = 512;
  }

  else
  {
    v21 = 0;
  }

  *&self->_searchableObjectConformsTo = *&self->_searchableObjectConformsTo & 0xFDFF | v21;

  v22 = objc_loadWeakRetained(&self->_searchableObject);
  if (objc_opt_respondsToSelector())
  {
    v23 = 1024;
  }

  else
  {
    v23 = 0;
  }

  *&self->_searchableObjectConformsTo = *&self->_searchableObjectConformsTo & 0xFBFF | v23;

  v24 = objc_loadWeakRetained(&self->_searchableObject);
  if (objc_opt_respondsToSelector())
  {
    v25 = 4096;
  }

  else
  {
    v25 = 0;
  }

  *&self->_searchableObjectConformsTo = *&self->_searchableObjectConformsTo & 0xEFFF | v25;

  v27 = objc_loadWeakRetained(&self->_searchableObject);
  if (objc_opt_respondsToSelector())
  {
    v26 = 2048;
  }

  else
  {
    v26 = 0;
  }

  *&self->_searchableObjectConformsTo = *&self->_searchableObjectConformsTo & 0xF7FF | v26;
}

- (id)_nextItemInOrderedSet:(id)set usingComparator:(id)comparator fromItem:(id)item inDirection:(int64_t)direction loopAround:(BOOL)around
{
  aroundCopy = around;
  setCopy = set;
  comparatorCopy = comparator;
  itemCopy = item;
  v14 = [setCopy indexOfObject:itemCopy];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!itemCopy)
    {
      if (direction)
      {
        [setCopy lastObject];
      }

      else
      {
        [setCopy firstObject];
      }
      v19 = ;
      goto LABEL_29;
    }

    v15 = [setCopy indexOfObject:itemCopy inSortedRange:0 options:objc_msgSend(setCopy usingComparator:{"count"), 1024, comparatorCopy}] - (direction == 1);
  }

  else if (direction)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = v14 + 1;
  }

  v16 = [setCopy count];
  if (!v16)
  {
    goto LABEL_26;
  }

  v17 = v15 < 0 || v15 >= v16;
  v18 = !v17;
  if (!v17 || !aroundCopy)
  {
    if (!v18)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v15 < 0)
  {
    v15 = v16 - 1;
LABEL_25:
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_27;
    }

LABEL_26:
    v20 = 0;
    goto LABEL_30;
  }

  v15 = 0;
LABEL_27:
  v19 = [setCopy objectAtIndex:v15];
LABEL_29:
  v20 = v19;
LABEL_30:

  return v20;
}

- (id)_nearestRangeToSelectedRangeInDocument:(id)document
{
  documentCopy = document;
  WeakRetained = objc_loadWeakRetained(&self->_searchableObject);
  selectedTextRange = [WeakRetained selectedTextRange];

  v7 = [(NSMutableDictionary *)self->_sortedResultsByDocument objectForKey:documentCopy];
  v8 = v7;
  if (!selectedTextRange)
  {
    goto LABEL_14;
  }

  v9 = [v7 count];
  v10 = [(UITextSearchingFindSession *)self _textRangeComparatorForDocument:documentCopy];
  v11 = [v8 indexOfObject:selectedTextRange inSortedRange:0 options:v9 usingComparator:{1024, v10}];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  v12 = [v8 count];
  if (v11 >= v12 - 1)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = v11;
  }

  firstObject2 = [v8 objectAtIndex:v13];
  if ([firstObject2 isEqual:selectedTextRange] && v11 < objc_msgSend(v8, "count") - 1)
  {
    v15 = [v8 objectAtIndex:v11 + 1];

    firstObject2 = v15;
  }

  v16 = objc_loadWeakRetained(&self->_searchableObject);
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = objc_loadWeakRetained(&self->_searchableObject);
    endOfDocument = [v18 endOfDocument];

    start = [selectedTextRange start];
    v21 = [start isEqual:endOfDocument];

    if (v21)
    {
      firstObject = [v8 firstObject];

      firstObject2 = firstObject;
    }
  }

  if (!firstObject2)
  {
LABEL_14:
    firstObject2 = [v8 firstObject];
  }

  return firstObject2;
}

- (void)_readilyHighlightNearestRangeToSelectedRangeIfNecessary
{
  if (!self->_highlightedTextRange)
  {
    v4 = self->_highlightedDocument;
    if (v4)
    {
      v5 = v4;
    }

    else if ((*&self->_searchableObjectConformsTo & 0x400) == 0 || (WeakRetained = objc_loadWeakRetained(&self->_searchableObject), [WeakRetained selectedTextSearchDocument], v9 = objc_claimAutoreleasedReturnValue(), WeakRetained, (v5 = v9) == 0))
    {
      firstObject = [(NSMutableOrderedSet *)self->_sortedDocumentIdentifiers firstObject];
      if (firstObject)
      {
        v5 = firstObject;
      }

      else
      {
        v5 = @"__singleton__";
      }
    }

    v10 = v5;
    v8 = [(UITextSearchingFindSession *)self _nearestRangeToSelectedRangeInDocument:v5];
    [(UITextSearchingFindSession *)self _setHighlightedRange:v8 inDocument:v10];
  }
}

- (void)highlightNearestFoundRangeToSelectedRangeIfNecessary
{
  if ([(UITextSearchingFindSession *)self _hasResults])
  {

    [(UITextSearchingFindSession *)self _readilyHighlightNearestRangeToSelectedRangeIfNecessary];
  }

  else
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __82__UITextSearchingFindSession_highlightNearestFoundRangeToSelectedRangeIfNecessary__block_invoke;
    v3[3] = &unk_1E70F3590;
    v3[4] = self;
    [(UITextSearchingFindSession *)self _performBlockWhenSearchResultsAreAvailable:v3];
  }
}

- (void)_updateResultCountLabel
{
  self->_needsResultCountUpdate = 0;
  WeakRetained = objc_loadWeakRetained(&self->_parentInteraction);
  [WeakRetained updateResultCount];
}

- (void)_setNeedsResultCountUpdate
{
  if (!self->_needsResultCountUpdate)
  {
    self->_needsResultCountUpdate = 1;
    [(UITextSearchingFindSession *)self performSelector:sel__updateResultCountLabel withObject:0 afterDelay:0.0];
  }
}

- (void)_setHighlightedRange:(id)range inDocument:(id)document
{
  rangeCopy = range;
  documentCopy = document;
  if ((*&self->_searchableObjectConformsTo & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_searchableObject);
    [WeakRetained willHighlightFoundTextRange:rangeCopy inDocument:documentCopy];
  }

  if (self->_highlightedTextRange)
  {
    v9 = [(NSMutableDictionary *)self->_sortedResultsByDocument objectForKey:self->_highlightedDocument];
    v10 = [v9 containsObject:self->_highlightedTextRange];

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_searchableObject);
      [v11 decorateFoundTextRange:self->_highlightedTextRange inDocument:self->_highlightedDocument usingStyle:1];
    }
  }

  objc_storeStrong(&self->_highlightedTextRange, range);
  objc_storeStrong(&self->_highlightedDocument, document);
  if (rangeCopy)
  {
    v12 = objc_loadWeakRetained(&self->_searchableObject);
    [v12 decorateFoundTextRange:rangeCopy inDocument:documentCopy usingStyle:2];

    if ((*&self->_searchableObjectConformsTo & 0x20) != 0)
    {
      v13 = objc_loadWeakRetained(&self->_searchableObject);
      [v13 scrollRangeToVisible:rangeCopy inDocument:documentCopy];
    }

    parentInteraction = [(UITextSearchingFindSession *)self parentInteraction];
    [parentInteraction updateResultCount];
  }
}

- (id)_documentComparator
{
  objc_copyWeak(&to, &self->_searchableObject);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__UITextSearchingFindSession__documentComparator__block_invoke;
  v4[3] = &unk_1E7122D08;
  objc_copyWeak(&v5, &to);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&to);

  return v2;
}

uint64_t __49__UITextSearchingFindSession__documentComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained compareOrderFromDocument:v6 toDocument:v5];

  return v8;
}

- (id)_textRangeComparatorForDocument:(id)document
{
  documentCopy = document;
  objc_copyWeak(&to, &self->_searchableObject);
  if ((*&self->_searchableObjectConformsTo & 0x1000) != 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__UITextSearchingFindSession__textRangeComparatorForDocument___block_invoke;
    v12[3] = &unk_1E7122D30;
    v12[4] = self;
    v13 = documentCopy;
    v7 = documentCopy;
    v6 = _Block_copy(v12);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__UITextSearchingFindSession__textRangeComparatorForDocument___block_invoke_2;
    aBlock[3] = &unk_1E7122D58;
    objc_copyWeak(&v11, &to);
    v10 = documentCopy;
    v5 = documentCopy;
    v6 = _Block_copy(aBlock);

    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(&to);

  return v6;
}

uint64_t __62__UITextSearchingFindSession__textRangeComparatorForDocument___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((v5 + 184));
  v9 = [WeakRetained compareFoundRange:v7 toRange:v6 inDocument:*(a1 + 40)];

  return v9;
}

uint64_t __62__UITextSearchingFindSession__textRangeComparatorForDocument___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [v6 start];

  v9 = [v5 start];

  v10 = [WeakRetained offsetFromPosition:v8 toPosition:v9 inDocument:*(a1 + 32)];
  if (v10)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (void)_performDelayedSearchOperations
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_blocksAwaitingSearchResults copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_blocksAwaitingSearchResults removeObjectsInArray:v4, v9];
  self->_readyToPerformDelayedSearchOperations = 0;
}

- (void)_setReadyToPerformDelayedSearchOperations
{
  if (!self->_readyToPerformDelayedSearchOperations)
  {
    [(UITextSearchingFindSession *)self performSelector:sel__performDelayedSearchOperations withObject:0 afterDelay:0.0];
    self->_readyToPerformDelayedSearchOperations = 1;
  }
}

- (void)_performBlockWhenSearchResultsAreAvailable:(id)available
{
  blocksAwaitingSearchResults = self->_blocksAwaitingSearchResults;
  v5 = [available copy];
  v4 = _Block_copy(v5);
  [(NSMutableArray *)blocksAwaitingSearchResults addObject:v4];
}

- (id)_allFoundRanges
{
  v26 = *MEMORY[0x1E69E9840];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_sortedDocumentIdentifiers;
  v4 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v9 = [(NSMutableDictionary *)self->_sortedResultsByDocument objectForKey:v8];
        v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v17;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [orderedSet addObject:*(*(&v16 + 1) + 8 * j)];
            }

            v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v11);
        }
      }

      v5 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  return orderedSet;
}

- (void)_foundRange:(id)range forSearchString:(id)string inDocument:(id)document
{
  rangeCopy = range;
  stringCopy = string;
  documentCopy = document;
  v11 = documentCopy;
  v12 = @"__singleton__";
  if (documentCopy)
  {
    v12 = documentCopy;
  }

  v13 = v12;
  sortedDocumentIdentifiers = self->_sortedDocumentIdentifiers;
  if (!sortedDocumentIdentifiers)
  {
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    v16 = self->_sortedDocumentIdentifiers;
    self->_sortedDocumentIdentifiers = orderedSet;

    sortedDocumentIdentifiers = self->_sortedDocumentIdentifiers;
  }

  if (([(NSMutableOrderedSet *)sortedDocumentIdentifiers containsObject:v13]& 1) == 0)
  {
    if ([(NSMutableOrderedSet *)self->_sortedDocumentIdentifiers count]&& (*&self->_searchableObjectConformsTo & 0x800) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UITextSearchingFindSession.m" lineNumber:618 description:{@"UITextSearching: When providing multiple documents to the aggregator, you must implement the optional method compareOrderFromDocument:toDocument:."}];
    }

    v17 = self->_sortedDocumentIdentifiers;
    v18 = [(NSMutableOrderedSet *)v17 count];
    _documentComparator = [(UITextSearchingFindSession *)self _documentComparator];
    v20 = [(NSMutableOrderedSet *)v17 indexOfObject:v13 inSortedRange:0 options:v18 usingComparator:1024, _documentComparator];

    [(NSMutableOrderedSet *)self->_sortedDocumentIdentifiers insertObject:v13 atIndex:v20];
  }

  sortedResultsByDocument = self->_sortedResultsByDocument;
  if (!sortedResultsByDocument)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v23 = self->_sortedResultsByDocument;
    self->_sortedResultsByDocument = dictionary;

    sortedResultsByDocument = self->_sortedResultsByDocument;
  }

  v24 = [(NSMutableDictionary *)sortedResultsByDocument objectForKey:v13];

  if (!v24)
  {
    v25 = self->_sortedResultsByDocument;
    orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
    [(NSMutableDictionary *)v25 setObject:orderedSet2 forKey:v13];
  }

  v27 = [(NSMutableDictionary *)self->_sortedResultsByDocument objectForKey:v13];
  v28 = [v27 count];
  v29 = [(UITextSearchingFindSession *)self _textRangeComparatorForDocument:v13];
  v30 = [v27 indexOfObject:rangeCopy inSortedRange:0 options:v28 usingComparator:{1024, v29}];

  [v27 insertObject:rangeCopy atIndex:v30];
  WeakRetained = objc_loadWeakRetained(&self->_searchableObject);
  [WeakRetained decorateFoundTextRange:rangeCopy inDocument:v11 usingStyle:1];

  self->_awaitingFirstResults = 0;
  [(UITextSearchingFindSession *)self _setNeedsResultCountUpdate];
  [(UITextSearchingFindSession *)self _setReadyToPerformDelayedSearchOperations];
}

- (void)_invalidateFoundRange:(id)range inDocument:(id)document
{
  if (document)
  {
    documentCopy = document;
  }

  else
  {
    documentCopy = @"__singleton__";
  }

  sortedResultsByDocument = self->_sortedResultsByDocument;
  documentCopy2 = document;
  rangeCopy = range;
  v9 = [(NSMutableDictionary *)sortedResultsByDocument objectForKey:documentCopy];
  [v9 removeObject:rangeCopy];

  LODWORD(v9) = [rangeCopy isEqual:self->_highlightedTextRange];
  if (v9)
  {
    [(UITextSearchingFindSession *)self highlightNextResultInDirection:0];
  }

  [(UITextSearchingFindSession *)self _setNeedsResultCountUpdate];
}

- (void)_invalidateAllFoundRanges
{
  [(UITextSearchingFindSession *)self reset];

  [(UITextSearchingFindSession *)self _setNeedsResultCountUpdate];
}

- (void)_finishedSearching
{
  self->_isSearching = 0;
  [(UITextSearchingFindSession *)self _setNeedsResultCountUpdate];

  [(UITextSearchingFindSession *)self _performDelayedSearchOperations];
}

- (id)parentInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_parentInteraction);

  return WeakRetained;
}

- (id)searchableObject
{
  WeakRetained = objc_loadWeakRetained(&self->_searchableObject);

  return WeakRetained;
}

@end