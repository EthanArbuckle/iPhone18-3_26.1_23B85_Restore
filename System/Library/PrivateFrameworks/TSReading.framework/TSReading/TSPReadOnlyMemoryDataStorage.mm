@interface TSPReadOnlyMemoryDataStorage
- (CGDataProvider)newCGDataProvider;
- (CGImageSource)newCGImageSource;
- (TSPReadOnlyMemoryDataStorage)initWithNSData:(id)a3;
- (id)AVAssetWithOptions:(id)a3 contentTypeUTI:(id)a4;
- (id)AVAssetWithOptions:(id)a3 usingResourceLoaderWithContentTypeUTI:(id)a4;
- (id)bookmarkDataWithOptions:(unint64_t)a3;
@end

@implementation TSPReadOnlyMemoryDataStorage

- (TSPReadOnlyMemoryDataStorage)initWithNSData:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TSPReadOnlyMemoryDataStorage;
  v6 = [(TSPReadOnlyMemoryDataStorage *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_NSData, a3);
    v8 = v7;
  }

  return v7;
}

- (id)bookmarkDataWithOptions:(unint64_t)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPReadOnlyMemoryDataStorage bookmarkDataWithOptions:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPReadOnlyMemoryDataStorage.mm"];
  [v3 handleFailureInFunction:v4 file:v5 lineNumber:34 description:@"Can't create a bookmark for read only TSPData backed by NSData"];

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

- (id)AVAssetWithOptions:(id)a3 contentTypeUTI:(id)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPReadOnlyMemoryDataStorage AVAssetWithOptions:contentTypeUTI:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPReadOnlyMemoryDataStorage.mm"];
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:69 description:@"Can't create an AVAsset for read only TSPData backed by NSData"];

  return 0;
}

- (id)AVAssetWithOptions:(id)a3 usingResourceLoaderWithContentTypeUTI:(id)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPReadOnlyMemoryDataStorage AVAssetWithOptions:usingResourceLoaderWithContentTypeUTI:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPReadOnlyMemoryDataStorage.mm"];
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:75 description:@"Can't create an AVAsset for read only TSPData backed by NSData"];

  return 0;
}

@end