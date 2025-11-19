@interface PXUpNextMemoriesGenerationResult
- (PXUpNextMemoriesGenerationResult)initWithMemories:(id)a3 debugInfo:(id)a4;
@end

@implementation PXUpNextMemoriesGenerationResult

- (PXUpNextMemoriesGenerationResult)initWithMemories:(id)a3 debugInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXUpNextMemoriesGenerationResult;
  v9 = [(PXUpNextMemoriesGenerationResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memories, a3);
    objc_storeStrong(&v10->_debugInfo, a4);
  }

  return v10;
}

@end