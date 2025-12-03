@interface SLFetchAsynchronousLPMetadataActionResponse
+ (id)responseWithMetadata:(id)metadata;
- (SLFetchAsynchronousLPMetadataActionResponse)initWithBSXPCCoder:(id)coder;
- (SLFetchAsynchronousLPMetadataActionResponse)initWithCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLFetchAsynchronousLPMetadataActionResponse

+ (id)responseWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  response = [self response];
  [response setMetadata:metadataCopy];

  return response;
}

- (SLFetchAsynchronousLPMetadataActionResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SLFetchAsynchronousLPMetadataActionResponse;
  v5 = [(SLShareableContentActionResponse *)&v11 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_metadata);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    metadata = v5->_metadata;
    v5->_metadata = v8;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  metadata = [(SLFetchAsynchronousLPMetadataActionResponse *)self metadata];
  v6 = NSStringFromSelector(sel_metadata);
  [coderCopy encodeObject:metadata forKey:v6];

  v7.receiver = self;
  v7.super_class = SLFetchAsynchronousLPMetadataActionResponse;
  [(SLShareableContentActionResponse *)&v7 encodeWithBSXPCCoder:coderCopy];
}

- (SLFetchAsynchronousLPMetadataActionResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SLFetchAsynchronousLPMetadataActionResponse;
  v5 = [(SLShareableContentActionResponse *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_metadata);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    metadata = v5->_metadata;
    v5->_metadata = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  metadata = [(SLFetchAsynchronousLPMetadataActionResponse *)self metadata];
  v6 = NSStringFromSelector(sel_metadata);
  [coderCopy encodeObject:metadata forKey:v6];

  v7.receiver = self;
  v7.super_class = SLFetchAsynchronousLPMetadataActionResponse;
  [(SLShareableContentActionResponse *)&v7 encodeWithCoder:coderCopy];
}

@end