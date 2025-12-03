@interface _UIFontLayoutMetrics
- (double)readableWidthForFont:(id)font;
@end

@implementation _UIFontLayoutMetrics

- (double)readableWidthForFont:(id)font
{
  if (font)
  {
    [font readableWidth];
  }

  else
  {
    [off_1E70ECC18 _readableWidth];
  }

  return result;
}

@end