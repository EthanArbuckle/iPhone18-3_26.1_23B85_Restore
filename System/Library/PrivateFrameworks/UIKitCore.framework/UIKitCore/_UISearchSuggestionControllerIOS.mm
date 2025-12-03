@interface _UISearchSuggestionControllerIOS
- (BOOL)_hasVisibleMenu;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_UISearchSuggestionControllerIOS)initWithSearchTextField:(id)field;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)_suggestionsMenu;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (uint64_t)__shouldUseMenu;
- (void)_dismissMenuWithoutAnimation;
- (void)_suggestionsRecoveryGestureRecognized;
- (void)_updateMenuWithSuggestionGroups:(id)groups;
- (void)updateSuggestionGroups:(id)groups userInitiated:(BOOL)initiated;
@end

@implementation _UISearchSuggestionControllerIOS

- (BOOL)_hasVisibleMenu
{
  suggestions = [(_UISearchSuggestionControllerIOSBase *)self suggestions];
  v4 = [suggestions count];

  menuInteraction = [(_UISearchSuggestionControllerIOS *)self menuInteraction];
  _hasVisibleMenu = [menuInteraction _hasVisibleMenu];
  if (v4)
  {
    v7 = _hasVisibleMenu;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_UISearchSuggestionControllerIOS)initWithSearchTextField:(id)field
{
  v8.receiver = self;
  v8.super_class = _UISearchSuggestionControllerIOS;
  v3 = [(_UISearchSuggestionControllerIOSBase *)&v8 initWithSearchTextField:field];
  if (v3)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:sel__suggestionsRecoveryGestureRecognized];
    suggestionsRecoveryGesture = v3->_suggestionsRecoveryGesture;
    v3->_suggestionsRecoveryGesture = v4;

    [(UIGestureRecognizer *)v3->_suggestionsRecoveryGesture setDelegate:v3];
    searchTextField = [(_UISearchSuggestionControllerIOSBase *)v3 searchTextField];
    [searchTextField addGestureRecognizer:v3->_suggestionsRecoveryGesture];
  }

  return v3;
}

- (id)_suggestionsMenu
{
  v41 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v36 = __52___UISearchSuggestionControllerIOS__suggestionsMenu__block_invoke;
  v37 = &unk_1E70F6A20;
  objc_copyWeak(&v38, &location);
  suggestionGroups = [(_UISearchSuggestionController *)self suggestionGroups];
  v4 = [suggestionGroups count];
  firstObject = [suggestionGroups firstObject];
  array = [MEMORY[0x1E695DF70] array];
  v26 = suggestionGroups;
  v27 = v4;
  if (v4 == 1)
  {
    suggestionItems = [firstObject suggestionItems];
    v6 = v36(v35, suggestionItems);
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    suggestionItems = suggestionGroups;
    v6 = [suggestionItems countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v6)
    {
      v7 = *v32;
      obj = suggestionItems;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v31 + 1) + 8 * i);
          headerTitle = [v9 headerTitle];
          v11 = headerTitle;
          if (headerTitle)
          {
            v12 = headerTitle;
          }

          else
          {
            v12 = &stru_1EFB14550;
          }

          suggestionItems2 = [v9 suggestionItems];
          v14 = v36(v35, suggestionItems2);
          v15 = [UIMenu menuWithTitle:v12 image:0 identifier:0 options:1 children:v14];

          headerAction = [v9 headerAction];
          [v15 set_accessoryAction:headerAction];

          [array addObject:v15];
        }

        suggestionItems = obj;
        v6 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v6);
    }
  }

  headerTitle2 = [firstObject headerTitle];
  v18 = headerTitle2;
  if (headerTitle2)
  {
    v19 = v27 == 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = &stru_1EFB14550;
  if (v19)
  {
    v20 = headerTitle2;
  }

  v21 = v20;
  if (v6)
  {
    v22 = v6;
  }

  else
  {
    v22 = array;
  }

  v23 = [UIMenu menuWithTitle:v21 image:0 identifier:0 options:16 children:v22];
  if (v27 == 1)
  {
    headerAction2 = [firstObject headerAction];
    [v23 set_accessoryAction:headerAction2];
  }

  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);

  return v23;
}

- (void)_dismissMenuWithoutAnimation
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64___UISearchSuggestionControllerIOS__dismissMenuWithoutAnimation__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (void)_updateMenuWithSuggestionGroups:(id)groups
{
  groupsCopy = groups;
  [(_UISearchSuggestionController *)self setSuggestionGroups:groupsCopy];
  menuInteraction = [(_UISearchSuggestionControllerIOS *)self menuInteraction];
  v6 = _UISearchSuggestionNumberOfSuggestionsFromGroups(groupsCopy);

  if (!menuInteraction && v6)
  {
    menuInteraction = [[UIContextMenuInteraction alloc] initWithDelegate:self];
    [(UIContextMenuInteraction *)menuInteraction _setFallbackDriverStyle:1];
    [(_UISearchSuggestionControllerIOS *)self setMenuInteraction:menuInteraction];
    [(UIContextMenuInteraction *)menuInteraction setDrivers:MEMORY[0x1E695E0F0]];
    searchTextField = [(_UISearchSuggestionControllerIOSBase *)self searchTextField];
    [searchTextField addInteraction:menuInteraction];
  }

  if ([(UIContextMenuInteraction *)menuInteraction _hasVisibleMenu]|| !v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68___UISearchSuggestionControllerIOS__updateMenuWithSuggestionGroups___block_invoke;
    v8[3] = &unk_1E70F6A48;
    v8[4] = self;
    [(UIContextMenuInteraction *)menuInteraction updateVisibleMenuWithBlock:v8];
  }

  else
  {
    [(UIContextMenuInteraction *)menuInteraction _presentMenuAtLocation:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  }
}

- (uint64_t)__shouldUseMenu
{
  if (!self)
  {
    return 0;
  }

  searchBar = [self searchBar];
  _searchController = [searchBar _searchController];
  searchTextField = [self searchTextField];
  window = [searchTextField window];

  if (_searchController)
  {
    _usesSearchSuggestionsMenuForStackedSearch = [_searchController _usesSearchSuggestionsMenuForStackedSearch];
    v7 = [searchBar _isHostedInlineByNavigationBar] | _usesSearchSuggestionsMenuForStackedSearch;
    if ((v7 & 1) == 0 || !window)
    {
      v11 = 0;
      v12 = 0;
      if ((v7 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if ((_usesSearchSuggestionsMenuForStackedSearch & 1) == 0)
    {
      traitCollection = [searchBar traitCollection];
LABEL_9:
      v9 = traitCollection;
      if (_UIBarsUseDesktopNavigationBar(traitCollection))
      {
        traitCollection2 = [window traitCollection];
        v11 = [traitCollection2 verticalSizeClass] == 2 || +[UIKeyboard isInHardwareKeyboardMode](UIKeyboard, "isInHardwareKeyboardMode");
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_19;
    }

LABEL_8:
    traitCollection = [UITraitCollection traitCollectionWithUserInterfaceIdiom:1];
    goto LABEL_9;
  }

  if (window)
  {
    goto LABEL_8;
  }

  v11 = 0;
LABEL_19:
  v12 = (window != 0) & v11;
LABEL_20:

  return v12;
}

- (void)updateSuggestionGroups:(id)groups userInitiated:(BOOL)initiated
{
  groupsCopy = groups;
  if (_UISearchSuggestionNumberOfSuggestionsFromGroups(groupsCopy) || ([(_UISearchSuggestionController *)self suggestionGroups], v5 = objc_claimAutoreleasedReturnValue(), v6 = _UISearchSuggestionNumberOfSuggestionsFromGroups(v5), v5, v6))
  {
    if ([(_UISearchSuggestionControllerIOS *)self __shouldUseMenu])
    {
      [(_UISearchSuggestionControllerIOS *)self _updateMenuWithSuggestionGroups:groupsCopy];
    }

    else
    {
      searchBar = [(_UISearchSuggestionControllerIOSBase *)self searchBar];
      _searchController = [searchBar _searchController];

      if (_searchController)
      {
        [(_UISearchSuggestionController *)self setSuggestionGroups:groupsCopy];
      }
    }
  }
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __90___UISearchSuggestionControllerIOS_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v6[3] = &unk_1E70F6A70;
  v6[4] = self;
  v4 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  return v4;
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  v4 = [(_UISearchSuggestionControllerIOSBase *)self searchTextField:interaction];
  v5 = +[_UIContextMenuStyle defaultStyle];
  [v5 set_wantsTypeSelect:0];
  [v5 setPreferredLayout:3];
  v7 = xmmword_18A65B630;
  v9 = 0;
  v10 = 0;
  v8 = 0x4018000000000000;
  [v5 set_preferredAnchor:&v7];
  [v4 bounds];
  [v5 set_internalPreferredMenuWidth:{fmin(CGRectGetWidth(v12), 343.0)}];
  [v5 set_backgroundInteractionStyle:1];

  return v5;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v15 = *MEMORY[0x1E69E9840];
  beginCopy = begin;
  if (self->_suggestionsRecoveryGesture != beginCopy)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = 138412290;
        v14 = beginCopy;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "unexpected gesture: %@", &v13, 0xCu);
      }
    }

    else
    {
      v11 = *(__UILogGetCategoryCachedImpl("Assert", &gestureRecognizerShouldBegin____s_category) + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = beginCopy;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "unexpected gesture: %@", &v13, 0xCu);
      }
    }
  }

  if (self->_suggestionsRecoveryGesture == beginCopy)
  {
    if ([(_UISearchSuggestionControllerIOS *)self __shouldUseMenu])
    {
      menuInteraction = [(_UISearchSuggestionControllerIOS *)self menuInteraction];
      if (menuInteraction)
      {
        menuInteraction2 = [(_UISearchSuggestionControllerIOS *)self menuInteraction];
        if ([menuInteraction2 _hasVisibleMenu])
        {
          v5 = 0;
        }

        else
        {
          searchTextField = [(_UISearchSuggestionControllerIOSBase *)self searchTextField];
          if ([searchTextField isEditing])
          {
            suggestions = [(_UISearchSuggestionControllerIOSBase *)self suggestions];
            v5 = [suggestions count] != 0;
          }

          else
          {
            v5 = 0;
          }
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)_suggestionsRecoveryGestureRecognized
{
  searchBar = [(_UISearchSuggestionControllerIOSBase *)self searchBar];
  _searchController = [searchBar _searchController];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73___UISearchSuggestionControllerIOS__suggestionsRecoveryGestureRecognized__block_invoke;
  v6[3] = &unk_1E70F35B8;
  v7 = _searchController;
  selfCopy = self;
  v5 = _searchController;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

@end