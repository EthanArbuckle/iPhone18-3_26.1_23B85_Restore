@interface AppDelegate
- (void)applicationDidFinishLaunching:(id)a3;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(id)a3
{
  v3 = [MEMORY[0x277D28BF0] sharedProvider];
  [v3 rebuildMenuIfNeededForPersona:3];
}

@end