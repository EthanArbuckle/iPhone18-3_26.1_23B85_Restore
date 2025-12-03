@interface SearchUICommandButton
- (SearchUICommandButton)initWithWatchListState:(id)state;
- (void)updateStateIfNecessary;
- (void)watchListStateDidChange:(id)change;
@end

@implementation SearchUICommandButton

- (SearchUICommandButton)initWithWatchListState:(id)state
{
  stateCopy = state;
  v12.receiver = self;
  v12.super_class = SearchUICommandButton;
  v5 = [(TLKTextButton *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(SearchUICommandButton *)v5 setWatchListState:stateCopy];
    [(SearchUICommandButton *)v6 updateStateIfNecessary];
    tlkImageView = [(TLKTextButton *)v6 tlkImageView];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__SearchUICommandButton_initWithWatchListState___block_invoke;
    v10[3] = &unk_1E85B24C8;
    v11 = tlkImageView;
    v8 = tlkImageView;
    [v8 performBatchUpdates:v10];
  }

  return v6;
}

uint64_t __48__SearchUICommandButton_initWithWatchListState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setProminence:0];
  v2 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
  [*(a1 + 32) setSymbolFont:v2];

  [*(a1 + 32) setSymbolWeight:7];
  v3 = *(a1 + 32);

  return [v3 setSymbolScale:3];
}

- (void)watchListStateDidChange:(id)change
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__SearchUICommandButton_watchListStateDidChange___block_invoke;
  v3[3] = &unk_1E85B24C8;
  v3[4] = self;
  [SearchUIUtilities dispatchMainIfNecessary:v3];
}

- (void)updateStateIfNecessary
{
  watchListState = [(SearchUICommandButton *)self watchListState];

  if (watchListState)
  {
    watchListState2 = [(SearchUICommandButton *)self watchListState];
    isWatchListed = [watchListState2 isWatchListed];
    v6 = @"plus";
    if (isWatchListed)
    {
      v6 = @"checkmark";
    }

    v7 = v6;

    v8 = objc_alloc(MEMORY[0x1E69D9168]);
    v9 = [SearchUISymbolImage uiImageWithSymbolName:v7];

    v10 = [v8 initWithImage:v9];
    [v10 setIsTemplate:1];
    [(TLKTextButton *)self setTlkImage:v10];
  }
}

@end