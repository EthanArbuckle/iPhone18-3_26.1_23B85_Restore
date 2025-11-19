@interface TSPReadOnlyFileDataStorage
- (BOOL)writeToBundleWriter:(id)a3 preferredFilename:(id)a4 filename:(id *)a5 didCopyDataToBundle:(BOOL *)a6;
- (TSPReadOnlyFileDataStorage)initWithURL:(id)a3;
@end

@implementation TSPReadOnlyFileDataStorage

- (TSPReadOnlyFileDataStorage)initWithURL:(id)a3
{
  v5 = a3;
  if (([v5 isFileURL] & 1) == 0)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPReadOnlyFileDataStorage initWithURL:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPReadOnlyFileDataStorage.mm"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:21 description:@"Expected a file URL"];
  }

  v13.receiver = self;
  v13.super_class = TSPReadOnlyFileDataStorage;
  v9 = [(TSPReadOnlyFileDataStorage *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URL, a3);
    v11 = v10;
  }

  return v10;
}

- (BOOL)writeToBundleWriter:(id)a3 preferredFilename:(id)a4 filename:(id *)a5 didCopyDataToBundle:(BOOL *)a6
{
  v6 = [MEMORY[0x277D6C290] currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPReadOnlyFileDataStorage writeToBundleWriter:preferredFilename:filename:didCopyDataToBundle:]"];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPReadOnlyFileDataStorage.mm"];
  [v6 handleFailureInFunction:v7 file:v8 lineNumber:45 description:@"Cannot save read only TSPData to a document"];

  return 0;
}

@end