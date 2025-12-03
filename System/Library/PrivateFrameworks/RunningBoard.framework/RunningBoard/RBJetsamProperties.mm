@interface RBJetsamProperties
- (BOOL)isFreezerEligible;
- (id)_directPropertyDescription:(id)description;
- (id)_initWithProperties:(id)properties globalProperties:(id)globalProperties taskLimit:(int)limit unLimit:(int)unLimit;
- (id)_keyForCategory:(id)category strength:(unsigned __int8)strength;
- (id)_propertiesDescription;
- (id)description;
- (id)getValueFrom:(id)from forKey:(id)key;
- (int)_integerLimitValue:(id)value;
- (int)memoryLimitForCategory:(id)category strength:(unsigned __int8 *)strength;
- (unsigned)_altStrength:(unsigned __int8)strength;
- (void)overrideMemoryLimitCategoriesWithProperties:(id)properties;
@end

@implementation RBJetsamProperties

- (BOOL)isFreezerEligible
{
  if (!self->_freezerEligibleSet)
  {
    v3 = [(RBJetsamProperties *)self getValueFrom:self->_memoryLimitCategories forKey:@"FreezerEligible"];
    if (!v3)
    {
      v4 = [(RBJetsamProperties *)self getValueFrom:self->_globalProperties forKey:@"FreezerEligible"];
      if (v4)
      {
        v3 = v4;
      }

      else
      {
        v3 = MEMORY[0x277CBEC28];
      }
    }

    self->_freezerEligible = [v3 BOOLValue];
    self->_freezerEligibleSet = 1;
  }

  return self->_freezerEligible;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  taskLimit = self->_taskLimit;
  _propertiesDescription = [(RBJetsamProperties *)self _propertiesDescription];
  v7 = [v3 initWithFormat:@"<%@| tasklimit=%d\n%@>", v4, taskLimit, _propertiesDescription];

  return v7;
}

- (id)_propertiesDescription
{
  memoryLimitCategories = self->_memoryLimitCategories;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = self->_memoryLimitCategories;
  if (isKindOfClass)
  {
    v6 = [self->_memoryLimitCategories entriesToStringWithIndent:1 debug:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_alloc(MEMORY[0x277CCACA8]);
      v8 = [(RBJetsamProperties *)self _directPropertyDescription:@"Active"];
      v9 = [(RBJetsamProperties *)self _directPropertyDescription:@"Inactive"];
      v6 = [v7 initWithFormat:@"%@%@", v8, v9];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)getValueFrom:(id)from forKey:(id)key
{
  fromCopy = from;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [fromCopy valueForKey:keyCopy];
LABEL_3:
    v8 = v7;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  unsignedLongLongValue = [fromCopy unsignedLongLongValue];
  if ([keyCopy isEqualToString:@"InactiveHardMemoryLimit"])
  {
    if ((~unsignedLongLongValue & 0xC0000000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if ([keyCopy isEqualToString:@"InactiveSoftMemoryLimit"])
  {
    if ((unsignedLongLongValue & 0xC0000000) == 0x80000000)
    {
LABEL_10:
      if ((unsignedLongLongValue & 0x3FFFFFFF) == 0x3FFFFFFF)
      {
        v10 = -1;
      }

      else
      {
        v10 = unsignedLongLongValue & 0x3FFFFFFF;
      }

LABEL_24:
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
      goto LABEL_3;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  if ([keyCopy isEqualToString:@"ActiveHardMemoryLimit"])
  {
    if (unsignedLongLongValue >> 62 != 3)
    {
      goto LABEL_15;
    }

LABEL_21:
    if ((unsignedLongLongValue & 0x3FFFFFFF00000000) == 0x3FFFFFFF00000000)
    {
      v10 = -1;
    }

    else
    {
      v10 = HIDWORD(unsignedLongLongValue) & 0x3FFFFFFF;
    }

    goto LABEL_24;
  }

  v8 = 0;
  if ([keyCopy isEqualToString:@"ActiveSoftMemoryLimit"] && (unsignedLongLongValue & 0xC000000000000000) == 0x8000000000000000)
  {
    goto LABEL_21;
  }

LABEL_16:

  return v8;
}

- (id)_keyForCategory:(id)category strength:(unsigned __int8)strength
{
  categoryCopy = category;
  v5 = NSStringFromRBSMemoryLimitStrength();
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@MemoryLimit", categoryCopy, v5];

  return v6;
}

- (unsigned)_altStrength:(unsigned __int8)strength
{
  if (strength == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)_initWithProperties:(id)properties globalProperties:(id)globalProperties taskLimit:(int)limit unLimit:(int)unLimit
{
  propertiesCopy = properties;
  globalPropertiesCopy = globalProperties;
  v16.receiver = self;
  v16.super_class = RBJetsamProperties;
  v12 = [(RBJetsamProperties *)&v16 init];
  if (v12)
  {
    v13 = [propertiesCopy copy];
    memoryLimitCategories = v12->_memoryLimitCategories;
    v12->_memoryLimitCategories = v13;

    objc_storeStrong(&v12->_globalProperties, globalProperties);
    v12->_taskLimit = limit;
    v12->_unLimit = unLimit;
  }

  return v12;
}

- (int)_integerLimitValue:(id)value
{
  result = [value intValue];
  if (result == -1)
  {
    v5 = 24;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v5 = 28;
  }

  return *(&self->super.isa + v5);
}

- (int)memoryLimitForCategory:(id)category strength:(unsigned __int8 *)strength
{
  v27 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  v7 = *strength;
  v8 = [(RBJetsamProperties *)self _altStrength:*strength];
  if ([categoryCopy isEqual:@"Active"])
  {
    v9 = 1;
  }

  else
  {
    v9 = [categoryCopy isEqual:@"Inactive"];
  }

  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = 2;
  }

  v11 = [(RBJetsamProperties *)self _keyForCategory:categoryCopy strength:v10];
  v12 = [(RBJetsamProperties *)self getValueFrom:self->_memoryLimitCategories forKey:v11];
  v13 = v12;
  if (v12 && [v12 longValue] != -1)
  {
    *strength = v10;
    taskLimit = [(RBJetsamProperties *)self _integerLimitValue:v13];

    goto LABEL_15;
  }

  v15 = [(RBJetsamProperties *)self _keyForCategory:categoryCopy strength:v8];

  v16 = [(RBJetsamProperties *)self getValueFrom:self->_memoryLimitCategories forKey:v15];

  if (v16)
  {
    *strength = v8;
    taskLimit = [(RBJetsamProperties *)self _integerLimitValue:v16];

LABEL_14:
    v11 = v15;
    goto LABEL_15;
  }

  if (v13)
  {
LABEL_13:
    taskLimit = self->_taskLimit;
    goto LABEL_14;
  }

  v19 = [(RBJetsamProperties *)self _keyForCategory:categoryCopy strength:v10];

  v20 = [(RBJetsamProperties *)self getValueFrom:self->_globalProperties forKey:v19];
  if (v20)
  {
    v21 = v20;
    *strength = v10;
    taskLimit = [(RBJetsamProperties *)self _integerLimitValue:v20];

    v11 = v19;
    goto LABEL_15;
  }

  v11 = [(RBJetsamProperties *)self _keyForCategory:categoryCopy strength:v8];

  v22 = [(RBJetsamProperties *)self getValueFrom:self->_globalProperties forKey:v11];
  if (v22)
  {
    v23 = v22;
    *strength = v8;
    taskLimit = [(RBJetsamProperties *)self _integerLimitValue:v22];

    goto LABEL_15;
  }

  if (v9 & 1) != 0 || ([categoryCopy isEqual:@"Inactive"])
  {
    v15 = v11;
    goto LABEL_13;
  }

  v24 = rbs_jetsam_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = categoryCopy;
    _os_log_impl(&dword_262485000, v24, OS_LOG_TYPE_DEFAULT, "No JetsamProperties for this process for category '%@'", &v25, 0xCu);
  }

  taskLimit = [(RBJetsamProperties *)self memoryLimitForCategory:@"Inactive" strength:strength];
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
  return taskLimit;
}

- (id)_directPropertyDescription:(id)description
{
  descriptionCopy = description;
  v5 = [(RBJetsamProperties *)self _keyForCategory:descriptionCopy strength:2];
  v6 = [(RBJetsamProperties *)self getValueFrom:self->_memoryLimitCategories forKey:v5];
  if (v6)
  {
    v7 = v6;
    v8 = @"\t%@SoftMemoryLimit=%lld\n";
    v9 = v5;
LABEL_5:
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v8, descriptionCopy, objc_msgSend(v7, "longLongValue")];

    goto LABEL_6;
  }

  v9 = [(RBJetsamProperties *)self _keyForCategory:descriptionCopy strength:1];

  v10 = [(RBJetsamProperties *)self getValueFrom:self->_memoryLimitCategories forKey:v9];
  if (v10)
  {
    v7 = v10;
    v8 = @"\t%@HardMemoryLimit=%lld\n";
    goto LABEL_5;
  }

  v11 = &stru_287507640;
LABEL_6:

  return v11;
}

- (void)overrideMemoryLimitCategoriesWithProperties:(id)properties
{
  v36 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  memoryLimitCategories = self->_memoryLimitCategories;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (v7 = propertiesCopy[1], objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = [(RBJetsamProperties *)self _keyForCategory:@"Active" strength:1];
    [v5 addObject:v8];

    v9 = [(RBJetsamProperties *)self _keyForCategory:@"Active" strength:2];
    [v5 addObject:v9];

    v10 = [(RBJetsamProperties *)self _keyForCategory:@"Inactive" strength:1];
    [v5 addObject:v10];

    v11 = [(RBJetsamProperties *)self _keyForCategory:@"Inactive" strength:2];
    [v5 addObject:v11];
  }

  v12 = self->_memoryLimitCategories;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allKeys = [self->_memoryLimitCategories allKeys];
    [v5 addObjectsFromArray:allKeys];
  }

  v14 = propertiesCopy[1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allKeys2 = [propertiesCopy[1] allKeys];
    [v5 addObjectsFromArray:allKeys2];
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = v5;
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
  obj = v17;
  if (!v18)
  {
LABEL_21:

    goto LABEL_22;
  }

  v19 = v18;
  v20 = 0;
  v21 = *v32;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v32 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v31 + 1) + 8 * i);
      v24 = [(RBJetsamProperties *)self getValueFrom:self->_memoryLimitCategories forKey:v23];
      v25 = [propertiesCopy getValueFrom:propertiesCopy[1] forKey:v23];
      v26 = v25;
      if (v25)
      {
        v20 = 1;
        v27 = v25;
      }

      else
      {
        v27 = v24;
        if (!v24)
        {
          goto LABEL_17;
        }
      }

      [v16 setObject:v27 forKey:v23];
LABEL_17:
    }

    v19 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v19);

  if (v20)
  {
    v28 = v16;
    v17 = self->_memoryLimitCategories;
    self->_memoryLimitCategories = v28;
    goto LABEL_21;
  }

LABEL_22:

  v29 = *MEMORY[0x277D85DE8];
}

@end