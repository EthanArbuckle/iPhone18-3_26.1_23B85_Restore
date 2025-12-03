@interface TUBatchFetchRequestProcessingResult
- (TUBatchFetchRequestProcessingResult)initWithHandleToFetchRequest:(id)request handlesToBatchFetch:(id)fetch allHandlesFromFetchRequests:(id)requests fetchRequestResults:(id)results;
@end

@implementation TUBatchFetchRequestProcessingResult

- (TUBatchFetchRequestProcessingResult)initWithHandleToFetchRequest:(id)request handlesToBatchFetch:(id)fetch allHandlesFromFetchRequests:(id)requests fetchRequestResults:(id)results
{
  requestCopy = request;
  fetchCopy = fetch;
  requestsCopy = requests;
  resultsCopy = results;
  v18.receiver = self;
  v18.super_class = TUBatchFetchRequestProcessingResult;
  v15 = [(TUBatchFetchRequestProcessingResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_handleToFetchRequest, request);
    objc_storeStrong(&v16->_handlesToBatchFetch, fetch);
    objc_storeStrong(&v16->_allHandlesFromFetchRequests, requests);
    objc_storeStrong(&v16->_fetchRequestResults, results);
  }

  return v16;
}

@end