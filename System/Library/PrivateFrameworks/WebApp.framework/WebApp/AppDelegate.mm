@interface AppDelegate
- (void)applicationDidFinishLaunching:(id)launching;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(id)launching
{
  mEMORY[0x277D28BF0] = [MEMORY[0x277D28BF0] sharedProvider];
  [mEMORY[0x277D28BF0] rebuildMenuIfNeededForPersona:3];
}

@end