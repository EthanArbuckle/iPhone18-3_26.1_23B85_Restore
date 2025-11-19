@interface CACContextCluesPresentationManager
- (void)showWithCommands:(id)a3;
@end

@implementation CACContextCluesPresentationManager

- (void)showWithCommands:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__CACContextCluesPresentationManager_showWithCommands___block_invoke;
  v6[3] = &unk_279CECA58;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CACSimpleContentViewManager *)self showViewControllerWithCreationHandler:v6 updateHandler:&__block_literal_global_41];
}

CACContextCluesViewController *__55__CACContextCluesPresentationManager_showWithCommands___block_invoke(uint64_t a1)
{
  v2 = [[CACContextCluesViewController alloc] initWithCommands:*(a1 + 32)];
  [(CACContextCluesViewController *)v2 setDelegate:*(a1 + 40)];

  return v2;
}

@end