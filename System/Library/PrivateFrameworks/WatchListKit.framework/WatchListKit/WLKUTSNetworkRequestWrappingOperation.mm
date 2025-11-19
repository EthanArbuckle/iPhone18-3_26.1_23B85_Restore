@interface WLKUTSNetworkRequestWrappingOperation
- (WLKUTSNetworkRequestWrappingOperation)initWithRequestProperties:(id)a3 underlyingOperation:(id)a4;
- (id)amsUrlResponse;
- (id)data;
- (id)error;
- (id)httpResponse;
- (id)responseDictionary;
- (int64_t)resourceFetchType;
- (int64_t)responseStatusCode;
@end

@implementation WLKUTSNetworkRequestWrappingOperation

- (WLKUTSNetworkRequestWrappingOperation)initWithRequestProperties:(id)a3 underlyingOperation:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = WLKUTSNetworkRequestWrappingOperation;
  v8 = [(WLKUTSNetworkRequestOperation *)&v11 initWithRequestProperties:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_underlyingOperation, a4);
    [(WLKUTSNetworkRequestWrappingOperation *)v9 addDependency:v7];
  }

  return v9;
}

- (id)httpResponse
{
  v2 = [(WLKUTSNetworkRequestWrappingOperation *)self underlyingOperation];
  v3 = [v2 httpResponse];

  return v3;
}

- (int64_t)responseStatusCode
{
  v2 = [(WLKUTSNetworkRequestWrappingOperation *)self underlyingOperation];
  v3 = [v2 responseStatusCode];

  return v3;
}

- (id)data
{
  v2 = [(WLKUTSNetworkRequestWrappingOperation *)self underlyingOperation];
  v3 = [v2 data];

  return v3;
}

- (id)error
{
  v2 = [(WLKUTSNetworkRequestWrappingOperation *)self underlyingOperation];
  v3 = [v2 error];

  return v3;
}

- (int64_t)resourceFetchType
{
  v2 = [(WLKUTSNetworkRequestWrappingOperation *)self underlyingOperation];
  v3 = [v2 resourceFetchType];

  return v3;
}

- (id)responseDictionary
{
  v2 = [(WLKUTSNetworkRequestWrappingOperation *)self underlyingOperation];
  v3 = [v2 responseDictionary];

  return v3;
}

- (id)amsUrlResponse
{
  v2 = [(WLKUTSNetworkRequestWrappingOperation *)self underlyingOperation];
  v3 = [v2 amsUrlResponse];

  return v3;
}

@end