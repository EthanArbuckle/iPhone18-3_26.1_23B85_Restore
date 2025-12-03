@interface SBSApplicationShortcutTemplateIcon(ShortcutUIKit)
- (id)_scui_iconImageWithAssetProvider:()ShortcutUIKit;
@end

@implementation SBSApplicationShortcutTemplateIcon(ShortcutUIKit)

- (id)_scui_iconImageWithAssetProvider:()ShortcutUIKit
{
  v4 = a3;
  templateImageName = [self templateImageName];
  v6 = [v4 imageNamed:templateImageName];

  v7 = [v6 imageWithRenderingMode:2];

  return v7;
}

@end