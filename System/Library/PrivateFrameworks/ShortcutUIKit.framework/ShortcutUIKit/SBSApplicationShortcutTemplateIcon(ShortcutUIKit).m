@interface SBSApplicationShortcutTemplateIcon(ShortcutUIKit)
- (id)_scui_iconImageWithAssetProvider:()ShortcutUIKit;
@end

@implementation SBSApplicationShortcutTemplateIcon(ShortcutUIKit)

- (id)_scui_iconImageWithAssetProvider:()ShortcutUIKit
{
  v4 = a3;
  v5 = [a1 templateImageName];
  v6 = [v4 imageNamed:v5];

  v7 = [v6 imageWithRenderingMode:2];

  return v7;
}

@end