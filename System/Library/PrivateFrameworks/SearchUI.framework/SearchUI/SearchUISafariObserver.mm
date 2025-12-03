@interface SearchUISafariObserver
- (SearchUISafariObserver)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation SearchUISafariObserver

- (SearchUISafariObserver)init
{
  v5.receiver = self;
  v5.super_class = SearchUISafariObserver;
  v2 = [(SearchUISafariObserver *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SearchUISafariObserver *)v2 reloadSearchEngines];
  }

  return v3;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v7 = *MEMORY[0x1E696A500];
  changeCopy = change;
  v10 = [changeCopy objectForKeyedSubscript:v7];
  v9 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

  if (v10 | v9 && ([v10 isEqual:v9] & 1) == 0)
  {
    [(SearchUISafariObserver *)self reloadSearchEngines];
  }
}

void __45__SearchUISafariObserver_reloadSearchEngines__block_invoke()
{
  v0 = [MEMORY[0x1E697A848] sharedInstance];
  [v0 reloadSearchEngines];
}

@end