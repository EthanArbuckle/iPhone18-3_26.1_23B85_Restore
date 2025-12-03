@interface UABestAppSuggestionManagerProxy
- (UABestAppSuggestionManager)weakManager;
- (void)notifyBestAppsChanged:(id)changed when:(id)when confidence:(double)confidence;
@end

@implementation UABestAppSuggestionManagerProxy

- (UABestAppSuggestionManager)weakManager
{
  WeakRetained = objc_loadWeakRetained(&self->_weakManager);

  return WeakRetained;
}

- (void)notifyBestAppsChanged:(id)changed when:(id)when confidence:(double)confidence
{
  whenCopy = when;
  changedCopy = changed;
  weakManager = [(UABestAppSuggestionManagerProxy *)self weakManager];
  [weakManager notifyBestAppsChanged:changedCopy when:whenCopy confidence:confidence];
}

@end