@interface TSPExternalReferenceDataStorage
- (TSPExternalReferenceDataStorage)initWithBookmarkData:(id)a3 context:(id)a4;
- (TSPExternalReferenceDataStorage)initWithURL:(id)a3;
@end

@implementation TSPExternalReferenceDataStorage

- (TSPExternalReferenceDataStorage)initWithURL:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = TSPExternalReferenceDataStorage;
  v6 = [(TSPExternalReferenceDataStorage *)&v13 init];
  if (v6)
  {
    if ([v5 isFileReferenceURL])
    {
      objc_storeStrong(&v6->_URL, a3);
    }

    else if ([v5 isFileURL])
    {
      v7 = [v5 fileReferenceURL];
      URL = v6->_URL;
      v6->_URL = v7;
    }

    else
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPExternalReferenceDataStorage initWithURL:]"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPExternalReferenceDataStorage.mm"];
      [v9 handleFailureInFunction:v10 file:v11 lineNumber:51 description:@"Bad URL type"];

      v6 = 0;
    }
  }

  return v6;
}

- (TSPExternalReferenceDataStorage)initWithBookmarkData:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = TSPExternalReferenceDataStorage;
  v9 = [(TSPExternalReferenceDataStorage *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bookmarkData, a3);
    objc_storeWeak(&v10->_context, v8);
    v11 = v10;
  }

  return v10;
}

@end