@interface SPSafariObserver
- (SPSafariObserver)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation SPSafariObserver

- (SPSafariObserver)init
{
  v5.receiver = self;
  v5.super_class = SPSafariObserver;
  v2 = [(SPSafariObserver *)&v5 init];
  if (v2)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
      [mEMORY[0x277CDB8A8] reloadSearchEngines];
    }

    else
    {
      dispatch_sync(MEMORY[0x277D85CD0], &__block_literal_global_8);
    }
  }

  return v2;
}

void __24__SPSafariObserver_init__block_invoke()
{
  v0 = [MEMORY[0x277CDB8A8] sharedInstance];
  [v0 reloadSearchEngines];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v6 = *MEMORY[0x277CCA300];
  changeCopy = change;
  v9 = [changeCopy objectForKeyedSubscript:v6];
  v8 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

  if (v9 | v8 && ([v9 isEqual:v8] & 1) == 0)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_3);
  }
}

void __67__SPSafariObserver_observeValueForKeyPath_ofObject_change_context___block_invoke()
{
  v0 = [MEMORY[0x277CDB8A8] sharedInstance];
  [v0 reloadSearchEngines];
}

@end