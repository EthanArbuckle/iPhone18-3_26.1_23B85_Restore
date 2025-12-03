@interface SBHAllNonDefaultIconGridSizeClassSet
- (BOOL)containsGridSizeClass:(id)class;
- (id)allGridSizeClassesInDomain:(id)domain;
@end

@implementation SBHAllNonDefaultIconGridSizeClassSet

- (BOOL)containsGridSizeClass:(id)class
{
  if (class)
  {
    return [class isEqualToString:@"SBHIconGridSizeClassDefault"] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)allGridSizeClassesInDomain:(id)domain
{
  allNonDefaultGridSizeClasses = [domain allNonDefaultGridSizeClasses];
  allGridSizeClasses = [allNonDefaultGridSizeClasses allGridSizeClasses];

  return allGridSizeClasses;
}

@end