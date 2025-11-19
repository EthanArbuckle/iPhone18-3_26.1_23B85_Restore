@interface SLFetchShareableContentMetadataActionResponse
+ (id)responseWithMetadata:(id)a3 initiatorRequest:(id)a4;
- (SLFetchShareableContentMetadataActionResponse)initWithBSXPCCoder:(id)a3;
- (SLFetchShareableContentMetadataActionResponse)initWithCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLFetchShareableContentMetadataActionResponse

+ (id)responseWithMetadata:(id)a3 initiatorRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 response];
  [v8 setMetadata:v7];

  [v8 setInitiatorRequest:v6];

  return v8;
}

- (SLFetchShareableContentMetadataActionResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SLFetchShareableContentMetadataActionResponse;
  v5 = [(SLShareableContentActionResponse *)&v15 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_metadata);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    metadata = v5->_metadata;
    v5->_metadata = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_initiatorRequest);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    initiatorRequest = v5->_initiatorRequest;
    v5->_initiatorRequest = v12;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLFetchShareableContentMetadataActionResponse *)self metadata];
  v6 = NSStringFromSelector(sel_metadata);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SLFetchShareableContentMetadataActionResponse *)self initiatorRequest];
  v8 = NSStringFromSelector(sel_initiatorRequest);
  [v4 encodeObject:v7 forKey:v8];

  v9.receiver = self;
  v9.super_class = SLFetchShareableContentMetadataActionResponse;
  [(SLShareableContentActionResponse *)&v9 encodeWithBSXPCCoder:v4];
}

- (SLFetchShareableContentMetadataActionResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SLFetchShareableContentMetadataActionResponse;
  v5 = [(SLShareableContentActionResponse *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_metadata);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    metadata = v5->_metadata;
    v5->_metadata = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_initiatorRequest);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    initiatorRequest = v5->_initiatorRequest;
    v5->_initiatorRequest = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLFetchShareableContentMetadataActionResponse *)self metadata];
  v6 = NSStringFromSelector(sel_metadata);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SLFetchShareableContentMetadataActionResponse *)self initiatorRequest];
  v8 = NSStringFromSelector(sel_initiatorRequest);
  [v4 encodeObject:v7 forKey:v8];

  v9.receiver = self;
  v9.super_class = SLFetchShareableContentMetadataActionResponse;
  [(SLShareableContentActionResponse *)&v9 encodeWithCoder:v4];
}

@end