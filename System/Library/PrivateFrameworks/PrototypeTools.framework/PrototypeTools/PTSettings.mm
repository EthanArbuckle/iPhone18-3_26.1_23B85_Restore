@interface PTSettings
+ (id)emptyArchiveForSettingsClassName:(id)name;
+ (id)settingsFromArchiveDictionary:(id)dictionary;
+ (void)_applyArchiveValue:(id)value forKeyPath:(id)path toArchive:(id)archive;
- (BOOL)_applyArchiveValue:(id)value forKeyPath:(id)path error:(id *)error;
- (BOOL)_applyArchiveValue:(id)value forLeafKey:(id)key error:(id *)error;
- (BOOL)_getChild:(id *)child create:(BOOL)create leafKey:(id *)key forKeyPath:(id)path error:(id *)error;
- (PTSettings)initWithDefaultValues;
- (id)_allChildAndLeafKeys;
- (id)_archiveValueForKeyPath:(id)path;
- (id)_archiveValueForLeafKey:(id)key;
- (id)_createChildForKey:(id)key;
- (id)_ensureChildForKey:(id)key;
- (id)_initWithArchiveDictionary:(id)dictionary;
- (id)_initWithClassStructure:(id)structure;
- (id)_keyForChild:(id)child;
- (id)archiveDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)module;
- (void)_applyArchiveDictionary:(id)dictionary;
- (void)_createChildren;
- (void)_createChildrenAndOutlets;
- (void)_createOutlets;
- (void)_enumerateChildrenWithBlock:(id)block;
- (void)_enumerateLeafValuesWithBlock:(id)block;
- (void)_enumerateOutletsWithBlock:(id)block;
- (void)_safeSetValue:(id)value forLeafKey:(id)key;
- (void)_sendDidRestoreDefaults;
- (void)_sendKeyChanged:(id)changed;
- (void)_sendKeyPathChanged:(id)changed;
- (void)_sendWillRestoreDefaults;
- (void)_setObservationEnabled:(BOOL)enabled;
- (void)_startObservingChildren;
- (void)_startObservingProperties;
- (void)_startOrStopObservingPropertiesAndChildren;
- (void)_stopObservingChildren;
- (void)_stopObservingProperties;
- (void)_validateChildren;
- (void)addKeyObserver:(id)observer;
- (void)addKeyPathObserver:(id)observer;
- (void)applyArchiveValue:(id)value forKey:(id)key;
- (void)applySettings:(id)settings;
- (void)dealloc;
- (void)invalidateValueForKey:(id)key;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeKeyObserver:(id)observer;
- (void)removeKeyPathObserver:(id)observer;
- (void)restoreDefaultValues;
- (void)restoreFromArchiveDictionary:(id)dictionary;
- (void)settings:(id)settings changedValueForKeyPath:(id)path;
@end

@implementation PTSettings

- (PTSettings)initWithDefaultValues
{
  v10.receiver = self;
  v10.super_class = PTSettings;
  v2 = [(PTSettings *)&v10 init];
  if (v2)
  {
    IsAppleInternal = PTInstallIsAppleInternal();
    suppressesIntrospectionOnCustomerInstalls = [(PTSettings *)v2 suppressesIntrospectionOnCustomerInstalls];
    if (!suppressesIntrospectionOnCustomerInstalls || IsAppleInternal != 0)
    {
      v6 = objc_opt_class();
      v7 = [PTSettingsClassStructure structureForSettingsClass:v6];
      classStructure = v2->__classStructure;
      v2->__classStructure = v7;
    }

    if (suppressesIntrospectionOnCustomerInstalls)
    {
      [(PTSettings *)v2 createChildren];
    }

    else
    {
      [(PTSettings *)v2 _createChildren];
    }

    if (IsAppleInternal)
    {
      [(PTSettings *)v2 _createOutlets];
      [(PTSettings *)v2 setDefaultValues];
      if (suppressesIntrospectionOnCustomerInstalls)
      {
        [(PTSettings *)v2 _validateChildren];
      }
    }

    else
    {
      [(PTSettings *)v2 setDefaultValues];
    }
  }

  return v2;
}

- (void)_createChildren
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  childKeys = [(PTSettingsClassStructure *)self->__classStructure childKeys];
  v4 = [childKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(childKeys);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [(PTSettings *)self _ensureChildForKey:v8];
        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [childKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)dealloc
{
  if (self->__isObservingProperties)
  {
    [(PTSettings *)self _stopObservingProperties];
  }

  if (self->__isObservingChildren)
  {
    [(PTSettings *)self _stopObservingChildren];
  }

  v3.receiver = self;
  v3.super_class = PTSettings;
  [(PTSettings *)&v3 dealloc];
}

- (void)_createOutlets
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  outletKeys = [(PTSettingsClassStructure *)self->__classStructure outletKeys];
  v4 = [outletKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(outletKeys);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        _init = [[PTOutlet alloc] _init];
        [(PTSettings *)self setValue:_init forKey:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [outletKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_startOrStopObservingPropertiesAndChildren
{
  if (!self->__observationEnabled)
  {
    if (self->__isObservingProperties)
    {
      [(PTSettings *)self _stopObservingProperties];
    }

    goto LABEL_17;
  }

  _hasObservers = [(PTSettings *)self _hasObservers];
  v4 = _hasObservers;
  if (self->__observationEnabled)
  {
    _hasKeyPathObservers = [(PTSettings *)self _hasKeyPathObservers];
    if (!v4)
    {
      goto LABEL_4;
    }

LABEL_10:
    if (!self->__isObservingProperties)
    {
      [(PTSettings *)self _startObservingProperties];
      if (!_hasKeyPathObservers)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

LABEL_11:
    if (!_hasKeyPathObservers)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  _hasKeyPathObservers = 0;
  if (_hasObservers)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (!self->__isObservingProperties)
  {
    goto LABEL_11;
  }

  [(PTSettings *)self _stopObservingProperties];
  if (!_hasKeyPathObservers)
  {
LABEL_17:
    if (self->__isObservingChildren)
    {

      [(PTSettings *)self _stopObservingChildren];
    }

    return;
  }

LABEL_12:
  if (!self->__isObservingChildren)
  {

    [(PTSettings *)self _startObservingChildren];
  }
}

- (id)_initWithClassStructure:(id)structure
{
  structureCopy = structure;
  v9.receiver = self;
  v9.super_class = PTSettings;
  v6 = [(PTSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__classStructure, structure);
  }

  return v7;
}

- (void)_createChildrenAndOutlets
{
  [(PTSettings *)self _createChildren];

  [(PTSettings *)self _createOutlets];
}

- (void)_validateChildren
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  childKeys = [(PTSettingsClassStructure *)self->__classStructure childKeys];
  v4 = [childKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(childKeys);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(PTSettings *)self valueForKey:v8];

        if (!v9)
        {
          [MEMORY[0x277CBEAD8] raise:@"Child not initialized" format:{@"Child with key %@ has not been initialized.", v8}];
        }
      }

      v5 = [childKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)_initWithArchiveDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  initWithDefaultValues = [(PTSettings *)self initWithDefaultValues];
  v6 = initWithDefaultValues;
  if (initWithDefaultValues)
  {
    [(PTSettings *)initWithDefaultValues _applyArchiveDictionary:dictionaryCopy];
  }

  return v6;
}

- (void)_applyArchiveDictionary:(id)dictionary
{
  v31 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v23;
    *&v7 = 138412546;
    v21 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [dictionaryCopy objectForKey:{v11, v21}];
        childKeys = [(PTSettingsClassStructure *)self->__classStructure childKeys];
        v14 = [childKeys containsObject:v11];

        if (v14)
        {
          objc_opt_class();
          objc_opt_class();
          if (PTValidateDictionary(v12))
          {
            v15 = [(PTSettings *)self _ensureChildForKey:v11];
            [v15 _applyArchiveDictionary:v12];
          }

          else
          {
            v18 = PTLogObjectForTopic(0);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = objc_opt_class();
              *buf = v21;
              v27 = v11;
              v28 = 2112;
              v29 = v19;
              v20 = v19;
              _os_log_impl(&dword_21E61D000, v18, OS_LOG_TYPE_DEFAULT, "PTSettings can't apply archive for child settings key %@ (expected NSDictionary, found %@)", buf, 0x16u);
            }
          }
        }

        else
        {
          leafKeys = [(PTSettingsClassStructure *)self->__classStructure leafKeys];
          v17 = [leafKeys containsObject:v11];

          if (v17)
          {
            [(PTSettings *)self applyArchiveValue:v12 forKey:v11];
          }
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 applySettings:self];
  return v4;
}

+ (id)settingsFromArchiveDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"_internal_class"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = NSClassFromString(v7);
  }

  else
  {
    v8 = 0;
  }

  if ([(objc_class *)v8 isSubclassOfClass:self])
  {
    selfCopy = v8;
  }

  else
  {
    selfCopy = self;
  }

  v10 = [[selfCopy alloc] _initWithArchiveDictionary:dictionaryCopy];

  return v10;
}

- (id)archiveDictionary
{
  v28 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  settingsClassName = [(PTSettingsClassStructure *)self->__classStructure settingsClassName];
  [dictionary setObject:settingsClassName forKey:@"_internal_class"];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  _allChildAndLeafKeys = [(PTSettings *)self _allChildAndLeafKeys];
  v6 = [_allChildAndLeafKeys countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v20;
    *&v7 = 138412546;
    v18 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(_allChildAndLeafKeys);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        childKeys = [(PTSettingsClassStructure *)self->__classStructure childKeys];
        v13 = [childKeys containsObject:v11];

        if (v13)
        {
          v14 = [(PTSettings *)self valueForKey:v11];
          archiveDictionary = [v14 archiveDictionary];

          if (!archiveDictionary)
          {
            goto LABEL_15;
          }
        }

        else
        {
          archiveDictionary = [(PTSettings *)self archiveValueForKey:v11];
          if (!archiveDictionary)
          {
            goto LABEL_15;
          }
        }

        if (PTObjectIsRecursivelyPlistable(archiveDictionary))
        {
          [dictionary setObject:archiveDictionary forKey:v11];
        }

        else
        {
          v16 = PTLogObjectForTopic(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v24 = v11;
            v25 = 2112;
            v26 = archiveDictionary;
            _os_log_impl(&dword_21E61D000, v16, OS_LOG_TYPE_DEFAULT, "PTSettings cannot use archive value for property %@ as it contains non-plist types: %@", buf, 0x16u);
          }
        }

LABEL_15:
      }

      v8 = [_allChildAndLeafKeys countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v8);
  }

  return dictionary;
}

- (void)restoreDefaultValues
{
  [(PTSettings *)self _sendWillRestoreDefaults];
  initWithDefaultValues = [objc_alloc(objc_opt_class()) initWithDefaultValues];
  [(PTSettings *)self applySettings:initWithDefaultValues];
  [(PTSettings *)self _sendDidRestoreDefaults];
}

- (void)restoreFromArchiveDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [objc_opt_class() settingsFromArchiveDictionary:dictionaryCopy];

  [(PTSettings *)self applySettings:v5];
}

- (void)applySettings:(id)settings
{
  v30 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  childKeys = [(PTSettingsClassStructure *)self->__classStructure childKeys];
  v6 = [childKeys countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(childKeys);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [settingsCopy valueForKey:v10];
        v12 = [(PTSettings *)self _ensureChildForKey:v10];
        [v12 applySettings:v11];
      }

      v7 = [childKeys countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  leafKeys = [(PTSettingsClassStructure *)self->__classStructure leafKeys];
  v14 = [leafKeys countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(leafKeys);
        }

        v18 = *(*(&v20 + 1) + 8 * j);
        v19 = [settingsCopy valueForKey:v18];
        [(PTSettings *)self _safeSetValue:v19 forLeafKey:v18];
      }

      v15 = [leafKeys countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }
}

- (void)_safeSetValue:(id)value forLeafKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v7 = [(PTSettingsClassStructure *)self->__classStructure leafClassForKey:keyCopy];
  v8 = [(PTSettingsClassStructure *)self->__classStructure leafStructNameForKey:keyCopy];
  v9 = v8;
  if (!v7)
  {
    objc_opt_class();
    goto LABEL_5;
  }

  if (valueCopy)
  {
LABEL_5:
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  [(PTSettings *)self setValue:valueCopy forKey:keyCopy];
LABEL_7:
}

- (void)addKeyObserver:(id)observer
{
  observerCopy = observer;
  if (PTInstallIsAppleInternal())
  {
    keyObservers = self->__keyObservers;
    if (!keyObservers)
    {
      v5 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
      v6 = self->__keyObservers;
      self->__keyObservers = v5;

      keyObservers = self->__keyObservers;
    }

    [(NSHashTable *)keyObservers addObject:observerCopy];
    [(PTSettings *)self _startOrStopObservingPropertiesAndChildren];
  }
}

- (void)removeKeyObserver:(id)observer
{
  observerCopy = observer;
  if (PTInstallIsAppleInternal())
  {
    [(NSHashTable *)self->__keyObservers removeObject:observerCopy];
    [(PTSettings *)self _startOrStopObservingPropertiesAndChildren];
  }
}

- (void)addKeyPathObserver:(id)observer
{
  observerCopy = observer;
  if (PTInstallIsAppleInternal())
  {
    keyPathObservers = self->__keyPathObservers;
    if (!keyPathObservers)
    {
      v5 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
      v6 = self->__keyPathObservers;
      self->__keyPathObservers = v5;

      keyPathObservers = self->__keyPathObservers;
    }

    [(NSHashTable *)keyPathObservers addObject:observerCopy];
    [(PTSettings *)self _startOrStopObservingPropertiesAndChildren];
  }
}

- (void)removeKeyPathObserver:(id)observer
{
  observerCopy = observer;
  if (PTInstallIsAppleInternal())
  {
    [(NSHashTable *)self->__keyPathObservers removeObject:observerCopy];
    [(PTSettings *)self _startOrStopObservingPropertiesAndChildren];
  }
}

- (void)invalidateValueForKey:(id)key
{
  keyCopy = key;
  [(PTSettings *)self _sendKeyChanged:keyCopy];
  [(PTSettings *)self _sendKeyPathChanged:keyCopy];
}

- (id)module
{
  settingsControllerModule = [objc_opt_class() settingsControllerModule];
  v3 = [settingsControllerModule copy];

  return v3;
}

- (id)_createChildForKey:(id)key
{
  v3 = [objc_alloc(-[PTSettingsClassStructure childClassForKey:](self->__classStructure childClassForKey:{key)), "initWithDefaultValues"}];

  return v3;
}

- (void)applyArchiveValue:(id)value forKey:(id)key
{
  v19 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v12 = 0;
  v7 = [(PTSettings *)self _applyArchiveValue:value forLeafKey:keyCopy error:&v12];
  v8 = v12;
  if (!v7)
  {
    v9 = PTLogObjectForTopic(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138412802;
      v14 = v10;
      v15 = 2112;
      v16 = keyCopy;
      v17 = 2112;
      v18 = v8;
      v11 = v10;
      _os_log_impl(&dword_21E61D000, v9, OS_LOG_TYPE_DEFAULT, "%@ cannot apply archive value for key '%@': %@", buf, 0x20u);
    }
  }
}

- (void)_setObservationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v15 = *MEMORY[0x277D85DE8];
  if (PTInstallIsAppleInternal() && self->__observationEnabled != enabledCopy)
  {
    v5 = PTLogObjectForTopic(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = @"disabling";
      if (enabledCopy)
      {
        v7 = @"enabling";
      }

      *buf = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v8 = v6;
      _os_log_impl(&dword_21E61D000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@ observation", buf, 0x16u);
    }

    self->__observationEnabled = enabledCopy;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __37__PTSettings__setObservationEnabled___block_invoke;
    v9[3] = &__block_descriptor_33_e33_v24__0__NSString_8__PTSettings_16l;
    v10 = enabledCopy;
    [(PTSettings *)self _enumerateChildrenWithBlock:v9];
    [(PTSettings *)self _startOrStopObservingPropertiesAndChildren];
  }
}

- (void)_startObservingProperties
{
  v13 = *MEMORY[0x277D85DE8];
  self->__isObservingProperties = 1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  _allChildAndLeafKeys = [(PTSettings *)self _allChildAndLeafKeys];
  v4 = [_allChildAndLeafKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(_allChildAndLeafKeys);
        }

        [(PTSettings *)self addObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v7++) options:3 context:0];
      }

      while (v5 != v7);
      v5 = [_allChildAndLeafKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_stopObservingProperties
{
  v13 = *MEMORY[0x277D85DE8];
  self->__isObservingProperties = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  _allChildAndLeafKeys = [(PTSettings *)self _allChildAndLeafKeys];
  v4 = [_allChildAndLeafKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(_allChildAndLeafKeys);
        }

        [(PTSettings *)self removeObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v7++) context:0];
      }

      while (v5 != v7);
      v5 = [_allChildAndLeafKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_startObservingChildren
{
  v14 = *MEMORY[0x277D85DE8];
  self->__isObservingChildren = 1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  childKeys = [(PTSettingsClassStructure *)self->__classStructure childKeys];
  v4 = [childKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(childKeys);
        }

        v8 = [(PTSettings *)self valueForKey:*(*(&v9 + 1) + 8 * v7)];
        [v8 addKeyPathObserver:self];

        ++v7;
      }

      while (v5 != v7);
      v5 = [childKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_stopObservingChildren
{
  v14 = *MEMORY[0x277D85DE8];
  self->__isObservingChildren = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  childKeys = [(PTSettingsClassStructure *)self->__classStructure childKeys];
  v4 = [childKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(childKeys);
        }

        v8 = [(PTSettings *)self valueForKey:*(*(&v9 + 1) + 8 * v7)];
        [v8 removeKeyPathObserver:self];

        ++v7;
      }

      while (v5 != v7);
      v5 = [childKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)_allChildAndLeafKeys
{
  childKeys = [(PTSettingsClassStructure *)self->__classStructure childKeys];
  leafKeys = [(PTSettingsClassStructure *)self->__classStructure leafKeys];
  v5 = [childKeys setByAddingObjectsFromSet:leafKeys];

  return v5;
}

- (BOOL)_applyArchiveValue:(id)value forLeafKey:(id)key error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  leafKeys = [(PTSettingsClassStructure *)self->__classStructure leafKeys];
  v11 = [leafKeys containsObject:keyCopy];

  if (v11)
  {
    v12 = [(PTSettingsClassStructure *)self->__classStructure leafClassForKey:keyCopy];
    v13 = [(PTSettingsClassStructure *)self->__classStructure leafStructNameForKey:keyCopy];
    v14 = v13;
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_opt_class() _supportsArchivingCustomClass:v12])
      {
        v15 = [objc_opt_class() _objectOfCustomClass:v12 fromArchiveDictionary:valueCopy];
        [(PTSettings *)self setValue:v15 forKey:keyCopy];

LABEL_22:
        v16 = 1;
        goto LABEL_29;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v17 = MEMORY[0x277CCACA8];
          v18 = objc_opt_class();
          v22 = v12;
LABEL_18:
          [v17 stringWithFormat:@"don't know how to convert %@ to %@", v18, v22];
LABEL_19:
          *error = v16 = 0;
LABEL_29:

          goto LABEL_30;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (v13)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_opt_class() _supportsArchivingStructType:v14])
        {
          v19 = [objc_opt_class() _valueOfStructType:v14 fromArchiveDictionary:valueCopy];
          v16 = v19 != 0;
          if (v19)
          {
            [(PTSettings *)self setValue:v19 forKey:keyCopy];
          }

          else if (error)
          {
            *error = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to create struct %@ from %@", v14, valueCopy];
          }

          goto LABEL_29;
        }

        if (error)
        {
          v17 = MEMORY[0x277CCACA8];
          v18 = objc_opt_class();
          v22 = v14;
          goto LABEL_18;
        }

LABEL_25:
        v16 = 0;
        goto LABEL_29;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"don't know how to convert %@ to scalar", objc_opt_class(), v21];
          goto LABEL_19;
        }

        goto LABEL_25;
      }
    }

    [(PTSettings *)self setValue:valueCopy forKey:keyCopy];
    goto LABEL_22;
  }

  v16 = 0;
  if (error)
  {
    *error = @"no such leaf key";
  }

LABEL_30:

  return v16;
}

- (id)_archiveValueForLeafKey:(id)key
{
  keyCopy = key;
  leafKeys = [(PTSettingsClassStructure *)self->__classStructure leafKeys];
  v6 = [leafKeys containsObject:keyCopy];

  if (v6)
  {
    v7 = [(PTSettings *)self valueForKey:keyCopy];
    v8 = [(PTSettingsClassStructure *)self->__classStructure leafClassForKey:keyCopy];
    v9 = [(PTSettingsClassStructure *)self->__classStructure leafStructNameForKey:keyCopy];
    if (v8 && [objc_opt_class() _supportsArchivingCustomClass:v8])
    {
      v10 = [objc_opt_class() _archiveDictionaryForObject:v7 ofCustomClass:v8];
    }

    else if (v9 && [objc_opt_class() _supportsArchivingStructType:v9])
    {
      v10 = [objc_opt_class() _archiveDictionaryForValue:v7 ofStructType:v9];
    }

    else
    {
      v10 = v7;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_enumerateLeafValuesWithBlock:(id)block
{
  blockCopy = block;
  leafKeys = [(PTSettingsClassStructure *)self->__classStructure leafKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__PTSettings__enumerateLeafValuesWithBlock___block_invoke;
  v7[3] = &unk_27835F020;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [leafKeys enumerateObjectsUsingBlock:v7];
}

void __44__PTSettings__enumerateLeafValuesWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) valueForKey:?];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_enumerateChildrenWithBlock:(id)block
{
  blockCopy = block;
  childKeys = [(PTSettingsClassStructure *)self->__classStructure childKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__PTSettings__enumerateChildrenWithBlock___block_invoke;
  v7[3] = &unk_27835F020;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [childKeys enumerateObjectsUsingBlock:v7];
}

void __42__PTSettings__enumerateChildrenWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  (*(*(a1 + 40) + 16))();
}

- (void)_enumerateOutletsWithBlock:(id)block
{
  blockCopy = block;
  outletKeys = [(PTSettingsClassStructure *)self->__classStructure outletKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__PTSettings__enumerateOutletsWithBlock___block_invoke;
  v7[3] = &unk_27835F020;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [outletKeys enumerateObjectsUsingBlock:v7];
}

void __41__PTSettings__enumerateOutletsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  (*(*(a1 + 40) + 16))();
}

- (id)_ensureChildForKey:(id)key
{
  keyCopy = key;
  v5 = [(PTSettings *)self valueForKey:keyCopy];
  if (!v5)
  {
    v5 = [(PTSettings *)self _createChildForKey:keyCopy];
    [(PTSettings *)self setValue:v5 forKey:keyCopy];
  }

  return v5;
}

- (BOOL)_getChild:(id *)child create:(BOOL)create leafKey:(id *)key forKeyPath:(id)path error:(id *)error
{
  createCopy = create;
  pathCopy = path;
  v13 = [pathCopy rangeOfString:@"."];
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    childCopy = child;
    keyCopy = key;
    v18 = [pathCopy substringToIndex:v13];
    childKeys = [(PTSettingsClassStructure *)self->__classStructure childKeys];
    v20 = [childKeys containsObject:v18];

    if (v20)
    {
      if (createCopy)
      {
        [(PTSettings *)self _ensureChildForKey:v18];
      }

      else
      {
        [(PTSettings *)self valueForKey:v18];
      }
      v25 = ;
      v26 = [pathCopy substringFromIndex:v15 + v16];
      LOBYTE(createCopy) = [v25 _getChild:childCopy create:createCopy leafKey:keyCopy forKeyPath:v26 error:error];

      goto LABEL_18;
    }

    if (!error)
    {
      LOBYTE(createCopy) = 0;
      goto LABEL_18;
    }

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ has no child for key '%@'", objc_opt_class(), v18];
    LOBYTE(createCopy) = 0;
LABEL_14:
    *error = v24;
    goto LABEL_18;
  }

  v18 = pathCopy;
  leafKeys = [(PTSettingsClassStructure *)self->__classStructure leafKeys];
  LODWORD(createCopy) = [leafKeys containsObject:v18];

  if (!createCopy)
  {
    if (!error)
    {
      goto LABEL_18;
    }

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ has no leaf key '%@'", objc_opt_class(), v18];
    goto LABEL_14;
  }

  if (child)
  {
    selfCopy = self;
    *child = self;
  }

  if (key)
  {
    v23 = v18;
    *key = v18;
  }

LABEL_18:

  return createCopy;
}

- (BOOL)_applyArchiveValue:(id)value forKeyPath:(id)path error:(id *)error
{
  valueCopy = value;
  pathCopy = path;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v10 = [(PTSettings *)self _getChild:&v27 create:1 leafKey:&v26 forKeyPath:pathCopy error:&v25];
  v11 = v27;
  v12 = v26;
  v13 = v25;
  v14 = v13;
  if (!v10)
  {
    if (!error)
    {
      v17 = 0;
      v16 = v13;
      goto LABEL_14;
    }

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ can't apply value for keyPath '%@' (%@)", objc_opt_class(), pathCopy, v13];
    v16 = v14;
LABEL_13:
    v17 = 0;
    *error = v18;
    goto LABEL_14;
  }

  v24 = v13;
  v15 = [(PTSettings *)v11 _applyArchiveValue:valueCopy forLeafKey:v12 error:&v24];
  v16 = v24;

  if (!v15)
  {
    if (!error)
    {
      v17 = 0;
      goto LABEL_14;
    }

    v19 = MEMORY[0x277CCACA8];
    v20 = objc_opt_class();
    if (v11 == self)
    {
      [v19 stringWithFormat:@"%@ can't apply value for key '%@' (%@)", v20, pathCopy, v16, v22, v23];
    }

    else
    {
      [v19 stringWithFormat:@"%@ can't apply value for keyPath '%@' because %@ can't apply value for key '%@' (%@)", v20, pathCopy, objc_opt_class(), v12, v16];
    }
    v18 = ;
    goto LABEL_13;
  }

  v17 = 1;
LABEL_14:

  return v17;
}

- (id)_archiveValueForKeyPath:(id)path
{
  v8 = 0;
  v9 = 0;
  v3 = [(PTSettings *)self _getChild:&v9 create:0 leafKey:&v8 forKeyPath:path error:0];
  v4 = v9;
  v5 = v8;
  v6 = 0;
  if (v3)
  {
    v6 = [v4 _archiveValueForLeafKey:v5];
  }

  return v6;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v8 = *MEMORY[0x277CCA300];
  changeCopy = change;
  v10 = [changeCopy objectForKey:v8];
  v11 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];

  if (v10 != v11)
  {
    leafKeys = [(PTSettingsClassStructure *)self->__classStructure leafKeys];
    v13 = [leafKeys containsObject:pathCopy];

    childKeys = [(PTSettingsClassStructure *)self->__classStructure childKeys];
    v15 = [childKeys containsObject:pathCopy];

    if (v13 && ([v10 isEqual:v11] & 1) == 0)
    {
      [(PTSettings *)self _sendKeyChanged:pathCopy];
      [(PTSettings *)self _sendKeyPathChanged:pathCopy];
    }

    if (v15 && self->__isObservingChildren)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 removeKeyPathObserver:self];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v11 addKeyPathObserver:self];
      }
    }
  }
}

- (void)settings:(id)settings changedValueForKeyPath:(id)path
{
  pathCopy = path;
  v6 = [(PTSettings *)self _keyForChild:settings];
  if (v6)
  {
    pathCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v6, pathCopy];
    [(PTSettings *)self _sendKeyPathChanged:pathCopy];
  }
}

- (id)_keyForChild:(id)child
{
  v19 = *MEMORY[0x277D85DE8];
  childCopy = child;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  childKeys = [(PTSettingsClassStructure *)self->__classStructure childKeys];
  v6 = [childKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(childKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(PTSettings *)self valueForKey:v10];

        if (v11 == childCopy)
        {
          v12 = v10;
          goto LABEL_11;
        }
      }

      v7 = [childKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)_sendKeyChanged:(id)changed
{
  v15 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->__keyObservers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v9++) settings:self changedValueForKey:{changedCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_sendKeyPathChanged:(id)changed
{
  v15 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->__keyPathObservers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v9++) settings:self changedValueForKeyPath:{changedCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_sendWillRestoreDefaults
{
  WeakRetained = objc_loadWeakRetained(&self->__restoreDefaultsObserver);
  [WeakRetained settingsWillRestoreDefaults:self];
}

- (void)_sendDidRestoreDefaults
{
  WeakRetained = objc_loadWeakRetained(&self->__restoreDefaultsObserver);
  [WeakRetained settingsDidRestoreDefaults:self];
}

+ (id)emptyArchiveForSettingsClassName:(id)name
{
  v3 = MEMORY[0x277CBEB38];
  nameCopy = name;
  dictionary = [v3 dictionary];
  [dictionary setObject:nameCopy forKey:@"_internal_class"];

  return dictionary;
}

+ (void)_applyArchiveValue:(id)value forKeyPath:(id)path toArchive:(id)archive
{
  v24 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  pathCopy = path;
  archiveCopy = archive;
  if (valueCopy && (PTObjectIsRecursivelyPlistable(valueCopy) & 1) == 0)
  {
    v10 = PTLogObjectForTopic(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = pathCopy;
      v22 = 2112;
      v23 = valueCopy;
      _os_log_impl(&dword_21E61D000, v10, OS_LOG_TYPE_DEFAULT, "PTSettings cannot use archive value for keyPath '%@' as it contains non-plist types: %@", &v20, 0x16u);
    }
  }

  else
  {
    v10 = [pathCopy componentsSeparatedByString:@"."];
    v11 = [v10 count];
    if (v11)
    {
      v12 = v11;
      v13 = archiveCopy;
      v14 = v13;
      v15 = v12 - 1;
      if (v12 == 1)
      {
        dictionary = v13;
      }

      else
      {
        v16 = 0;
        do
        {
          v17 = [v10 objectAtIndexedSubscript:v16];
          dictionary = [v14 objectForKeyedSubscript:v17];
          if (!dictionary)
          {
            dictionary = [MEMORY[0x277CBEB38] dictionary];
            [v14 setObject:dictionary forKeyedSubscript:v17];
          }

          ++v16;
          v14 = dictionary;
        }

        while (v15 != v16);
      }

      lastObject = [v10 lastObject];
      [dictionary setObject:valueCopy forKeyedSubscript:lastObject];
    }
  }
}

@end