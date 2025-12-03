@interface SBSApplicationShortcutSystemPrivateIcon(SBHAdditions)
- (id)sbh_systemImage;
@end

@implementation SBSApplicationShortcutSystemPrivateIcon(SBHAdditions)

- (id)sbh_systemImage
{
  v1 = MEMORY[0x1E69DCAB8];
  systemImageName = [self systemImageName];
  v3 = [v1 _systemImageNamed:systemImageName];

  return v3;
}

@end