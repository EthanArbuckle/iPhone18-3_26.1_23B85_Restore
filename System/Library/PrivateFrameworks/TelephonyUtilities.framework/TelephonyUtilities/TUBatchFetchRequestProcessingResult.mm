@interface TUBatchFetchRequestProcessingResult
- (TUBatchFetchRequestProcessingResult)initWithHandleToFetchRequest:(id)a3 handlesToBatchFetch:(id)a4 allHandlesFromFetchRequests:(id)a5 fetchRequestResults:(id)a6;
@end

@implementation TUBatchFetchRequestProcessingResult

- (TUBatchFetchRequestProcessingResult)initWithHandleToFetchRequest:(id)a3 handlesToBatchFetch:(id)a4 allHandlesFromFetchRequests:(id)a5 fetchRequestResults:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = TUBatchFetchRequestProcessingResult;
  v15 = [(TUBatchFetchRequestProcessingResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_handleToFetchRequest, a3);
    objc_storeStrong(&v16->_handlesToBatchFetch, a4);
    objc_storeStrong(&v16->_allHandlesFromFetchRequests, a5);
    objc_storeStrong(&v16->_fetchRequestResults, a6);
  }

  return v16;
}

@end