@interface _UISearchSuggestionControllerIOSBase
- (BOOL)_hasVisibleMenu;
- (UISearchBar)searchBar;
- (UISearchTextField)searchTextField;
- (_UISearchSuggestionControllerIOSBase)initWithSearchTextField:(id)a3;
- (id)suggestions;
- (void)_dismissMenuWithoutAnimation;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)_updateMenuWithSuggestionGroups:(id)a3;
- (void)menuDidCloseWithAnimator:(id)a3;
- (void)searchTextFieldDidGainSearchBar:(id)a3;
- (void)setSuggestions:(id)a3;
- (void)updateSuggestions:(id)a3 userInitiated:(BOOL)a4;
@end

@implementation _UISearchSuggestionControllerIOSBase

- (UISearchTextField)searchTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_searchTextField);

  return WeakRetained;
}

- (id)suggestions
{
  v2 = [(_UISearchSuggestionController *)self suggestionGroups];
  v3 = _UISearchSuggestionAllSuggestionsFromGroups(v2);

  return v3;
}

- (_UISearchSuggestionControllerIOSBase)initWithSearchTextField:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UISearchSuggestionControllerIOSBase;
  v5 = [(_UISearchSuggestionControllerIOSBase *)&v8 init];
  if (v5)
  {
    v6 = [v4 _searchBar];
    objc_storeWeak(&v5->_searchBar, v6);

    objc_storeWeak(&v5->_searchTextField, v4);
  }

  return v5;
}

- (void)searchTextFieldDidGainSearchBar:(id)a3
{
  v7 = a3;
  v4 = [(_UISearchSuggestionControllerIOSBase *)self searchTextField];

  v5 = v7;
  if (v4 == v7)
  {
    v6 = [v7 _searchBar];
    objc_storeWeak(&self->_searchBar, v6);

    v5 = v7;
  }
}

- (void)menuDidCloseWithAnimator:(id)a3
{
  v7 = a3;
  v4 = [(_UISearchSuggestionControllerIOSBase *)self searchBar];
  v5 = [v4 _searchController];

  if (v5)
  {
    [v5 _suggestionsMenuInteractionWillEndWithAnimator:v7];
  }

  else
  {
    v6 = [(_UISearchSuggestionControllerIOSBase *)self searchTextField];
    [v6 _suggestionsMenuInteractionWillEndWithAnimator:v7];
  }
}

- (void)setSuggestions:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [_UISearchSuggestionItemGroup alloc];
  if (v4)
  {
    v6 = v4;
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

- (void)updateSuggestions:(id)a3 userInitiated:(BOOL)a4
{
  v4 = a4;
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [_UISearchSuggestionItemGroup alloc];
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = [(_UISearchSuggestionItemGroup *)v7 initWithHeaderTitle:0 suggestionItems:v8];

  v11[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(_UISearchSuggestionController *)self updateSuggestionGroups:v10 userInitiated:v4];
}

- (BOOL)_hasVisibleMenu
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UISearchSuggestionControllerIOSBase.m" lineNumber:99 description:{@"Subclass failed to implement %s", "-[_UISearchSuggestionControllerIOSBase _hasVisibleMenu]"}];

  return 0;
}

- (void)_dismissMenuWithoutAnimation
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UISearchSuggestionControllerIOSBase.m" lineNumber:106 description:{@"Subclass failed to implement %s", "-[_UISearchSuggestionControllerIOSBase _dismissMenuWithoutAnimation]"}];
}

- (void)_updateMenuWithSuggestionGroups:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UISearchSuggestionControllerIOSBase.m" lineNumber:112 description:{@"Subclass failed to implement %s", "-[_UISearchSuggestionControllerIOSBase _updateMenuWithSuggestionGroups:]"}];
}

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  v6 = a4;
  if ((a3->var0 & 0xE) != 0 && !self->_hasSetUpGeometryChangeResponse && [(_UISearchSuggestionControllerIOSBase *)self hasVisibleMenu])
  {
    v7 = [(_UISearchSuggestionControllerIOSBase *)self searchBar];
    v8 = [v7 _searchController];

    if (v8)
    {
      v9 = [v8 _navigationItemCurrentlyDisplayingSearchController];
      v10 = [v9 _navigationBar];

      if (!v10)
      {
LABEL_9:

        [(_UISearchSuggestionControllerIOSBase *)self setHasSetUpGeometryChangeResponse:1];
        goto LABEL_10;
      }

      [v8 _updateHasPendingSuggestionMenuRefreshFlagForReason:4];
      [v10 _deferSearchSuggestionsMenuRefreshForGeometryChange];
      [(_UISearchSuggestionControllerIOSBase *)self _dismissMenuWithoutAnimation];
      objc_initWeak(&location, self);
      v11 = v17;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __69___UISearchSuggestionControllerIOSBase__geometryChanged_forAncestor___block_invoke_2;
      v17[3] = &unk_1E70F8958;
      objc_copyWeak(&v19, &location);
      v10 = v10;
      v18 = v10;
      [UIView animateWithDuration:&__block_literal_global_618 animations:v17 completion:0.0];
      v12 = v18;
    }

    else
    {
      v13 = [(_UISearchSuggestionController *)self suggestionGroups];
      [(_UISearchSuggestionControllerIOSBase *)self _dismissMenuWithoutAnimation];
      objc_initWeak(&location, self);
      v11 = v14;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __69___UISearchSuggestionControllerIOSBase__geometryChanged_forAncestor___block_invoke_4;
      v14[3] = &unk_1E70F8958;
      objc_copyWeak(&v16, &location);
      v10 = v13;
      v15 = v10;
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