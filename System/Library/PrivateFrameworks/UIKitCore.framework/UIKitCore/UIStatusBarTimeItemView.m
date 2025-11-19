@interface UIStatusBarTimeItemView
+ (const)_cStringFromData:(id *)a3;
@end

@implementation UIStatusBarTimeItemView

+ (const)_cStringFromData:(id *)a3
{
  if (_UIDeviceNativeUserInterfaceIdiom() == 1 && (_UIKitUserDefaults(), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 BOOLForKey:0x1EFB9AA50], v4, (v5 & 1) != 0))
  {
    return a3->var2;
  }

  else
  {
    return a3->var1;
  }
}

@end