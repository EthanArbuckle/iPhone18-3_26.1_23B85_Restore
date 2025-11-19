@interface _UITabCustomizationStore
+ (_UITabCustomizationStore)customizationStoreWithPersistenceIdentifier:(id)a3;
+ (id)_dataForKey:(id)a3 persistenceIdentifier:(id)a4;
+ (void)_saveData:(id)a3 forKey:(id)a4 persistenceIdentifier:(id)a5;
- (BOOL)favoriteOrderContainsTab:(id)a3;
- (BOOL)hasModelCustomizations;
- (BOOL)isHiddenForTabIdentifier:(id)a3 isCustomized:(BOOL *)a4;
- (id)_initWithPersistenceIdentifier:(id)a3;
- (id)favoriteOrderForDefaultIdentifiers:(id)a3;
- (unint64_t)_indexOfObserver:(id)a3;
- (void)_notifyForContentReset;
- (void)_notifyForFavoriteOrderChange;
- (void)_saveCustomization;
- (void)_saveCustomizationForTab:(id)a3 recursive:(BOOL)a4;
- (void)_saveSidebarState;
- (void)addObserver:(id)a3;
- (void)performWithoutSavingCustomization:(id)a3;
- (void)removeObserver:(id)a3;
- (void)reset;
- (void)saveCustomizationForTabs:(id)a3;
- (void)saveFavoriteOrderCustomization:(id)a3 defaultIdentifiers:(id)a4 excludedIdentifiers:(id)a5;
- (void)setCollapsedGroupIdentifiers:(id)a3 availableIdentifiers:(id)a4;
- (void)setPreferredSidebarVisibility:(int64_t)a3;
- (void)setPreferredSidebarWidth:(double)a3;
- (void)updateCustomizationForTab:(id)a3;
@end

@implementation _UITabCustomizationStore

+ (_UITabCustomizationStore)customizationStoreWithPersistenceIdentifier:(id)a3
{
  v3 = a3;
  if (qword_1ED49F160 != -1)
  {
    dispatch_once(&qword_1ED49F160, &__block_literal_global_359);
  }

  v4 = [v3 copy];
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

- (id)_initWithPersistenceIdentifier:(id)a3
{
  v5 = a3;
  v72.receiver = self;
  v72.super_class = _UITabCustomizationStore;
  v6 = [(_UITabCustomizationStore *)&v72 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistenceIdentifier, a3);
    v8 = [objc_opt_class() _dataForKey:@"com.apple.UIKit.UITabCustomization" persistenceIdentifier:v5];
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
      v42 = [MEMORY[0x1E695DFA0] orderedSet];
      v43 = v7->_includedItems;
      v7->_includedItems = v42;

      v44 = [MEMORY[0x1E695DFA8] set];
      v45 = v7->_excludedItems;
      v7->_excludedItems = v44;

      v46 = [MEMORY[0x1E695DFA8] set];
      v47 = v7->_hiddenItems;
      v7->_hiddenItems = v46;

      v48 = [MEMORY[0x1E695DFA8] set];
      v49 = v7->_visibleItems;
      v7->_visibleItems = v48;

      v50 = [MEMORY[0x1E695DF90] dictionary];
      v16 = v7->_displayOrdersByIdentifier;
      v7->_displayOrdersByIdentifier = v50;
    }

    v51 = [objc_opt_class() _dataForKey:@"com.apple.UIKit.UITabSidebar" persistenceIdentifier:v5];

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

- (id)favoriteOrderForDefaultIdentifiers:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_UITabCustomizationStore *)self hasFavoriteOrderCustomization])
  {
    v5 = [(NSMutableOrderedSet *)self->_includedItems mutableCopy];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
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

- (void)performWithoutSavingCustomization:(id)a3
{
  self->_ignoringUpdates = 1;
  (*(a3 + 2))(a3, a2);
  self->_ignoringUpdates = 0;
}

- (void)updateCustomizationForTab:(id)a3
{
  if (!self->_ignoringUpdates)
  {
    [(_UITabCustomizationStore *)self _saveCustomizationForTab:a3 recursive:0];

    [(_UITabCustomizationStore *)self _saveCustomization];
  }
}

- (void)saveCustomizationForTabs:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSMutableSet *)self->_visibleItems removeAllObjects];
  [(NSMutableSet *)self->_hiddenItems removeAllObjects];
  [(NSMutableDictionary *)self->_displayOrdersByIdentifier removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
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

- (BOOL)favoriteOrderContainsTab:(id)a3
{
  v4 = a3;
  v5 = [v4 _tabPlacement];
  if (v5 == 3)
  {
    LOBYTE(includedItems) = 1;
  }

  else
  {
    if (v5 == 2)
    {
      includedItems = self->_includedItems;
      v6 = [v4 identifier];
      LOBYTE(includedItems) = [includedItems containsObject:v6];
    }

    else
    {
      if (v5 != 1)
      {
        LOBYTE(includedItems) = 0;
        goto LABEL_9;
      }

      includedItems = self->_excludedItems;
      v6 = [v4 identifier];
      LODWORD(includedItems) = [includedItems containsObject:v6] ^ 1;
    }
  }

LABEL_9:

  return includedItems;
}

- (void)saveFavoriteOrderCustomization:(id)a3 defaultIdentifiers:(id)a4 excludedIdentifiers:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(NSMutableOrderedSet *)self->_includedItems removeAllObjects];
  [(NSMutableSet *)self->_excludedItems removeAllObjects];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v10;
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
        if ([v9 containsObject:v16])
        {
          [(NSMutableSet *)self->_excludedItems addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v13);
  }

  if (![v9 isEqual:v8] || -[NSMutableSet count](self->_excludedItems, "count"))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = v8;
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

- (void)setCollapsedGroupIdentifiers:(id)a3 availableIdentifiers:(id)a4
{
  v9 = a4;
  v7 = [a3 mutableCopy];
  [v7 intersectSet:v9];
  if (([(NSMutableSet *)self->_collapsedGroupIdentifiers isEqual:v7]& 1) == 0)
  {
    objc_storeStrong(&self->_collapsedGroupIdentifiers, v7);
    p_allGroupIdentifiers = &self->_allGroupIdentifiers;
    if (([(NSSet *)self->_allGroupIdentifiers isEqual:v9]& 1) != 0)
    {
LABEL_6:
      [(_UITabCustomizationStore *)self _saveSidebarState];
      goto LABEL_7;
    }

LABEL_5:
    objc_storeStrong(p_allGroupIdentifiers, a4);
    goto LABEL_6;
  }

  p_allGroupIdentifiers = &self->_allGroupIdentifiers;
  if (([(NSSet *)self->_allGroupIdentifiers isEqual:v9]& 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_7:
}

- (void)setPreferredSidebarWidth:(double)a3
{
  if (self->_preferredSidebarWidth != a3)
  {
    self->_preferredSidebarWidth = a3;
    [(_UITabCustomizationStore *)self _saveSidebarState];
  }
}

- (void)setPreferredSidebarVisibility:(int64_t)a3
{
  if (self->_preferredSidebarVisibility != a3)
  {
    self->_preferredSidebarVisibility = a3;
    [(_UITabCustomizationStore *)self _saveSidebarState];
  }
}

- (void)reset
{
  v3 = objc_opt_class();
  v4 = [(_UITabCustomizationStore *)self persistenceIdentifier];
  [v3 _saveData:0 forKey:@"com.apple.UIKit.UITabCustomization" persistenceIdentifier:v4];

  [(NSMutableOrderedSet *)self->_includedItems removeAllObjects];
  [(NSMutableSet *)self->_excludedItems removeAllObjects];
  [(NSMutableSet *)self->_visibleItems removeAllObjects];
  [(NSMutableSet *)self->_hiddenItems removeAllObjects];
  [(NSMutableDictionary *)self->_displayOrdersByIdentifier removeAllObjects];

  [(_UITabCustomizationStore *)self _notifyForContentReset];
}

- (BOOL)isHiddenForTabIdentifier:(id)a3 isCustomized:(BOOL *)a4
{
  v6 = a3;
  v7 = [(NSMutableSet *)self->_hiddenItems containsObject:v6];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSMutableSet *)self->_visibleItems containsObject:v6];
  }

  *a4 = v8;

  return v7;
}

- (void)_saveCustomizationForTab:(id)a3 recursive:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 identifier];
  if (![v6 allowsHiding] || (v8 = objc_msgSend(v6, "isHidden"), v8 == objc_msgSend(v6, "isHiddenByDefault")))
  {
    [(NSMutableSet *)self->_hiddenItems removeObject:v7];
    [(NSMutableSet *)self->_visibleItems removeObject:v7];
  }

  else
  {
    if ([v6 isHidden])
    {
      hiddenItems = self->_hiddenItems;
    }

    else
    {
      hiddenItems = self->_visibleItems;
    }

    [(NSMutableSet *)hiddenItems addObject:v7];
  }

  if ([v6 _isGroup])
  {
    v10 = v6;
    v11 = [v10 _filteredDisplayOrderIdentifiers];
    v12 = [v10 children];
    v13 = [v12 bs_map:&__block_literal_global_45_2];

    v14 = v11;
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
        [(NSMutableDictionary *)self->_displayOrdersByIdentifier setValue:v14 forKey:v7];
        if (v4)
        {
          goto LABEL_19;
        }

        goto LABEL_27;
      }
    }

    [(NSMutableDictionary *)self->_displayOrdersByIdentifier removeObjectForKey:v7];
    if (v4)
    {
LABEL_19:
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v18 = [v10 children];
      v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
              objc_enumerationMutation(v18);
            }

            [(_UITabCustomizationStore *)self _saveCustomizationForTab:*(*(&v23 + 1) + 8 * i) recursive:1];
          }

          v20 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v20);
      }
    }

LABEL_27:
  }
}

- (void)addObserver:(id)a3
{
  v7 = a3;
  observers = self->_observers;
  if (!observers)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
    v6 = self->_observers;
    self->_observers = v5;

    observers = self->_observers;
  }

  [(NSPointerArray *)observers compact];
  if ([(_UITabCustomizationStore *)self _indexOfObserver:v7]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSPointerArray *)self->_observers addPointer:v7];
  }
}

- (void)removeObserver:(id)a3
{
  if (self->_observers)
  {
    v4 = [(_UITabCustomizationStore *)self _indexOfObserver:a3];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSPointerArray *)self->_observers removePointerAtIndex:v4];
    }

    observers = self->_observers;

    [(NSPointerArray *)observers compact];
  }
}

- (unint64_t)_indexOfObserver:(id)a3
{
  v4 = a3;
  if ([(NSPointerArray *)self->_observers count])
  {
    v5 = 0;
    while ([(NSPointerArray *)self->_observers pointerAtIndex:v5]!= v4)
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

+ (id)_dataForKey:(id)a3 persistenceIdentifier:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695E000];
  v7 = a3;
  v8 = [v6 standardUserDefaults];
  v9 = [v8 objectForKey:v7];

  if (v9)
  {
    v10 = [v9 objectForKey:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)_saveData:(id)a3 forKey:(id)a4 persistenceIdentifier:(id)a5
{
  v15 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = [v9 objectForKey:v7];
  v11 = [v10 mutableCopy];

  v12 = v15;
  if (v15 && !v11)
  {
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v12 = v15;
    v11 = v13;
LABEL_5:
    [v11 setObject:v12 forKey:v8];
    goto LABEL_6;
  }

  if (v15)
  {
    goto LABEL_5;
  }

  [v11 removeObjectForKey:v8];
LABEL_6:
  v14 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v14 setObject:v11 forKey:v7];
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
    v3 = [(NSMutableOrderedSet *)self->_includedItems array];
    v4 = [v3 copy];
    v13[1] = v4;
    v12[2] = @"excludedItems";
    v5 = [(NSMutableSet *)self->_excludedItems allObjects];
    v13[2] = v5;
    v12[3] = @"visibleItems";
    v6 = [(NSMutableSet *)self->_visibleItems allObjects];
    v13[3] = v6;
    v12[4] = @"hiddenItems";
    v7 = [(NSMutableSet *)self->_hiddenItems allObjects];
    v13[4] = v7;
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
  v11 = [(_UITabCustomizationStore *)self persistenceIdentifier];
  [v10 _saveData:v9 forKey:@"com.apple.UIKit.UITabCustomization" persistenceIdentifier:v11];
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
    v5 = [(NSSet *)self->_allGroupIdentifiers allObjects];
    v11[3] = v5;
    v10[4] = @"collapsedSections";
    v6 = [(NSMutableSet *)self->_collapsedGroupIdentifiers allObjects];
    v11[4] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_class();
  v9 = [(_UITabCustomizationStore *)self persistenceIdentifier];
  [v8 _saveData:v7 forKey:@"com.apple.UIKit.UITabSidebar" persistenceIdentifier:v9];
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