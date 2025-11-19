@interface SYDocumentFetchResult
- (SYDocumentFetchResult)initWithDocumentId:(id)a3 fileURL:(id)a4;
@end

@implementation SYDocumentFetchResult

- (SYDocumentFetchResult)initWithDocumentId:(id)a3 fileURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SYDocumentFetchResult;
  v8 = [(SYDocumentFetchResult *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    documentId = v8->_documentId;
    v8->_documentId = v9;

    objc_storeStrong(&v8->_fileURL, a4);
  }

  return v8;
}

@end