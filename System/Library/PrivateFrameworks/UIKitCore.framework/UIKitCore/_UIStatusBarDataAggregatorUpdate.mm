@interface _UIStatusBarDataAggregatorUpdate
+ (id)updateWithEntry:(id)entry;
@end

@implementation _UIStatusBarDataAggregatorUpdate

+ (id)updateWithEntry:(id)entry
{
  entryCopy = entry;
  v5 = objc_alloc_init(self);
  [v5 setEntry:entryCopy];

  [v5 setAnimated:{+[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled")}];

  return v5;
}

@end