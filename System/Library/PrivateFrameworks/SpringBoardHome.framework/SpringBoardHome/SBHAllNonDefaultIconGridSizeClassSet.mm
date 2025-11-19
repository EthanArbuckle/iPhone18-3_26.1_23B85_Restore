@interface SBHAllNonDefaultIconGridSizeClassSet
- (BOOL)containsGridSizeClass:(id)a3;
- (id)allGridSizeClassesInDomain:(id)a3;
@end

@implementation SBHAllNonDefaultIconGridSizeClassSet

- (BOOL)containsGridSizeClass:(id)a3
{
  if (a3)
  {
    return [a3 isEqualToString:@"SBHIconGridSizeClassDefault"] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)allGridSizeClassesInDomain:(id)a3
{
  v3 = [a3 allNonDefaultGridSizeClasses];
  v4 = [v3 allGridSizeClasses];

  return v4;
}

@end