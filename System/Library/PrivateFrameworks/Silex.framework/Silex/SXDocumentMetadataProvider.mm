@interface SXDocumentMetadataProvider
- (NSString)language;
- (NSString)title;
- (SXDocumentMetadataProvider)initWithDocumentProvider:(id)provider;
- (SXMetadata)metadata;
@end

@implementation SXDocumentMetadataProvider

- (SXDocumentMetadataProvider)initWithDocumentProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SXDocumentMetadataProvider;
  v6 = [(SXDocumentMetadataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentProvider, provider);
  }

  return v7;
}

- (SXMetadata)metadata
{
  documentProvider = [(SXDocumentMetadataProvider *)self documentProvider];
  document = [documentProvider document];
  metadata = [document metadata];

  return metadata;
}

- (NSString)title
{
  documentProvider = [(SXDocumentMetadataProvider *)self documentProvider];
  document = [documentProvider document];
  title = [document title];

  return title;
}

- (NSString)language
{
  documentProvider = [(SXDocumentMetadataProvider *)self documentProvider];
  document = [documentProvider document];
  language = [document language];

  return language;
}

@end