@interface UIStatusBarTimeItemView
+ (const)_cStringFromData:(id *)data;
@end

@implementation UIStatusBarTimeItemView

+ (const)_cStringFromData:(id *)data
{
  if (_UIDeviceNativeUserInterfaceIdiom() == 1 && (_UIKitUserDefaults(), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 BOOLForKey:0x1EFB9AA50], v4, (v5 & 1) != 0))
  {
    return data->var2;
  }

  else
  {
    return data->var1;
  }
}

@end