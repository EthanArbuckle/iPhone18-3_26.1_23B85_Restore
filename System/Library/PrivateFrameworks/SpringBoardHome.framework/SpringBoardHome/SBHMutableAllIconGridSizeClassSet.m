@interface SBHMutableAllIconGridSizeClassSet
- (BOOL)containsGridSizeClass:(id)a3;
@end

@implementation SBHMutableAllIconGridSizeClassSet

- (BOOL)containsGridSizeClass:(id)a3
{
  v4 = a3;
  v5 = [(SBHMutableIconGridSizeClassSet *)self _removedGridSizeClasses];
  v6 = [v5 containsObject:v4];

  return v6 ^ 1;
}

@end