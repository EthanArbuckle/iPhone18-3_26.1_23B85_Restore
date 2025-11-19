@interface _WBSPendingLPLinkMetadataRequest
- (_WBSPendingLPLinkMetadataRequest)initWithRequest:(id)a3 allowDelayedResponse:(BOOL)a4;
@end

@implementation _WBSPendingLPLinkMetadataRequest

- (_WBSPendingLPLinkMetadataRequest)initWithRequest:(id)a3 allowDelayedResponse:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = _WBSPendingLPLinkMetadataRequest;
  v8 = [(_WBSPendingLPLinkMetadataRequest *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_request, a3);
    v9->_allowDelayedResponse = a4;
    v10 = v9;
  }

  return v9;
}

@end