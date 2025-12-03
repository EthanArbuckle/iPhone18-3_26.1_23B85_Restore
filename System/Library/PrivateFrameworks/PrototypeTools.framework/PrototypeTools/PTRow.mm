@interface PTRow
+ (id)row;
+ (id)rowWithTitle:(id)title valueGetter:(id)getter valueSetter:(id)setter;
+ (id)rowWithTitle:(id)title valueKeyPath:(id)path;
- (BOOL)isEncodable;
- (BOOL)isEqual:(id)equal;
- (PTRow)init;
- (PTRow)initWithCoder:(id)coder;
- (PTRowAction)action;
- (PTSection)section;
- (id)childSettingsForKeyPath:(id)path;
- (id)conditionFormat:(id)format;
- (id)copyWithZone:(_NSZone *)zone;
- (id)image;
- (id)title;
- (id)value;
- (unint64_t)hash;
- (void)_sendImageChanged;
- (void)_sendRowDidReload;
- (void)_sendTitleChanged;
- (void)_sendValueChanged;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setSettings:(id)settings;
- (void)setValue:(id)value;
- (void)settings:(id)settings changedValueForKeyPath:(id)path;
@end

@implementation PTRow

+ (id)row
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (id)rowWithTitle:(id)title valueKeyPath:(id)path
{
  pathCopy = path;
  titleCopy = title;
  v8 = [self row];
  v9 = [v8 staticTitle:titleCopy];

  v10 = [v9 valueKeyPath:pathCopy];

  return v10;
}

+ (id)rowWithTitle:(id)title valueGetter:(id)getter valueSetter:(id)setter
{
  setterCopy = setter;
  getterCopy = getter;
  titleCopy = title;
  v11 = [self row];
  v12 = [v11 staticTitle:titleCopy];

  [v12 setValueGetter:getterCopy];
  [v12 setValueSetter:setterCopy];

  return v12;
}

- (PTRow)init
{
  v6.receiver = self;
  v6.super_class = PTRow;
  v2 = [(PTRow *)&v6 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;
  }

  return v2;
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
  v4.super_class = PTRow;
  [(PTRow *)&v4 dealloc];
}

- (id)conditionFormat:(id)format
{
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:format arguments:&v6];
  [(PTRow *)self setCondition:v4];

  return self;
}

- (id)title
{
  staticTitle = self->_staticTitle;
  if (staticTitle || !self->_titleKeyPath)
  {
    v3 = staticTitle;
  }

  else
  {
    v3 = [(PTSettings *)self->_settings valueForKeyPath:?];
  }

  return v3;
}

- (id)image
{
  staticImage = self->_staticImage;
  if (staticImage || !self->_imageKeyPath)
  {
    v3 = staticImage;
  }

  else
  {
    v3 = [(PTSettings *)self->_settings valueForKeyPath:?];
  }

  return v3;
}

- (PTRowAction)action
{
  action = self->_action;
  if (action)
  {
    _defaultAction = action;
  }

  else
  {
    _defaultAction = [(PTRow *)self _defaultAction];
  }

  return _defaultAction;
}

- (id)childSettingsForKeyPath:(id)path
{
  settings = self->_settings;
  if (path)
  {
    v4 = [(PTSettings *)settings valueForKeyPath:?];
  }

  else
  {
    v4 = settings;
  }

  return v4;
}

- (id)value
{
  if (self->_valueKeyPath)
  {
    v3 = [(PTSettings *)self->_settings valueForKeyPath:?];
LABEL_5:
    v5 = v3;
    goto LABEL_6;
  }

  valueGetter = self->_valueGetter;
  if (valueGetter)
  {
    v3 = valueGetter[2](valueGetter, a2);
    goto LABEL_5;
  }

  v5 = 0;
LABEL_6:
  valueFormatter = self->_valueFormatter;
  if (valueFormatter)
  {
    v7 = valueFormatter[2](valueFormatter, v5, self->_settings);
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  valueValidatator = self->_valueValidatator;
  v8 = valueCopy;
  if (valueValidatator)
  {
    valueValidatator[2]();
  }

  else
  {
    [(PTRow *)self _validatedValue:valueCopy];
  }
  v6 = ;
  if (self->_valueKeyPath)
  {
    [(PTSettings *)self->_settings setValue:v6 forKeyPath:?];
  }

  else
  {
    valueSetter = self->_valueSetter;
    if (valueSetter)
    {
      valueSetter[2](valueSetter, v6);
    }
  }

  if (([v6 isEqual:v8] & 1) == 0)
  {
    [(PTRow *)self _sendValueChanged];
  }
}

- (void)setSettings:(id)settings
{
  settingsCopy = settings;
  settings = self->_settings;
  if (settings != settingsCopy)
  {
    v7 = settingsCopy;
    [(PTSettings *)settings removeKeyPathObserver:self];
    objc_storeStrong(&self->_settings, settings);
    settings = [(PTSettings *)self->_settings addKeyPathObserver:self];
    settingsCopy = v7;
  }

  MEMORY[0x2821F96F8](settings, settingsCopy);
}

- (void)settings:(id)settings changedValueForKeyPath:(id)path
{
  pathCopy = path;
  v7 = pathCopy;
  if (self->_settings == settings)
  {
    v8 = pathCopy;
    if ([pathCopy isEqualToString:self->_valueKeyPath])
    {
      pathCopy = [(PTRow *)self _sendValueChanged];
    }

    else if ([v8 isEqualToString:self->_titleKeyPath])
    {
      pathCopy = [(PTRow *)self _sendTitleChanged];
    }

    else
    {
      pathCopy = [v8 isEqualToString:self->_imageKeyPath];
      v7 = v8;
      if (!pathCopy)
      {
        goto LABEL_9;
      }

      pathCopy = [(PTRow *)self _sendImageChanged];
    }

    v7 = v8;
  }

LABEL_9:

  MEMORY[0x2821F96F8](pathCopy, v7);
}

- (void)_sendValueChanged
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
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
        if (objc_opt_respondsToSelector())
        {
          [v8 rowDidChangeValue:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_sendTitleChanged
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
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
        if (objc_opt_respondsToSelector())
        {
          [v8 rowDidChangeTitle:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_sendImageChanged
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
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
        if (objc_opt_respondsToSelector())
        {
          [v8 rowDidChangeImage:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_sendRowDidReload
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
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
        if (objc_opt_respondsToSelector())
        {
          [v8 rowDidReload:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else if ([(PTRow *)equalCopy isMemberOfClass:objc_opt_class()]&& BSEqualStrings() && BSEqualStrings() && BSEqualStrings() && BSEqualStrings() && BSEqualObjects())
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
  v4 = [builder appendString:self->_valueKeyPath];
  v5 = [builder appendString:self->_staticTitle];
  v6 = [builder appendString:self->_titleKeyPath];
  v7 = [builder appendString:self->_imageKeyPath];
  v8 = [builder appendObject:self->_condition];
  v9 = [builder appendObject:self->_action];
  v10 = [builder hash];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setValueKeyPath:self->_valueKeyPath];
  [v4 setStaticTitle:self->_staticTitle];
  [v4 setStaticImage:self->_staticImage];
  [v4 setTitleKeyPath:self->_titleKeyPath];
  [v4 setImageKeyPath:self->_imageKeyPath];
  [v4 setCondition:self->_condition];
  [v4 setAction:self->_action];
  [v4 setValueValidatator:self->_valueValidatator];
  [v4 setValueFormatter:self->_valueFormatter];
  [v4 setValueGetter:self->_valueGetter];
  [v4 setValueSetter:self->_valueSetter];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_valueKeyPath forKey:@"valueKeyPath"];
  [coderCopy encodeObject:self->_staticTitle forKey:@"staticTitle"];
  [coderCopy encodeObject:self->_titleKeyPath forKey:@"titleKeyPath"];
  [coderCopy encodeObject:self->_imageKeyPath forKey:@"imageKeyPath"];
  predicateFormat = [(NSPredicate *)self->_condition predicateFormat];
  v5 = [predicateFormat containsString:@"BLOCKPREDICATE"];

  if (v5)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE660];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** The NSPredicate provided for -[PTRow condition] is a block based predicate, which cannot be encoded. ***"];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  if (os_variant_allows_internal_security_policies())
  {
    [coderCopy encodeObject:self->_condition forKey:@"condition"];
  }

  [coderCopy encodeObject:self->_action forKey:@"action"];
}

- (PTRow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(objc_opt_class());

  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueKeyPath"];
    valueKeyPath = v5->_valueKeyPath;
    v5->_valueKeyPath = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"staticTitle"];
    staticTitle = v5->_staticTitle;
    v5->_staticTitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleKeyPath"];
    titleKeyPath = v5->_titleKeyPath;
    v5->_titleKeyPath = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageKeyPath"];
    imageKeyPath = v5->_imageKeyPath;
    v5->_imageKeyPath = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v14;

    if (os_variant_allows_internal_security_policies())
    {
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"condition"];
      condition = v5->_condition;
      v5->_condition = v16;

      v18 = PTValidatePredicate(v5->_condition);
      v19 = v5->_condition;
      if (v18)
      {
        [(NSPredicate *)v19 allowEvaluation];
      }

      else
      {
        v5->_condition = 0;
      }
    }
  }

  return v5;
}

- (BOOL)isEncodable
{
  if (self->_action)
  {
    v3 = objc_opt_class();
    IsWhitelistedForRemoteEditing = PTRowActionClassIsWhitelistedForRemoteEditing(v3);
    if (IsWhitelistedForRemoteEditing)
    {
      action = self->_action;

      LOBYTE(IsWhitelistedForRemoteEditing) = [(PTRowAction *)action isEncodable];
    }
  }

  else
  {
    LOBYTE(IsWhitelistedForRemoteEditing) = 1;
  }

  return IsWhitelistedForRemoteEditing;
}

- (PTSection)section
{
  WeakRetained = objc_loadWeakRetained(&self->_section);

  return WeakRetained;
}

@end