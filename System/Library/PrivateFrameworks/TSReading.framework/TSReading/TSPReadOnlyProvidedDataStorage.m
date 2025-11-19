@interface TSPReadOnlyProvidedDataStorage
- (CGDataProvider)newCGDataProvider;
- (CGImageSource)newCGImageSource;
- (TSPReadOnlyProvidedDataStorage)initWithDataRepresentation:(id)a3;
- (id)AVAssetWithOptions:(id)a3;
- (id)NSDataWithOptions:(unint64_t)a3;
- (id)bookmarkDataWithOptions:(unint64_t)a3;
- (void)performIOChannelReadWithAccessor:(id)a3;
@end

@implementation TSPReadOnlyProvidedDataStorage

- (TSPReadOnlyProvidedDataStorage)initWithDataRepresentation:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TSPReadOnlyProvidedDataStorage;
  v6 = [(TSPReadOnlyProvidedDataStorage *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataRep, a3);
    v8 = v7;
  }

  return v7;
}

- (id)bookmarkDataWithOptions:(unint64_t)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPReadOnlyProvidedDataStorage bookmarkDataWithOptions:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPReadOnlyProvidedDataStorage.mm"];
  [v3 handleFailureInFunction:v4 file:v5 lineNumber:42 description:@"Can't create a bookmark for read only TSPData backed by NSData"];

  return 0;
}

- (CGDataProvider)newCGDataProvider
{
  v2 = [(SFUDataRepresentation *)self->_dataRep cgDataProvider];
  if (!v2)
  {
    TSULogErrorInFunction();
  }

  return v2;
}

- (CGImageSource)newCGImageSource
{
  v2 = [(TSPReadOnlyProvidedDataStorage *)self newCGDataProvider];
  v3 = v2;
  if (!v2 || (v4 = CGImageSourceCreateWithDataProvider(v2, 0)) == 0)
  {
    TSULogErrorInFunction();
    v4 = 0;
  }

  CGDataProviderRelease(v3);
  return v4;
}

- (id)NSDataWithOptions:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEB28] data];
  [(SFUDataRepresentation *)self->_dataRep readIntoData:v4];

  return v4;
}

- (id)AVAssetWithOptions:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPReadOnlyProvidedDataStorage AVAssetWithOptions:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPReadOnlyProvidedDataStorage.mm"];
  [v3 handleFailureInFunction:v4 file:v5 lineNumber:88 description:@"Can't create an AVAsset for read only TSPData backed by NSData"];

  return 0;
}

- (void)performIOChannelReadWithAccessor:(id)a3
{
  v6 = a3;
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPReadOnlyProvidedDataStorage performIOChannelReadWithAccessor:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPReadOnlyProvidedDataStorage.mm"];
  [v3 handleFailureInFunction:v4 file:v5 lineNumber:122 description:@"need to implement"];

  v6[2](v6, 0);
}

@end