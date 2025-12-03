@interface WLKUTSNetworkRequestWrappingOperation
- (WLKUTSNetworkRequestWrappingOperation)initWithRequestProperties:(id)properties underlyingOperation:(id)operation;
- (id)amsUrlResponse;
- (id)data;
- (id)error;
- (id)httpResponse;
- (id)responseDictionary;
- (int64_t)resourceFetchType;
- (int64_t)responseStatusCode;
@end

@implementation WLKUTSNetworkRequestWrappingOperation

- (WLKUTSNetworkRequestWrappingOperation)initWithRequestProperties:(id)properties underlyingOperation:(id)operation
{
  operationCopy = operation;
  v11.receiver = self;
  v11.super_class = WLKUTSNetworkRequestWrappingOperation;
  v8 = [(WLKUTSNetworkRequestOperation *)&v11 initWithRequestProperties:properties];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_underlyingOperation, operation);
    [(WLKUTSNetworkRequestWrappingOperation *)v9 addDependency:operationCopy];
  }

  return v9;
}

- (id)httpResponse
{
  underlyingOperation = [(WLKUTSNetworkRequestWrappingOperation *)self underlyingOperation];
  httpResponse = [underlyingOperation httpResponse];

  return httpResponse;
}

- (int64_t)responseStatusCode
{
  underlyingOperation = [(WLKUTSNetworkRequestWrappingOperation *)self underlyingOperation];
  responseStatusCode = [underlyingOperation responseStatusCode];

  return responseStatusCode;
}

- (id)data
{
  underlyingOperation = [(WLKUTSNetworkRequestWrappingOperation *)self underlyingOperation];
  data = [underlyingOperation data];

  return data;
}

- (id)error
{
  underlyingOperation = [(WLKUTSNetworkRequestWrappingOperation *)self underlyingOperation];
  error = [underlyingOperation error];

  return error;
}

- (int64_t)resourceFetchType
{
  underlyingOperation = [(WLKUTSNetworkRequestWrappingOperation *)self underlyingOperation];
  resourceFetchType = [underlyingOperation resourceFetchType];

  return resourceFetchType;
}

- (id)responseDictionary
{
  underlyingOperation = [(WLKUTSNetworkRequestWrappingOperation *)self underlyingOperation];
  responseDictionary = [underlyingOperation responseDictionary];

  return responseDictionary;
}

- (id)amsUrlResponse
{
  underlyingOperation = [(WLKUTSNetworkRequestWrappingOperation *)self underlyingOperation];
  amsUrlResponse = [underlyingOperation amsUrlResponse];

  return amsUrlResponse;
}

@end