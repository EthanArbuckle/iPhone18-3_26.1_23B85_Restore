@interface UIStatusBarLockScreenStyleAttributes
- (BOOL)shouldShowInternalItemType:(int)a3 withScreenCapabilities:(id)a4;
@end

@implementation UIStatusBarLockScreenStyleAttributes

- (BOOL)shouldShowInternalItemType:(int)a3 withScreenCapabilities:(id)a4
{
  if (a3 == 49)
  {
    return [(UIStatusBarStyleAttributes *)self style:*&a3]== 1001;
  }

  v5.receiver = self;
  v5.super_class = UIStatusBarLockScreenStyleAttributes;
  return [(UIStatusBarStyleAttributes *)&v5 shouldShowInternalItemType:*&a3 withScreenCapabilities:a4];
}

@end