@interface UABestAppSuggestionManagerProxy
- (UABestAppSuggestionManager)weakManager;
- (void)notifyBestAppsChanged:(id)a3 when:(id)a4 confidence:(double)a5;
@end

@implementation UABestAppSuggestionManagerProxy

- (UABestAppSuggestionManager)weakManager
{
  WeakRetained = objc_loadWeakRetained(&self->_weakManager);

  return WeakRetained;
}

- (void)notifyBestAppsChanged:(id)a3 when:(id)a4 confidence:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(UABestAppSuggestionManagerProxy *)self weakManager];
  [v10 notifyBestAppsChanged:v9 when:v8 confidence:a5];
}

@end