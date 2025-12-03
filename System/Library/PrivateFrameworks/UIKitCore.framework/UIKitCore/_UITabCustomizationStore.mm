@interface _UITabCustomizationStore
+ (_UITabCustomizationStore)customizationStoreWithPersistenceIdentifier:(id)identifier;
+ (id)_dataForKey:(id)key persistenceIdentifier:(id)identifier;
+ (void)_saveData:(id)data forKey:(id)key persistenceIdentifier:(id)identifier;
- (BOOL)favoriteOrderContainsTab:(id)tab;
- (BOOL)hasModelCustomizations;
- (BOOL)isHiddenForTabIdentifier:(id)identifier isCustomized:(BOOL *)customized;
- (id)_initWithPersistenceIdentifier:(id)identifier;
- (id)favoriteOrderForDefaultIdentifiers:(id)identifiers;
- (unint64_t)_indexOfObserver:(id)observer;
- (void)_notifyForContentReset;
- (void)_notifyForFavoriteOrderChange;
- (void)_saveCustomization;
- (void)_saveCustomizationForTab:(id)tab recursive:(BOOL)recursive;
- (void)_saveSidebarState;
- (void)addObserver:(id)observer;
- (void)performWithoutSavingCustomization:(id)customization;
- (void)removeObserver:(id)observer;
- (void)reset;
- (void)saveCustomizationForTabs:(id)tabs;
- (void)saveFavoriteOrderCustomization:(id)customization defaultIdentifiers:(id)identifiers excludedIdentifiers:(id)excludedIdentifiers;
- (void)setCollapsedGroupIdentifiers:(id)identifiers availableIdentifiers:(id)availableIdentifiers;
- (void)setPreferredSidebarVisibility:(int64_t)visibility;
- (void)setPreferredSidebarWidth:(double)width;
- (void)updateCustomizationForTab:(id)tab;
@end

@implementation _UITabCustomizationStore

+ (_UITabCustomizationStore)customizationStoreWithPersistenceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (qword_1ED49F160 != -1)
  {
    dispatch_once(&qword_1ED49F160, &__block_literal_global_359);
  }

  v4 = [identifierCopy copy];
  v5 = v4;
  v6 = @"com.apple.UIKit.UITabCustomization.DefaultIdentifier";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [_MergedGlobals_1177 objectForKey:v7];
  if (!v8)
  {
    v8 = [[_UITabCustomizationStore alloc] _initWithPersistenceIdentifier:v7];
    [_MergedGlobals_1177 setObject:v8 forKey:v7];
  }

  return v8;
}

- (id)_initWithPersistenceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v72.receiver = self;
  v72.super_class = _UITabCustomizationStore;
  v6 = [(_UITabCustomizationStore *)&v72 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistenceIdentifier, identifier);
    v8 = [objc_opt_class() _dataForKey:@"com.apple.UIKit.UITabCustomization" persistenceIdentifier:identifierCopy];
    v9 = [v8 objectForKey:@"version"];
    v10 = v9;
    if (v9 == &unk_1EFE311F8 || v9 && (v11 = [v9 isEqual:&unk_1EFE311F8], v10, v11))
    {
      v12 = [v8 objectForKey:@"includedItems"];
      v13 = v12;
      v14 = MEMORY[0x1E695E0F0];
      if (v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = MEMORY[0x1E695E0F0];
      }

      v16 = v15;

      v17 = [v8 objectForKey:@"excludedItems"];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v14;
      }

      v71 = v19;

      v20 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v16];
      includedItems = v7->_includedItems;
      v7->_includedItems = v20;

      v22 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v71];
      excludedItems = v7->_excludedItems;
      v7->_excludedItems = v22;

      v24 = [v8 objectForKey:@"visibleItems"];
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v14;
      }

      v27 = v26;

      v28 = [v8 objectForKey:@"hiddenItems"];
      v29 = v28;
      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v14;
      }

      v31 = v30;

      v32 = [v8 objectForKey:@"displayOrder"];
      v33 = v32;
      v34 = MEMORY[0x1E695E0F8];
      if (v32)
      {
        v34 = v32;
      }

      v35 = v34;

      v36 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v27];
      visibleItems = v7->_visibleItems;
      v7->_visibleItems = v36;

      v38 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v31];
      hiddenItems = v7->_hiddenItems;
      v7->_hiddenItems = v38;

      v40 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v35];

      displayOrdersByIdentifier = v7->_displayOrdersByIdentifier;
      v7->_displayOrdersByIdentifier = v40;
    }

    else
    {
      orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
      v43 = v7->_includedItems;
      v7->_includedItems = orderedSet;

      v44 = [MEMORY[0x1E695DFA8] set];
      v45 = v7->_excludedItems;
      v7->_excludedItems = v44;

      v46 = [MEMORY[0x1E695DFA8] set];
      v47 = v7->_hiddenItems;
      v7->_hiddenItems = v46;

      v48 = [MEMORY[0x1E695DFA8] set];
      v49 = v7->_visibleItems;
      v7->_visibleItems = v48;

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v16 = v7->_displayOrdersByIdentifier;
      v7->_displayOrdersByIdentifier = dictionary;
    }

    v51 = [objc_opt_class() _dataForKey:@"com.apple.UIKit.UITabSidebar" persistenceIdentifier:identifierCopy];

    v52 = [v51 objectForKey:@"version"];

    v53 = v52;
    v54 = v53;
    if (v53 == &unk_1EFE311F8 || v53 && (v55 = [v53 isEqual:&unk_1EFE311F8], v54, v55))
    {
      v56 = [v51 objectForKey:@"collapsedSections"];
      v57 = [MEMORY[0x1E695DFA8] setWithArray:v56];
      collapsedGroupIdentifiers = v7->_collapsedGroupIdentifiers;
      v7->_collapsedGroupIdentifiers = v57;

      v59 = [v51 objectForKey:@"allSections"];
      if (v59)
      {
        v60 = v59;
      }

      else
      {
        v60 = v56;
      }

      v65 = [MEMORY[0x1E695DFD8] setWithArray:v60];
      allGroupIdentifiers = v7->_allGroupIdentifiers;
      v7->_allGroupIdentifiers = v65;

      v67 = [v51 objectForKey:@"preferredWidth"];
      [v67 doubleValue];
      v7->_preferredSidebarWidth = v68;

      v69 = [v51 objectForKey:@"preferredVisibility"];
      v7->_preferredSidebarVisibility = [v69 integerValue];
    }

    else
    {
      v61 = [MEMORY[0x1E695DFA8] set];
      v62 = v7->_collapsedGroupIdentifiers;
      v7->_collapsedGroupIdentifiers = v61;

      v63 = [MEMORY[0x1E695DFD8] set];
      v64 = v7->_allGroupIdentifiers;
      v7->_allGroupIdentifiers = v63;

      v7->_preferredSidebarWidth = 0.0;
      v7->_preferredSidebarVisibility = 0;
    }
  }

  return v7;
}

- (id)favoriteOrderForDefaultIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([(_UITabCustomizationStore *)self hasFavoriteOrderCustomization])
  {
    v5 = [(NSMutableOrderedSet *)self->_includedItems mutableCopy];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = identifiersCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if (([(NSMutableOrderedSet *)self->_includedItems containsObject:v11, v13]& 1) == 0 && ([(NSMutableSet *)self->_excludedItems containsObject:v11]& 1) == 0)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)performWithoutSavingCustomization:(id)customization
{
  self->_ignoringUpdates = 1;
  (*(customization + 2))(customization, a2);
  self->_ignoringUpdates = 0;
}

- (void)updateCustomizationForTab:(id)tab
{
  if (!self->_ignoringUpdates)
  {
    [(_UITabCustomizationStore *)self _saveCustomizationForTab:tab recursive:0];

    [(_UITabCustomizationStore *)self _saveCustomization];
  }
}

- (void)saveCustomizationForTabs:(id)tabs
{
  v15 = *MEMORY[0x1E69E9840];
  tabsCopy = tabs;
  [(NSMutableSet *)self->_visibleItems removeAllObjects];
  [(NSMutableSet *)self->_hiddenItems removeAllObjects];
  [(NSMutableDictionary *)self->_displayOrdersByIdentifier removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = tabsCopy;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(_UITabCustomizationStore *)self _saveCustomizationForTab:*(*(&v10 + 1) + 8 * v9++) recursive:1, v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(_UITabCustomizationStore *)self _saveCustomization];
}

- (BOOL)favoriteOrderContainsTab:(id)tab
{
  tabCopy = tab;
  _tabPlacement = [tabCopy _tabPlacement];
  if (_tabPlacement == 3)
  {
    LOBYTE(includedItems) = 1;
  }

  else
  {
    if (_tabPlacement == 2)
    {
      includedItems = self->_includedItems;
      identifier = [tabCopy identifier];
      LOBYTE(includedItems) = [includedItems containsObject:identifier];
    }

    else
    {
      if (_tabPlacement != 1)
      {
        LOBYTE(includedItems) = 0;
        goto LABEL_9;
      }

      includedItems = self->_excludedItems;
      identifier = [tabCopy identifier];
      LODWORD(includedItems) = [includedItems containsObject:identifier] ^ 1;
    }
  }

LABEL_9:

  return includedItems;
}

- (void)saveFavoriteOrderCustomization:(id)customization defaultIdentifiers:(id)identifiers excludedIdentifiers:(id)excludedIdentifiers
{
  v33 = *MEMORY[0x1E69E9840];
  customizationCopy = customization;
  identifiersCopy = identifiers;
  excludedIdentifiersCopy = excludedIdentifiers;
  [(NSMutableOrderedSet *)self->_includedItems removeAllObjects];
  [(NSMutableSet *)self->_excludedItems removeAllObjects];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = excludedIdentifiersCopy;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        if ([identifiersCopy containsObject:v16])
        {
          [(NSMutableSet *)self->_excludedItems addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v13);
  }

  if (![identifiersCopy isEqual:customizationCopy] || -[NSMutableSet count](self->_excludedItems, "count"))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = customizationCopy;
    v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v24;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v23 + 1) + 8 * j);
          [(NSMutableOrderedSet *)self->_includedItems addObject:v22, v23];
          [(NSMutableSet *)self->_excludedItems removeObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v19);
    }
  }

  [(_UITabCustomizationStore *)self _notifyForFavoriteOrderChange];
  [(_UITabCustomizationStore *)self _saveCustomization];
}

- (void)setCollapsedGroupIdentifiers:(id)identifiers availableIdentifiers:(id)availableIdentifiers
{
  availableIdentifiersCopy = availableIdentifiers;
  v7 = [identifiers mutableCopy];
  [v7 intersectSet:availableIdentifiersCopy];
  if (([(NSMutableSet *)self->_collapsedGroupIdentifiers isEqual:v7]& 1) == 0)
  {
    objc_storeStrong(&self->_collapsedGroupIdentifiers, v7);
    p_allGroupIdentifiers = &self->_allGroupIdentifiers;
    if (([(NSSet *)self->_allGroupIdentifiers isEqual:availableIdentifiersCopy]& 1) != 0)
    {
LABEL_6:
      [(_UITabCustomizationStore *)self _saveSidebarState];
      goto LABEL_7;
    }

LABEL_5:
    objc_storeStrong(p_allGroupIdentifiers, availableIdentifiers);
    goto LABEL_6;
  }

  p_allGroupIdentifiers = &self->_allGroupIdentifiers;
  if (([(NSSet *)self->_allGroupIdentifiers isEqual:availableIdentifiersCopy]& 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_7:
}

- (void)setPreferredSidebarWidth:(double)width
{
  if (self->_preferredSidebarWidth != width)
  {
    self->_preferredSidebarWidth = width;
    [(_UITabCustomizationStore *)self _saveSidebarState];
  }
}

- (void)setPreferredSidebarVisibility:(int64_t)visibility
{
  if (self->_preferredSidebarVisibility != visibility)
  {
    self->_preferredSidebarVisibility = visibility;
    [(_UITabCustomizationStore *)self _saveSidebarState];
  }
}

- (void)reset
{
  v3 = objc_opt_class();
  persistenceIdentifier = [(_UITabCustomizationStore *)self persistenceIdentifier];
  [v3 _saveData:0 forKey:@"com.apple.UIKit.UITabCustomization" persistenceIdentifier:persistenceIdentifier];

  [(NSMutableOrderedSet *)self->_includedItems removeAllObjects];
  [(NSMutableSet *)self->_excludedItems removeAllObjects];
  [(NSMutableSet *)self->_visibleItems removeAllObjects];
  [(NSMutableSet *)self->_hiddenItems removeAllObjects];
  [(NSMutableDictionary *)self->_displayOrdersByIdentifier removeAllObjects];

  [(_UITabCustomizationStore *)self _notifyForContentReset];
}

- (BOOL)isHiddenForTabIdentifier:(id)identifier isCustomized:(BOOL *)customized
{
  identifierCopy = identifier;
  v7 = [(NSMutableSet *)self->_hiddenItems containsObject:identifierCopy];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSMutableSet *)self->_visibleItems containsObject:identifierCopy];
  }

  *customized = v8;

  return v7;
}

- (void)_saveCustomizationForTab:(id)tab recursive:(BOOL)recursive
{
  recursiveCopy = recursive;
  v28 = *MEMORY[0x1E69E9840];
  tabCopy = tab;
  identifier = [tabCopy identifier];
  if (![tabCopy allowsHiding] || (v8 = objc_msgSend(tabCopy, "isHidden"), v8 == objc_msgSend(tabCopy, "isHiddenByDefault")))
  {
    [(NSMutableSet *)self->_hiddenItems removeObject:identifier];
    [(NSMutableSet *)self->_visibleItems removeObject:identifier];
  }

  else
  {
    if ([tabCopy isHidden])
    {
      hiddenItems = self->_hiddenItems;
    }

    else
    {
      hiddenItems = self->_visibleItems;
    }

    [(NSMutableSet *)hiddenItems addObject:identifier];
  }

  if ([tabCopy _isGroup])
  {
    v10 = tabCopy;
    _filteredDisplayOrderIdentifiers = [v10 _filteredDisplayOrderIdentifiers];
    children = [v10 children];
    v13 = [children bs_map:&__block_literal_global_45_2];

    v14 = _filteredDisplayOrderIdentifiers;
    v15 = v13;
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      if (!v14 || !v15)
      {

        goto LABEL_18;
      }

      v17 = [v14 isEqual:v15];

      if ((v17 & 1) == 0)
      {
LABEL_18:
        [(NSMutableDictionary *)self->_displayOrdersByIdentifier setValue:v14 forKey:identifier];
        if (recursiveCopy)
        {
          goto LABEL_19;
        }

        goto LABEL_27;
      }
    }

    [(NSMutableDictionary *)self->_displayOrdersByIdentifier removeObjectForKey:identifier];
    if (recursiveCopy)
    {
LABEL_19:
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      children2 = [v10 children];
      v19 = [children2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v24;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v24 != v21)
            {
              objc_enumerationMutation(children2);
            }

            [(_UITabCustomizationStore *)self _saveCustomizationForTab:*(*(&v23 + 1) + 8 * i) recursive:1];
          }

          v20 = [children2 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v20);
      }
    }

LABEL_27:
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  if (!observers)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
    v6 = self->_observers;
    self->_observers = v5;

    observers = self->_observers;
  }

  [(NSPointerArray *)observers compact];
  if ([(_UITabCustomizationStore *)self _indexOfObserver:observerCopy]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSPointerArray *)self->_observers addPointer:observerCopy];
  }
}

- (void)removeObserver:(id)observer
{
  if (self->_observers)
  {
    v4 = [(_UITabCustomizationStore *)self _indexOfObserver:observer];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSPointerArray *)self->_observers removePointerAtIndex:v4];
    }

    observers = self->_observers;

    [(NSPointerArray *)observers compact];
  }
}

- (unint64_t)_indexOfObserver:(id)observer
{
  observerCopy = observer;
  if ([(NSPointerArray *)self->_observers count])
  {
    v5 = 0;
    while ([(NSPointerArray *)self->_observers pointerAtIndex:v5]!= observerCopy)
    {
      if (++v5 >= [(NSPointerArray *)self->_observers count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

+ (id)_dataForKey:(id)key persistenceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = MEMORY[0x1E695E000];
  keyCopy = key;
  standardUserDefaults = [v6 standardUserDefaults];
  v9 = [standardUserDefaults objectForKey:keyCopy];

  if (v9)
  {
    v10 = [v9 objectForKey:identifierCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)_saveData:(id)data forKey:(id)key persistenceIdentifier:(id)identifier
{
  dataCopy = data;
  keyCopy = key;
  identifierCopy = identifier;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = [standardUserDefaults objectForKey:keyCopy];
  v11 = [v10 mutableCopy];

  v12 = dataCopy;
  if (dataCopy && !v11)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v12 = dataCopy;
    v11 = dictionary;
LABEL_5:
    [v11 setObject:v12 forKey:identifierCopy];
    goto LABEL_6;
  }

  if (dataCopy)
  {
    goto LABEL_5;
  }

  [v11 removeObjectForKey:identifierCopy];
LABEL_6:
  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults2 setObject:v11 forKey:keyCopy];
}

- (BOOL)hasModelCustomizations
{
  v3 = [(NSMutableSet *)self->_visibleItems count];
  v4 = [(NSMutableSet *)self->_hiddenItems count]+ v3;
  return v4 + [(NSMutableDictionary *)self->_displayOrdersByIdentifier count]!= 0;
}

- (void)_saveCustomization
{
  v13[6] = *MEMORY[0x1E69E9840];
  if ([(_UITabCustomizationStore *)self hasFavoriteOrderCustomization]|| [(_UITabCustomizationStore *)self hasModelCustomizations])
  {
    v13[0] = &unk_1EFE311F8;
    v12[0] = @"version";
    v12[1] = @"includedItems";
    array = [(NSMutableOrderedSet *)self->_includedItems array];
    v4 = [array copy];
    v13[1] = v4;
    v12[2] = @"excludedItems";
    allObjects = [(NSMutableSet *)self->_excludedItems allObjects];
    v13[2] = allObjects;
    v12[3] = @"visibleItems";
    allObjects2 = [(NSMutableSet *)self->_visibleItems allObjects];
    v13[3] = allObjects2;
    v12[4] = @"hiddenItems";
    allObjects3 = [(NSMutableSet *)self->_hiddenItems allObjects];
    v13[4] = allObjects3;
    v12[5] = @"displayOrder";
    v8 = [(NSMutableDictionary *)self->_displayOrdersByIdentifier copy];
    v13[5] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:6];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_opt_class();
  persistenceIdentifier = [(_UITabCustomizationStore *)self persistenceIdentifier];
  [v10 _saveData:v9 forKey:@"com.apple.UIKit.UITabCustomization" persistenceIdentifier:persistenceIdentifier];
}

- (void)_saveSidebarState
{
  v11[5] = *MEMORY[0x1E69E9840];
  if (self->_preferredSidebarWidth != 0.0 || [(NSMutableSet *)self->_collapsedGroupIdentifiers count]|| self->_preferredSidebarVisibility)
  {
    v11[0] = &unk_1EFE311F8;
    v10[0] = @"version";
    v10[1] = @"preferredWidth";
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_preferredSidebarWidth];
    v11[1] = v3;
    v10[2] = @"preferredVisibility";
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_preferredSidebarVisibility];
    v11[2] = v4;
    v10[3] = @"allSections";
    allObjects = [(NSSet *)self->_allGroupIdentifiers allObjects];
    v11[3] = allObjects;
    v10[4] = @"collapsedSections";
    allObjects2 = [(NSMutableSet *)self->_collapsedGroupIdentifiers allObjects];
    v11[4] = allObjects2;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_class();
  persistenceIdentifier = [(_UITabCustomizationStore *)self persistenceIdentifier];
  [v8 _saveData:v7 forKey:@"com.apple.UIKit.UITabSidebar" persistenceIdentifier:persistenceIdentifier];
}

- (void)_notifyForFavoriteOrderChange
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSPointerArray *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (v8)
        {
          [v8 favoriteOrderDidChange:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSPointerArray *)self->_observers compact];
}

- (void)_notifyForContentReset
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSPointerArray *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (v8)
        {
          [v8 customizationStoreDidReset:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSPointerArray *)self->_observers compact];
}

@end