@interface _UIStatusBarDataAggregatorUpdate
+ (id)updateWithEntry:(id)a3;
@end

@implementation _UIStatusBarDataAggregatorUpdate

+ (id)updateWithEntry:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setEntry:v4];

  [v5 setAnimated:{+[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled")}];

  return v5;
}

@end