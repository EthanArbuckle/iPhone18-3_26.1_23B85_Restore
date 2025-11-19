@interface SLFetchAsynchronousLPMetadataActionResponse
+ (id)responseWithMetadata:(id)a3;
- (SLFetchAsynchronousLPMetadataActionResponse)initWithBSXPCCoder:(id)a3;
- (SLFetchAsynchronousLPMetadataActionResponse)initWithCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLFetchAsynchronousLPMetadataActionResponse

+ (id)responseWithMetadata:(id)a3
{
  v4 = a3;
  v5 = [a1 response];
  [v5 setMetadata:v4];

  return v5;
}

- (SLFetchAsynchronousLPMetadataActionResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SLFetchAsynchronousLPMetadataActionResponse;
  v5 = [(SLShareableContentActionResponse *)&v11 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_metadata);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    metadata = v5->_metadata;
    v5->_metadata = v8;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLFetchAsynchronousLPMetadataActionResponse *)self metadata];
  v6 = NSStringFromSelector(sel_metadata);
  [v4 encodeObject:v5 forKey:v6];

  v7.receiver = self;
  v7.super_class = SLFetchAsynchronousLPMetadataActionResponse;
  [(SLShareableContentActionResponse *)&v7 encodeWithBSXPCCoder:v4];
}

- (SLFetchAsynchronousLPMetadataActionResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SLFetchAsynchronousLPMetadataActionResponse;
  v5 = [(SLShareableContentActionResponse *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_metadata);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    metadata = v5->_metadata;
    v5->_metadata = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLFetchAsynchronousLPMetadataActionResponse *)self metadata];
  v6 = NSStringFromSelector(sel_metadata);
  [v4 encodeObject:v5 forKey:v6];

  v7.receiver = self;
  v7.super_class = SLFetchAsynchronousLPMetadataActionResponse;
  [(SLShareableContentActionResponse *)&v7 encodeWithCoder:v4];
}

@end