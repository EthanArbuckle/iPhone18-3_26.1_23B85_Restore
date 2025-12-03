@interface _UIFindNavigatorSearchFieldButton
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
@end

@implementation _UIFindNavigatorSearchFieldButton

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  [(UIButton *)self intrinsicContentSize:size.width];
  v7 = v6;
  v9 = v8;
  if ([(_UIFindNavigatorSearchFieldButton *)self usesSquareIntrinsicSize])
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end