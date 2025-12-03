@interface PUIColorWell
- (CGSize)intrinsicContentSize;
@end

@implementation PUIColorWell

- (CGSize)intrinsicContentSize
{
  selectedColor = [(UIColorWell *)self selectedColor];

  v3 = 44.0;
  if (!selectedColor)
  {
    v3 = 34.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

@end