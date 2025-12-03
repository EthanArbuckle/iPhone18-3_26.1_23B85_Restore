@interface UISApplicationSupportDisplayEdgeInsetsWrapper(UIEdgeInsets)
- (double)edgeInsets;
@end

@implementation UISApplicationSupportDisplayEdgeInsetsWrapper(UIEdgeInsets)

- (double)edgeInsets
{
  [self topInset];
  v3 = v2;
  [self leftInset];
  [self bottomInset];
  [self rightInset];
  return v3;
}

@end