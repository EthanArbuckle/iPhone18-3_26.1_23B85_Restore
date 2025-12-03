@interface SearchUIWatchListState
- (SearchUIWatchListState)initWithContainerResponse:(id)response;
- (SearchUIWatchListState)initWithIdentifier:(id)identifier watchListed:(BOOL)listed;
- (SearchUIWatchListState)initWithResponse:(id)response;
- (void)toggleStateWithCompletion:(id)completion;
@end

@implementation SearchUIWatchListState

- (SearchUIWatchListState)initWithIdentifier:(id)identifier watchListed:(BOOL)listed
{
  listedCopy = listed;
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = SearchUIWatchListState;
  v7 = [(SearchUIWatchListState *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SearchUIWatchListState *)v7 setWatchListIdentifier:identifierCopy];
    [(SearchUIWatchListState *)v8 setIsWatchListed:listedCopy];
  }

  return v8;
}

- (SearchUIWatchListState)initWithResponse:(id)response
{
  responseCopy = response;
  v5 = [SearchUIWatchListState alloc];
  canonicalID = [responseCopy canonicalID];
  isWatchListed = [responseCopy isWatchListed];

  v8 = [(SearchUIWatchListState *)v5 initWithIdentifier:canonicalID watchListed:isWatchListed];
  return v8;
}

- (SearchUIWatchListState)initWithContainerResponse:(id)response
{
  responseCopy = response;
  v5 = [SearchUIWatchListState alloc];
  canonicalID = [responseCopy canonicalID];
  isWatchListed = [responseCopy isWatchListed];

  v8 = [(SearchUIWatchListState *)v5 initWithIdentifier:canonicalID watchListed:isWatchListed];
  return v8;
}

- (void)toggleStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(SearchUIWatchListState *)self isWatchListed]^ 1;
  watchListIdentifier = [(SearchUIWatchListState *)self watchListIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__SearchUIWatchListState_toggleStateWithCompletion___block_invoke;
  v8[3] = &unk_1E85B2B48;
  v10 = v5;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [SearchUIWatchListUtilities updateStatusIsInWatchList:v5 watchListItemWithIdentifier:watchListIdentifier completion:v8];
}

void __52__SearchUIWatchListState_toggleStateWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__SearchUIWatchListState_toggleStateWithCompletion___block_invoke_2;
  v3[3] = &unk_1E85B2B20;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = a2;
  v4 = v2;
  [SearchUIUtilities dispatchMainIfNecessary:v3];
}

uint64_t __52__SearchUIWatchListState_toggleStateWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setIsWatchListed:*(a1 + 48) == *(a1 + 49)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

@end