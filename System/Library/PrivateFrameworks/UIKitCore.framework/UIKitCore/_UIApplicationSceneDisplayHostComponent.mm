@interface _UIApplicationSceneDisplayHostComponent
- (void)setDisplayBasedSafeAreaInsets:(UIEdgeInsets)insets forSettings:(id)settings;
@end

@implementation _UIApplicationSceneDisplayHostComponent

- (void)setDisplayBasedSafeAreaInsets:(UIEdgeInsets)insets forSettings:(id)settings
{
  v4 = MEMORY[0x1E696B098];
  insetsCopy = insets;
  settingsCopy = settings;
  v6 = [v4 valueWithBytes:&insetsCopy objCType:"{UIEdgeInsets=dddd}"];
  [settingsCopy setDisplayBasedSafeAreaInsetsValue:{v6, *&insetsCopy.top, *&insetsCopy.left, *&insetsCopy.bottom, *&insetsCopy.right}];
}

@end