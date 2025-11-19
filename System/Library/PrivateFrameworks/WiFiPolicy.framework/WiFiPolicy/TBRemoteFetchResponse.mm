@interface TBRemoteFetchResponse
+ (id)responseWithResults:(id)a3 tiles:(id)a4 error:(id)a5;
- (TBRemoteFetchResponse)initWithResults:(id)a3 tiles:(id)a4 error:(id)a5;
@end

@implementation TBRemoteFetchResponse

+ (id)responseWithResults:(id)a3 tiles:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[TBRemoteFetchResponse alloc] initWithResults:v9 tiles:v8 error:v7];

  return v10;
}

- (TBRemoteFetchResponse)initWithResults:(id)a3 tiles:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = TBRemoteFetchResponse;
  v11 = [(TBRemoteFetchResponse *)&v18 init];
  results = v11->_results;
  v11->_results = v8;
  v13 = v8;

  tiles = v11->_tiles;
  v11->_tiles = v9;
  v15 = v9;

  error = v11->_error;
  v11->_error = v10;

  return v11;
}

@end