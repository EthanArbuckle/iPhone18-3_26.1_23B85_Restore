@interface TBRemoteFetchResponse
+ (id)responseWithResults:(id)results tiles:(id)tiles error:(id)error;
- (TBRemoteFetchResponse)initWithResults:(id)results tiles:(id)tiles error:(id)error;
@end

@implementation TBRemoteFetchResponse

+ (id)responseWithResults:(id)results tiles:(id)tiles error:(id)error
{
  errorCopy = error;
  tilesCopy = tiles;
  resultsCopy = results;
  v10 = [[TBRemoteFetchResponse alloc] initWithResults:resultsCopy tiles:tilesCopy error:errorCopy];

  return v10;
}

- (TBRemoteFetchResponse)initWithResults:(id)results tiles:(id)tiles error:(id)error
{
  resultsCopy = results;
  tilesCopy = tiles;
  errorCopy = error;
  v18.receiver = self;
  v18.super_class = TBRemoteFetchResponse;
  v11 = [(TBRemoteFetchResponse *)&v18 init];
  results = v11->_results;
  v11->_results = resultsCopy;
  v13 = resultsCopy;

  tiles = v11->_tiles;
  v11->_tiles = tilesCopy;
  v15 = tilesCopy;

  error = v11->_error;
  v11->_error = errorCopy;

  return v11;
}

@end