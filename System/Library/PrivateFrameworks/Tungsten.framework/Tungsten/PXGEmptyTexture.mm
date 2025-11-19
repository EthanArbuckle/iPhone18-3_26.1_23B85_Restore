@interface PXGEmptyTexture
- (CGSize)pixelSize;
@end

@implementation PXGEmptyTexture

- (CGSize)pixelSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

@end