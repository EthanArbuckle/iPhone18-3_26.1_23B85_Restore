@interface SBHomeScreenFolderDelegate
@end

@implementation SBHomeScreenFolderDelegate

uint64_t __76___SBHomeScreenFolderDelegate_backgroundViewForDockForRootFolderController___block_invoke(uint64_t a1, void *a2)
{
  v2 = dbl_21F8A8020[[a2 userInterfaceStyle] == 2];
  v3 = MEMORY[0x277D75348];

  return [v3 colorWithWhite:v2 alpha:0.6];
}

@end