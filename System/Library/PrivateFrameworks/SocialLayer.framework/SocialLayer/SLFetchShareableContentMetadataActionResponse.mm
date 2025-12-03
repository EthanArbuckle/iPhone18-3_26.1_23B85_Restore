@interface SLFetchShareableContentMetadataActionResponse
+ (id)responseWithMetadata:(id)metadata initiatorRequest:(id)request;
- (SLFetchShareableContentMetadataActionResponse)initWithBSXPCCoder:(id)coder;
- (SLFetchShareableContentMetadataActionResponse)initWithCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLFetchShareableContentMetadataActionResponse

+ (id)responseWithMetadata:(id)metadata initiatorRequest:(id)request
{
  requestCopy = request;
  metadataCopy = metadata;
  response = [self response];
  [response setMetadata:metadataCopy];

  [response setInitiatorRequest:requestCopy];

  return response;
}

- (SLFetchShareableContentMetadataActionResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SLFetchShareableContentMetadataActionResponse;
  v5 = [(SLShareableContentActionResponse *)&v15 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_metadata);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    metadata = v5->_metadata;
    v5->_metadata = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_initiatorRequest);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    initiatorRequest = v5->_initiatorRequest;
    v5->_initiatorRequest = v12;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  metadata = [(SLFetchShareableContentMetadataActionResponse *)self metadata];
  v6 = NSStringFromSelector(sel_metadata);
  [coderCopy encodeObject:metadata forKey:v6];

  initiatorRequest = [(SLFetchShareableContentMetadataActionResponse *)self initiatorRequest];
  v8 = NSStringFromSelector(sel_initiatorRequest);
  [coderCopy encodeObject:initiatorRequest forKey:v8];

  v9.receiver = self;
  v9.super_class = SLFetchShareableContentMetadataActionResponse;
  [(SLShareableContentActionResponse *)&v9 encodeWithBSXPCCoder:coderCopy];
}

- (SLFetchShareableContentMetadataActionResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SLFetchShareableContentMetadataActionResponse;
  v5 = [(SLShareableContentActionResponse *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_metadata);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    metadata = v5->_metadata;
    v5->_metadata = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_initiatorRequest);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    initiatorRequest = v5->_initiatorRequest;
    v5->_initiatorRequest = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  metadata = [(SLFetchShareableContentMetadataActionResponse *)self metadata];
  v6 = NSStringFromSelector(sel_metadata);
  [coderCopy encodeObject:metadata forKey:v6];

  initiatorRequest = [(SLFetchShareableContentMetadataActionResponse *)self initiatorRequest];
  v8 = NSStringFromSelector(sel_initiatorRequest);
  [coderCopy encodeObject:initiatorRequest forKey:v8];

  v9.receiver = self;
  v9.super_class = SLFetchShareableContentMetadataActionResponse;
  [(SLShareableContentActionResponse *)&v9 encodeWithCoder:coderCopy];
}

@end