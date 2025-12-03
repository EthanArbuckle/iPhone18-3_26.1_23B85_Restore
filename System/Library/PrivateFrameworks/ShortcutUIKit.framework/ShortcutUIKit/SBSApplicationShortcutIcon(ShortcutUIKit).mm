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
  _scui_defaultImage = [self _scui_iconImageWithAssetProvider:?];
  if (!_scui_defaultImage)
  {
    _scui_defaultImage = [objc_opt_class() _scui_defaultImage];
  }

  return _scui_defaultImage;
}

@end