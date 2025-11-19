@interface _UIFindNavigatorSearchFieldButton
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
@end

@implementation _UIFindNavigatorSearchFieldButton

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  [(UIButton *)self intrinsicContentSize:a3.width];
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