@interface TSPReadOnlyProvidedDataStorage
- (CGDataProvider)newCGDataProvider;
- (CGImageSource)newCGImageSource;
- (TSPReadOnlyProvidedDataStorage)initWithDataRepresentation:(id)representation;
- (id)AVAssetWithOptions:(id)options;
- (id)NSDataWithOptions:(unint64_t)options;
- (id)bookmarkDataWithOptions:(unint64_t)options;
- (void)performIOChannelReadWithAccessor:(id)accessor;
@end

@implementation TSPReadOnlyProvidedDataStorage

- (TSPReadOnlyProvidedDataStorage)initWithDataRepresentation:(id)representation
{
  representationCopy = representation;
  v10.receiver = self;
  v10.super_class = TSPReadOnlyProvidedDataStorage;
  v6 = [(TSPReadOnlyProvidedDataStorage *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataRep, representation);
    v8 = v7;
  }

  return v7;
}

- (id)bookmarkDataWithOptions:(unint64_t)options
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPReadOnlyProvidedDataStorage bookmarkDataWithOptions:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPReadOnlyProvidedDataStorage.mm"];
  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:42 description:@"Can't create a bookmark for read only TSPData backed by NSData"];

  return 0;
}

- (CGDataProvider)newCGDataProvider
{
  cgDataProvider = [(SFUDataRepresentation *)self->_dataRep cgDataProvider];
  if (!cgDataProvider)
  {
    TSULogErrorInFunction();
  }

  return cgDataProvider;
}

- (CGImageSource)newCGImageSource
{
  newCGDataProvider = [(TSPReadOnlyProvidedDataStorage *)self newCGDataProvider];
  v3 = newCGDataProvider;
  if (!newCGDataProvider || (v4 = CGImageSourceCreateWithDataProvider(newCGDataProvider, 0)) == 0)
  {
    TSULogErrorInFunction();
    v4 = 0;
  }

  CGDataProviderRelease(v3);
  return v4;
}

- (id)NSDataWithOptions:(unint64_t)options
{
  data = [MEMORY[0x277CBEB28] data];
  [(SFUDataRepresentation *)self->_dataRep readIntoData:data];

  return data;
}

- (id)AVAssetWithOptions:(id)options
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPReadOnlyProvidedDataStorage AVAssetWithOptions:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPReadOnlyProvidedDataStorage.mm"];
  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:88 description:@"Can't create an AVAsset for read only TSPData backed by NSData"];

  return 0;
}

- (void)performIOChannelReadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPReadOnlyProvidedDataStorage performIOChannelReadWithAccessor:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPReadOnlyProvidedDataStorage.mm"];
  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:122 description:@"need to implement"];

  accessorCopy[2](accessorCopy, 0);
}

@end