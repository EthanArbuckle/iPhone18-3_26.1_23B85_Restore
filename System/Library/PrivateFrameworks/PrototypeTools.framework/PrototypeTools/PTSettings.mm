@interface PTSettings
+ (id)emptyArchiveForSettingsClassName:(id)a3;
+ (id)settingsFromArchiveDictionary:(id)a3;
+ (void)_applyArchiveValue:(id)a3 forKeyPath:(id)a4 toArchive:(id)a5;
- (BOOL)_applyArchiveValue:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)_applyArchiveValue:(id)a3 forLeafKey:(id)a4 error:(id *)a5;
- (BOOL)_getChild:(id *)a3 create:(BOOL)a4 leafKey:(id *)a5 forKeyPath:(id)a6 error:(id *)a7;
- (PTSettings)initWithDefaultValues;
- (id)_allChildAndLeafKeys;
- (id)_archiveValueForKeyPath:(id)a3;
- (id)_archiveValueForLeafKey:(id)a3;
- (id)_createChildForKey:(id)a3;
- (id)_ensureChildForKey:(id)a3;
- (id)_initWithArchiveDictionary:(id)a3;
- (id)_initWithClassStructure:(id)a3;
- (id)_keyForChild:(id)a3;
- (id)archiveDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)module;
- (void)_applyArchiveDictionary:(id)a3;
- (void)_createChildren;
- (void)_createChildrenAndOutlets;
- (void)_createOutlets;
- (void)_enumerateChildrenWithBlock:(id)a3;
- (void)_enumerateLeafValuesWithBlock:(id)a3;
- (void)_enumerateOutletsWithBlock:(id)a3;
- (void)_safeSetValue:(id)a3 forLeafKey:(id)a4;
- (void)_sendDidRestoreDefaults;
- (void)_sendKeyChanged:(id)a3;
- (void)_sendKeyPathChanged:(id)a3;
- (void)_sendWillRestoreDefaults;
- (void)_setObservationEnabled:(BOOL)a3;
- (void)_startObservingChildren;
- (void)_startObservingProperties;
- (void)_startOrStopObservingPropertiesAndChildren;
- (void)_stopObservingChildren;
- (void)_stopObservingProperties;
- (void)_validateChildren;
- (void)addKeyObserver:(id)a3;
- (void)addKeyPathObserver:(id)a3;
- (void)applyArchiveValue:(id)a3 forKey:(id)a4;
- (void)applySettings:(id)a3;
- (void)dealloc;
- (void)invalidateValueForKey:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeKeyObserver:(id)a3;
- (void)removeKeyPathObserver:(id)a3;
- (void)restoreDefaultValues;
- (void)restoreFromArchiveDictionary:(id)a3;
- (void)settings:(id)a3 changedValueForKeyPath:(id)a4;
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
    v4 = [(PTSettings *)v2 suppressesIntrospectionOnCustomerInstalls];
    if (!v4 || IsAppleInternal != 0)
    {
      v6 = objc_opt_class();
      v7 = [PTSettingsClassStructure structureForSettingsClass:v6];
      classStructure = v2->__classStructure;
      v2->__classStructure = v7;
    }

    if (v4)
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
      if (v4)
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
  v3 = [(PTSettingsClassStructure *)self->__classStructure childKeys];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [(PTSettings *)self _ensureChildForKey:v8];
        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(PTSettingsClassStructure *)self->__classStructure outletKeys];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [[PTOutlet alloc] _init];
        [(PTSettings *)self setValue:v9 forKey:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

  v3 = [(PTSettings *)self _hasObservers];
  v4 = v3;
  if (self->__observationEnabled)
  {
    v5 = [(PTSettings *)self _hasKeyPathObservers];
    if (!v4)
    {
      goto LABEL_4;
    }

LABEL_10:
    if (!self->__isObservingProperties)
    {
      [(PTSettings *)self _startObservingProperties];
      if (!v5)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

LABEL_11:
    if (!v5)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v5 = 0;
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (!self->__isObservingProperties)
  {
    goto LABEL_11;
  }

  [(PTSettings *)self _stopObservingProperties];
  if (!v5)
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

- (id)_initWithClassStructure:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PTSettings;
  v6 = [(PTSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__classStructure, a3);
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
  v3 = [(PTSettingsClassStructure *)self->__classStructure childKeys];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(PTSettings *)self valueForKey:v8];

        if (!v9)
        {
          [MEMORY[0x277CBEAD8] raise:@"Child not initialized" format:{@"Child with key %@ has not been initialized.", v8}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)_initWithArchiveDictionary:(id)a3
{
  v4 = a3;
  v5 = [(PTSettings *)self initWithDefaultValues];
  v6 = v5;
  if (v5)
  {
    [(PTSettings *)v5 _applyArchiveDictionary:v4];
  }

  return v6;
}

- (void)_applyArchiveDictionary:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v4 objectForKey:{v11, v21}];
        v13 = [(PTSettingsClassStructure *)self->__classStructure childKeys];
        v14 = [v13 containsObject:v11];

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
          v16 = [(PTSettingsClassStructure *)self->__classStructure leafKeys];
          v17 = [v16 containsObject:v11];

          if (v17)
          {
            [(PTSettings *)self applyArchiveValue:v12 forKey:v11];
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 applySettings:self];
  return v4;
}

+ (id)settingsFromArchiveDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"_internal_class"];
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

  if ([(objc_class *)v8 isSubclassOfClass:a1])
  {
    v9 = v8;
  }

  else
  {
    v9 = a1;
  }

  v10 = [[v9 alloc] _initWithArchiveDictionary:v4];

  return v10;
}

- (id)archiveDictionary
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(PTSettingsClassStructure *)self->__classStructure settingsClassName];
  [v3 setObject:v4 forKey:@"_internal_class"];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(PTSettings *)self _allChildAndLeafKeys];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [(PTSettingsClassStructure *)self->__classStructure childKeys];
        v13 = [v12 containsObject:v11];

        if (v13)
        {
          v14 = [(PTSettings *)self valueForKey:v11];
          v15 = [v14 archiveDictionary];

          if (!v15)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v15 = [(PTSettings *)self archiveValueForKey:v11];
          if (!v15)
          {
            goto LABEL_15;
          }
        }

        if (PTObjectIsRecursivelyPlistable(v15))
        {
          [v3 setObject:v15 forKey:v11];
        }

        else
        {
          v16 = PTLogObjectForTopic(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v24 = v11;
            v25 = 2112;
            v26 = v15;
            _os_log_impl(&dword_21E61D000, v16, OS_LOG_TYPE_DEFAULT, "PTSettings cannot use archive value for property %@ as it contains non-plist types: %@", buf, 0x16u);
          }
        }

LABEL_15:
      }

      v8 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v8);
  }

  return v3;
}

- (void)restoreDefaultValues
{
  [(PTSettings *)self _sendWillRestoreDefaults];
  v3 = [objc_alloc(objc_opt_class()) initWithDefaultValues];
  [(PTSettings *)self applySettings:v3];
  [(PTSettings *)self _sendDidRestoreDefaults];
}

- (void)restoreFromArchiveDictionary:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() settingsFromArchiveDictionary:v4];

  [(PTSettings *)self applySettings:v5];
}

- (void)applySettings:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [(PTSettingsClassStructure *)self->__classStructure childKeys];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v4 valueForKey:v10];
        v12 = [(PTSettings *)self _ensureChildForKey:v10];
        [v12 applySettings:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [(PTSettingsClassStructure *)self->__classStructure leafKeys];
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * j);
        v19 = [v4 valueForKey:v18];
        [(PTSettings *)self _safeSetValue:v19 forLeafKey:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }
}

- (void)_safeSetValue:(id)a3 forLeafKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(PTSettingsClassStructure *)self->__classStructure leafClassForKey:v6];
  v8 = [(PTSettingsClassStructure *)self->__classStructure leafStructNameForKey:v6];
  v9 = v8;
  if (!v7)
  {
    objc_opt_class();
    goto LABEL_5;
  }

  if (v10)
  {
LABEL_5:
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  [(PTSettings *)self setValue:v10 forKey:v6];
LABEL_7:
}

- (void)addKeyObserver:(id)a3
{
  v7 = a3;
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

    [(NSHashTable *)keyObservers addObject:v7];
    [(PTSettings *)self _startOrStopObservingPropertiesAndChildren];
  }
}

- (void)removeKeyObserver:(id)a3
{
  v4 = a3;
  if (PTInstallIsAppleInternal())
  {
    [(NSHashTable *)self->__keyObservers removeObject:v4];
    [(PTSettings *)self _startOrStopObservingPropertiesAndChildren];
  }
}

- (void)addKeyPathObserver:(id)a3
{
  v7 = a3;
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

    [(NSHashTable *)keyPathObservers addObject:v7];
    [(PTSettings *)self _startOrStopObservingPropertiesAndChildren];
  }
}

- (void)removeKeyPathObserver:(id)a3
{
  v4 = a3;
  if (PTInstallIsAppleInternal())
  {
    [(NSHashTable *)self->__keyPathObservers removeObject:v4];
    [(PTSettings *)self _startOrStopObservingPropertiesAndChildren];
  }
}

- (void)invalidateValueForKey:(id)a3
{
  v4 = a3;
  [(PTSettings *)self _sendKeyChanged:v4];
  [(PTSettings *)self _sendKeyPathChanged:v4];
}

- (id)module
{
  v2 = [objc_opt_class() settingsControllerModule];
  v3 = [v2 copy];

  return v3;
}

- (id)_createChildForKey:(id)a3
{
  v3 = [objc_alloc(-[PTSettingsClassStructure childClassForKey:](self->__classStructure childClassForKey:{a3)), "initWithDefaultValues"}];

  return v3;
}

- (void)applyArchiveValue:(id)a3 forKey:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v12 = 0;
  v7 = [(PTSettings *)self _applyArchiveValue:a3 forLeafKey:v6 error:&v12];
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
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      v11 = v10;
      _os_log_impl(&dword_21E61D000, v9, OS_LOG_TYPE_DEFAULT, "%@ cannot apply archive value for key '%@': %@", buf, 0x20u);
    }
  }
}

- (void)_setObservationEnabled:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  if (PTInstallIsAppleInternal() && self->__observationEnabled != v3)
  {
    v5 = PTLogObjectForTopic(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = @"disabling";
      if (v3)
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

    self->__observationEnabled = v3;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __37__PTSettings__setObservationEnabled___block_invoke;
    v9[3] = &__block_descriptor_33_e33_v24__0__NSString_8__PTSettings_16l;
    v10 = v3;
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
  v3 = [(PTSettings *)self _allChildAndLeafKeys];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [(PTSettings *)self addObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v7++) options:3 context:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v3 = [(PTSettings *)self _allChildAndLeafKeys];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [(PTSettings *)self removeObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v7++) context:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v3 = [(PTSettingsClassStructure *)self->__classStructure childKeys];
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

        v8 = [(PTSettings *)self valueForKey:*(*(&v9 + 1) + 8 * v7)];
        [v8 addKeyPathObserver:self];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(PTSettingsClassStructure *)self->__classStructure childKeys];
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

        v8 = [(PTSettings *)self valueForKey:*(*(&v9 + 1) + 8 * v7)];
        [v8 removeKeyPathObserver:self];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)_allChildAndLeafKeys
{
  v3 = [(PTSettingsClassStructure *)self->__classStructure childKeys];
  v4 = [(PTSettingsClassStructure *)self->__classStructure leafKeys];
  v5 = [v3 setByAddingObjectsFromSet:v4];

  return v5;
}

- (BOOL)_applyArchiveValue:(id)a3 forLeafKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(PTSettingsClassStructure *)self->__classStructure leafKeys];
  v11 = [v10 containsObject:v9];

  if (v11)
  {
    v12 = [(PTSettingsClassStructure *)self->__classStructure leafClassForKey:v9];
    v13 = [(PTSettingsClassStructure *)self->__classStructure leafStructNameForKey:v9];
    v14 = v13;
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_opt_class() _supportsArchivingCustomClass:v12])
      {
        v15 = [objc_opt_class() _objectOfCustomClass:v12 fromArchiveDictionary:v8];
        [(PTSettings *)self setValue:v15 forKey:v9];

LABEL_22:
        v16 = 1;
        goto LABEL_29;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a5)
        {
          v17 = MEMORY[0x277CCACA8];
          v18 = objc_opt_class();
          v22 = v12;
LABEL_18:
          [v17 stringWithFormat:@"don't know how to convert %@ to %@", v18, v22];
LABEL_19:
          *a5 = v16 = 0;
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
          v19 = [objc_opt_class() _valueOfStructType:v14 fromArchiveDictionary:v8];
          v16 = v19 != 0;
          if (v19)
          {
            [(PTSettings *)self setValue:v19 forKey:v9];
          }

          else if (a5)
          {
            *a5 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to create struct %@ from %@", v14, v8];
          }

          goto LABEL_29;
        }

        if (a5)
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
        if (a5)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"don't know how to convert %@ to scalar", objc_opt_class(), v21];
          goto LABEL_19;
        }

        goto LABEL_25;
      }
    }

    [(PTSettings *)self setValue:v8 forKey:v9];
    goto LABEL_22;
  }

  v16 = 0;
  if (a5)
  {
    *a5 = @"no such leaf key";
  }

LABEL_30:

  return v16;
}

- (id)_archiveValueForLeafKey:(id)a3
{
  v4 = a3;
  v5 = [(PTSettingsClassStructure *)self->__classStructure leafKeys];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(PTSettings *)self valueForKey:v4];
    v8 = [(PTSettingsClassStructure *)self->__classStructure leafClassForKey:v4];
    v9 = [(PTSettingsClassStructure *)self->__classStructure leafStructNameForKey:v4];
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

- (void)_enumerateLeafValuesWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(PTSettingsClassStructure *)self->__classStructure leafKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__PTSettings__enumerateLeafValuesWithBlock___block_invoke;
  v7[3] = &unk_27835F020;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
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

- (void)_enumerateChildrenWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(PTSettingsClassStructure *)self->__classStructure childKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__PTSettings__enumerateChildrenWithBlock___block_invoke;
  v7[3] = &unk_27835F020;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __42__PTSettings__enumerateChildrenWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  (*(*(a1 + 40) + 16))();
}

- (void)_enumerateOutletsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(PTSettingsClassStructure *)self->__classStructure outletKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__PTSettings__enumerateOutletsWithBlock___block_invoke;
  v7[3] = &unk_27835F020;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __41__PTSettings__enumerateOutletsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  (*(*(a1 + 40) + 16))();
}

- (id)_ensureChildForKey:(id)a3
{
  v4 = a3;
  v5 = [(PTSettings *)self valueForKey:v4];
  if (!v5)
  {
    v5 = [(PTSettings *)self _createChildForKey:v4];
    [(PTSettings *)self setValue:v5 forKey:v4];
  }

  return v5;
}

- (BOOL)_getChild:(id *)a3 create:(BOOL)a4 leafKey:(id *)a5 forKeyPath:(id)a6 error:(id *)a7
{
  v9 = a4;
  v12 = a6;
  v13 = [v12 rangeOfString:@"."];
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v28 = a3;
    v17 = a5;
    v18 = [v12 substringToIndex:v13];
    v19 = [(PTSettingsClassStructure *)self->__classStructure childKeys];
    v20 = [v19 containsObject:v18];

    if (v20)
    {
      if (v9)
      {
        [(PTSettings *)self _ensureChildForKey:v18];
      }

      else
      {
        [(PTSettings *)self valueForKey:v18];
      }
      v25 = ;
      v26 = [v12 substringFromIndex:v15 + v16];
      LOBYTE(v9) = [v25 _getChild:v28 create:v9 leafKey:v17 forKeyPath:v26 error:a7];

      goto LABEL_18;
    }

    if (!a7)
    {
      LOBYTE(v9) = 0;
      goto LABEL_18;
    }

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ has no child for key '%@'", objc_opt_class(), v18];
    LOBYTE(v9) = 0;
LABEL_14:
    *a7 = v24;
    goto LABEL_18;
  }

  v18 = v12;
  v21 = [(PTSettingsClassStructure *)self->__classStructure leafKeys];
  LODWORD(v9) = [v21 containsObject:v18];

  if (!v9)
  {
    if (!a7)
    {
      goto LABEL_18;
    }

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ has no leaf key '%@'", objc_opt_class(), v18];
    goto LABEL_14;
  }

  if (a3)
  {
    v22 = self;
    *a3 = self;
  }

  if (a5)
  {
    v23 = v18;
    *a5 = v18;
  }

LABEL_18:

  return v9;
}

- (BOOL)_applyArchiveValue:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v10 = [(PTSettings *)self _getChild:&v27 create:1 leafKey:&v26 forKeyPath:v9 error:&v25];
  v11 = v27;
  v12 = v26;
  v13 = v25;
  v14 = v13;
  if (!v10)
  {
    if (!a5)
    {
      v17 = 0;
      v16 = v13;
      goto LABEL_14;
    }

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ can't apply value for keyPath '%@' (%@)", objc_opt_class(), v9, v13];
    v16 = v14;
LABEL_13:
    v17 = 0;
    *a5 = v18;
    goto LABEL_14;
  }

  v24 = v13;
  v15 = [(PTSettings *)v11 _applyArchiveValue:v8 forLeafKey:v12 error:&v24];
  v16 = v24;

  if (!v15)
  {
    if (!a5)
    {
      v17 = 0;
      goto LABEL_14;
    }

    v19 = MEMORY[0x277CCACA8];
    v20 = objc_opt_class();
    if (v11 == self)
    {
      [v19 stringWithFormat:@"%@ can't apply value for key '%@' (%@)", v20, v9, v16, v22, v23];
    }

    else
    {
      [v19 stringWithFormat:@"%@ can't apply value for keyPath '%@' because %@ can't apply value for key '%@' (%@)", v20, v9, objc_opt_class(), v12, v16];
    }
    v18 = ;
    goto LABEL_13;
  }

  v17 = 1;
LABEL_14:

  return v17;
}

- (id)_archiveValueForKeyPath:(id)a3
{
  v8 = 0;
  v9 = 0;
  v3 = [(PTSettings *)self _getChild:&v9 create:0 leafKey:&v8 forKeyPath:a3 error:0];
  v4 = v9;
  v5 = v8;
  v6 = 0;
  if (v3)
  {
    v6 = [v4 _archiveValueForLeafKey:v5];
  }

  return v6;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v16 = a3;
  v8 = *MEMORY[0x277CCA300];
  v9 = a5;
  v10 = [v9 objectForKey:v8];
  v11 = [v9 objectForKey:*MEMORY[0x277CCA2F0]];

  if (v10 != v11)
  {
    v12 = [(PTSettingsClassStructure *)self->__classStructure leafKeys];
    v13 = [v12 containsObject:v16];

    v14 = [(PTSettingsClassStructure *)self->__classStructure childKeys];
    v15 = [v14 containsObject:v16];

    if (v13 && ([v10 isEqual:v11] & 1) == 0)
    {
      [(PTSettings *)self _sendKeyChanged:v16];
      [(PTSettings *)self _sendKeyPathChanged:v16];
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

- (void)settings:(id)a3 changedValueForKeyPath:(id)a4
{
  v8 = a4;
  v6 = [(PTSettings *)self _keyForChild:a3];
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v6, v8];
    [(PTSettings *)self _sendKeyPathChanged:v7];
  }
}

- (id)_keyForChild:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(PTSettingsClassStructure *)self->__classStructure childKeys];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(PTSettings *)self valueForKey:v10];

        if (v11 == v4)
        {
          v12 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)_sendKeyChanged:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        [*(*(&v10 + 1) + 8 * v9++) settings:self changedValueForKey:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_sendKeyPathChanged:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        [*(*(&v10 + 1) + 8 * v9++) settings:self changedValueForKeyPath:{v4, v10}];
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

+ (id)emptyArchiveForSettingsClassName:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  [v5 setObject:v4 forKey:@"_internal_class"];

  return v5;
}

+ (void)_applyArchiveValue:(id)a3 forKeyPath:(id)a4 toArchive:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7 && (PTObjectIsRecursivelyPlistable(v7) & 1) == 0)
  {
    v10 = PTLogObjectForTopic(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_21E61D000, v10, OS_LOG_TYPE_DEFAULT, "PTSettings cannot use archive value for keyPath '%@' as it contains non-plist types: %@", &v20, 0x16u);
    }
  }

  else
  {
    v10 = [v8 componentsSeparatedByString:@"."];
    v11 = [v10 count];
    if (v11)
    {
      v12 = v11;
      v13 = v9;
      v14 = v13;
      v15 = v12 - 1;
      if (v12 == 1)
      {
        v18 = v13;
      }

      else
      {
        v16 = 0;
        do
        {
          v17 = [v10 objectAtIndexedSubscript:v16];
          v18 = [v14 objectForKeyedSubscript:v17];
          if (!v18)
          {
            v18 = [MEMORY[0x277CBEB38] dictionary];
            [v14 setObject:v18 forKeyedSubscript:v17];
          }

          ++v16;
          v14 = v18;
        }

        while (v15 != v16);
      }

      v19 = [v10 lastObject];
      [v18 setObject:v7 forKeyedSubscript:v19];
    }
  }
}

@end