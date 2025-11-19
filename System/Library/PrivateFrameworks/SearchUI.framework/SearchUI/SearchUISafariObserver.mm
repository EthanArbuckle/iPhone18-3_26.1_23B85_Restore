@interface SearchUISafariObserver
- (SearchUISafariObserver)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = *MEMORY[0x1E696A500];
  v8 = a5;
  v10 = [v8 objectForKeyedSubscript:v7];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

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