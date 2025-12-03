@interface UISegmentedControlCarPlayStyleProvider
- (UIEdgeInsets)alignmentInsetsForControlSize:(int)size bounds:(CGRect)bounds traitCollection:(id)collection;
@end

@implementation UISegmentedControlCarPlayStyleProvider

- (UIEdgeInsets)alignmentInsetsForControlSize:(int)size bounds:(CGRect)bounds traitCollection:(id)collection
{
  v5 = -4.0;
  v6 = 0.0;
  v7 = -4.0;
  v8 = 0.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

@end