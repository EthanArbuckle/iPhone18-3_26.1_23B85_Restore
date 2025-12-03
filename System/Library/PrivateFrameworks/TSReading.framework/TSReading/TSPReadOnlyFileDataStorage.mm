@interface TSPReadOnlyFileDataStorage
- (BOOL)writeToBundleWriter:(id)writer preferredFilename:(id)filename filename:(id *)a5 didCopyDataToBundle:(BOOL *)bundle;
- (TSPReadOnlyFileDataStorage)initWithURL:(id)l;
@end

@implementation TSPReadOnlyFileDataStorage

- (TSPReadOnlyFileDataStorage)initWithURL:(id)l
{
  lCopy = l;
  if (([lCopy isFileURL] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPReadOnlyFileDataStorage initWithURL:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPReadOnlyFileDataStorage.mm"];
    [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:21 description:@"Expected a file URL"];
  }

  v13.receiver = self;
  v13.super_class = TSPReadOnlyFileDataStorage;
  v9 = [(TSPReadOnlyFileDataStorage *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URL, l);
    v11 = v10;
  }

  return v10;
}

- (BOOL)writeToBundleWriter:(id)writer preferredFilename:(id)filename filename:(id *)a5 didCopyDataToBundle:(BOOL *)bundle
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPReadOnlyFileDataStorage writeToBundleWriter:preferredFilename:filename:didCopyDataToBundle:]"];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPReadOnlyFileDataStorage.mm"];
  [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:45 description:@"Cannot save read only TSPData to a document"];

  return 0;
}

@end