@interface PXUpNextMemoriesGenerationResult
- (PXUpNextMemoriesGenerationResult)initWithMemories:(id)memories debugInfo:(id)info;
@end

@implementation PXUpNextMemoriesGenerationResult

- (PXUpNextMemoriesGenerationResult)initWithMemories:(id)memories debugInfo:(id)info
{
  memoriesCopy = memories;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = PXUpNextMemoriesGenerationResult;
  v9 = [(PXUpNextMemoriesGenerationResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memories, memories);
    objc_storeStrong(&v10->_debugInfo, info);
  }

  return v10;
}

@end