@interface TVRUIShortcutsController
- (BOOL)itemIsEnabledWithIdentifier:(id)a3;
- (NSArray)allShortcuts;
- (NSArray)availableShortcuts;
- (NSArray)disabledShortcuts;
- (NSArray)internalShortcuts;
- (NSSet)disabledShortcutIdentifiers;
- (id)_allItems;
- (id)_loadDisabledShortcutIdentifiers;
- (void)_invalidateFilteredShortcuts;
- (void)_persistDisabledShortcutIdentifiers:(id)a3;
- (void)disableShortcutForIdentifier:(id)a3;
- (void)enableShortcutForIdentifier:(id)a3;
- (void)toggleItemEnablementWithIdentifier:(id)a3;
@end

@implementation TVRUIShortcutsController

- (BOOL)itemIsEnabledWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TVRUIShortcutsController *)self disabledShortcutIdentifiers];
  v6 = [v5 containsObject:v4];

  return v6 ^ 1;
}

- (void)enableShortcutForIdentifier:(id)a3
{
  v6 = a3;
  if ([v6 length])
  {
    v4 = [(TVRUIShortcutsController *)self disabledShortcutIdentifiers];
    v5 = [v4 mutableCopy];

    [v5 removeObject:v6];
    [(TVRUIShortcutsController *)self setDisabledShortcutIdentifiers:v5];
    [(TVRUIShortcutsController *)self _invalidateFilteredShortcuts];
  }
}

- (void)disableShortcutForIdentifier:(id)a3
{
  v6 = a3;
  if ([v6 length])
  {
    v4 = [(TVRUIShortcutsController *)self disabledShortcutIdentifiers];
    v5 = [v4 mutableCopy];

    [v5 addObject:v6];
    [(TVRUIShortcutsController *)self setDisabledShortcutIdentifiers:v5];
    [(TVRUIShortcutsController *)self _invalidateFilteredShortcuts];
  }
}

- (void)toggleItemEnablementWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    if ([(TVRUIShortcutsController *)self itemIsEnabledWithIdentifier:v4])
    {
      [(TVRUIShortcutsController *)self disableShortcutForIdentifier:v4];
    }

    else
    {
      [(TVRUIShortcutsController *)self enableShortcutForIdentifier:v4];
    }
  }
}

- (NSArray)allShortcuts
{
  allShortcuts = self->_allShortcuts;
  if (!allShortcuts)
  {
    v4 = [(TVRUIShortcutsController *)self _allItems];
    v5 = self->_allShortcuts;
    self->_allShortcuts = v4;

    allShortcuts = self->_allShortcuts;
  }

  return allShortcuts;
}

- (NSArray)availableShortcuts
{
  v22 = *MEMORY[0x277D85DE8];
  availableShortcuts = self->_availableShortcuts;
  if (!availableShortcuts)
  {
    v4 = [(TVRUIShortcutsController *)self _allItems];
    v5 = [(TVRUIShortcutsController *)self disabledShortcutIdentifiers];
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 identifier];
          v14 = [v5 containsObject:v13];

          if ((v14 & 1) == 0)
          {
            [(NSArray *)v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v15 = self->_availableShortcuts;
    self->_availableShortcuts = v6;

    availableShortcuts = self->_availableShortcuts;
  }

  return availableShortcuts;
}

- (NSArray)disabledShortcuts
{
  v22 = *MEMORY[0x277D85DE8];
  disabledShortcuts = self->_disabledShortcuts;
  if (!disabledShortcuts)
  {
    v4 = [(TVRUIShortcutsController *)self _allItems];
    v5 = [(TVRUIShortcutsController *)self disabledShortcutIdentifiers];
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 identifier];
          v14 = [v5 containsObject:v13];

          if (v14)
          {
            [(NSArray *)v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v15 = self->_disabledShortcuts;
    self->_disabledShortcuts = v6;

    disabledShortcuts = self->_disabledShortcuts;
  }

  return disabledShortcuts;
}

- (NSArray)internalShortcuts
{
  v19 = *MEMORY[0x277D85DE8];
  internalShortcuts = self->_internalShortcuts;
  if (!internalShortcuts)
  {
    v4 = [(TVRUIShortcutsController *)self _allItems];
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 isInternal])
          {
            [(NSArray *)v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = self->_internalShortcuts;
    self->_internalShortcuts = v5;

    internalShortcuts = self->_internalShortcuts;
  }

  return internalShortcuts;
}

- (void)_invalidateFilteredShortcuts
{
  v3 = [(TVRUIShortcutsController *)self disabledShortcutIdentifiers];
  v4 = [v3 allObjects];
  [(TVRUIShortcutsController *)self _persistDisabledShortcutIdentifiers:v4];

  [(TVRUIShortcutsController *)self setAvailableShortcuts:0];
  [(TVRUIShortcutsController *)self setDisabledShortcuts:0];
  [(TVRUIShortcutsController *)self setInternalShortcuts:0];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"TVRUIShortcutsControllerShortcutsDidChangeNotification" object:0];
}

- (id)_allItems
{
  v17[7] = *MEMORY[0x277D85DE8];
  v2 = [TVRUIShortcutItem shortcutItemForKind:0];
  v17[0] = v2;
  v3 = [TVRUIShortcutItem shortcutItemForKind:1];
  v17[1] = v3;
  v4 = [TVRUIShortcutItem shortcutItemForKind:2];
  v17[2] = v4;
  v5 = [TVRUIShortcutItem shortcutItemForKind:3];
  v17[3] = v5;
  v6 = [TVRUIShortcutItem shortcutItemForKind:4];
  v17[4] = v6;
  v7 = [TVRUIShortcutItem shortcutItemForKind:6];
  v17[5] = v7;
  v8 = [TVRUIShortcutItem shortcutItemForKind:7];
  v17[6] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:7];

  v10 = v9;
  v11 = v10;
  if ([MEMORY[0x277D6C4E8] isInternalInstall])
  {
    v12 = [TVRUIShortcutItem shortcutItemForKind:5];
    v13 = [TVRUIShortcutItem shortcutItemForKind:8, v12];
    v16[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v11 = [v10 arrayByAddingObjectsFromArray:v14];
  }

  return v11;
}

- (NSSet)disabledShortcutIdentifiers
{
  disabledShortcutIdentifiers = self->_disabledShortcutIdentifiers;
  if (!disabledShortcutIdentifiers)
  {
    v4 = [(TVRUIShortcutsController *)self _loadDisabledShortcutIdentifiers];
    v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
    v6 = self->_disabledShortcutIdentifiers;
    self->_disabledShortcutIdentifiers = v5;

    disabledShortcutIdentifiers = self->_disabledShortcutIdentifiers;
  }

  return disabledShortcutIdentifiers;
}

- (void)_persistDisabledShortcutIdentifiers:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  [v5 setObject:v4 forKey:@"disabledShortcutIdentifiers"];
}

- (id)_loadDisabledShortcutIdentifiers
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"disabledShortcutIdentifiers"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

@end