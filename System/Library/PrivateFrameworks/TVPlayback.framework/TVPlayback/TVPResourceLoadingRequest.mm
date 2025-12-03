@interface TVPResourceLoadingRequest
- (BOOL)isCancelled;
- (NSDictionary)dictionaryRepresentation;
- (NSNumber)avRequestID;
- (NSURL)URL;
- (TVPResourceLoadingRequest)init;
- (TVPResourceLoadingRequest)initWithAssetResourceLoadingRequest:(id)request;
- (void)finishLoadingWithResponse:(id)response data:(id)data renewalDate:(id)date redirect:(id)redirect;
- (void)finishLoadingWithResponseData:(id)data renewalDate:(id)date keyType:(int64_t)type;
@end

@implementation TVPResourceLoadingRequest

- (TVPResourceLoadingRequest)initWithAssetResourceLoadingRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = TVPResourceLoadingRequest;
  v6 = [(TVPResourceLoadingRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_loadingRequest, request);
  }

  return v7;
}

- (NSURL)URL
{
  loadingRequest = [(TVPResourceLoadingRequest *)self loadingRequest];
  request = [loadingRequest request];
  v4 = [request URL];

  return v4;
}

- (BOOL)isCancelled
{
  loadingRequest = [(TVPResourceLoadingRequest *)self loadingRequest];
  isCancelled = [loadingRequest isCancelled];

  return isCancelled;
}

- (void)finishLoadingWithResponse:(id)response data:(id)data renewalDate:(id)date redirect:(id)redirect
{
  loadingRequest = self->_loadingRequest;
  redirectCopy = redirect;
  dateCopy = date;
  dataCopy = data;
  [(AVAssetResourceLoadingRequest *)loadingRequest setResponse:response];
  [(AVAssetResourceLoadingRequest *)self->_loadingRequest setRedirect:redirectCopy];

  contentInformationRequest = [(AVAssetResourceLoadingRequest *)self->_loadingRequest contentInformationRequest];
  [contentInformationRequest setRenewalDate:dateCopy];

  dataRequest = [(AVAssetResourceLoadingRequest *)self->_loadingRequest dataRequest];
  [dataRequest respondWithData:dataCopy];

  v16 = self->_loadingRequest;

  [(AVAssetResourceLoadingRequest *)v16 finishLoading];
}

- (void)finishLoadingWithResponseData:(id)data renewalDate:(id)date keyType:(int64_t)type
{
  if (type == 1)
  {
    v8 = MEMORY[0x277CE6180];
    goto LABEL_5;
  }

  if (type == 2)
  {
    v8 = MEMORY[0x277CE6188];
LABEL_5:
    v18 = *v8;
    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:
  dateCopy = date;
  dataCopy = data;
  loadingRequest = [(TVPResourceLoadingRequest *)self loadingRequest];
  contentInformationRequest = [loadingRequest contentInformationRequest];
  [contentInformationRequest setContentType:v18];

  loadingRequest2 = [(TVPResourceLoadingRequest *)self loadingRequest];
  contentInformationRequest2 = [loadingRequest2 contentInformationRequest];
  [contentInformationRequest2 setRenewalDate:dateCopy];

  loadingRequest3 = [(TVPResourceLoadingRequest *)self loadingRequest];
  dataRequest = [loadingRequest3 dataRequest];
  [dataRequest respondWithData:dataCopy];

  loadingRequest4 = [(TVPResourceLoadingRequest *)self loadingRequest];
  [loadingRequest4 finishLoading];
}

- (NSNumber)avRequestID
{
  dictionaryRepresentation = [(TVPResourceLoadingRequest *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation tvp_numberForKey:@"FCUP_Response_RequestID"];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  serializableRepresentation = [(AVAssetResourceLoadingRequest *)self->_loadingRequest serializableRepresentation];
  v3 = [serializableRepresentation copy];

  return v3;
}

- (TVPResourceLoadingRequest)init
{
  [(TVPResourceLoadingRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end