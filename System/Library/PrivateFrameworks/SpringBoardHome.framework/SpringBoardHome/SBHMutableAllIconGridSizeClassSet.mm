@interface SBHMutableAllIconGridSizeClassSet
- (BOOL)containsGridSizeClass:(id)class;
@end

@implementation SBHMutableAllIconGridSizeClassSet

- (BOOL)containsGridSizeClass:(id)class
{
  classCopy = class;
  _removedGridSizeClasses = [(SBHMutableIconGridSizeClassSet *)self _removedGridSizeClasses];
  v6 = [_removedGridSizeClasses containsObject:classCopy];

  return v6 ^ 1;
}

@end