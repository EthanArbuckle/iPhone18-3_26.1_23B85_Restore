@interface _UISearchSuggestionControllerIOS
- (BOOL)_hasVisibleMenu;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_UISearchSuggestionControllerIOS)initWithSearchTextField:(id)a3;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)_suggestionsMenu;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (uint64_t)__shouldUseMenu;
- (void)_dismissMenuWithoutAnimation;
- (void)_suggestionsRecoveryGestureRecognized;
- (void)_updateMenuWithSuggestionGroups:(id)a3;
- (void)updateSuggestionGroups:(id)a3 userInitiated:(BOOL)a4;
@end

@implementation _UISearchSuggestionControllerIOS

- (BOOL)_hasVisibleMenu
{
  v3 = [(_UISearchSuggestionControllerIOSBase *)self suggestions];
  v4 = [v3 count];

  v5 = [(_UISearchSuggestionControllerIOS *)self menuInteraction];
  v6 = [v5 _hasVisibleMenu];
  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_UISearchSuggestionControllerIOS)initWithSearchTextField:(id)a3
{
  v8.receiver = self;
  v8.super_class = _UISearchSuggestionControllerIOS;
  v3 = [(_UISearchSuggestionControllerIOSBase *)&v8 initWithSearchTextField:a3];
  if (v3)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:sel__suggestionsRecoveryGestureRecognized];
    suggestionsRecoveryGesture = v3->_suggestionsRecoveryGesture;
    v3->_suggestionsRecoveryGesture = v4;

    [(UIGestureRecognizer *)v3->_suggestionsRecoveryGesture setDelegate:v3];
    v6 = [(_UISearchSuggestionControllerIOSBase *)v3 searchTextField];
    [v6 addGestureRecognizer:v3->_suggestionsRecoveryGesture];
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
  v3 = [(_UISearchSuggestionController *)self suggestionGroups];
  v4 = [v3 count];
  v28 = [v3 firstObject];
  v30 = [MEMORY[0x1E695DF70] array];
  v26 = v3;
  v27 = v4;
  if (v4 == 1)
  {
    v5 = [v28 suggestionItems];
    v6 = v36(v35, v5);
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v6)
    {
      v7 = *v32;
      obj = v5;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v31 + 1) + 8 * i);
          v10 = [v9 headerTitle];
          v11 = v10;
          if (v10)
          {
            v12 = v10;
          }

          else
          {
            v12 = &stru_1EFB14550;
          }

          v13 = [v9 suggestionItems];
          v14 = v36(v35, v13);
          v15 = [UIMenu menuWithTitle:v12 image:0 identifier:0 options:1 children:v14];

          v16 = [v9 headerAction];
          [v15 set_accessoryAction:v16];

          [v30 addObject:v15];
        }

        v5 = obj;
        v6 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v6);
    }
  }

  v17 = [v28 headerTitle];
  v18 = v17;
  if (v17)
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
    v20 = v17;
  }

  v21 = v20;
  if (v6)
  {
    v22 = v6;
  }

  else
  {
    v22 = v30;
  }

  v23 = [UIMenu menuWithTitle:v21 image:0 identifier:0 options:16 children:v22];
  if (v27 == 1)
  {
    v24 = [v28 headerAction];
    [v23 set_accessoryAction:v24];
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

- (void)_updateMenuWithSuggestionGroups:(id)a3
{
  v4 = a3;
  [(_UISearchSuggestionController *)self setSuggestionGroups:v4];
  v5 = [(_UISearchSuggestionControllerIOS *)self menuInteraction];
  v6 = _UISearchSuggestionNumberOfSuggestionsFromGroups(v4);

  if (!v5 && v6)
  {
    v5 = [[UIContextMenuInteraction alloc] initWithDelegate:self];
    [(UIContextMenuInteraction *)v5 _setFallbackDriverStyle:1];
    [(_UISearchSuggestionControllerIOS *)self setMenuInteraction:v5];
    [(UIContextMenuInteraction *)v5 setDrivers:MEMORY[0x1E695E0F0]];
    v7 = [(_UISearchSuggestionControllerIOSBase *)self searchTextField];
    [v7 addInteraction:v5];
  }

  if ([(UIContextMenuInteraction *)v5 _hasVisibleMenu]|| !v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68___UISearchSuggestionControllerIOS__updateMenuWithSuggestionGroups___block_invoke;
    v8[3] = &unk_1E70F6A48;
    v8[4] = self;
    [(UIContextMenuInteraction *)v5 updateVisibleMenuWithBlock:v8];
  }

  else
  {
    [(UIContextMenuInteraction *)v5 _presentMenuAtLocation:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  }
}

- (uint64_t)__shouldUseMenu
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 searchBar];
  v3 = [v2 _searchController];
  v4 = [a1 searchTextField];
  v5 = [v4 window];

  if (v3)
  {
    v6 = [v3 _usesSearchSuggestionsMenuForStackedSearch];
    v7 = [v2 _isHostedInlineByNavigationBar] | v6;
    if ((v7 & 1) == 0 || !v5)
    {
      v11 = 0;
      v12 = 0;
      if ((v7 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if ((v6 & 1) == 0)
    {
      v8 = [v2 traitCollection];
LABEL_9:
      v9 = v8;
      if (_UIBarsUseDesktopNavigationBar(v8))
      {
        v10 = [v5 traitCollection];
        v11 = [v10 verticalSizeClass] == 2 || +[UIKeyboard isInHardwareKeyboardMode](UIKeyboard, "isInHardwareKeyboardMode");
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_19;
    }

LABEL_8:
    v8 = [UITraitCollection traitCollectionWithUserInterfaceIdiom:1];
    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_8;
  }

  v11 = 0;
LABEL_19:
  v12 = (v5 != 0) & v11;
LABEL_20:

  return v12;
}

- (void)updateSuggestionGroups:(id)a3 userInitiated:(BOOL)a4
{
  v9 = a3;
  if (_UISearchSuggestionNumberOfSuggestionsFromGroups(v9) || ([(_UISearchSuggestionController *)self suggestionGroups], v5 = objc_claimAutoreleasedReturnValue(), v6 = _UISearchSuggestionNumberOfSuggestionsFromGroups(v5), v5, v6))
  {
    if ([(_UISearchSuggestionControllerIOS *)self __shouldUseMenu])
    {
      [(_UISearchSuggestionControllerIOS *)self _updateMenuWithSuggestionGroups:v9];
    }

    else
    {
      v7 = [(_UISearchSuggestionControllerIOSBase *)self searchBar];
      v8 = [v7 _searchController];

      if (v8)
      {
        [(_UISearchSuggestionController *)self setSuggestionGroups:v9];
      }
    }
  }
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __90___UISearchSuggestionControllerIOS_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v6[3] = &unk_1E70F6A70;
  v6[4] = self;
  v4 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  return v4;
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v4 = [(_UISearchSuggestionControllerIOSBase *)self searchTextField:a3];
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_suggestionsRecoveryGesture != v4)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "unexpected gesture: %@", &v13, 0xCu);
      }
    }

    else
    {
      v11 = *(__UILogGetCategoryCachedImpl("Assert", &gestureRecognizerShouldBegin____s_category) + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "unexpected gesture: %@", &v13, 0xCu);
      }
    }
  }

  if (self->_suggestionsRecoveryGesture == v4)
  {
    if ([(_UISearchSuggestionControllerIOS *)self __shouldUseMenu])
    {
      v6 = [(_UISearchSuggestionControllerIOS *)self menuInteraction];
      if (v6)
      {
        v7 = [(_UISearchSuggestionControllerIOS *)self menuInteraction];
        if ([v7 _hasVisibleMenu])
        {
          v5 = 0;
        }

        else
        {
          v8 = [(_UISearchSuggestionControllerIOSBase *)self searchTextField];
          if ([v8 isEditing])
          {
            v9 = [(_UISearchSuggestionControllerIOSBase *)self suggestions];
            v5 = [v9 count] != 0;
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
  v3 = [(_UISearchSuggestionControllerIOSBase *)self searchBar];
  v4 = [v3 _searchController];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73___UISearchSuggestionControllerIOS__suggestionsRecoveryGestureRecognized__block_invoke;
  v6[3] = &unk_1E70F35B8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

@end