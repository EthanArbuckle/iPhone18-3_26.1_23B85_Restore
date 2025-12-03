@interface SearchUIToggleWatchListStatusHandler
+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUIToggleWatchListStatusHandler

+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment
{
  modelCopy = model;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [modelCopy hasLoaded])
  {
    v5 = objc_opt_new();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  commandCopy = command;
  environmentCopy = environment;
  watchListDelegate = [environmentCopy watchListDelegate];
  objc_initWeak(&location, watchListDelegate);

  v9 = objc_loadWeakRetained(&location);
  watchListState = [v9 watchListState];

  if (watchListState)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__SearchUIToggleWatchListStatusHandler_performCommand_triggerEvent_environment___block_invoke;
    v19[3] = &unk_1E85B3C58;
    v11 = &v21;
    objc_copyWeak(&v21, &location);
    v20 = watchListState;
    [v20 toggleStateWithCompletion:v19];
    v12 = &v20;
  }

  else
  {
    shouldAddToWatchList = [commandCopy shouldAddToWatchList];
    watchListItem = [commandCopy watchListItem];
    watchListIdentifier = [watchListItem watchListIdentifier];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __80__SearchUIToggleWatchListStatusHandler_performCommand_triggerEvent_environment___block_invoke_2;
    v16[3] = &unk_1E85B3C80;
    v11 = &v18;
    objc_copyWeak(&v18, &location);
    v17 = 0;
    [SearchUIWatchListUtilities updateStatusIsInWatchList:shouldAddToWatchList watchListItemWithIdentifier:watchListIdentifier completion:v16];
    v12 = &v17;
  }

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __80__SearchUIToggleWatchListStatusHandler_performCommand_triggerEvent_environment___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained watchListStateDidChange:*(a1 + 32)];
}

void __80__SearchUIToggleWatchListStatusHandler_performCommand_triggerEvent_environment___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained watchListStateDidChange:*(a1 + 32)];
}

@end