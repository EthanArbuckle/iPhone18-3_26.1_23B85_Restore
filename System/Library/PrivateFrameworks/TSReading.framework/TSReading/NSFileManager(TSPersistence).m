@interface NSFileManager(TSPersistence)
- (uint64_t)setDefaultFileProtectionForDirectoryPath:()TSPersistence error:;
- (void)assertDefaultFileProtectionAtDocumentURL:()TSPersistence;
@end

@implementation NSFileManager(TSPersistence)

- (uint64_t)setDefaultFileProtectionForDirectoryPath:()TSPersistence error:
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAA00];
  v6 = a3;
  v7 = [v5 defaultManager];
  v11 = *MEMORY[0x277CCA1B0];
  v12[0] = *MEMORY[0x277CCA190];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v7 setAttributes:v8 ofItemAtPath:v6 error:a4];

  return v9;
}

- (void)assertDefaultFileProtectionAtDocumentURL:()TSPersistence
{
  v7 = a3;
  if (([a1 hasAtLeastFileProtection:*MEMORY[0x277CCA1A0] atURL:? recursively:?] & 1) == 0)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(TSPersistence) assertDefaultFileProtectionAtDocumentURL:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/NSFileManager_TSPersistence.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:30 description:{@"Document does not have default file protection set: %@", v7}];
  }
}

@end