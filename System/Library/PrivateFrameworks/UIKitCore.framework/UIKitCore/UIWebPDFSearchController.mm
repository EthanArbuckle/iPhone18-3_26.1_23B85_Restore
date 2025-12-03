@interface UIWebPDFSearchController
- (BOOL)searching;
- (UIWebPDFSearchController)init;
- (unint64_t)_actualStartingPageIndex;
- (void)_clearSearchQueue;
- (void)cancel;
- (void)dealloc;
- (void)resume;
- (void)search:(id)search;
- (void)search:(id)search hasPartialResults:(id)results;
- (void)searchDidBegin:(id)begin;
- (void)searchDidFinish:(id)finish;
- (void)searchDidTimeOut:(id)out;
- (void)searchLimitHit:(id)hit;
- (void)searchWasCancelled:(id)cancelled;
- (void)setDocumentToSearch:(id)search;
@end

@implementation UIWebPDFSearchController

- (void)setDocumentToSearch:(id)search
{
  if (self->_documentToSearch != search)
  {
    searchCopy = search;

    self->_documentToSearch = search;
    operations = [(NSOperationQueue *)self->_searchQueue operations];
    documentToSearch = self->_documentToSearch;

    [(NSArray *)operations makeObjectsPerformSelector:sel_setDocumentToSearch_ withObject:documentToSearch];
  }
}

- (BOOL)searching
{
  operationCount = [(NSOperationQueue *)self->_searchQueue operationCount];
  if (operationCount)
  {
    LOBYTE(operationCount) = ![(UIWebPDFSearchController *)self paused];
  }

  return operationCount;
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

- (void)search:(id)search
{
  if (![(NSString *)self->_searchString isEqualToString:?])
  {
    [(UIWebPDFSearchController *)self cancel];

    self->_searchString = search;
  }

  if (-[UIWebPDFSearchController searchDelegate](self, "searchDelegate") && -[UIWebPDFSearchController documentToSearch](self, "documentToSearch") && [search length])
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
    [(UIWebPDFSearchOperation *)v6 setSearchString:search];
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
  operations = [(NSOperationQueue *)self->_searchQueue operations];
  v4 = [(NSArray *)operations countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(operations);
        }

        [*(*(&v8 + 1) + 8 * v7++) setSearchDelegate:0];
      }

      while (v5 != v7);
      v5 = [(NSArray *)operations countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)searchDidBegin:(id)begin
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

- (void)searchDidTimeOut:(id)out
{
  if (objc_opt_respondsToSelector())
  {
    searchDelegate = self->searchDelegate;

    [(UIWebPDFSearchControllerDelegate *)searchDelegate searchDidTimeOut:self];
  }
}

- (void)searchWasCancelled:(id)cancelled
{
  if (objc_opt_respondsToSelector())
  {
    searchDelegate = self->searchDelegate;

    [(UIWebPDFSearchControllerDelegate *)searchDelegate searchWasCancelled:self];
  }
}

- (void)searchLimitHit:(id)hit
{
  self->_pageIndexWhenLimitHit = [hit currentPageIndex];
  self->_resultIndexWhenLimitHit = [hit currentPageResultCount];
  if (objc_opt_respondsToSelector())
  {
    searchDelegate = self->searchDelegate;

    [(UIWebPDFSearchControllerDelegate *)searchDelegate searchLimitHit:self];
  }
}

- (void)searchDidFinish:(id)finish
{
  if (objc_opt_respondsToSelector())
  {
    [(UIWebPDFSearchControllerDelegate *)self->searchDelegate searchDidFinish:self];
  }

  [(UIWebPDFSearchController *)self _clearSearchQueue];

  [(UIWebPDFSearchController *)self setSearchString:0];
}

- (void)search:(id)search hasPartialResults:(id)results
{
  [(NSMutableArray *)self->_results addObjectsFromArray:results];
  if (objc_opt_respondsToSelector())
  {
    searchDelegate = self->searchDelegate;

    [(UIWebPDFSearchControllerDelegate *)searchDelegate search:self hasPartialResults:results];
  }
}

@end