@interface _UISearchSuggestionControllerIOSBase
- (BOOL)_hasVisibleMenu;
- (UISearchBar)searchBar;
- (UISearchTextField)searchTextField;
- (_UISearchSuggestionControllerIOSBase)initWithSearchTextField:(id)field;
- (id)suggestions;
- (void)_dismissMenuWithoutAnimation;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)_updateMenuWithSuggestionGroups:(id)groups;
- (void)menuDidCloseWithAnimator:(id)animator;
- (void)searchTextFieldDidGainSearchBar:(id)bar;
- (void)setSuggestions:(id)suggestions;
- (void)updateSuggestions:(id)suggestions userInitiated:(BOOL)initiated;
@end

@implementation _UISearchSuggestionControllerIOSBase

- (UISearchTextField)searchTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_searchTextField);

  return WeakRetained;
}

- (id)suggestions
{
  suggestionGroups = [(_UISearchSuggestionController *)self suggestionGroups];
  v3 = _UISearchSuggestionAllSuggestionsFromGroups(suggestionGroups);

  return v3;
}

- (_UISearchSuggestionControllerIOSBase)initWithSearchTextField:(id)field
{
  fieldCopy = field;
  v8.receiver = self;
  v8.super_class = _UISearchSuggestionControllerIOSBase;
  v5 = [(_UISearchSuggestionControllerIOSBase *)&v8 init];
  if (v5)
  {
    _searchBar = [fieldCopy _searchBar];
    objc_storeWeak(&v5->_searchBar, _searchBar);

    objc_storeWeak(&v5->_searchTextField, fieldCopy);
  }

  return v5;
}

- (void)searchTextFieldDidGainSearchBar:(id)bar
{
  barCopy = bar;
  searchTextField = [(_UISearchSuggestionControllerIOSBase *)self searchTextField];

  v5 = barCopy;
  if (searchTextField == barCopy)
  {
    _searchBar = [barCopy _searchBar];
    objc_storeWeak(&self->_searchBar, _searchBar);

    v5 = barCopy;
  }
}

- (void)menuDidCloseWithAnimator:(id)animator
{
  animatorCopy = animator;
  searchBar = [(_UISearchSuggestionControllerIOSBase *)self searchBar];
  _searchController = [searchBar _searchController];

  if (_searchController)
  {
    [_searchController _suggestionsMenuInteractionWillEndWithAnimator:animatorCopy];
  }

  else
  {
    searchTextField = [(_UISearchSuggestionControllerIOSBase *)self searchTextField];
    [searchTextField _suggestionsMenuInteractionWillEndWithAnimator:animatorCopy];
  }
}

- (void)setSuggestions:(id)suggestions
{
  v9[1] = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v5 = [_UISearchSuggestionItemGroup alloc];
  if (suggestionsCopy)
  {
    v6 = suggestionsCopy;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = [(_UISearchSuggestionItemGroup *)v5 initWithHeaderTitle:0 suggestionItems:v6];

  v9[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [(_UISearchSuggestionController *)self setSuggestionGroups:v8];
}

- (void)updateSuggestions:(id)suggestions userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  v11[1] = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v7 = [_UISearchSuggestionItemGroup alloc];
  if (suggestionsCopy)
  {
    v8 = suggestionsCopy;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = [(_UISearchSuggestionItemGroup *)v7 initWithHeaderTitle:0 suggestionItems:v8];

  v11[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(_UISearchSuggestionController *)self updateSuggestionGroups:v10 userInitiated:initiatedCopy];
}

- (BOOL)_hasVisibleMenu
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchSuggestionControllerIOSBase.m" lineNumber:99 description:{@"Subclass failed to implement %s", "-[_UISearchSuggestionControllerIOSBase _hasVisibleMenu]"}];

  return 0;
}

- (void)_dismissMenuWithoutAnimation
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchSuggestionControllerIOSBase.m" lineNumber:106 description:{@"Subclass failed to implement %s", "-[_UISearchSuggestionControllerIOSBase _dismissMenuWithoutAnimation]"}];
}

- (void)_updateMenuWithSuggestionGroups:(id)groups
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchSuggestionControllerIOSBase.m" lineNumber:112 description:{@"Subclass failed to implement %s", "-[_UISearchSuggestionControllerIOSBase _updateMenuWithSuggestionGroups:]"}];
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  ancestorCopy = ancestor;
  if ((changed->var0 & 0xE) != 0 && !self->_hasSetUpGeometryChangeResponse && [(_UISearchSuggestionControllerIOSBase *)self hasVisibleMenu])
  {
    searchBar = [(_UISearchSuggestionControllerIOSBase *)self searchBar];
    _searchController = [searchBar _searchController];

    if (_searchController)
    {
      _navigationItemCurrentlyDisplayingSearchController = [_searchController _navigationItemCurrentlyDisplayingSearchController];
      _navigationBar = [_navigationItemCurrentlyDisplayingSearchController _navigationBar];

      if (!_navigationBar)
      {
LABEL_9:

        [(_UISearchSuggestionControllerIOSBase *)self setHasSetUpGeometryChangeResponse:1];
        goto LABEL_10;
      }

      [_searchController _updateHasPendingSuggestionMenuRefreshFlagForReason:4];
      [_navigationBar _deferSearchSuggestionsMenuRefreshForGeometryChange];
      [(_UISearchSuggestionControllerIOSBase *)self _dismissMenuWithoutAnimation];
      objc_initWeak(&location, self);
      v11 = v17;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __69___UISearchSuggestionControllerIOSBase__geometryChanged_forAncestor___block_invoke_2;
      v17[3] = &unk_1E70F8958;
      objc_copyWeak(&v19, &location);
      _navigationBar = _navigationBar;
      v18 = _navigationBar;
      [UIView animateWithDuration:&__block_literal_global_618 animations:v17 completion:0.0];
      v12 = v18;
    }

    else
    {
      suggestionGroups = [(_UISearchSuggestionController *)self suggestionGroups];
      [(_UISearchSuggestionControllerIOSBase *)self _dismissMenuWithoutAnimation];
      objc_initWeak(&location, self);
      v11 = v14;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __69___UISearchSuggestionControllerIOSBase__geometryChanged_forAncestor___block_invoke_4;
      v14[3] = &unk_1E70F8958;
      objc_copyWeak(&v16, &location);
      _navigationBar = suggestionGroups;
      v15 = _navigationBar;
      [UIView animateWithDuration:&__block_literal_global_16_7 animations:v14 completion:0.0];
      v12 = v15;
    }

    objc_destroyWeak(v11 + 5);
    objc_destroyWeak(&location);
    goto LABEL_9;
  }

LABEL_10:
}

- (UISearchBar)searchBar
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);

  return WeakRetained;
}

@end