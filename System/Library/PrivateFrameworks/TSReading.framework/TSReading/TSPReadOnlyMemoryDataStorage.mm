@interface TSPReadOnlyMemoryDataStorage
- (CGDataProvider)newCGDataProvider;
- (CGImageSource)newCGImageSource;
- (TSPReadOnlyMemoryDataStorage)initWithNSData:(id)data;
- (id)AVAssetWithOptions:(id)options contentTypeUTI:(id)i;
- (id)AVAssetWithOptions:(id)options usingResourceLoaderWithContentTypeUTI:(id)i;
- (id)bookmarkDataWithOptions:(unint64_t)options;
@end

@implementation TSPReadOnlyMemoryDataStorage

- (TSPReadOnlyMemoryDataStorage)initWithNSData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = TSPReadOnlyMemoryDataStorage;
  v6 = [(TSPReadOnlyMemoryDataStorage *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_NSData, data);
    v8 = v7;
  }

  return v7;
}

- (id)bookmarkDataWithOptions:(unint64_t)options
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPReadOnlyMemoryDataStorage bookmarkDataWithOptions:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPReadOnlyMemoryDataStorage.mm"];
  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:34 description:@"Can't create a bookmark for read only TSPData backed by NSData"];

  return 0;
}

- (CGDataProvider)newCGDataProvider
{
  v2 = CGDataProviderCreateWithCFData(self->_NSData);
  if (!v2)
  {
    TSULogErrorInFunction();
  }

  return v2;
}

- (CGImageSource)newCGImageSource
{
  v2 = CGImageSourceCreateWithData(self->_NSData, 0);
  if (!v2)
  {
    TSULogErrorInFunction();
  }

  return v2;
}

- (id)AVAssetWithOptions:(id)options contentTypeUTI:(id)i
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPReadOnlyMemoryDataStorage AVAssetWithOptions:contentTypeUTI:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPReadOnlyMemoryDataStorage.mm"];
  [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:69 description:@"Can't create an AVAsset for read only TSPData backed by NSData"];

  return 0;
}

- (id)AVAssetWithOptions:(id)options usingResourceLoaderWithContentTypeUTI:(id)i
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPReadOnlyMemoryDataStorage AVAssetWithOptions:usingResourceLoaderWithContentTypeUTI:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPReadOnlyMemoryDataStorage.mm"];
  [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:75 description:@"Can't create an AVAsset for read only TSPData backed by NSData"];

  return 0;
}

@end