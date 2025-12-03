@interface PTSection
- (BOOL)_shouldEnableRow:(id)row;
- (BOOL)isEqual:(id)equal;
- (NSArray)allSections;
- (NSArray)enabledSections;
- (PTComponentObserver)componentObserver;
- (PTSection)initWithCoder:(id)coder;
- (PTSection)initWithRows:(id)rows;
- (id)_remoteEditingWhitelistedComponent;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_recomputeEnabledSection;
- (void)_reloadEnabledRows;
- (void)_sendInserts:(id)inserts deletes:(id)deletes;
- (void)_sendReload;
- (void)_updateEnabledRows;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setSettings:(id)settings;
- (void)settings:(id)settings changedValueForKeyPath:(id)path;
@end

@implementation PTSection

- (PTSection)initWithRows:(id)rows
{
  v23 = *MEMORY[0x277D85DE8];
  rowsCopy = rows;
  v21.receiver = self;
  v21.super_class = PTSection;
  v5 = [(PTSection *)&v21 init];
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = rowsCopy;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          [v11 setSection:{v5, v17}];
          [v11 addObserver:v5];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v8);
    }

    v12 = [v6 copy];
    rows = v5->_rows;
    v5->_rows = v12;

    v5->_enabledSection = 1;
    array = [MEMORY[0x277CBEB18] array];
    enabledRows = v5->_enabledRows;
    v5->_enabledRows = array;

    [(PTSection *)v5 _reloadEnabledRows];
  }

  return v5;
}

- (void)dealloc
{
  [(PTSettings *)self->_settings removeKeyPathObserver:self];
  unregisterBlock = self->_unregisterBlock;
  if (unregisterBlock)
  {
    unregisterBlock[2](unregisterBlock, self);
  }

  v4.receiver = self;
  v4.super_class = PTSection;
  [(PTSection *)&v4 dealloc];
}

- (void)setSettings:(id)settings
{
  v18 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  if (self->_settings)
  {
    v6 = PTLogObjectForTopic(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21E61D000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring attempt to set settings on a PTSection that already has settings", buf, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_settings, settings);
    [(PTSettings *)self->_settings addKeyPathObserver:self];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_rows;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * i) setSettings:{self->_settings, v12}];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v9);
    }

    [(PTSection *)self _reloadEnabledRows];
    [(PTSection *)self _recomputeEnabledSection];
  }
}

- (void)settings:(id)settings changedValueForKeyPath:(id)path
{
  [(PTSection *)self _updateEnabledRows:settings];

  [(PTSection *)self _recomputeEnabledSection];
}

- (NSArray)allSections
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (NSArray)enabledSections
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_enabledSection)
  {
    v4[0] = self;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (id)_remoteEditingWhitelistedComponent
{
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_rows;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = objc_opt_class();
        if (PTRowClassIsWhitelistedForRemoteEditing(v10) && [v9 isEncodable])
        {
          [array addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v11 = [[PTSection alloc] initWithRows:array];
  title = [(PTSection *)self title];
  [(PTSection *)v11 setTitle:title];

  appearancePredicate = [(PTSection *)self appearancePredicate];
  [(PTSection *)v11 setAppearancePredicate:appearancePredicate];

  childSettingsKeyPath = [(PTSection *)self childSettingsKeyPath];
  [(PTSection *)v11 setChildSettingsKeyPath:childSettingsKeyPath];

  return v11;
}

- (void)_recomputeEnabledSection
{
  appearancePredicate = self->_appearancePredicate;
  if (appearancePredicate)
  {
    v4 = [(NSPredicate *)appearancePredicate evaluateWithObject:self->_settings];
  }

  else
  {
    v4 = 1;
  }

  if (self->_enabledSection != v4)
  {
    self->_enabledSection = v4;
    WeakRetained = objc_loadWeakRetained(&self->_componentObserver);
    [WeakRetained enabledSectionsDidChange:self];
  }
}

- (void)_updateEnabledRows
{
  v20 = *MEMORY[0x277D85DE8];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  indexSet2 = [MEMORY[0x277CCAB58] indexSet];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_rows;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(PTSection *)self _shouldEnableRow:v10, indexSet2];
        v12 = [(NSMutableArray *)self->_enabledRows containsObject:v10];
        if (v12 && !v11)
        {
          [indexSet2 addIndex:v7];
          [(NSMutableArray *)self->_enabledRows removeObject:v10];
        }

        if (((v12 | !v11) & 1) == 0)
        {
          [indexSet addIndex:v6];
          [(NSMutableArray *)self->_enabledRows insertObject:v10 atIndex:v6];
        }

        v7 += v12;
        v6 += v11;
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  [(PTSection *)self _sendInserts:indexSet deletes:indexSet2];
}

- (void)_reloadEnabledRows
{
  v14 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_enabledRows removeAllObjects];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_rows;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([(PTSection *)self _shouldEnableRow:v8, v9])
        {
          [(NSMutableArray *)self->_enabledRows addObject:v8];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(PTSection *)self _sendReload];
}

- (BOOL)_shouldEnableRow:(id)row
{
  rowCopy = row;
  condition = [rowCopy condition];

  if (condition)
  {
    condition2 = [rowCopy condition];
    v7 = [condition2 evaluateWithObject:self->_settings];
  }

  else
  {
    externalCondition = [rowCopy externalCondition];

    if (!externalCondition)
    {
      v9 = 1;
      goto LABEL_6;
    }

    condition2 = [rowCopy externalCondition];
    v7 = condition2[2]();
  }

  v9 = v7;

LABEL_6:
  return v9;
}

- (void)_sendInserts:(id)inserts deletes:(id)deletes
{
  insertsCopy = inserts;
  deletesCopy = deletes;
  if ([insertsCopy count] || objc_msgSend(deletesCopy, "count"))
  {
    WeakRetained = objc_loadWeakRetained(&self->_componentObserver);
    [WeakRetained section:self didInsertRows:insertsCopy deleteRows:deletesCopy];
  }
}

- (void)_sendReload
{
  WeakRetained = objc_loadWeakRetained(&self->_componentObserver);
  [WeakRetained sectionDidReload:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else if ([(PTSection *)equalCopy isMemberOfClass:objc_opt_class()]&& BSEqualObjects() && BSEqualStrings() && BSEqualObjects())
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
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_rows];
  v5 = [builder appendString:self->_title];
  v6 = [builder appendObject:self->_appearancePredicate];
  v7 = [builder appendString:self->_childSettingsKeyPath];
  v8 = [builder hash];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_rows forKey:@"rows"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_childSettingsKeyPath forKey:@"childKeyPath"];
  if (os_variant_allows_internal_security_policies())
  {
    [coderCopy encodeObject:self->_appearancePredicate forKey:@"predicate"];
  }
}

- (PTSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"rows"];
  v9 = [(PTSection *)self initWithRows:v8];
  if (v9)
  {
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v9->_title;
    v9->_title = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"childKeyPath"];
    childSettingsKeyPath = v9->_childSettingsKeyPath;
    v9->_childSettingsKeyPath = v12;

    if (os_variant_allows_internal_security_policies())
    {
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
      appearancePredicate = v9->_appearancePredicate;
      v9->_appearancePredicate = v14;

      v16 = PTValidatePredicate(v9->_appearancePredicate);
      v17 = v9->_appearancePredicate;
      if (v16)
      {
        [(NSPredicate *)v17 allowEvaluation];
      }

      else
      {
        v9->_appearancePredicate = 0;
      }
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(MEMORY[0x277CBEA60] "allocWithZone:{"initWithArray:copyItems:", self->_rows, 1}")];
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithRows:", v5}];
  [v6 setTitle:self->_title];
  [v6 setChildSettingsKeyPath:self->_childSettingsKeyPath];
  [v6 setAppearancePredicate:self->_appearancePredicate];

  return v6;
}

- (PTComponentObserver)componentObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_componentObserver);

  return WeakRetained;
}

@end