@interface SBSApplicationShortcutSystemIcon
@end

@implementation SBSApplicationShortcutSystemIcon

void __66__SBSApplicationShortcutSystemIcon_SBHAdditions__sbh_defaultImage__block_invoke()
{
  v0 = MEMORY[0x1E69DCAB8];
  v3 = SBHBundle();
  v1 = [v0 imageNamed:@"SBSApplicationShortcutSystemIcon_UnreadDot" inBundle:v3 compatibleWithTraitCollection:0];
  v2 = sbh_defaultImage___defaultImage;
  sbh_defaultImage___defaultImage = v1;
}

@end