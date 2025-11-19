@interface SHStubbedNetworkRequester
- (SHStubbedNetworkRequester)initWithHTTPResponse:(id)a3 requestData:(id)a4 downloadFileURL:(id)a5;
- (void)downloadResourceFromRequest:(id)a3 completionHandler:(id)a4;
- (void)performRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation SHStubbedNetworkRequester

- (SHStubbedNetworkRequester)initWithHTTPResponse:(id)a3 requestData:(id)a4 downloadFileURL:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SHStubbedNetworkRequester;
  v12 = [(SHStubbedNetworkRequester *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestData, a4);
    objc_storeStrong(&v13->_downloadFileURL, a5);
    objc_storeStrong(&v13->_httpResponse, a3);
  }

  return v13;
}

- (void)downloadResourceFromRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8 = [(SHStubbedNetworkRequester *)self httpResponse];
  v7 = [(SHStubbedNetworkRequester *)self downloadFileURL];
  (*(a4 + 2))(v6, v8, v7, 0);
}

- (void)performRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8 = [(SHStubbedNetworkRequester *)self httpResponse];
  v7 = [(SHStubbedNetworkRequester *)self requestData];
  (*(a4 + 2))(v6, v8, v7, 0);
}

@end