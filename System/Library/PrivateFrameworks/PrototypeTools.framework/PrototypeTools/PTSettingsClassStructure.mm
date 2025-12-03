@interface PTSettingsClassStructure
+ (PTSettingsClassStructure)structureForSettingsClass:(uint64_t)class;
- (BOOL)isEqual:(id)equal;
- (Class)_classForKey:(id)key;
- (PTSettingsClassStructure)initWithCoder:(id)coder;
- (id)_decodeStringSetForKey:(id)key withCoder:(id)coder;
- (id)_decodeStringStringDictionaryForKey:(id)key withCoder:(id)coder;
- (id)filteredForProxySettings;
- (unint64_t)hash;
- (void)_generateClassNamesIfNecessary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PTSettingsClassStructure

+ (PTSettingsClassStructure)structureForSettingsClass:(uint64_t)class
{
  objc_opt_self();
  if (structureForSettingsClass__onceToken != -1)
  {
    +[PTSettingsClassStructure structureForSettingsClass:];
  }

  os_unfair_lock_lock(&structureForSettingsClass____lock);
  v3 = [structureForSettingsClass___classStructureCache objectForKey:a2];
  if (v3)
  {
    os_unfair_lock_unlock(&structureForSettingsClass____lock);
    v4 = v3;
    goto LABEL_37;
  }

  v46 = [MEMORY[0x277CBEB58] set];
  v45 = [MEMORY[0x277CBEB58] set];
  v44 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v5 = objc_opt_class();
  aClass = a2;
  if ([(objc_class *)a2 isSubclassOfClass:v5]&& v5 != a2)
  {
    v41 = v5;
    do
    {
      v51 = v45;
      v49 = v44;
      v48 = v46;
      v50 = dictionary;
      v6 = dictionary2;
      outCount = 0;
      v7 = class_copyPropertyList(a2, &outCount);
      if (v7)
      {
        v8 = v7;
        v52 = a2;
        v47 = v6;
        if (_NSObjectProtocolProperties_onceToken != -1)
        {
          +[PTSettingsClassStructure structureForSettingsClass:];
        }

        v9 = _NSObjectProtocolProperties___properties;
        if (outCount)
        {
          v10 = 0;
          while (1)
          {
            v11 = objc_autoreleasePoolPush();
            v12 = v8[v10];
            Name = property_getName(v12);
            v14 = _NSStringFromRuntimeString(Name);
            v15 = v14;
            Attributes = property_getAttributes(v12);
            v17 = _NSStringFromRuntimeString(Attributes);
            v18 = [MEMORY[0x277CCAC80] scannerWithString:v17];
            v19 = 0;
            if ([v18 scanString:@"T@" intoString:0] && (v55 = 0, v20 = objc_msgSend(v18, "scanUpToString:intoString:", @"", &v55), v21 = v55, v19 = v21, v20))
            {
              v22 = NSClassFromString(v21);
              v23 = 0;
            }

            else
            {
              [v18 setScanLocation:0];
              v24 = 0;
              if ([v18 scanString:@"T{" intoString:0] && (v54 = 0, v25 = objc_msgSend(v18, "scanUpToString:intoString:", @"=", &v54), v26 = v54, v24 = v26, v25))
              {
                v27 = v26;
                v23 = v24;
              }

              else
              {
                [v18 setScanLocation:0];
                v23 = 0;
              }

              v22 = 0;
            }

            v28 = v14;
            v29 = v23;
            if ([v9 containsObject:v28] & 1) != 0 || (-[objc_class ignoresKey:](v52, "ignoresKey:", v28))
            {
              goto LABEL_32;
            }

            v30 = [(objc_class *)v22 isSubclassOfClass:objc_opt_class()];
            v31 = v51;
            if ((v30 & 1) == 0)
            {
              if ([(objc_class *)v22 isSubclassOfClass:objc_opt_class()])
              {
                v31 = v49;
              }

              else
              {
                v31 = v48;
              }
            }

            [v31 addObject:v28];
            if (v22)
            {
              break;
            }

            if (v29)
            {
              v32 = v47;
              v33 = v29;
              goto LABEL_31;
            }

LABEL_32:

            objc_autoreleasePoolPop(v11);
            if (++v10 >= outCount)
            {
              goto LABEL_33;
            }
          }

          v32 = v50;
          v33 = v22;
LABEL_31:
          [(NSDictionary *)v32 setObject:v33 forKey:v28];
          goto LABEL_32;
        }

LABEL_33:
        free(v8);

        v5 = v41;
        a2 = v52;
        v6 = v47;
      }

      a2 = [(objc_class *)a2 superclass];
    }

    while ([(objc_class *)a2 isSubclassOfClass:v5]&& a2 != v5);
  }

  v4 = objc_alloc_init(PTSettingsClassStructure);
  v34 = NSStringFromClass(aClass);
  [(PTSettingsClassStructure *)v4 setSettingsClassName:v34];

  [(PTSettingsClassStructure *)v4 setSettingsClassVersion:[(objc_class *)aClass settingsVersionNumber]];
  [(PTSettingsClassStructure *)v4 setLeafKeys:v46];
  [(PTSettingsClassStructure *)v4 setChildKeys:v45];
  [(PTSettingsClassStructure *)v4 setOutletKeys:v44];
  classes = v4->_classes;
  v4->_classes = dictionary;
  v36 = dictionary;

  structNames = v4->_structNames;
  v4->_structNames = dictionary2;
  v38 = dictionary2;

  [structureForSettingsClass___classStructureCache setObject:v4 forKey:aClass];
  os_unfair_lock_unlock(&structureForSettingsClass____lock);

  v3 = 0;
LABEL_37:

  return v4;
}

uint64_t __54__PTSettingsClassStructure_structureForSettingsClass___block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
  v1 = structureForSettingsClass___classStructureCache;
  structureForSettingsClass___classStructureCache = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)filteredForProxySettings
{
  v38 = *MEMORY[0x277D85DE8];
  [(PTSettingsClassStructure *)self _generateClassNamesIfNecessary];
  v26 = [(NSDictionary *)self->_classes mutableCopy];
  v25 = [(NSDictionary *)self->_classNames mutableCopy];
  v3 = [(NSSet *)self->_leafKeys mutableCopy];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = self->_leafKeys;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [(PTSettingsClassStructure *)self leafStructNameForKey:v9];
        if (v10)
        {
          v11 = PTLogObjectForTopic(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            settingsClassName = self->_settingsClassName;
            *buf = 138412802;
            v32 = settingsClassName;
            v33 = 2112;
            v34 = v9;
            v35 = 2112;
            v36 = v10;
            _os_log_impl(&dword_21E61D000, v11, OS_LOG_TYPE_DEFAULT, "Proxy for %@ will omit key '%@', as %@ is a struct", buf, 0x20u);
          }

          [v3 removeObject:v9];
        }

        v13 = [(PTSettingsClassStructure *)self leafClassForKey:v9];
        if (v13)
        {
          v14 = v13;
          if ((PTClassIsPlistable() & 1) == 0)
          {
            v15 = PTLogObjectForTopic(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = self->_settingsClassName;
              *buf = 138412802;
              v32 = v16;
              v33 = 2112;
              v34 = v9;
              v35 = 2112;
              v36 = v14;
              _os_log_impl(&dword_21E61D000, v15, OS_LOG_TYPE_DEFAULT, "Proxy for %@ will omit key '%@', as %@ is not a plist type", buf, 0x20u);
            }

            [v3 removeObject:v9];
            [v26 setObject:0 forKeyedSubscript:v9];
            [v25 setObject:0 forKeyedSubscript:v9];
          }
        }
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v6);
  }

  v17 = objc_alloc_init(PTSettingsClassStructure);
  [(PTSettingsClassStructure *)v17 setSettingsClassName:self->_settingsClassName];
  [(PTSettingsClassStructure *)v17 setSettingsClassVersion:self->_settingsClassVersion];
  [(PTSettingsClassStructure *)v17 setChildKeys:self->_childKeys];
  [(PTSettingsClassStructure *)v17 setOutletKeys:self->_outletKeys];
  v18 = [v3 copy];
  [(PTSettingsClassStructure *)v17 setLeafKeys:v18];

  v19 = [v26 copy];
  classes = v17->_classes;
  v17->_classes = v19;

  v21 = [v25 copy];
  classNames = v17->_classNames;
  v17->_classNames = v21;

  structNames = v17->_structNames;
  v17->_structNames = MEMORY[0x277CBEC10];

  return v17;
}

- (Class)_classForKey:(id)key
{
  classes = self->_classes;
  if (classes)
  {
    v5 = [(NSDictionary *)classes objectForKeyedSubscript:key];
  }

  else
  {
    v6 = [(NSDictionary *)self->_classNames objectForKeyedSubscript:key];
    v5 = NSClassFromString(v6);
  }

  return v5;
}

- (void)_generateClassNamesIfNecessary
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_classNames)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    allKeys = [(NSDictionary *)self->_classes allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = NSStringFromClass([(NSDictionary *)self->_classes objectForKeyedSubscript:v9]);
          [(NSDictionary *)dictionary setObject:v10 forKeyedSubscript:v9];
        }

        v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    classNames = self->_classNames;
    self->_classNames = dictionary;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    [(PTSettingsClassStructure *)self _generateClassNamesIfNecessary];
    if ([(PTSettingsClassStructure *)equalCopy isMemberOfClass:objc_opt_class()]&& BSEqualStrings() && self->_settingsClassVersion == equalCopy->_settingsClassVersion && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects())
    {
      v5 = BSEqualObjects();
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  [(PTSettingsClassStructure *)self _generateClassNamesIfNecessary];
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendString:self->_settingsClassName];
  v5 = [builder appendUnsignedInteger:self->_settingsClassVersion];
  v6 = [builder appendObject:self->_leafKeys];
  v7 = [builder appendObject:self->_childKeys];
  v8 = [builder appendObject:self->_outletKeys];
  v9 = [builder appendObject:self->_classNames];
  v10 = [builder appendObject:self->_structNames];
  v11 = [builder hash];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(PTSettingsClassStructure *)self _generateClassNamesIfNecessary];
  [coderCopy encodeObject:self->_settingsClassName forKey:@"settingsClassName"];
  [coderCopy encodeInteger:self->_settingsClassVersion forKey:@"settingsClassVersion"];
  [coderCopy encodeObject:self->_leafKeys forKey:@"leafKeys"];
  [coderCopy encodeObject:self->_childKeys forKey:@"childKeys"];
  [coderCopy encodeObject:self->_outletKeys forKey:@"outletKeys"];
  [coderCopy encodeObject:self->_classNames forKey:@"classNames"];
  [coderCopy encodeObject:self->_structNames forKey:@"structNames"];
}

- (PTSettingsClassStructure)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PTSettingsClassStructure *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"settingsClassName"];
    settingsClassName = v5->_settingsClassName;
    v5->_settingsClassName = v6;

    v5->_settingsClassVersion = [coderCopy decodeIntegerForKey:@"settingsClassVersion"];
    v8 = [(PTSettingsClassStructure *)v5 _decodeStringSetForKey:@"leafKeys" withCoder:coderCopy];
    leafKeys = v5->_leafKeys;
    v5->_leafKeys = v8;

    v10 = [(PTSettingsClassStructure *)v5 _decodeStringSetForKey:@"childKeys" withCoder:coderCopy];
    childKeys = v5->_childKeys;
    v5->_childKeys = v10;

    v12 = [(PTSettingsClassStructure *)v5 _decodeStringSetForKey:@"outletKeys" withCoder:coderCopy];
    outletKeys = v5->_outletKeys;
    v5->_outletKeys = v12;

    v14 = [(PTSettingsClassStructure *)v5 _decodeStringStringDictionaryForKey:@"structNames" withCoder:coderCopy];
    structNames = v5->_structNames;
    v5->_structNames = v14;

    v16 = [(PTSettingsClassStructure *)v5 _decodeStringStringDictionaryForKey:@"classNames" withCoder:coderCopy];
    classNames = v5->_classNames;
    v5->_classNames = v16;
  }

  return v5;
}

- (id)_decodeStringStringDictionaryForKey:(id)key withCoder:(id)coder
{
  keyCopy = key;
  v6 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:keyCopy];

  objc_opt_class();
  objc_opt_class();
  if ((PTValidateDictionary(v10) & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ expected [String:String] dictionary for '%@'; got %@", objc_opt_class(), keyCopy, v10}];
  }

  return v10;
}

- (id)_decodeStringSetForKey:(id)key withCoder:(id)coder
{
  keyCopy = key;
  v6 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:keyCopy];

  objc_opt_class();
  if ((PTValidateSet(v10) & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ expected set of Strings for '%@'; got %@", objc_opt_class(), keyCopy, v10}];
  }

  return v10;
}

@end