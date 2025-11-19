@interface SBSApplicationShortcutSystemPrivateIcon(SBHAdditions)
- (id)sbh_systemImage;
@end

@implementation SBSApplicationShortcutSystemPrivateIcon(SBHAdditions)

- (id)sbh_systemImage
{
  v1 = MEMORY[0x1E69DCAB8];
  v2 = [a1 systemImageName];
  v3 = [v1 _systemImageNamed:v2];

  return v3;
}

@end