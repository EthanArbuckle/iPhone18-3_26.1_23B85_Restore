@interface UISearchSuggestionControllerIOSBase
@end

@implementation UISearchSuggestionControllerIOSBase

void __69___UISearchSuggestionControllerIOSBase__geometryChanged_forAncestor___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    [*(a1 + 32) _refreshSearchSuggestionsMenuAfterGeometryChange];
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 setHasSetUpGeometryChangeResponse:0];
  }
}

void __69___UISearchSuggestionControllerIOSBase__geometryChanged_forAncestor___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 _updateMenuWithSuggestionGroups:*(a1 + 32)];

    v4 = objc_loadWeakRetained((a1 + 40));
    [v4 setHasSetUpGeometryChangeResponse:0];
  }
}

@end