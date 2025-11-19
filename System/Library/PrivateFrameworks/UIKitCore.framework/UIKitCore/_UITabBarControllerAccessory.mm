@interface _UITabBarControllerAccessory
- (int64_t)displayStyle;
@end

@implementation _UITabBarControllerAccessory

- (int64_t)displayStyle
{
  if (self)
  {
    return *(self + 8) == 3;
  }

  return self;
}

@end