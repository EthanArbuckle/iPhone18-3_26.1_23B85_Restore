@interface UISApplicationSupportDisplayEdgeInsetsWrapper(UIEdgeInsets)
- (double)edgeInsets;
@end

@implementation UISApplicationSupportDisplayEdgeInsetsWrapper(UIEdgeInsets)

- (double)edgeInsets
{
  [a1 topInset];
  v3 = v2;
  [a1 leftInset];
  [a1 bottomInset];
  [a1 rightInset];
  return v3;
}

@end