@interface NSMutableAttributedString
@end

@implementation NSMutableAttributedString

uint64_t __92__NSMutableAttributedString_NSMutableAttributedStringKitAdditions__fixFontAttributeInRange___block_invoke()
{
  fixFontAttributeInRange__nonBaseSetBMP = CFUniCharGetBitmapPtrForPlane();
  fixFontAttributeInRange__combiningDataBMP = CFUniCharGetUnicodePropertyDataForPlane();
  fixFontAttributeInRange__controlFormatBMP = CFUniCharGetBitmapPtrForPlane();
  fixFontAttributeInRange__graphemeBMP = CFUniCharGetBitmapPtrForPlane();
  result = MEMORY[0x193AD3A90](0);
  fixFontAttributeInRange__useDecoTypeFontForUrdu = result;
  return result;
}

@end