@interface SBHIconStateArchiverListProperties
- (void)setGridSizeClassDomain:(uint64_t)domain;
@end

@implementation SBHIconStateArchiverListProperties

- (void)setGridSizeClassDomain:(uint64_t)domain
{
  if (domain)
  {
    objc_storeStrong((domain + 48), a2);
  }
}

@end