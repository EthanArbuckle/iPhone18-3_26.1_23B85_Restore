@interface SHStubbedNetworkRequester
- (SHStubbedNetworkRequester)initWithHTTPResponse:(id)response requestData:(id)data downloadFileURL:(id)l;
- (void)downloadResourceFromRequest:(id)request completionHandler:(id)handler;
- (void)performRequest:(id)request completionHandler:(id)handler;
@end

@implementation SHStubbedNetworkRequester

- (SHStubbedNetworkRequester)initWithHTTPResponse:(id)response requestData:(id)data downloadFileURL:(id)l
{
  responseCopy = response;
  dataCopy = data;
  lCopy = l;
  v15.receiver = self;
  v15.super_class = SHStubbedNetworkRequester;
  v12 = [(SHStubbedNetworkRequester *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestData, data);
    objc_storeStrong(&v13->_downloadFileURL, l);
    objc_storeStrong(&v13->_httpResponse, response);
  }

  return v13;
}

- (void)downloadResourceFromRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  httpResponse = [(SHStubbedNetworkRequester *)self httpResponse];
  downloadFileURL = [(SHStubbedNetworkRequester *)self downloadFileURL];
  (*(handler + 2))(handlerCopy, httpResponse, downloadFileURL, 0);
}

- (void)performRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  httpResponse = [(SHStubbedNetworkRequester *)self httpResponse];
  requestData = [(SHStubbedNetworkRequester *)self requestData];
  (*(handler + 2))(handlerCopy, httpResponse, requestData, 0);
}

@end