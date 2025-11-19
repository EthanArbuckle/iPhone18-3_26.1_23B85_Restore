@interface PXStoryIdentifierFromClipLayouts
@end

@implementation PXStoryIdentifierFromClipLayouts

id ___PXStoryIdentifierFromClipLayouts_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a2 clip];
  v4 = [v2 stringWithFormat:@"%ld", objc_msgSend(v3, "identifier")];

  return v4;
}

@end