@interface UIWebPDFSearchController
- (BOOL)searching;
- (UIWebPDFSearchController)init;
- (unint64_t)_actualStartingPageIndex;
- (void)_clearSearchQueue;
- (void)cancel;
- (void)dealloc;
- (void)resume;
- (void)search:(id)a3;
- (void)search:(id)a3 hasPartialResults:(id)a4;
- (void)searchDidBegin:(id)a3;
- (void)searchDidFinish:(id)a3;
- (void)searchDidTimeOut:(id)a3;
- (void)searchLimitHit:(id)a3;
- (void)searchWasCancelled:(id)a3;
- (void)setDocumentToSearch:(id)a3;
@end

@implementation UIWebPDFSearchController

- (void)setDocumentToSearch:(id)a3
{
  if (self->_documentToSearch != a3)
  {
    v6 = a3;

    self->_documentToSearch = a3;
    v7 = [(NSOperationQueue *)self->_searchQueue operations];
    documentToSearch = self->_documentToSearch;

    [(NSArray *)v7 makeObjectsPerformSelector:sel_setDocumentToSearch_ withObject:documentToSearch];
  }
}

- (BOOL)searching
{
  v3 = [(NSOperationQueue *)self->_searchQueue operationCount];
  if (v3)
  {
    LOBYTE(v3) = ![(UIWebPDFSearchController *)self paused];
  }

  return v3;
}

- (UIWebPDFSearchController)init
{
  v5.receiver = self;
  v5.super_class = UIWebPDFSearchController;
  v2 = [(UIWebPDFSearchController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIWebPDFSearchController *)v2 setResultLimit:101];
    [(UIWebPDFSearchController *)v3 setDocumentScale:1.0];
  }

  return v3;
}

- (void)dealloc
{
  [(UIWebPDFSearchController *)self cancel];
  [(UIWebPDFSearchController *)self setDocumentToSearch:0];
  [(UIWebPDFSearchController *)self setSearchString:0];
  v3.receiver = self;
  v3.super_class = UIWebPDFSearchController;
  [(UIWebPDFSearchController *)&v3 dealloc];
}

- (unint64_t)_actualStartingPageIndex
{
  pageIndexWhenLimitHit = self->_pageIndexWhenLimitHit;
  result = [(UIWebPDFSearchController *)self startingPageIndex];
  if (pageIndexWhenLimitHit > result)
  {
    return pageIndexWhenLimitHit;
  }

  return result;
}

- (void)search:(id)a3
{
  if (![(NSString *)self->_searchString isEqualToString:?])
  {
    [(UIWebPDFSearchController *)self cancel];

    self->_searchString = a3;
  }

  if (-[UIWebPDFSearchController searchDelegate](self, "searchDelegate") && -[UIWebPDFSearchController documentToSearch](self, "documentToSearch") && [a3 length])
  {
    if (!self->_searchQueue)
    {
      v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      self->_searchQueue = v5;
      [(NSOperationQueue *)v5 setMaxConcurrentOperationCount:1];
    }

    if (!self->_results)
    {
      self->_results = [MEMORY[0x1E695DF70] array];
    }

    v6 = objc_alloc_init(UIWebPDFSearchOperation);
    [(UIWebPDFSearchOperation *)v6 setDocumentToSearch:[(UIWebPDFSearchController *)self documentToSearch]];
    [(UIWebPDFSearchOperation *)v6 setStartingPageIndex:[(UIWebPDFSearchController *)self _actualStartingPageIndex]];
    [(UIWebPDFSearchOperation *)v6 setResultLimit:[(UIWebPDFSearchController *)self resultLimit]];
    [(UIWebPDFSearchOperation *)v6 setNumberOfResultsToSkip:self->_pageIndexWhenLimitHit];
    [(UIWebPDFSearchOperation *)v6 setSearchString:a3];
    [(UIWebPDFSearchOperation *)v6 setSearchDelegate:self];
    [(UIWebPDFSearchController *)self documentScale];
    [(UIWebPDFSearchOperation *)v6 setDocumentScale:?];
    self->_notifiedThatSearchBegin = 0;
    [(NSOperationQueue *)self->_searchQueue addOperation:v6];
  }
}

- (void)_clearSearchQueue
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSOperationQueue *)self->_searchQueue operations];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setSearchDelegate:0];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSOperationQueue *)self->_searchQueue cancelAllOperations];

  self->_searchQueue = 0;
}

- (void)cancel
{
  [(UIWebPDFSearchController *)self _clearSearchQueue];

  self->_results = 0;
}

- (void)resume
{
  [(NSOperationQueue *)self->_searchQueue setSuspended:0];
  searchString = self->_searchString;

  [(UIWebPDFSearchController *)self search:searchString];
}

- (void)searchDidBegin:(id)a3
{
  if (!self->_notifiedThatSearchBegin)
  {
    self->_notifiedThatSearchBegin = 1;
    if (objc_opt_respondsToSelector())
    {
      searchDelegate = self->searchDelegate;

      [(UIWebPDFSearchControllerDelegate *)searchDelegate searchDidBegin:self];
    }
  }
}

- (void)searchDidTimeOut:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    searchDelegate = self->searchDelegate;

    [(UIWebPDFSearchControllerDelegate *)searchDelegate searchDidTimeOut:self];
  }
}

- (void)searchWasCancelled:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    searchDelegate = self->searchDelegate;

    [(UIWebPDFSearchControllerDelegate *)searchDelegate searchWasCancelled:self];
  }
}

- (void)searchLimitHit:(id)a3
{
  self->_pageIndexWhenLimitHit = [a3 currentPageIndex];
  self->_resultIndexWhenLimitHit = [a3 currentPageResultCount];
  if (objc_opt_respondsToSelector())
  {
    searchDelegate = self->searchDelegate;

    [(UIWebPDFSearchControllerDelegate *)searchDelegate searchLimitHit:self];
  }
}

- (void)searchDidFinish:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    [(UIWebPDFSearchControllerDelegate *)self->searchDelegate searchDidFinish:self];
  }

  [(UIWebPDFSearchController *)self _clearSearchQueue];

  [(UIWebPDFSearchController *)self setSearchString:0];
}

- (void)search:(id)a3 hasPartialResults:(id)a4
{
  [(NSMutableArray *)self->_results addObjectsFromArray:a4];
  if (objc_opt_respondsToSelector())
  {
    searchDelegate = self->searchDelegate;

    [(UIWebPDFSearchControllerDelegate *)searchDelegate search:self hasPartialResults:a4];
  }
}

@end