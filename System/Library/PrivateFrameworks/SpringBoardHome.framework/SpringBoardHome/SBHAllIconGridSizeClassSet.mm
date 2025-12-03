@interface SBHAllIconGridSizeClassSet
- (id)allGridSizeClassesInDomain:(id)domain;
@end

@implementation SBHAllIconGridSizeClassSet

- (id)allGridSizeClassesInDomain:(id)domain
{
  allGridSizeClasses = [domain allGridSizeClasses];
  v3AllGridSizeClasses = [allGridSizeClasses allGridSizeClasses];

  return v3AllGridSizeClasses;
}

@end