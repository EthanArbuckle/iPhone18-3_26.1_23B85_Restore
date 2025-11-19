@interface NSInsertNominalGlyphs
@end

@implementation NSInsertNominalGlyphs

uint64_t ____NSInsertNominalGlyphs_block_invoke()
{
  __NSInsertNominalGlyphs_controlFormatBMP = CFUniCharGetBitmapPtrForPlane();
  __NSInsertNominalGlyphs_nonBaseSetBMP = CFUniCharGetBitmapPtrForPlane();
  __NSInsertNominalGlyphs_bidiPropertyBMP = CFUniCharGetUnicodePropertyDataForPlane();
  result = CFUniCharGetBitmapPtrForPlane();
  __NSInsertNominalGlyphs_graphemeBMP = result;
  return result;
}

@end