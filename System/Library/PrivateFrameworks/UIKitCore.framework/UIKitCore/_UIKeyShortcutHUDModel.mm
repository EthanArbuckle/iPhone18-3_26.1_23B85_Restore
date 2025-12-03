@interface _UIKeyShortcutHUDModel
+ (id)modelForCurrentMenu;
- (BOOL)_isKeyCommandPerformable:(id)performable outTarget:(id *)target;
- (_UIKeyShortcutHUDModel)init;
- (_UIKeyShortcutHUDModel)initWithCoder:(id)coder;
- (id)_finalizedHUDMenuFromValidatedHUDMenu:(id)menu;
- (id)_menuByOmittingNonKeyCommandsInMenu:(id)menu;
- (id)_responderBasedKeyCommandsStartingAtResponder:(id)responder;
- (id)_sanitizedMainMenu;
- (id)_validatedHUDMenuFromUIMenu:(id)menu;
- (id)menuWithAlternatesForModifierFlags:(int64_t)flags;
- (id)modelKeyCommandsExcludingHUDCommands:(id)commands;
- (id)originalTargetForSelectedKeyCommand:(id)command;
- (id)searchMenuWithSearchText:(id)text maxSearchResultEntries:(unint64_t)entries;
- (void)_addShortcutsFromHUDMenu:(id)menu toShortcutsArray:(id)array;
- (void)_buildMenu;
- (void)_enumerateKeyCommandsInMenu:(id)menu block:(id)block;
- (void)_validateBaseKeyCommand:(id)command usingAlternate:(id)alternate;
- (void)_validateKeyCommandAndAlternates:(id)alternates;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIKeyShortcutHUDModel

+ (id)modelForCurrentMenu
{
  v2 = objc_opt_new();
  [v2 _buildMenu];

  return v2;
}

- (_UIKeyShortcutHUDModel)init
{
  v10.receiver = self;
  v10.super_class = _UIKeyShortcutHUDModel;
  v2 = [(_UIKeyShortcutHUDModel *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    modelKeyCommands = v2->_modelKeyCommands;
    v2->_modelKeyCommands = v3;

    v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:10];
    modelKeyCommandToModelShortcutMap = v2->_modelKeyCommandToModelShortcutMap;
    v2->_modelKeyCommandToModelShortcutMap = v5;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    modelKeyCommandToAppKeyCommandMap = v2->_modelKeyCommandToAppKeyCommandMap;
    v2->_modelKeyCommandToAppKeyCommandMap = dictionary;
  }

  return v2;
}

- (id)modelKeyCommandsExcludingHUDCommands:(id)commands
{
  v19 = *MEMORY[0x1E69E9840];
  commandsCopy = commands;
  array = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DFD8] setWithArray:commandsCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_modelKeyCommands;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (([v6 containsObject:{v12, v14}] & 1) == 0)
        {
          [array addObject:v12];
        }
      }

      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return array;
}

- (id)searchMenuWithSearchText:(id)text maxSearchResultEntries:(unint64_t)entries
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF70];
  textCopy = text;
  array = [v5 array];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v8 = [textCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v41 = v8;
  if ([v8 length])
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    selfCopy = self;
    obj = [(_UIKeyShortcutHUDMenu *)self->_menu children];
    v33 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v33)
    {
      v9 = 0;
      v32 = *v52;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v52 != v32)
        {
          objc_enumerationMutation(obj);
        }

        if (v9 + 1 >= entries)
        {
          break;
        }

        v35 = v10;
        v11 = *(*(&v51 + 1) + 8 * v10);
        array2 = [MEMORY[0x1E695DF70] array];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v34 = v11;
        children = [v11 children];
        v38 = [children countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v38)
        {
          v37 = *v48;
LABEL_10:
          v12 = 0;
          while (1)
          {
            if (*v48 != v37)
            {
              objc_enumerationMutation(children);
            }

            if (v9 + 1 >= entries)
            {
              break;
            }

            v39 = v12;
            v13 = *(*(&v47 + 1) + 8 * v12);
            hudTitle = [v13 hudTitle];
            v15 = [hudTitle localizedCaseInsensitiveContainsString:v41];

            if (v15)
            {
              [array2 addObject:v13];
              ++v9;
            }

            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            displayableAlternates = [v13 displayableAlternates];
            v17 = [displayableAlternates countByEnumeratingWithState:&v43 objects:v55 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v44;
LABEL_18:
              v20 = 0;
              while (1)
              {
                if (*v44 != v19)
                {
                  objc_enumerationMutation(displayableAlternates);
                }

                if (v9 + 1 >= entries)
                {
                  break;
                }

                v21 = *(*(&v43 + 1) + 8 * v20);
                alternatesMap = [v13 alternatesMap];
                v23 = [alternatesMap objectForKeyedSubscript:v21];

                hudTitle2 = [v23 hudTitle];
                v25 = [hudTitle2 localizedCaseInsensitiveContainsString:v41];

                if (v25)
                {
                  [array2 addObject:v23];
                  ++v9;
                }

                if (v18 == ++v20)
                {
                  v18 = [displayableAlternates countByEnumeratingWithState:&v43 objects:v55 count:16];
                  if (v18)
                  {
                    goto LABEL_18;
                  }

                  break;
                }
              }
            }

            v12 = v39 + 1;
            if (v39 + 1 == v38)
            {
              v38 = [children countByEnumeratingWithState:&v47 objects:v56 count:16];
              if (v38)
              {
                goto LABEL_10;
              }

              break;
            }
          }
        }

        if ([array2 count])
        {
          v26 = [v34 menuByReplacingChildren:array2];
          [array addObject:v26];
          ++v9;
        }

        v10 = v35 + 1;
        if (v35 + 1 == v33)
        {
          v33 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
          if (v33)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    self = selfCopy;
  }

  v27 = [(_UIKeyShortcutHUDMenu *)self->_menu menuByReplacingChildren:array];

  return v27;
}

- (id)menuWithAlternatesForModifierFlags:(int64_t)flags
{
  v41 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  children = [(_UIKeyShortcutHUDMenu *)self->_menu children];
  v28 = [children countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (!v28)
  {

    goto LABEL_23;
  }

  selfCopy = self;
  obj = children;
  v6 = 0;
  v26 = *v36;
  do
  {
    for (i = 0; i != v28; ++i)
    {
      if (*v36 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v35 + 1) + 8 * i);
      v9 = MEMORY[0x1E695DF70];
      children2 = [v8 children];
      v11 = [v9 arrayWithCapacity:{objc_msgSend(children2, "count")}];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      children3 = [v8 children];
      v13 = [children3 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v13)
      {
        v14 = v13;
        v29 = v8;
        v30 = i;
        v15 = 0;
        v16 = *v32;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v32 != v16)
            {
              objc_enumerationMutation(children3);
            }

            v18 = *(*(&v31 + 1) + 8 * j);
            v19 = [v18 shortcutToDisplayForModifierFlags:flags];
            v15 |= v19 != v18;
            v6 |= v19 != v18;
            [v11 addObject:v19];
          }

          v14 = [children3 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v14);

        if (v15)
        {
          v20 = [v29 menuByReplacingChildren:v11];
          [array addObject:v20];

          i = v30;
          goto LABEL_18;
        }

        v8 = v29;
        i = v30;
      }

      else
      {
      }

      [array addObject:v8];
LABEL_18:
    }

    v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  }

  while (v28);

  self = selfCopy;
  if (v6)
  {
    v21 = [(_UIKeyShortcutHUDMenu *)selfCopy->_menu menuByReplacingChildren:array];
    goto LABEL_24;
  }

LABEL_23:
  v21 = self->_menu;
LABEL_24:
  v22 = v21;

  return v22;
}

- (id)originalTargetForSelectedKeyCommand:(id)command
{
  v4 = [(NSMutableSet *)self->_modelKeyCommands member:command];
  v5 = [(_UIKeyShortcutHUDModel *)self modelShortcutForModelKeyCommand:v4];
  originalTarget = [v5 originalTarget];

  return originalTarget;
}

- (void)_buildMenu
{
  v107 = *MEMORY[0x1E69E9840];
  if (([UIApp _disableLayoutAwareShortcuts] & 1) == 0)
  {
    v3 = +[UIDevice currentDevice];
    _isHardwareKeyboardAvailable = [v3 _isHardwareKeyboardAvailable];

    if (_isHardwareKeyboardAvailable)
    {
      self->_gsKeyboard = [UIApp _hardwareKeyboard];
    }
  }

  v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:10];
  displayableAppKeyCommandToModelShortcutMap = self->_displayableAppKeyCommandToModelShortcutMap;
  self->_displayableAppKeyCommandToModelShortcutMap = v5;

  v7 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:10];
  appKeyCommandToModelKeyCommandMap = self->_appKeyCommandToModelKeyCommandMap;
  self->_appKeyCommandToModelKeyCommandMap = v7;

  v9 = [MEMORY[0x1E695DFA8] set];
  performableAppKeyCommands = self->_performableAppKeyCommands;
  self->_performableAppKeyCommands = v9;

  v11 = objc_opt_new();
  validator = self->_validator;
  self->_validator = v11;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v14 = [MEMORY[0x1E695DFA8] set];
  equivalentKeyCommandsInPriorityAlreadyEnumerated = self->_equivalentKeyCommandsInPriorityAlreadyEnumerated;
  self->_equivalentKeyCommandsInPriorityAlreadyEnumerated = v14;

  v16 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
  _responderForKeyEvents = [UIApp _responderForKeyEvents];
  v18 = [(_UIKeyShortcutHUDModel *)self _responderBasedKeyCommandsStartingAtResponder:_responderForKeyEvents];

  _sanitizedMainMenu = [(_UIKeyShortcutHUDModel *)self _sanitizedMainMenu];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36___UIKeyShortcutHUDModel__buildMenu__block_invoke;
  aBlock[3] = &unk_1E710E040;
  v74 = v16;
  v99 = v74;
  v77 = dictionary;
  v100 = v77;
  v20 = _Block_copy(aBlock);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v21 = v18;
  v22 = [v21 countByEnumeratingWithState:&v94 objects:v106 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v95;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v95 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v20[2](v20, *(*(&v94 + 1) + 8 * i));
      }

      v23 = [v21 countByEnumeratingWithState:&v94 objects:v106 count:16];
    }

    while (v23);
  }

  v75 = _sanitizedMainMenu;
  [(_UIKeyShortcutHUDModel *)self _enumerateKeyCommandsInMenu:_sanitizedMainMenu block:v20];
  allKeys = [v77 allKeys];
  v27 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:0];
  v105 = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
  v29 = [allKeys sortedArrayUsingDescriptors:v28];

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v29;
  v30 = [obj countByEnumeratingWithState:&v90 objects:v104 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v91;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v91 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v90 + 1) + 8 * j);
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v35 = [v77 objectForKeyedSubscript:v34];
        v36 = [v35 countByEnumeratingWithState:&v86 objects:v103 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v87;
          do
          {
            for (k = 0; k != v37; ++k)
            {
              if (*v87 != v38)
              {
                objc_enumerationMutation(v35);
              }

              [(_UIKeyShortcutHUDModel *)self _validateKeyCommandAndAlternates:*(*(&v86 + 1) + 8 * k)];
            }

            v37 = [v35 countByEnumeratingWithState:&v86 objects:v103 count:16];
          }

          while (v37);
        }

        [(NSMutableSet *)self->_equivalentKeyCommandsInPriorityAlreadyEnumerated removeAllObjects];
      }

      v31 = [obj countByEnumeratingWithState:&v90 objects:v104 count:16];
    }

    while (v31);
  }

  array = [MEMORY[0x1E695DF70] array];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v41 = v21;
  v42 = [v41 countByEnumeratingWithState:&v82 objects:v102 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v83;
    do
    {
      for (m = 0; m != v43; ++m)
      {
        if (*v83 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = [(NSMapTable *)self->_displayableAppKeyCommandToModelShortcutMap objectForKey:*(*(&v82 + 1) + 8 * m)];
        if (v46)
        {
          [array addObject:v46];
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v82 objects:v102 count:16];
    }

    while (v43);
  }

  v73 = v41;

  array2 = [MEMORY[0x1E695DF70] array];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  children = [v75 children];
  v49 = [children countByEnumeratingWithState:&v78 objects:v101 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v79;
    do
    {
      for (n = 0; n != v50; ++n)
      {
        if (*v79 != v51)
        {
          objc_enumerationMutation(children);
        }

        v53 = [(_UIKeyShortcutHUDModel *)self _validatedHUDMenuFromUIMenu:*(*(&v78 + 1) + 8 * n)];
        [array2 addObject:v53];
      }

      v50 = [children countByEnumeratingWithState:&v78 objects:v101 count:16];
    }

    while (v50);
  }

  firstObject = [array2 firstObject];
  uiMenu = [firstObject uiMenu];
  identifier = [uiMenu identifier];
  v57 = [identifier isEqualToString:@"com.apple.menu.application"];

  if ((v57 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    uiMenu2 = [firstObject uiMenu];
    identifier2 = [uiMenu2 identifier];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIKeyShortcutHUDModel.m" lineNumber:371 description:{@"First root menu child was unexpectedly not the application menu. Actual identifier: %@", identifier2}];
  }

  children2 = [firstObject children];
  v59 = [array arrayByAddingObjectsFromArray:children2];

  v60 = [firstObject menuByReplacingChildren:v59];

  [array2 setObject:v60 atIndexedSubscript:0];
  v61 = [_UIKeyShortcutHUDMenu menuWithUIMenu:v75 children:array2];
  v62 = [(_UIKeyShortcutHUDModel *)self _finalizedHUDMenuFromValidatedHUDMenu:v61];
  menu = self->_menu;
  self->_menu = v62;

  [(NSMapTable *)self->_displayableAppKeyCommandToModelShortcutMap removeAllObjects];
  v64 = self->_displayableAppKeyCommandToModelShortcutMap;
  self->_displayableAppKeyCommandToModelShortcutMap = 0;

  [(NSMutableSet *)self->_performableAppKeyCommands removeAllObjects];
  v65 = self->_performableAppKeyCommands;
  self->_performableAppKeyCommands = 0;

  v66 = self->_equivalentKeyCommandsInPriorityAlreadyEnumerated;
  self->_equivalentKeyCommandsInPriorityAlreadyEnumerated = 0;

  [(NSMapTable *)self->_appKeyCommandToModelKeyCommandMap removeAllObjects];
  v67 = self->_appKeyCommandToModelKeyCommandMap;
  self->_appKeyCommandToModelKeyCommandMap = 0;

  v68 = self->_validator;
  self->_gsKeyboard = 0;
  self->_validator = 0;
}

- (id)_responderBasedKeyCommandsStartingAtResponder:(id)responder
{
  v3 = MEMORY[0x1E695DF70];
  responderCopy = responder;
  array = [v3 array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72___UIKeyShortcutHUDModel__responderBasedKeyCommandsStartingAtResponder___block_invoke;
  v8[3] = &unk_1E710E068;
  v6 = array;
  v9 = v6;
  [responderCopy _enumerateKeyboardShortcutsInChainWithOptions:27 usingBlock:v8];

  return v6;
}

- (id)_sanitizedMainMenu
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = +[UIMainMenuSystem sharedSystem];
  _rootMenu = [v4 _rootMenu];

  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [_rootMenu children];
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __44___UIKeyShortcutHUDModel__sanitizedMainMenu__block_invoke;
        v16[3] = &unk_1E710E090;
        v16[4] = self;
        v17 = array;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __44___UIKeyShortcutHUDModel__sanitizedMainMenu__block_invoke_2;
        v15[3] = &unk_1E710E0B8;
        v15[4] = self;
        v15[5] = a2;
        [v11 _acceptMenuVisit:v16 leafVisit:v15];
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = [_rootMenu menuByReplacingChildren:array];

  return v12;
}

- (id)_menuByOmittingNonKeyCommandsInMenu:(id)menu
{
  v23 = *MEMORY[0x1E69E9840];
  menuCopy = menu;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [menuCopy children];
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __62___UIKeyShortcutHUDModel__menuByOmittingNonKeyCommandsInMenu___block_invoke;
        v16[3] = &unk_1E710E090;
        v16[4] = self;
        v17 = array;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __62___UIKeyShortcutHUDModel__menuByOmittingNonKeyCommandsInMenu___block_invoke_2;
        v14[3] = &unk_1E70FE8E8;
        v15 = v17;
        [v10 _acceptMenuVisit:v16 leafVisit:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = [menuCopy menuByReplacingChildren:array];

  return v11;
}

- (void)_enumerateKeyCommandsInMenu:(id)menu block:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [menu children];
  v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __60___UIKeyShortcutHUDModel__enumerateKeyCommandsInMenu_block___block_invoke;
        v15[3] = &unk_1E710E108;
        v15[4] = self;
        v16 = blockCopy;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __60___UIKeyShortcutHUDModel__enumerateKeyCommandsInMenu_block___block_invoke_3;
        v13[3] = &unk_1E710E130;
        v14 = v16;
        [v11 _acceptMenuVisit:v15 leafVisit:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)_validateKeyCommandAndAlternates:(id)alternates
{
  v15 = *MEMORY[0x1E69E9840];
  alternatesCopy = alternates;
  [(_UIKeyShortcutHUDModel *)self _validateBaseKeyCommand:alternatesCopy usingAlternate:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  _leafAlternates = [alternatesCopy _leafAlternates];
  v6 = [_leafAlternates countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(_leafAlternates);
        }

        [(_UIKeyShortcutHUDModel *)self _validateBaseKeyCommand:alternatesCopy usingAlternate:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [_leafAlternates countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_validateBaseKeyCommand:(id)command usingAlternate:(id)alternate
{
  commandCopy = command;
  alternateCopy = alternate;
  v8 = alternateCopy;
  if (alternateCopy)
  {
    v9 = [alternateCopy alternateLeafWithBaseLeaf:commandCopy];
    v10 = objc_opt_class();
    v11 = v9;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (!v13)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v13 = commandCopy;
    if (!v13)
    {
      goto LABEL_31;
    }
  }

  if (([(NSMutableSet *)self->_performableAppKeyCommands containsObject:v13]& 1) == 0 && ([(NSMutableSet *)self->_equivalentKeyCommandsInPriorityAlreadyEnumerated containsObject:v13]& 1) == 0)
  {
    [(NSMutableSet *)self->_equivalentKeyCommandsInPriorityAlreadyEnumerated addObject:v13];
    [v13 _localizeWithGSKeyboard:self->_gsKeyboard automatically:_UIGetEnableLayoutAwareShortcutsAutomatic() force:0];
    v32 = 0;
    v14 = [(_UIKeyShortcutHUDModel *)self _isKeyCommandPerformable:v13 outTarget:&v32];
    v15 = v32;
    if (v14)
    {
      [(NSMutableSet *)self->_performableAppKeyCommands addObject:v13];
      v16 = [[UIKeyCommand alloc] initWithKeyCommand:v13];
      [(NSMapTable *)self->_appKeyCommandToModelKeyCommandMap setObject:v16 forKey:v13];
      [(NSMutableDictionary *)self->_modelKeyCommandToAppKeyCommandMap setObject:v13 forKey:v16];
      v17 = [_UIKeyShortcutHUDShortcut shortcutWithUIKeyCommand:v16];
      v31 = v15;
      [v17 setOriginalTarget:v15];
      [(NSMapTable *)self->_modelKeyCommandToModelShortcutMap setObject:v17 forKey:v16];
      [(NSMutableSet *)self->_modelKeyCommands addObject:v16];
      uiKeyCommand = [v17 uiKeyCommand];
      discoverabilityTitle = [uiKeyCommand discoverabilityTitle];
      if ([discoverabilityTitle length])
      {
        v20 = 1;
      }

      else
      {
        title = [uiKeyCommand title];
        v20 = [title length] != 0;
      }

      attributes = [uiKeyCommand attributes];
      attributes2 = [uiKeyCommand attributes];
      v24 = (attributes & 1) == 0 && v20;
      v25 = (attributes2 & 4) == 0 && v24;

      if (v25)
      {
        [(NSMapTable *)self->_displayableAppKeyCommandToModelShortcutMap setObject:v17 forKey:v13];
      }

      [v17 setBaseShortcutForAlternate:v17];
      v15 = v31;
      if (v8)
      {
        v26 = [(NSMapTable *)self->_appKeyCommandToModelKeyCommandMap objectForKey:commandCopy];
        v27 = [(NSMapTable *)self->_modelKeyCommandToModelShortcutMap objectForKey:v26];
        v28 = v27;
        if (v27)
        {
          alternatesMap = [v27 alternatesMap];
          [alternatesMap setObject:v17 forKeyedSubscript:v8];

          [v17 setAlternateForBaseShortcut:v8];
          [v17 setBaseShortcutForAlternate:v28];
          if (v25)
          {
            displayableAlternates = [v28 displayableAlternates];
            [displayableAlternates addObject:v8];
          }
        }
      }
    }
  }

LABEL_31:
}

- (BOOL)_isKeyCommandPerformable:(id)performable outTarget:(id *)target
{
  performableCopy = performable;
  _responderForKeyEvents = [UIApp _responderForKeyEvents];
  v8 = [performableCopy _resolvedTargetFromFirstTarget:_responderForKeyEvents sender:0];

  if (target)
  {
    v9 = v8;
    *target = v8;
  }

  v10 = [(_UIMenuLeafValidator *)self->_validator validatedCommandForTarget:v8 command:performableCopy sender:0];
  _UIMenuLeafCopyValidatablePropertiesFromValidatedLeaf(performableCopy, v10);
  if (v8)
  {
    v11 = ([performableCopy attributes] & 1) == 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_validatedHUDMenuFromUIMenu:(id)menu
{
  v23 = *MEMORY[0x1E69E9840];
  menuCopy = menu;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [menuCopy children];
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __54___UIKeyShortcutHUDModel__validatedHUDMenuFromUIMenu___block_invoke;
        v16[3] = &unk_1E710E090;
        v16[4] = self;
        v17 = array;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __54___UIKeyShortcutHUDModel__validatedHUDMenuFromUIMenu___block_invoke_2;
        v14[3] = &unk_1E710E158;
        v14[4] = self;
        v15 = v17;
        [v10 _acceptMenuVisit:v16 leafVisit:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = [_UIKeyShortcutHUDMenu menuWithUIMenu:menuCopy children:array];

  return v11;
}

- (id)_finalizedHUDMenuFromValidatedHUDMenu:(id)menu
{
  v21 = *MEMORY[0x1E69E9840];
  menuCopy = menu;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  children = [menuCopy children];
  v7 = [children countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(children);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = objc_opt_new();
        [(_UIKeyShortcutHUDModel *)self _addShortcutsFromHUDMenu:v11 toShortcutsArray:v12];
        if ([v12 count])
        {
          v13 = [v11 menuByReplacingChildren:v12];
          [array addObject:v13];
        }
      }

      v8 = [children countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [menuCopy menuByReplacingChildren:array];

  return v14;
}

- (void)_addShortcutsFromHUDMenu:(id)menu toShortcutsArray:(id)array
{
  v22 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [menu children];
  v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __68___UIKeyShortcutHUDModel__addShortcutsFromHUDMenu_toShortcutsArray___block_invoke;
        v15[3] = &unk_1E710E180;
        v15[4] = self;
        v16 = arrayCopy;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __68___UIKeyShortcutHUDModel__addShortcutsFromHUDMenu_toShortcutsArray___block_invoke_2;
        v13[3] = &unk_1E710E1A8;
        v14 = v16;
        [v11 _acceptMenuVisit:v15 shortcutVisit:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v16 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  objectEnumerator = [(NSMapTable *)self->_modelKeyCommandToModelShortcutMap objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [array addObject:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [coderCopy encodeObject:array forKey:@"activeShortcuts"];
  [coderCopy encodeObject:self->_menu forKey:@"menu"];
}

- (_UIKeyShortcutHUDModel)initWithCoder:(id)coder
{
  v41 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(_UIKeyShortcutHUDModel *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = [v6 setWithObjects:{v7, v8, 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"activeShortcuts"];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        v15 = 0;
        do
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v35 + 1) + 8 * v15);
          uiKeyCommand = [v16 uiKeyCommand];
          modelKeyCommands = [(_UIKeyShortcutHUDModel *)v5 modelKeyCommands];
          [modelKeyCommands addObject:uiKeyCommand];

          modelKeyCommandToModelShortcutMap = [(_UIKeyShortcutHUDModel *)v5 modelKeyCommandToModelShortcutMap];
          [modelKeyCommandToModelShortcutMap setObject:v16 forKey:uiKeyCommand];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v13);
    }

    v20 = objc_opt_self();
    v21 = [coderCopy decodeObjectOfClass:v20 forKey:@"menu"];
    menu = v5->_menu;
    v5->_menu = v21;

    if (([UIApp _disableLayoutAwareShortcuts] & 1) == 0)
    {
      v23 = +[UIDevice currentDevice];
      _isHardwareKeyboardAvailable = [v23 _isHardwareKeyboardAvailable];

      if (_isHardwareKeyboardAvailable)
      {
        v5->_gsKeyboard = [UIApp _hardwareKeyboard];
      }
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v25 = v5->_modelKeyCommands;
    v26 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v32;
      do
      {
        v29 = 0;
        do
        {
          if (*v32 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v31 + 1) + 8 * v29++) _localizeWithGSKeyboard:v5->_gsKeyboard automatically:_UIGetEnableLayoutAwareShortcutsAutomatic() force:0];
        }

        while (v27 != v29);
        v27 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v27);
    }

    v5->_gsKeyboard = 0;
  }

  return v5;
}

@end