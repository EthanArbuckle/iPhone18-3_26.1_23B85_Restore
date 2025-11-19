@interface NSUltraFastLineBreakFinder
@end

@implementation NSUltraFastLineBreakFinder

uint64_t ____NSUltraFastLineBreakFinder_block_invoke()
{
  __NSUltraFastLineBreakFinder_strongRightBMP = CFUniCharGetBitmapPtrForPlane();
  __NSUltraFastLineBreakFinder_nonBaseBMP = CFUniCharGetBitmapPtrForPlane();
  __NSUltraFastLineBreakFinder_alphaNumericBMP = CFUniCharGetBitmapPtrForPlane();
  __NSUltraFastLineBreakFinder_symbolBMP = CFUniCharGetBitmapPtrForPlane();
  result = CFUniCharGetBitmapPtrForPlane();
  __NSUltraFastLineBreakFinder_punctuationBMP = result;
  return result;
}

@end