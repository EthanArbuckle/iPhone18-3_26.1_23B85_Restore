@interface SBSApplicationShortcutIcon(ShortcutUIKit)
+ (id)_scui_defaultImage;
- (id)scui_iconImageWithAssetProvider:()ShortcutUIKit;
@end

@implementation SBSApplicationShortcutIcon(ShortcutUIKit)

+ (id)_scui_defaultImage
{
  if (_scui_defaultImage_onceToken != -1)
  {
    +[SBSApplicationShortcutIcon(ShortcutUIKit) _scui_defaultImage];
  }

  v1 = _scui_defaultImage___defaultImage;

  return v1;
}

- (id)scui_iconImageWithAssetProvider:()ShortcutUIKit
{
  v1 = [a1 _scui_iconImageWithAssetProvider:?];
  if (!v1)
  {
    v1 = [objc_opt_class() _scui_defaultImage];
  }

  return v1;
}

@end