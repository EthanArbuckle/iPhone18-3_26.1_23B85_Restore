@interface PTModule
+ (PTModule)moduleWithSettings:(id)a3;
+ (PTModule)moduleWithTitle:(id)a3 contents:(id)a4;
+ (id)sectionWithRows:(id)a3 title:(id)a4 condition:(id)a5;
+ (id)sectionWithRows:(id)a3 title:(id)a4 conditionFormat:(id)a5;
+ (id)submoduleWithModule:(id)a3 childSettingsKeyPath:(id)a4 condition:(id)a5;
- (BOOL)isEqual:(id)a3;
- (PTComponentObserver)componentObserver;
- (PTModule)initWithCoder:(id)a3;
- (PTModule)initWithContents:(id)a3;
- (id)_computeEnabledSections;
- (id)_remoteEditingWhitelistedModule;
- (id)_settingsForComponent:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)indexPathForRow:(id)a3;
- (id)rowAtIndexPath:(id)a3;
- (unint64_t)hash;
- (void)_reportSectionInsertsAndDeletesRelativeTo:(id)a3;
- (void)_updateEnabledSections;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)section:(id)a3 didInsertRows:(id)a4 deleteRows:(id)a5;
- (void)sectionDidReload:(id)a3;
- (void)setSettings:(id)a3;
@end

@implementation PTModule

+ (PTModule)moduleWithTitle:(id)a3 contents:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PTModule alloc] initWithContents:v5];

  [(PTModule *)v7 setTitle:v6];

  return v7;
}

+ (id)sectionWithRows:(id)a3 title:(id)a4 conditionFormat:(id)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    a5 = [MEMORY[0x277CCAC30] predicateWithFormat:a5 arguments:&v13];
  }

  v10 = [a1 sectionWithRows:v8 title:v9 condition:a5];

  return v10;
}

+ (id)sectionWithRows:(id)a3 title:(id)a4 condition:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[PTSection alloc] initWithRows:v9];

  [(PTSection *)v10 setTitle:v8];
  [(PTSection *)v10 setAppearancePredicate:v7];

  return v10;
}

+ (id)submoduleWithModule:(id)a3 childSettingsKeyPath:(id)a4 condition:(id)a5
{
  v7 = a3;
  v8 = a5;
  [v7 setChildSettingsKeyPath:a4];
  [v7 setAppearancePredicate:v8];

  return v7;
}

+ (PTModule)moduleWithSettings:(id)a3
{
  v3 = a3;
  v4 = [v3 module];
  [v4 setSettings:v3];

  return v4;
}

- (PTModule)initWithContents:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PTModule;
  v5 = [(PTModule *)&v26 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = v6;

    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if ([v15 conformsToProtocol:{&unk_282FB1DB8, v22}])
          {
            [v15 setComponentObserver:v5];
            [v8 addObject:v15];
            v16 = [v15 allSections];
            [v9 addObjectsFromArray:v16];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v12);
    }

    v17 = [v8 copy];
    components = v5->_components;
    v5->_components = v17;

    v19 = [v9 copy];
    allSections = v5->_allSections;
    v5->_allSections = v19;

    objc_storeStrong(&v5->_enabledSections, v5->_allSections);
  }

  return v5;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_components;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        [*(*(&v9 + 1) + 8 * v7++) setComponentObserver:0];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(PTSettings *)self->_settings removeKeyPathObserver:self];
  v8.receiver = self;
  v8.super_class = PTModule;
  [(PTModule *)&v8 dealloc];
}

- (void)setSettings:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_settings)
  {
    v6 = PTLogObjectForTopic(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21E61D000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring attempt to set settings on a module that already has settings", buf, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_settings, a3);
    [(PTSettings *)self->_settings addKeyPathObserver:self];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_components;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v12 settings];

          if (!v13)
          {
            v14 = [(PTModule *)self _settingsForComponent:v12];
            [v12 setSettings:v14];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }

    [(PTModule *)self _updateEnabledSections];
  }
}

- (id)rowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[PTModule sectionAtIndex:](self, "sectionAtIndex:", [v4 pt_section]);
  v6 = [v4 pt_row];

  v7 = [v5 rowAtIndex:v6];

  return v7;
}

- (id)indexPathForRow:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [(NSArray *)self->_enabledSections indexOfObject:v5];
  v7 = [v5 indexOfRow:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL || v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCAA70] pt_indexPathForRow:v7 inSection:v6];
  }

  return v9;
}

- (void)section:(id)a3 didInsertRows:(id)a4 deleteRows:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_componentObserver);
  [WeakRetained section:v8 didInsertRows:v9 deleteRows:v10];

  if ([(NSHashTable *)self->_observers count])
  {
    v12 = [(NSArray *)self->_enabledSections indexOfObject:v8];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = v12;
      v14 = [MEMORY[0x277CBEB18] array];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __45__PTModule_section_didInsertRows_deleteRows___block_invoke;
      v30[3] = &unk_27835EF68;
      v15 = v14;
      v31 = v15;
      v32 = v13;
      [v9 enumerateIndexesUsingBlock:v30];
      v16 = [MEMORY[0x277CBEB18] array];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __45__PTModule_section_didInsertRows_deleteRows___block_invoke_2;
      v27[3] = &unk_27835EF68;
      v17 = v16;
      v28 = v17;
      v29 = v13;
      [v10 enumerateIndexesUsingBlock:v27];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v18 = self->_observers;
      v19 = [(NSHashTable *)v18 countByEnumeratingWithState:&v23 objects:v33 count:16];
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

            [*(*(&v23 + 1) + 8 * i) module:self didInsertRows:v15 deleteRows:{v17, v23}];
          }

          v20 = [(NSHashTable *)v18 countByEnumeratingWithState:&v23 objects:v33 count:16];
        }

        while (v20);
      }
    }
  }
}

void __45__PTModule_section_didInsertRows_deleteRows___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCAA70] pt_indexPathForRow:a2 inSection:*(a1 + 40)];
  [v2 addObject:v3];
}

void __45__PTModule_section_didInsertRows_deleteRows___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCAA70] pt_indexPathForRow:a2 inSection:*(a1 + 40)];
  [v2 addObject:v3];
}

- (void)sectionDidReload:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_componentObserver);
  [WeakRetained sectionDidReload:v4];

  if ([(NSHashTable *)self->_observers count]&& [(NSArray *)self->_enabledSections indexOfObject:v4]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_observers;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) moduleDidReload:{self, v11}];
        }

        while (v8 != v10);
        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_updateEnabledSections
{
  v6 = self->_enabledSections;
  v3 = [(PTModule *)self _computeEnabledSections];
  enabledSections = self->_enabledSections;
  self->_enabledSections = v3;

  if (![(NSArray *)self->_enabledSections isEqualToArray:v6])
  {
    WeakRetained = objc_loadWeakRetained(&self->_componentObserver);
    [WeakRetained enabledSectionsDidChange:self];

    [(PTModule *)self _reportSectionInsertsAndDeletesRelativeTo:v6];
  }
}

- (id)_computeEnabledSections
{
  v17 = *MEMORY[0x277D85DE8];
  appearancePredicate = self->_appearancePredicate;
  if (appearancePredicate && ![(NSPredicate *)appearancePredicate evaluateWithObject:self->_settings])
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_components;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) enabledSections];
          [v4 addObjectsFromArray:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (void)_reportSectionInsertsAndDeletesRelativeTo:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v21 = a3;
  if ([(NSHashTable *)self->_observers count])
  {
    v4 = [MEMORY[0x277CCAB58] indexSet];
    v5 = [MEMORY[0x277CCAB58] indexSet];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = self->_allSections;
    v6 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v10 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = [(NSArray *)self->_enabledSections containsObject:v12];
          v14 = [v21 containsObject:v12];
          if (v14 && !v13)
          {
            [v5 addIndex:v9];
          }

          if (((v14 | !v13) & 1) == 0)
          {
            [v4 addIndex:v8];
          }

          v9 += v14;
          v8 += v13;
        }

        v7 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }

    if ([v4 count] || objc_msgSend(v5, "count"))
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = self->_observers;
      v16 = [(NSHashTable *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v23;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v22 + 1) + 8 * j) module:self didInsertSections:v4 deleteSections:v5];
          }

          v17 = [(NSHashTable *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v17);
      }
    }
  }
}

- (id)_settingsForComponent:(id)a3
{
  v4 = [a3 childSettingsKeyPath];
  settings = self->_settings;
  if (v4)
  {
    v6 = [(PTSettings *)settings valueForKeyPath:v4];
  }

  else
  {
    v6 = settings;
  }

  v7 = v6;

  return v7;
}

- (id)_remoteEditingWhitelistedModule
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_components;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) _remoteEditingWhitelistedComponent];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v10 = [(PTModule *)self title];
  v11 = [PTModule moduleWithTitle:v10 contents:v3];

  v12 = [(PTModule *)self appearancePredicate];
  [v11 setAppearancePredicate:v12];

  v13 = [(PTModule *)self childSettingsKeyPath];
  [v11 setChildSettingsKeyPath:v13];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else if ([(PTModule *)v4 isMemberOfClass:objc_opt_class()]&& BSEqualObjects() && BSEqualStrings() && BSEqualObjects())
  {
    v5 = BSEqualObjects();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_components];
  v5 = [v3 appendString:self->_title];
  v6 = [v3 appendObject:self->_appearancePredicate];
  v7 = [v3 appendString:self->_childSettingsKeyPath];
  v8 = [v3 hash];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_components forKey:@"components"];
  [v4 encodeObject:self->_title forKey:@"title"];
  [v4 encodeObject:self->_childSettingsKeyPath forKey:@"childKeyPath"];
  if (os_variant_allows_internal_security_policies())
  {
    [v4 encodeObject:self->_appearancePredicate forKey:@"predicate"];
  }
}

- (PTModule)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"components"];
  v10 = [(PTModule *)self initWithContents:v9];
  if (v10)
  {
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v10->_title;
    v10->_title = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"childKeyPath"];
    childSettingsKeyPath = v10->_childSettingsKeyPath;
    v10->_childSettingsKeyPath = v13;

    if (os_variant_allows_internal_security_policies())
    {
      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
      appearancePredicate = v10->_appearancePredicate;
      v10->_appearancePredicate = v15;

      v17 = PTValidatePredicate(v10->_appearancePredicate);
      v18 = v10->_appearancePredicate;
      if (v17)
      {
        [(NSPredicate *)v18 allowEvaluation];
      }

      else
      {
        v10->_appearancePredicate = 0;
      }
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_components copyItems:1];
  v5 = [(PTModule *)self title];
  v6 = [PTModule moduleWithTitle:v5 contents:v4];

  v7 = [(PTModule *)self childSettingsKeyPath];
  [v6 setChildSettingsKeyPath:v7];

  v8 = [(PTModule *)self appearancePredicate];
  [v6 setAppearancePredicate:v8];

  return v6;
}

- (PTComponentObserver)componentObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_componentObserver);

  return WeakRetained;
}

@end