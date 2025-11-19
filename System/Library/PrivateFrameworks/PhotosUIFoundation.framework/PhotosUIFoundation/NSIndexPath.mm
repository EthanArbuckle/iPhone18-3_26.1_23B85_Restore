@interface NSIndexPath
@end

@implementation NSIndexPath

void __67__NSIndexPath_PhotosUIFoundation__px_indexPathsForItems_inSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AC88] px_indexPathForItem:a2 inSection:*(a1 + 40)];
  [*(a1 + 32) addObject:v3];
}

@end