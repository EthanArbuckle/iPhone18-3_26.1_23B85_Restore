@interface SBSApplicationShortcutIcon
@end

@implementation SBSApplicationShortcutIcon

void __63__SBSApplicationShortcutIcon_ShortcutUIKit___scui_defaultImage__block_invoke()
{
  v0 = MEMORY[0x277D755B8];
  v4 = ShortcutUIKitBundle();
  v1 = [v0 imageNamed:@"UnreadDot" inBundle:v4 compatibleWithTraitCollection:0];
  v2 = [v1 imageWithRenderingMode:2];
  v3 = _scui_defaultImage___defaultImage;
  _scui_defaultImage___defaultImage = v2;
}

@end