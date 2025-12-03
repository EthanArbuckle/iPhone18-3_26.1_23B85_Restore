@interface NSMutableSet(SafariCoreExtras)
- (void)safari_addObjectUnlessNil:()SafariCoreExtras;
@end

@implementation NSMutableSet(SafariCoreExtras)

- (void)safari_addObjectUnlessNil:()SafariCoreExtras
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

@end