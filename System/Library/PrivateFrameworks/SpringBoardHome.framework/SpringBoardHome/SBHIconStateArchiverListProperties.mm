@interface SBHIconStateArchiverListProperties
- (void)setGridSizeClassDomain:(uint64_t)a1;
@end

@implementation SBHIconStateArchiverListProperties

- (void)setGridSizeClassDomain:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

@end