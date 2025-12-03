@interface SYDocumentFetchResult
- (SYDocumentFetchResult)initWithDocumentId:(id)id fileURL:(id)l;
@end

@implementation SYDocumentFetchResult

- (SYDocumentFetchResult)initWithDocumentId:(id)id fileURL:(id)l
{
  idCopy = id;
  lCopy = l;
  v12.receiver = self;
  v12.super_class = SYDocumentFetchResult;
  v8 = [(SYDocumentFetchResult *)&v12 init];
  if (v8)
  {
    v9 = [idCopy copy];
    documentId = v8->_documentId;
    v8->_documentId = v9;

    objc_storeStrong(&v8->_fileURL, l);
  }

  return v8;
}

@end