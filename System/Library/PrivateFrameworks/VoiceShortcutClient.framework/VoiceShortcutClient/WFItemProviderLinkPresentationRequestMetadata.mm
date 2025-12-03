@interface WFItemProviderLinkPresentationRequestMetadata
- (WFItemProviderLinkPresentationRequestMetadata)initWithCoder:(id)coder;
- (WFItemProviderLinkPresentationRequestMetadata)initWithLinkPresentationMetadata:(id)metadata;
- (id)registeredTypeIdentifiers;
- (void)encodeWithCoder:(id)coder;
- (void)fetchLinkMetadataWithCompletion:(id)completion;
@end

@implementation WFItemProviderLinkPresentationRequestMetadata

- (WFItemProviderLinkPresentationRequestMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  getLPLinkMetadataClass();
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkPresentationMetadata"];

  if (v5)
  {
    self = [(WFItemProviderLinkPresentationRequestMetadata *)self initWithLinkPresentationMetadata:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  linkPresentationMetadata = [(WFItemProviderLinkPresentationRequestMetadata *)self linkPresentationMetadata];
  [coderCopy encodeObject:linkPresentationMetadata forKey:@"linkPresentationMetadata"];
}

- (id)registeredTypeIdentifiers
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = *MEMORY[0x1E696E5C8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (WFItemProviderLinkPresentationRequestMetadata)initWithLinkPresentationMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFItemProviderRequestMetadata.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"linkPresentationMetadata"}];
  }

  v12.receiver = self;
  v12.super_class = WFItemProviderLinkPresentationRequestMetadata;
  v7 = [(WFItemProviderLinkPresentationRequestMetadata *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_linkPresentationMetadata, metadata);
    v9 = v8;
  }

  return v8;
}

- (void)fetchLinkMetadataWithCompletion:(id)completion
{
  completionCopy = completion;
  linkPresentationMetadata = [(WFItemProviderLinkPresentationRequestMetadata *)self linkPresentationMetadata];
  (*(completion + 2))(completionCopy, linkPresentationMetadata, 0);
}

@end