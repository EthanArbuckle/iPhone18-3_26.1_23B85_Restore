@interface SXDocumentMetadataProvider
- (NSString)language;
- (NSString)title;
- (SXDocumentMetadataProvider)initWithDocumentProvider:(id)a3;
- (SXMetadata)metadata;
@end

@implementation SXDocumentMetadataProvider

- (SXDocumentMetadataProvider)initWithDocumentProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXDocumentMetadataProvider;
  v6 = [(SXDocumentMetadataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentProvider, a3);
  }

  return v7;
}

- (SXMetadata)metadata
{
  v2 = [(SXDocumentMetadataProvider *)self documentProvider];
  v3 = [v2 document];
  v4 = [v3 metadata];

  return v4;
}

- (NSString)title
{
  v2 = [(SXDocumentMetadataProvider *)self documentProvider];
  v3 = [v2 document];
  v4 = [v3 title];

  return v4;
}

- (NSString)language
{
  v2 = [(SXDocumentMetadataProvider *)self documentProvider];
  v3 = [v2 document];
  v4 = [v3 language];

  return v4;
}

@end