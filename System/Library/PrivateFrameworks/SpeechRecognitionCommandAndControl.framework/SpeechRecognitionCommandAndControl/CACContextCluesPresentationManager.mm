@interface CACContextCluesPresentationManager
- (void)showWithCommands:(id)commands;
@end

@implementation CACContextCluesPresentationManager

- (void)showWithCommands:(id)commands
{
  commandsCopy = commands;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__CACContextCluesPresentationManager_showWithCommands___block_invoke;
  v6[3] = &unk_279CECA58;
  v7 = commandsCopy;
  selfCopy = self;
  v5 = commandsCopy;
  [(CACSimpleContentViewManager *)self showViewControllerWithCreationHandler:v6 updateHandler:&__block_literal_global_41];
}

CACContextCluesViewController *__55__CACContextCluesPresentationManager_showWithCommands___block_invoke(uint64_t a1)
{
  v2 = [[CACContextCluesViewController alloc] initWithCommands:*(a1 + 32)];
  [(CACContextCluesViewController *)v2 setDelegate:*(a1 + 40)];

  return v2;
}

@end