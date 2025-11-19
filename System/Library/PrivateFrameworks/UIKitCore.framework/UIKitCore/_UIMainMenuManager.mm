@interface _UIMainMenuManager
+ (id)_sharedManagerCreatingIfNeeded:(uint64_t)a1;
- (BOOL)_isCachedDeferredElementExpansionOfMainMenu:(id)a3 forSession:(id)a4;
- (BOOL)_isElement:(id)a3 directlyVisibleInTopLevelCategoryMenuForSession:(id)a4;
- (_UIMainMenuManager)init;
- (id)_beginSession;
- (id)_categoryMenuIdentifierForCommand:(id)a3 commandState:(id)a4 session:(id)a5;
- (id)_categoryMenuIdentifierForInvokedKeyboardShortcutMenuLeaf:(id)a3 session:(id)a4;
- (id)_currentResponderKeyboardShortcutLeavesForSession:(id)a3;
- (id)_fastXPCCodingImageForImage:(void *)a1;
- (id)_firstResponderForSession:(id)a3;
- (id)_mainMenuFromUIMenu:(id)a3 fromDeferredElement:(BOOL)a4;
- (id)_menuElementFromUIMenuElement:(id)a3 fromDeferredElement:(BOOL)a4;
- (id)_menuElementsFromUIMenuElements:(id)a3 fromDeferredElement:(BOOL)a4;
- (id)_parentGroupStateForElementIdentifier:(id)a3 session:(id)a4;
- (id)_stateForCommand:(id)a3 session:(id)a4;
- (id)_stateForMenu:(id)a3 session:(id)a4;
- (id)_visibleCommandKeyboardShortcutsForSession:(id)a3;
- (id)performBaseMenuRequest:(id)a3;
- (id)performMainMenuStateRequest:(id)a3;
- (id)performSessionRequest:(id)a3;
- (void)_fulfillDeferredElementIfNecessary:(id)a3 forSession:(id)a4 fulfillmentHandler:(id)a5;
- (void)_mainMenuSystemDidSetNeedsRebuild:(id)a3;
- (void)_populateState:(id)a3 forElements:(id)a4 session:(id)a5;
- (void)_updateBookkeeping:(id)a3 forElement:(id)a4;
- (void)_updateCachedBaseMainMenuIfNeeded;
- (void)addMainMenuObserver:(id)a3;
- (void)deferredMenuElementWasFulfilled:(id)a3;
- (void)performDeferredElementRequest:(id)a3 responseHandler:(id)a4;
- (void)performMainMenuCommandInvocationRequest:(id)a3 responseHandler:(id)a4;
- (void)removeMainMenuObserver:(id)a3;
- (void)userDidInvokeKeyboardShortcut:(id)a3;
@end

@implementation _UIMainMenuManager

+ (id)_sharedManagerCreatingIfNeeded:(uint64_t)a1
{
  objc_opt_self();
  v3 = _MergedGlobals_1378;
  if (_MergedGlobals_1378)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2 == 0;
  }

  if (!v4)
  {
    if (qword_1ED4A2A78 != -1)
    {
      dispatch_once(&qword_1ED4A2A78, &__block_literal_global_685);
    }

    v3 = _MergedGlobals_1378;
  }

  return v3;
}

- (_UIMainMenuManager)init
{
  v12.receiver = self;
  v12.super_class = _UIMainMenuManager;
  v2 = [(_UIMainMenuManager *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    baseMenuBookkeeping = v2->_baseMenuBookkeeping;
    v2->_baseMenuBookkeeping = v3;

    v5 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v2->_observers;
    v2->_observers = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    sessions = v2->_sessions;
    v2->_sessions = v7;

    v9 = objc_opt_new();
    leafValidator = v2->_leafValidator;
    v2->_leafValidator = v9;

    v2->_isObservingMainMenuRebuilds = 0;
  }

  return v2;
}

- (id)performSessionRequest:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 beginNewSession])
  {
    v5 = [(_UIMainMenuManager *)self _beginSession];
    v6 = [v4 initialMenuStateIdentifiers];

    if (v6)
    {
      v7 = [_UIMainMenuStateRequest alloc];
      v8 = [v4 initialMenuStateIdentifiers];
      v9 = [(_UIMainMenuStateRequest *)v7 initWithMenuIdentifiers:v8 session:v5];

      -[_UIMainMenuStateRequest setIncludeUncategorizedMenuState:](v9, "setIncludeUncategorizedMenuState:", [v4 includeUncategorizedMenuState]);
      v6 = [(_UIMainMenuManager *)self performMainMenuStateRequest:v9];
    }

    if ([v4 requiresHostSideInvokableKeyboardShortcuts])
    {
      v32 = v6;
      v33 = v4;
      v10 = self;
      v34 = [MEMORY[0x1E695DF90] dictionary];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v11 = [v5 _visibleCommandKeyboardShortcuts];
      v12 = [v11 keyEnumerator];

      obj = v12;
      v13 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v37;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v37 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v36 + 1) + 8 * i);
            v18 = [v5 _localCache];
            v19 = [v18 elementBookkeeping];
            v20 = [v19 commandsForIdentifiers];
            v21 = [v20 objectForKeyedSubscript:v17];

            v22 = [v21 _keyboardShortcut];
            v23 = [v22 modifierFlags];

            if (v23)
            {
              v24 = [(_UIMainMenuManager *)v10 _stateForCommand:v21 session:v5];
              if ([v24 _isPerformable])
              {
                v25 = [(_UIMainMenuManager *)v10 _categoryMenuIdentifierForCommand:v21 commandState:v24 session:v5];
                v26 = [[_UIMainMenuPerformableKeyboardShortcutCommand alloc] _initWithCommand:v21 state:v24 categoryMenuIdentifier:v25];
                [v34 setObject:v26 forKeyedSubscript:v17];
              }
            }
          }

          v14 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v14);
      }

      v27 = [v34 copy];
      [v5 set_performableKeyboardShortcutCommands:v27];

      v6 = v32;
      v4 = v33;
      self = v10;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v28 = [v4 _sessionIdentifierToEnd];

  if (v28)
  {
    v29 = [v4 _sessionIdentifierToEnd];
    [(_UIMainMenuManager *)self _endSessionWithIdentifier:v29];
  }

  v30 = [[_UIMainMenuSessionResponse alloc] _initWithSession:v5 menuStateResponse:v6];

  return v30;
}

- (id)_beginSession
{
  [(_UIMainMenuManager *)self _updateCachedBaseMainMenuIfNeeded];
  v3 = [[_UIMainMenuSessionLocalCache alloc] initWithBaseMenuBookkeeping:self->_baseMenuBookkeeping];
  v4 = [[_UIMainMenuSession alloc] _initWithLocalCache:v3];
  sessions = self->_sessions;
  v6 = [v4 identifier];
  [(NSMutableDictionary *)sessions setObject:v4 forKeyedSubscript:v6];

  v7 = [(_UIMainMenuManager *)self _currentResponderKeyboardShortcutLeavesForSession:v4];
  v8 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:@"com.apple.menu.private-main-menu-uncategorized-commands" options:0 children:v7];
  v9 = [(_UIMainMenuManager *)self _mainMenuFromUIMenu:v8 fromDeferredElement:0];
  [v4 setUncategorizedMenu:v9];
  v10 = [v4 _localCache];
  v11 = [v10 elementBookkeeping];
  [(_UIMainMenuManager *)self _updateBookkeeping:v11 forElement:v9];

  v12 = [(_UIMainMenuManager *)self _visibleCommandKeyboardShortcutsForSession:v4];
  [v4 set_visibleCommandKeyboardShortcuts:v12];

  return v4;
}

- (id)_firstResponderForSession:(id)a3
{
  v3 = a3;
  v4 = [v3 _localCache];
  v5 = [v4 firstResponder];

  if (!v5)
  {
    v5 = [UIApp _responderForKeyEvents];
    v6 = [v3 _localCache];
    [v6 setFirstResponder:v5];
  }

  return v5;
}

- (id)_currentResponderKeyboardShortcutLeavesForSession:(id)a3
{
  v4 = a3;
  responderKeyboardShortcutsProvider = self->_responderKeyboardShortcutsProvider;
  if (responderKeyboardShortcutsProvider)
  {
    v6 = responderKeyboardShortcutsProvider[2]();
  }

  else
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [(_UIMainMenuManager *)self _firstResponderForSession:v4];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72___UIMainMenuManager__currentResponderKeyboardShortcutLeavesForSession___block_invoke;
    v11[3] = &unk_1E710E068;
    v12 = v7;
    v9 = v7;
    [v8 _enumerateKeyboardShortcutsInChainWithOptions:3 usingBlock:v11];

    v6 = [v9 copy];
  }

  return v6;
}

- (id)_visibleCommandKeyboardShortcutsForSession:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65___UIMainMenuManager__visibleCommandKeyboardShortcutsForSession___block_invoke;
  aBlock[3] = &unk_1E7129AE8;
  v26 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v9 = [v4 uncategorizedMenu];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __65___UIMainMenuManager__visibleCommandKeyboardShortcutsForSession___block_invoke_2;
  v23[3] = &unk_1E71248F0;
  v10 = v8;
  v24 = v10;
  v27 = 0;
  _UIMainMenuElementEnumerateElementTypesHelper(v9, 0, &v27, 0, v23, 0);

  cachedBaseMainMenu = self->_cachedBaseMainMenu;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65___UIMainMenuManager__visibleCommandKeyboardShortcutsForSession___block_invoke_3;
  v21[3] = &unk_1E71248F0;
  v22 = v10;
  v12 = v10;
  v27 = 0;
  _UIMainMenuElementEnumerateElementTypesHelper(cachedBaseMainMenu, 0, &v27, 0, v21, 0);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65___UIMainMenuManager__visibleCommandKeyboardShortcutsForSession___block_invoke_4;
  v17[3] = &unk_1E7129B10;
  v18 = v4;
  v19 = self;
  v20 = v5;
  v13 = v5;
  v14 = v4;
  [v7 bs_each:v17];
  v15 = [v13 copy];

  return v15;
}

- (void)addMainMenuObserver:(id)a3
{
  v4 = a3;
  if (![(NSHashTable *)self->_observers containsObject:?])
  {
    [(NSHashTable *)self->_observers addObject:v4];
  }
}

- (void)removeMainMenuObserver:(id)a3
{
  v4 = a3;
  if ([(NSHashTable *)self->_observers containsObject:?])
  {
    [(NSHashTable *)self->_observers removeObject:v4];
  }
}

- (void)_mainMenuSystemDidSetNeedsRebuild:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56___UIMainMenuManager__mainMenuSystemDidSetNeedsRebuild___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)performBaseMenuRequest:(id)a3
{
  v4 = a3;
  [(_UIMainMenuManager *)self _updateCachedBaseMainMenuIfNeeded];
  v5 = self->_cachedBaseMainMenu;
  v6 = +[UIApplication _applicationNameForMenus];
  if (v5 && ([v4 sessionRequest], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v4 sessionRequest];
    v9 = [(_UIMainMenuManager *)self performSessionRequest:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [[_UIMainMenuBaseMenuResponse alloc] _initWithMenu:v5 clientName:v6 sessionResponse:v9];

  return v10;
}

- (void)_updateCachedBaseMainMenuIfNeeded
{
  if (self->_cachedBaseMainMenu)
  {
    return;
  }

  mainMenuProvider = self->_mainMenuProvider;
  if (mainMenuProvider)
  {
    v5 = mainMenuProvider[2](mainMenuProvider, a2);
    v6 = v5;
    if (self->_mainMenuProvider)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
  }

  v14 = v6;
  v8 = +[UIMainMenuSystem sharedSystem];
  v9 = [v8 _rootMenu];

  v6 = v9;
LABEL_10:
  v15 = v6;
  v10 = [_UIMainMenuManager _mainMenuFromUIMenu:"_mainMenuFromUIMenu:fromDeferredElement:" fromDeferredElement:?];
  cachedBaseMainMenu = self->_cachedBaseMainMenu;
  self->_cachedBaseMainMenu = v10;

  [(_UIMainMenuManager *)self _updateBookkeeping:self->_baseMenuBookkeeping forElement:self->_cachedBaseMainMenu];
  if (!self->_isObservingMainMenuRebuilds)
  {
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = +[UIMenuSystem mainSystem];
    [v12 addObserver:self selector:sel__mainMenuSystemDidSetNeedsRebuild_ name:@"_UIMenuSystemShouldRebuildNotification" object:v13];

    self->_isObservingMainMenuRebuilds = 1;
  }
}

- (id)_mainMenuFromUIMenu:(id)a3 fromDeferredElement:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 children];
  v8 = [(_UIMainMenuManager *)self _menuElementsFromUIMenuElements:v7 fromDeferredElement:v4];

  v9 = [v6 menuByReplacingChildren:MEMORY[0x1E695E0F0]];

  v10 = [v9 image];
  v11 = [(_UIMainMenuManager *)self _fastXPCCodingImageForImage:v10];
  [v9 _setImage:v11];

  v12 = [[_UIMainMenu alloc] _initWithUIMenu:v9 children:v8 isPartOfBaseMenu:v4 ^ 1];

  return v12;
}

- (id)_fastXPCCodingImageForImage:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (_UIImageIsCustomSymbol(v3))
    {
      v5 = objc_opt_new();
      v6 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleSubhead"];
      v7 = [v6 _fontAdjustedForCurrentContentSizeCategory];

      v8 = [v5 traitCollection];
      v9 = [v8 preferredContentSizeCategory];
      IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory(v9, v10);

      v12 = [UIImageSymbolConfiguration configurationWithFont:v7 scale:IsAccessibilityContentSizeCategory];
      [v5 setPreferredSymbolConfiguration:v12];

      v13 = [v5 _resolvedImageFromImage:v4];

      v4 = [(UIImage *)v13 _rasterizedCustomSymbolImageForFastXPCCoding];
    }

    v4 = v4;
    a1 = v4;
  }

  return a1;
}

- (id)_menuElementsFromUIMenuElements:(id)a3 fromDeferredElement:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(_UIMainMenuManager *)self _menuElementFromUIMenuElement:*(*(&v16 + 1) + 8 * i) fromDeferredElement:v4, v16];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  return v14;
}

- (id)_menuElementFromUIMenuElement:(id)a3 fromDeferredElement:(BOOL)a4
{
  v4 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(_UIMainMenuManager *)self _mainMenuFromUIMenu:v6 fromDeferredElement:v4];
    goto LABEL_16;
  }

  v10 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {

LABEL_6:
    v13 = v6;
    v14 = objc_opt_class();
    v15 = v13;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v17 && ([v17 isPlaceholder] & 1) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = [[_UIMainMenuCommand alloc] _initWithUIMenuLeaf:v15 allowingKeyboardShortcuts:v4 ^ 1];
    }

    goto LABEL_16;
  }

  v11 = objc_opt_self();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    goto LABEL_6;
  }

  v19 = objc_opt_self();
  v20 = objc_opt_isKindOfClass();

  if (v20)
  {
    v21 = v6;
    if ([v21 cachesItems] && (objc_msgSend(v21, "fulfilledElements"), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
    {
      v23 = [v21 fulfilledElements];
      v24 = [(_UIMainMenuManager *)self _menuElementsFromUIMenuElements:v23 fromDeferredElement:1];
    }

    else
    {
      v24 = 0;
    }

    v9 = [[_UIMainMenuDeferredElement alloc] _initWithUIDeferredMenuElement:v21];
    [v9 set_localProvidedElements:v24];
  }

  else
  {
    v25 = _UIMainMenuManagerLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = 138543618;
      v29 = v27;
      v30 = 2050;
      v31 = v6;
      _os_log_error_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "Ignoring incompatible menu element in main menu: <%{public}@: %{public}p>", &v28, 0x16u);
    }

    v9 = 0;
  }

LABEL_16:

  return v9;
}

- (void)_updateBookkeeping:(id)a3 forElement:(id)a4
{
  v6 = a3;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52___UIMainMenuManager__updateBookkeeping_forElement___block_invoke;
  v16[3] = &unk_1E7106258;
  v17 = v6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52___UIMainMenuManager__updateBookkeeping_forElement___block_invoke_2;
  v14[3] = &unk_1E7129B38;
  v15 = v17;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52___UIMainMenuManager__updateBookkeeping_forElement___block_invoke_3;
  v12[3] = &unk_1E7129B60;
  v7 = v15;
  v13 = v7;
  v18 = 0;
  _UIMainMenuElementEnumerateElementTypesHelper(a4, 0, &v18, v16, v14, v12);
  cachedBaseMainMenu = self->_cachedBaseMainMenu;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52___UIMainMenuManager__updateBookkeeping_forElement___block_invoke_4;
  v10[3] = &unk_1E7129B88;
  v11 = v7;
  v9 = v7;
  _UIMainMenuElementEnumerateElements(cachedBaseMainMenu, v10);
}

- (id)performMainMenuStateRequest:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32 = self;
  sessions = self->_sessions;
  v6 = [v4 _sessionIdentifier];
  v7 = [(NSMutableDictionary *)sessions objectForKeyedSubscript:v6];

  if (v7)
  {
    [MEMORY[0x1E695DF90] dictionary];
    v31 = v30 = v4;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = [v4 menuIdentifiers];
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v34;
      *&v10 = 138543362;
      v29 = v10;
      do
      {
        v13 = 0;
        do
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v33 + 1) + 8 * v13);
          v15 = [v7 _localCache];
          v16 = [v15 elementBookkeeping];
          v17 = [v16 menusForIdentifiers];
          v18 = [v17 objectForKeyedSubscript:v14];

          if (v18)
          {
            v19 = [(_UIMainMenuManager *)v32 _stateForMenu:v18 session:v7];
            [v31 setObject:v19 forKeyedSubscript:v14];
          }

          else
          {
            v19 = _UIMainMenuManagerLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = [v30 menuIdentifier];
              *buf = v29;
              v39 = v20;
              _os_log_error_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Ignoring menu state request for invalid menu identifier: %{public}@", buf, 0xCu);
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v11);
    }

    v4 = v30;
    if ([v30 includeUncategorizedMenuState])
    {
      v21 = [v7 uncategorizedMenu];
      v22 = [(_UIMainMenuManager *)v32 _stateForMenu:v21 session:v7];
    }

    else
    {
      v22 = 0;
    }

    v23 = v31;
    v25 = [_UIMainMenuStateResponse alloc];
    v26 = [v31 copy];
    v24 = [(_UIMainMenuStateResponse *)v25 _initWithMenuStates:v26 uncategorizedMenuState:v22];
  }

  else
  {
    v23 = _UIMainMenuManagerLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v28 = [v4 _sessionIdentifier];
      *buf = 138543362;
      v39 = v28;
      _os_log_error_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Ignoring menu state request for invalid sessionIdentifier: %{public}@", buf, 0xCu);
    }

    v24 = 0;
  }

  return v24;
}

- (id)_stateForMenu:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 _localCache];
  v9 = [v8 menuStates];
  v10 = [v6 identifier];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = [[_UIMainMenuState alloc] _init];
    v13 = [v6 children];
    [(_UIMainMenuManager *)self _populateState:v12 forElements:v13 session:v7];

    v14 = [v7 _localCache];
    v15 = [v14 menuStates];
    v16 = [v6 identifier];
    [v15 setObject:v12 forKeyedSubscript:v16];
  }

  return v12;
}

- (void)_populateState:(id)a3 forElements:(id)a4 session:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v8 = a4;
  v9 = a5;
  v35 = [MEMORY[0x1E695DF90] dictionary];
  v33 = [MEMORY[0x1E695DF90] dictionary];
  v34 = [MEMORY[0x1E695DF90] dictionary];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v10)
  {
    v11 = *v48;
    do
    {
      v12 = 0;
      do
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v47 + 1) + 8 * v12);
        v14 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v16 = v13;
          v17 = [(_UIMainMenuManager *)self _stateForMenu:v16 session:v9];
          v18 = [v16 identifier];

          [v35 setObject:v17 forKeyedSubscript:v18];
        }

        else
        {
          v19 = objc_opt_self();
          v20 = objc_opt_isKindOfClass();

          if (v20)
          {
            v17 = v13;
            v21 = [v17 _uiDeferredMenuElement];
            if ([v21 cachesItems])
            {
              v22 = [v17 _uiDeferredMenuElement];
              v23 = [v22 fulfilledElements];
              v24 = v23 == 0;

              if (!v24)
              {
                goto LABEL_16;
              }
            }

            else
            {
            }

            if ([(_UIMainMenuManager *)self _isElement:v17 directlyVisibleInTopLevelCategoryMenuForSession:v9, v32])
            {
LABEL_16:
              v27 = [_UIMainMenuDeferredElementRequest alloc];
              v28 = [v17 identifier];
              v29 = [(_UIMainMenuDeferredElementRequest *)v27 initWithDeferredElementIdentifier:v28 session:v9];

              v41 = 0;
              v42 = &v41;
              v43 = 0x3032000000;
              v44 = __Block_byref_object_copy__238;
              v45 = __Block_byref_object_dispose__238;
              v46 = 0;
              v40[0] = MEMORY[0x1E69E9820];
              v40[1] = 3221225472;
              v40[2] = __57___UIMainMenuManager__populateState_forElements_session___block_invoke;
              v40[3] = &unk_1E7129BB0;
              v40[4] = &v41;
              [(_UIMainMenuManager *)self performDeferredElementRequest:v29 responseHandler:v40];
              v30 = v42[5];
              if (v30)
              {
                v31 = [v17 identifier];
                [v33 setObject:v30 forKeyedSubscript:v31];
              }

              _Block_object_dispose(&v41, 8);
            }
          }

          else
          {
            v25 = objc_opt_self();
            v26 = objc_opt_isKindOfClass();

            if ((v26 & 1) == 0)
            {
              goto LABEL_20;
            }

            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __57___UIMainMenuManager__populateState_forElements_session___block_invoke_2;
            v37[3] = &unk_1E7129BD8;
            v37[4] = self;
            v38 = v9;
            v39 = v34;
            v17 = v13;
            LOBYTE(v41) = 0;
            _UIMainMenuElementEnumerateElementTypesHelper(v17, 0, &v41, 0, v37, 0);
          }
        }

LABEL_20:
        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v10);
  }

  [v32 setChildMenuStates:v35];
  [v32 setFulfilledDeferredElementStates:v33];
  [v32 setCommandStates:v34];
}

- (BOOL)_isElement:(id)a3 directlyVisibleInTopLevelCategoryMenuForSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [v7 _localCache];
  v10 = [v9 elementBookkeeping];
  v11 = [v10 parentIdentifiersForIdentifiers];
  v12 = [v11 objectForKeyedSubscript:v8];

  v13 = [(_UIMainMenu *)self->_cachedBaseMainMenu identifier];
  v14 = v8;
  v15 = v13;
  v16 = v15;
  if (v14 == v15)
  {
    v18 = 0;
    v19 = v15;
    v43 = v14;
LABEL_30:

LABEL_31:
    v14 = v43;
    goto LABEL_32;
  }

  if (v14 && v15)
  {
    v17 = [v14 isEqual:v15];

    if (v17)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v12 = v12;
  v20 = v16;
  v19 = v20;
  if (v12 == v20)
  {
    v43 = v14;
    v18 = 0;
    v14 = v12;
    goto LABEL_30;
  }

  if (!v12 || !v16)
  {

    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v21 = [v12 isEqual:v20];

  if ((v21 & 1) == 0)
  {
LABEL_15:
    v42 = v6;
    v43 = v14;
    while (1)
    {
      v14 = [v7 _localCache];
      v22 = [v14 elementBookkeeping];
      v23 = [v22 parentIdentifiersForIdentifiers];
      v24 = [v23 objectForKeyedSubscript:v12];
      v25 = v19;
      v26 = v25;
      if (v24 == v25)
      {

        v18 = 1;
        v19 = v22;
        v6 = v42;
        goto LABEL_30;
      }

      if (v16 && v24)
      {
        v27 = [v24 isEqual:v25];

        if (v27)
        {
          v18 = 1;
          goto LABEL_33;
        }
      }

      else
      {
      }

      v28 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v30 = [v7 _localCache];
        v31 = [v30 elementBookkeeping];
        v32 = [v31 menusForIdentifiers];
        v33 = [v32 objectForKeyedSubscript:v12];

        v34 = [v33 uiMenu];
        LOBYTE(v31) = [v34 options];

        if ((v31 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        v35 = objc_opt_self();
        v36 = objc_opt_isKindOfClass();

        if (v36)
        {
          break;
        }
      }

      v37 = [v7 _localCache];
      v38 = [v37 elementBookkeeping];
      v39 = [v38 parentIdentifiersForIdentifiers];
      v40 = [v39 objectForKeyedSubscript:v12];

      if (!v40)
      {
        break;
      }

      v12 = v40;
    }

    v18 = 0;
LABEL_33:
    v6 = v42;
    goto LABEL_31;
  }

LABEL_12:
  v18 = 0;
LABEL_32:

  return v18;
}

- (id)_stateForCommand:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 _localCache];
  v9 = [v8 commandStates];
  v10 = [v6 identifier];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = [v6 _localClientMenuLeaf];
    v14 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = v13;
      v17 = [UIApp _hardwareKeyboard];
      if (_UIInternalPreferencesRevisionOnce != -1)
      {
        dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
      }

      v18 = _UIInternalPreferencesRevisionVar;
      if (_UIInternalPreferencesRevisionVar < 1 || (v43 = _UIInternalPreference_EnableLayoutAwareShortcutsAutomatic, _UIInternalPreferencesRevisionVar == _UIInternalPreference_EnableLayoutAwareShortcutsAutomatic))
      {
        v19 = 0;
      }

      else
      {
        do
        {
          v19 = v18 < v43;
          if (v18 < v43)
          {
            break;
          }

          _UIInternalPreferenceSync(v18, &_UIInternalPreference_EnableLayoutAwareShortcutsAutomatic, @"EnableLayoutAwareShortcutsAutomatic", _UIInternalPreferenceUpdateBool);
          v43 = _UIInternalPreference_EnableLayoutAwareShortcutsAutomatic;
        }

        while (v18 != _UIInternalPreference_EnableLayoutAwareShortcutsAutomatic);
      }

      if (byte_1ED48B2A4)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      [v16 _localizeWithGSKeyboard:v17 automatically:v20 force:0];
    }

    v21 = [v13 copy];
    v22 = [(_UIMainMenuManager *)self _firstResponderForSession:v7];
    v23 = [v13 _resolvedTargetFromFirstTarget:v22 sender:0];

    v47 = v23;
    v24 = [v13 _validatedLeafWithTarget:v23 validator:self->_leafValidator];
    v25 = v24;
    if (v24 && v13 != v24)
    {
      _UIMenuLeafCopyValidatablePropertiesFromValidatedLeaf(v21, v24);
    }

    v46 = v25;
    v26 = [v21 _safeCopy];
    v27 = [v21 _keyboardShortcut];
    v45 = [v27 currentLocalizedKeyCombination];

    v28 = [v26 attributes];
    v29 = v28 ^ 1;
    if ((v28 & 1) == 0)
    {
      v30 = objc_opt_self();
      v31 = objc_opt_isKindOfClass();

      if (v31)
      {
        v29 = v47 != 0;
      }
    }

    v32 = [v26 image];
    v33 = [(_UIMainMenuManager *)self _fastXPCCodingImageForImage:v32];
    [v26 setImage:v33];

    v34 = [v26 selectedImage];
    v35 = [(_UIMainMenuManager *)self _fastXPCCodingImageForImage:v34];
    [v26 setSelectedImage:v35];

    v12 = [[_UIMainMenuCommandState alloc] _initWithValidatedMenuLeaf:v26 localizedKeyCombination:v45 isPerformable:v29 & 1];
    v36 = [v7 _localCache];
    v37 = [v36 commandStates];
    v38 = [v6 identifier];
    [v37 setObject:v12 forKeyedSubscript:v38];

    v39 = [v7 _localCache];
    v40 = [v39 validatedMenuLeavesForIdentifiers];
    v41 = [v6 identifier];
    [v40 setObject:v21 forKeyedSubscript:v41];
  }

  return v12;
}

- (id)_parentGroupStateForElementIdentifier:(id)a3 session:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 _localCache];
  v8 = [v7 elementBookkeeping];
  v9 = [v8 parentIdentifiersForIdentifiers];
  v10 = [v9 objectForKeyedSubscript:v6];

  v11 = objc_opt_self();
  LOBYTE(v7) = objc_opt_isKindOfClass();

  if (v7)
  {
    v12 = [v5 _localCache];
    v13 = [v12 menuStates];
  }

  else
  {
    v14 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v16 = 0;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_6;
    }

    v12 = [v5 _localCache];
    v13 = [v12 deferredElementStates];
  }

  v17 = v13;
  v16 = [v13 objectForKeyedSubscript:v10];

LABEL_6:

  return v16;
}

- (void)performDeferredElementRequest:(id)a3 responseHandler:(id)a4
{
  location[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 _sessionIdentifier];
  v9 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v8];
  if (v9)
  {
    v10 = [v6 deferredElementIdentifier];
    v11 = [v9 _localCache];
    v12 = [v11 elementBookkeeping];
    v13 = [v12 deferredElementsForIdentifiers];
    v14 = [v13 objectForKeyedSubscript:v10];

    if (v14)
    {
      v15 = [v9 _localCache];
      v16 = [v15 deferredElementStates];
      v17 = [v16 objectForKeyedSubscript:v10];

      if (v17)
      {
        v18 = [[_UIMainMenuDeferredElementResponse alloc] _initWithDeferredElementState:v17];
        v7[2](v7, v18);
      }

      else
      {
        v21 = [v9 _localCache];
        v22 = [v21 pendingDeferredElementRequestHandlers];
        v34 = [v22 objectForKeyedSubscript:v10];

        v23 = v34;
        if (v34)
        {
          v24 = _Block_copy(v7);
          [v34 addObject:v24];
        }

        else
        {
          v25 = MEMORY[0x1E695DF70];
          v32 = _Block_copy(v7);
          v31 = [v25 arrayWithObject:?];
          v26 = [v9 _localCache];
          v27 = [v26 pendingDeferredElementRequestHandlers];
          [v27 setObject:v31 forKeyedSubscript:v10];

          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __68___UIMainMenuManager_performDeferredElementRequest_responseHandler___block_invoke;
          aBlock[3] = &unk_1E7129C00;
          v28 = v9;
          v43 = v28;
          v29 = v10;
          v44 = v29;
          v33 = _Block_copy(aBlock);
          objc_initWeak(location, v28);
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __68___UIMainMenuManager_performDeferredElementRequest_responseHandler___block_invoke_2;
          v35[3] = &unk_1E7129C28;
          objc_copyWeak(&v41, location);
          v36 = v8;
          v37 = v29;
          v30 = v33;
          v40 = v30;
          v38 = v14;
          v39 = self;
          [(_UIMainMenuManager *)self _fulfillDeferredElementIfNecessary:v38 forSession:v28 fulfillmentHandler:v35];

          objc_destroyWeak(&v41);
          objc_destroyWeak(location);

          v23 = 0;
        }
      }
    }

    else
    {
      v20 = _UIMainMenuManagerLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v10;
        _os_log_error_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "Ignoring deferred element state request for invalid deferred element identifier: %{public}@", location, 0xCu);
      }

      v7[2](v7, 0);
    }
  }

  else
  {
    v19 = _UIMainMenuManagerLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v8;
      _os_log_error_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Ignoring deferred element state request for invalid sessionIdentifier: %{public}@", location, 0xCu);
    }

    v7[2](v7, 0);
  }
}

- (BOOL)_isCachedDeferredElementExpansionOfMainMenu:(id)a3 forSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [(_UIMainMenu *)self->_cachedBaseMainMenu identifier];
  v10 = v8;
  v11 = v9;
  v29 = v10;
  if (v11 == v10)
  {
    v12 = v10;
LABEL_17:

    v28 = 1;
  }

  else
  {
    v12 = v10;
    while (1)
    {
      if (v11 && v12)
      {
        v13 = [v12 isEqual:v11];

        if (v13)
        {
          v28 = 1;
          goto LABEL_21;
        }
      }

      else
      {
      }

      v14 = [v7 _localCache];
      v15 = [v14 elementBookkeeping];
      v16 = [v15 parentIdentifiersForIdentifiers];
      v17 = [v16 objectForKeyedSubscript:v12];

      if (!v17)
      {
        break;
      }

      v18 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v11 = v17;
        v20 = [v7 _localCache];
        v21 = [v20 elementBookkeeping];
        v22 = [v21 deferredElementsForIdentifiers];
        v23 = [v22 objectForKeyedSubscript:v11];

        if (v23)
        {
          v24 = [v23 _uiDeferredMenuElement];
          v25 = [v24 cachesItems];

          if (!v25)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      v26 = [(_UIMainMenu *)self->_cachedBaseMainMenu identifier];
      v12 = v17;
      v11 = v26;
      if (v12 == v11)
      {
        goto LABEL_17;
      }
    }

    v11 = 0;
LABEL_19:
    v28 = 0;
  }

LABEL_21:
  return v28;
}

- (void)_fulfillDeferredElementIfNecessary:(id)a3 forSession:(id)a4 fulfillmentHandler:(id)a5
{
  v16 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 _localProvidedElements];

  if (v10)
  {
    v11 = [v9 _localProvidedElements];

    v8[2](v8, v11);
  }

  else
  {
    v11 = [v9 _uiDeferredMenuElement];

    if ([v11 cachesItems] && (objc_msgSend(v11, "fulfilledElements"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v13 = [v11 fulfilledElements];
      v14 = [(_UIMainMenuManager *)self _menuElementsFromUIMenuElements:v13 fromDeferredElement:1];

      v8[2](v8, v14);
    }

    else
    {
      [v11 setDelegate:self];
      v15 = _Block_copy(v8);
      [v11 setMetadata:v15];

      v14 = [(_UIMainMenuManager *)self _firstResponderForSession:v16];
      [v11 _fulfillIfNecessaryWithInitialResponder:v14];
    }
  }
}

- (void)deferredMenuElementWasFulfilled:(id)a3
{
  v4 = a3;
  v7 = [v4 fulfilledElements];
  v5 = [(_UIMainMenuManager *)self _menuElementsFromUIMenuElements:v7 fromDeferredElement:1];
  v6 = [v4 metadata];

  (v6)[2](v6, v5);
}

- (void)performMainMenuCommandInvocationRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_UIMainMenuCommandInvocationResponse _response];
  v33 = [v6 authenticationMessage];
  [UIPasteboard _attemptAuthenticationWithMessage:?];
  sessions = self->_sessions;
  v10 = [v6 _sessionIdentifier];
  v11 = [(NSMutableDictionary *)sessions objectForKeyedSubscript:v10];

  LODWORD(v10) = dyld_program_sdk_at_least();
  v12 = [v11 _localCache];
  v13 = v12;
  if (v10)
  {
    v14 = [v12 validatedMenuLeavesForIdentifiers];
    v15 = [v6 _commandIdentifier];
    v16 = [v14 objectForKeyedSubscript:v15];
  }

  else
  {
    v17 = [v12 elementBookkeeping];
    v18 = [v17 commandsForIdentifiers];
    v19 = [v6 _commandIdentifier];
    v20 = [v18 objectForKeyedSubscript:v19];

    v16 = [v20 _localClientMenuLeaf];
    v13 = v20;
  }

  v21 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v23 = v16;
    v24 = [(_UIMainMenuManager *)self _firstResponderForSession:v11];
    v25 = [v23 _resolvedTargetFromFirstTarget:v24 sender:0];

    if (v25)
    {
      [v23 performWithSender:0 target:v25];
    }
  }

  else
  {
    v26 = objc_opt_self();
    v27 = objc_opt_isKindOfClass();

    if (v27)
    {
      [v16 performWithSender:0 target:0];
    }
  }

  v28 = [v6 sessionRequest];

  if (v28)
  {
    v29 = [v6 sessionRequest];
    v30 = [(_UIMainMenuManager *)self performSessionRequest:v29];
    [v8 setSessionResponse:v30];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78___UIMainMenuManager_performMainMenuCommandInvocationRequest_responseHandler___block_invoke;
  block[3] = &unk_1E70F4A50;
  v35 = v8;
  v36 = v7;
  v31 = v8;
  v32 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)userDidInvokeKeyboardShortcut:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_cachedBaseMainMenu && [(NSHashTable *)self->_observers count])
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    sessions = self->_sessions;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __52___UIMainMenuManager_userDidInvokeKeyboardShortcut___block_invoke;
    v31[3] = &unk_1E7129C50;
    v31[4] = self;
    v7 = v4;
    v32 = v7;
    v8 = v5;
    v33 = v8;
    [(NSMutableDictionary *)sessions bs_each:v31];
    v9 = objc_opt_new();
    [v9 setBeginNewSession:1];
    v10 = [(_UIMainMenuManager *)self performSessionRequest:v9];
    v11 = [v10 session];
    v12 = [(_UIMainMenuManager *)self _categoryMenuIdentifierForInvokedKeyboardShortcutMenuLeaf:v7 session:v11];
    v13 = objc_opt_new();
    [v13 setSessionToEnd:v11];
    v14 = [(_UIMainMenuManager *)self performSessionRequest:v13];
    if ([v8 count] || v12)
    {
      v23 = v11;
      v24 = v9;
      v26 = v4;
      v25 = v8;
      v22 = v12;
      v15 = [[_UIMainMenuCommandInvocationNotification alloc] _initWithCategoryMenuSessionMap:v8 fallbackMenuIdentifier:v12];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = self->_observers;
      v17 = [(NSHashTable *)v16 countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v27 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v21 _mainMenuManager:self userDidInvokeCommand:v15];
            }
          }

          v18 = [(NSHashTable *)v16 countByEnumeratingWithState:&v27 objects:v34 count:16];
        }

        while (v18);
      }

      v8 = v25;
      v4 = v26;
      v9 = v24;
      v12 = v22;
      v11 = v23;
    }
  }
}

- (id)_categoryMenuIdentifierForInvokedKeyboardShortcutMenuLeaf:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__238;
  v28 = __Block_byref_object_dispose__238;
  v29 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __88___UIMainMenuManager__categoryMenuIdentifierForInvokedKeyboardShortcutMenuLeaf_session___block_invoke;
  v20 = &unk_1E7129C78;
  v8 = v6;
  v21 = v8;
  v9 = v7;
  v22 = v9;
  v23 = &v24;
  v10 = _Block_copy(&v17);
  v11 = [v9 uncategorizedMenu];
  v30 = 0;
  _UIMainMenuElementEnumerateElementTypesHelper(v11, 0, &v30, 0, v10, 0);

  v12 = v25[5];
  if (v12 || (cachedBaseMainMenu = self->_cachedBaseMainMenu, v30 = 0, _UIMainMenuElementEnumerateElementTypesHelper(cachedBaseMainMenu, 0, &v30, 0, v10, 0), (v12 = v25[5]) != 0))
  {
    v14 = [(_UIMainMenuManager *)self _stateForCommand:v12 session:v9];
    v15 = [(_UIMainMenuManager *)self _categoryMenuIdentifierForCommand:v25[5] commandState:v14 session:v9];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v15;
}

- (id)_categoryMenuIdentifierForCommand:(id)a3 commandState:(id)a4 session:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v8 _isHiddenForState:v9] & 1) != 0 || (objc_msgSend(v8, "identifier"), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v18 = 0;
  }

  else
  {
    for (i = v11; ; i = v16)
    {
      v13 = [v10 _localCache];
      v14 = [v13 elementBookkeeping];
      v15 = [v14 parentIdentifiersForIdentifiers];
      v16 = [v15 objectForKeyedSubscript:i];

      v17 = [(_UIMainMenu *)self->_cachedBaseMainMenu identifier];
      LODWORD(v14) = [v16 isEqual:v17];

      if (v14)
      {
        v19 = i;
        goto LABEL_10;
      }

      if (!v16)
      {
        break;
      }
    }

    v16 = [v10 uncategorizedMenu];
    v19 = [v16 identifier];
LABEL_10:
    v18 = v19;
  }

  return v18;
}

@end