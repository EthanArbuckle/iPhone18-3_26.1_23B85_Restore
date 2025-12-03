@interface UIView(SBHViewDarkeningHelper)
- (SBHViewDarkeningHelper)sbh_darkener;
@end

@implementation UIView(SBHViewDarkeningHelper)

- (SBHViewDarkeningHelper)sbh_darkener
{
  v2 = objc_getAssociatedObject(self, &SBHViewDarkeningHelperKey);
  if (!v2)
  {
    v2 = [[SBHViewDarkeningHelper alloc] initWithView:self];
    objc_setAssociatedObject(self, &SBHViewDarkeningHelperKey, v2, 1);
  }

  return v2;
}

@end