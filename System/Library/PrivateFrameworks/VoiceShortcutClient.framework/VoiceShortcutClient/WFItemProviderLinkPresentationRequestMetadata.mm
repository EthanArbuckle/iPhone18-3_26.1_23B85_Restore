@interface WFItemProviderLinkPresentationRequestMetadata
- (WFItemProviderLinkPresentationRequestMetadata)initWithCoder:(id)a3;
- (WFItemProviderLinkPresentationRequestMetadata)initWithLinkPresentationMetadata:(id)a3;
- (id)registeredTypeIdentifiers;
- (void)encodeWithCoder:(id)a3;
- (void)fetchLinkMetadataWithCompletion:(id)a3;
@end

@implementation WFItemProviderLinkPresentationRequestMetadata

- (WFItemProviderLinkPresentationRequestMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  getLPLinkMetadataClass();
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkPresentationMetadata"];

  if (v5)
  {
    self = [(WFItemProviderLinkPresentationRequestMetadata *)self initWithLinkPresentationMetadata:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFItemProviderLinkPresentationRequestMetadata *)self linkPresentationMetadata];
  [v4 encodeObject:v5 forKey:@"linkPresentationMetadata"];
}

- (id)registeredTypeIdentifiers
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = *MEMORY[0x1E696E5C8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (WFItemProviderLinkPresentationRequestMetadata)initWithLinkPresentationMetadata:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFItemProviderRequestMetadata.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"linkPresentationMetadata"}];
  }

  v12.receiver = self;
  v12.super_class = WFItemProviderLinkPresentationRequestMetadata;
  v7 = [(WFItemProviderLinkPresentationRequestMetadata *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_linkPresentationMetadata, a3);
    v9 = v8;
  }

  return v8;
}

- (void)fetchLinkMetadataWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(WFItemProviderLinkPresentationRequestMetadata *)self linkPresentationMetadata];
  (*(a3 + 2))(v5, v6, 0);
}

@end