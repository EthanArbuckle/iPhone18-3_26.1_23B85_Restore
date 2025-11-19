@interface UISegmentedControlCarPlayStyleProvider
- (UIEdgeInsets)alignmentInsetsForControlSize:(int)a3 bounds:(CGRect)a4 traitCollection:(id)a5;
@end

@implementation UISegmentedControlCarPlayStyleProvider

- (UIEdgeInsets)alignmentInsetsForControlSize:(int)a3 bounds:(CGRect)a4 traitCollection:(id)a5
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