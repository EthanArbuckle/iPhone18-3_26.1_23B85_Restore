@interface _WBSPendingLPLinkMetadataRequest
- (_WBSPendingLPLinkMetadataRequest)initWithRequest:(id)request allowDelayedResponse:(BOOL)response;
@end

@implementation _WBSPendingLPLinkMetadataRequest

- (_WBSPendingLPLinkMetadataRequest)initWithRequest:(id)request allowDelayedResponse:(BOOL)response
{
  requestCopy = request;
  v12.receiver = self;
  v12.super_class = _WBSPendingLPLinkMetadataRequest;
  v8 = [(_WBSPendingLPLinkMetadataRequest *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_request, request);
    v9->_allowDelayedResponse = response;
    v10 = v9;
  }

  return v9;
}

@end