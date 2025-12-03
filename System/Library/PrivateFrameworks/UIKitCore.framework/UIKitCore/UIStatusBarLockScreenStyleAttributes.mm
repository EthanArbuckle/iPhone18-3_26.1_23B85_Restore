@interface UIStatusBarLockScreenStyleAttributes
- (BOOL)shouldShowInternalItemType:(int)type withScreenCapabilities:(id)capabilities;
@end

@implementation UIStatusBarLockScreenStyleAttributes

- (BOOL)shouldShowInternalItemType:(int)type withScreenCapabilities:(id)capabilities
{
  if (type == 49)
  {
    return [(UIStatusBarStyleAttributes *)self style:*&type]== 1001;
  }

  v5.receiver = self;
  v5.super_class = UIStatusBarLockScreenStyleAttributes;
  return [(UIStatusBarStyleAttributes *)&v5 shouldShowInternalItemType:*&type withScreenCapabilities:capabilities];
}

@end