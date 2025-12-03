@interface TSPExternalReferenceDataStorage
- (TSPExternalReferenceDataStorage)initWithBookmarkData:(id)data context:(id)context;
- (TSPExternalReferenceDataStorage)initWithURL:(id)l;
@end

@implementation TSPExternalReferenceDataStorage

- (TSPExternalReferenceDataStorage)initWithURL:(id)l
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = TSPExternalReferenceDataStorage;
  v6 = [(TSPExternalReferenceDataStorage *)&v13 init];
  if (v6)
  {
    if ([lCopy isFileReferenceURL])
    {
      objc_storeStrong(&v6->_URL, l);
    }

    else if ([lCopy isFileURL])
    {
      fileReferenceURL = [lCopy fileReferenceURL];
      URL = v6->_URL;
      v6->_URL = fileReferenceURL;
    }

    else
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPExternalReferenceDataStorage initWithURL:]"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPExternalReferenceDataStorage.mm"];
      [currentHandler handleFailureInFunction:v10 file:v11 lineNumber:51 description:@"Bad URL type"];

      v6 = 0;
    }
  }

  return v6;
}

- (TSPExternalReferenceDataStorage)initWithBookmarkData:(id)data context:(id)context
{
  dataCopy = data;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = TSPExternalReferenceDataStorage;
  v9 = [(TSPExternalReferenceDataStorage *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bookmarkData, data);
    objc_storeWeak(&v10->_context, contextCopy);
    v11 = v10;
  }

  return v10;
}

@end