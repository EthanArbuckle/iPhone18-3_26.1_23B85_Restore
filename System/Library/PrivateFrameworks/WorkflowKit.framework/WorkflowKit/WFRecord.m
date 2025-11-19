@interface WFRecord
+ (id)propertiesForClass:(Class)a3;
+ (id)propertiesForClass:(Class)a3 walkingSuperclassesUntilReaching:(Class)a4;
+ (id)recordSubclassProperties;
- (BOOL)saveChangesToStorage:(id)a3 error:(id *)a4;
- (BOOL)saveProperties:(id)a3 toStorage:(id)a4 error:(id *)a5;
- (BOOL)writeToStorage:(id)a3 error:(id *)a4;
- (NSSet)allProperties;
- (NSSet)fetchedProperties;
- (NSSet)modifiedProperties;
- (NSSet)modifiedPropertiesSinceLastSave;
- (WFRecord)initWithStorage:(id)a3 properties:(id)a4 settingDefaultValues:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithValues:(BOOL)a3;
- (void)dealloc;
- (void)enumerateSettablePropertiesWithBlock:(id)a3;
- (void)loadFromStorage:(id)a3 properties:(id)a4;
- (void)markPropertyModifiedIfNecessary:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)resetModificationsForProperties:(id)a3 onlySinceLastSave:(BOOL)a4;
- (void)setDefaultPropertyValuesExceptFetched;
- (void)setupPropertyObservation;
- (void)tearDownPropertyObservation;
@end

@implementation WFRecord

+ (id)recordSubclassProperties
{
  if (recordSubclassProperties_onceToken != -1)
  {
    dispatch_once(&recordSubclassProperties_onceToken, &__block_literal_global_234);
  }

  v3 = [recordSubclassProperties_cachedProperties objectForKey:a1];
  if (!v3)
  {
    v3 = [a1 propertiesForClass:a1 walkingSuperclassesUntilReaching:objc_opt_class()];
    [recordSubclassProperties_cachedProperties setObject:v3 forKey:a1];
  }

  return v3;
}

- (void)setDefaultPropertyValuesExceptFetched
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(NSDictionary *)self->_allPropertiesByName allValues];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v9 = [(WFRecord *)self fetchedPropertyNames];
        v10 = [v8 name];
        v11 = [v9 containsObject:v10];

        if ((v11 & 1) == 0)
        {
          v12 = [v8 name];
          v13 = [v12 if_stringByUppercasingFirstCharacter];
          v14 = [@"default" stringByAppendingString:v13];

          NSSelectorFromString(v14);
          objc_opt_class();
          if (objc_opt_respondsToSelector())
          {
            v15 = [objc_opt_class() valueForKey:v14];
            v16 = [v8 name];
            [(WFRecord *)self setValue:v15 forKey:v16];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (NSSet)allProperties
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(WFRecord *)self allPropertiesByName];
  v4 = [v3 allValues];
  v5 = [v2 setWithArray:v4];

  return v5;
}

void __36__WFRecord_recordSubclassProperties__block_invoke()
{
  v0 = objc_opt_new();
  v1 = recordSubclassProperties_cachedProperties;
  recordSubclassProperties_cachedProperties = v0;
}

void __36__WFRecord_setupPropertyObservation__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 addObserver:v2 forKeyPath:v3 options:0 context:WFRecordPropertyObservationContext];
}

- (void)setupPropertyObservation
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __36__WFRecord_setupPropertyObservation__block_invoke;
  v2[3] = &unk_1E8376560;
  v2[4] = self;
  [(WFRecord *)self enumerateSettablePropertiesWithBlock:v2];
}

- (void)dealloc
{
  [(WFRecord *)self tearDownPropertyObservation];
  v3.receiver = self;
  v3.super_class = WFRecord;
  [(WFRecord *)&v3 dealloc];
}

- (void)tearDownPropertyObservation
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __39__WFRecord_tearDownPropertyObservation__block_invoke;
  v2[3] = &unk_1E8376560;
  v2[4] = self;
  [(WFRecord *)self enumerateSettablePropertiesWithBlock:v2];
}

void __39__WFRecord_tearDownPropertyObservation__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 removeObserver:v2 forKeyPath:v3 context:WFRecordPropertyObservationContext];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (WFRecordPropertyObservationContext == a6)
  {

    [(WFRecord *)self markPropertyModifiedIfNecessary:a3, a4, a5];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = WFRecord;
    [(WFRecord *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)enumerateSettablePropertiesWithBlock:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(NSDictionary *)self->_allPropertiesByName allValues];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 setter];

        if (v12)
        {
          v13 = [v10 setter];
          v14 = NSSelectorFromString(v13);

          v15 = objc_opt_class();
          if (class_getInstanceMethod(v15, v14))
          {
            v4[2](v4, v10);
          }
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)saveProperties:(id)a3 toStorage:(id)a4 error:(id *)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = objc_opt_class();
    v9 = [WFRecord propertiesForClass:v8 walkingSuperclassesUntilReaching:objc_opt_class()];
    objc_opt_class();
    v39 = v9;
    v10 = v7;
    if (objc_opt_respondsToSelector())
    {
      v11 = [objc_opt_class() recordPropertyMap];
    }

    else
    {
      v11 = 0;
    }

    v38 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v35 = v6;
    obj = v6;
    v13 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v41;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v41 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v40 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          v19 = [v17 name];
          v20 = [v11 objectForKeyedSubscript:v19];
          v21 = v20;
          if (v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = [v17 name];
          }

          v23 = v22;

          v24 = [v39 objectForKeyedSubscript:v23];
          if (v24)
          {
            v25 = [[WFRecordPropertyMapping alloc] initWithSourceObject:self property:v17 destinationObject:v10 property:v24];
            [(WFRecordPropertyMapping *)v25 propagate];
            v26 = [v24 name];
            [v38 addObject:v26];
          }

          else
          {
            v25 = getWFWFRecordLogObject();
            if (!os_log_type_enabled(&v25->super, OS_LOG_TYPE_INFO))
            {
              goto LABEL_20;
            }

            v27 = objc_opt_class();
            v26 = NSStringFromClass(v27);
            *buf = 136315650;
            v45 = "[WFRecord saveProperties:toStorage:error:]";
            v46 = 2114;
            v47 = v23;
            v48 = 2114;
            v49 = v26;
            _os_log_impl(&dword_1CA256000, &v25->super, OS_LOG_TYPE_INFO, "%s Not saving property %{public}@ to storage, because storage %{public}@ doesn't have it.", buf, 0x20u);
          }

LABEL_20:
          objc_autoreleasePoolPop(v18);
        }

        v14 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v14);
    }

    v7 = v10;
    if (objc_opt_respondsToSelector())
    {
      [v10 didUpdateProperties:v38];
    }

    v28 = getWFWFRecordLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [obj count];
      v30 = [(WFRecord *)self descriptionWithValues:0];
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 136315906;
      v45 = "[WFRecord saveProperties:toStorage:error:]";
      v46 = 2048;
      v47 = v29;
      v48 = 2114;
      v49 = v30;
      v50 = 2114;
      v51 = v32;
      _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_INFO, "%s Saved %lu properties on record %{public}@ to storage %{public}@", buf, 0x2Au);
    }

    v6 = v35;
    v12 = v39;
  }

  else
  {
    v12 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v45 = "[WFRecord saveProperties:toStorage:error:]";
      v46 = 2112;
      v47 = self;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, "%s Requested saving a set of properties to storage, but the set is empty. Bailing (%@)", buf, 0x16u);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)resetModificationsForProperties:(id)a3 onlySinceLastSave:(BOOL)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(WFRecord *)self allProperties];
    v8 = [v9 valueForKey:@"name"];
  }

  v10 = [(WFRecord *)self modifiedPropertyNamesSinceLastSave];
  [v10 minusSet:v8];

  if (a4)
  {
    [(WFRecord *)self lastSavedOrFetchedValues];
  }

  else
  {
    v11 = [(WFRecord *)self modifiedPropertyNames];
    [v11 minusSet:v8];

    v12 = [(WFRecord *)self lastSavedOrFetchedValues];
    v13 = [v8 allObjects];
    [v12 removeObjectsForKeys:v13];

    [(WFRecord *)self lastFetchedValues];
  }
  v14 = ;
  v15 = [v8 allObjects];
  [v14 removeObjectsForKeys:v15];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * i);
        v22 = [(WFRecord *)self valueForKey:v21, v26];
        v23 = [(WFRecord *)self lastSavedOrFetchedValues];
        [v23 setValue:v22 forKey:v21];

        if (!a4)
        {
          v24 = [(WFRecord *)self lastFetchedValues];
          [v24 setValue:v22 forKey:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)markPropertyModifiedIfNecessary:(id)a3
{
  v22 = a3;
  v4 = [(WFRecord *)self fetchedPropertyNames];
  v5 = [v4 containsObject:v22];

  if ((v5 & 1) == 0)
  {
    v15 = [(WFRecord *)self modifiedPropertyNamesSinceLastSave];
    [v15 addObject:v22];

    v16 = [(WFRecord *)self modifiedPropertyNames];
    [v16 addObject:v22];
    goto LABEL_22;
  }

  v6 = [(WFRecord *)self valueForKey:v22];
  v7 = [(WFRecord *)self lastSavedOrFetchedValues];
  v8 = [v7 objectForKey:v22];

  v9 = [(WFRecord *)self lastFetchedValues];
  v10 = [v9 objectForKey:v22];

  v11 = v6;
  v12 = v8;
  v13 = v12;
  if (v11 == v12)
  {

    goto LABEL_9;
  }

  if (v11 && v12)
  {
    v14 = [v11 isEqual:v12];

    if ((v14 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_9:
    v17 = [(WFRecord *)self modifiedPropertyNamesSinceLastSave];
    [v17 removeObject:v22];
    goto LABEL_12;
  }

LABEL_11:
  v17 = [(WFRecord *)self modifiedPropertyNamesSinceLastSave];
  [v17 addObject:v22];
LABEL_12:

  v16 = v11;
  v18 = v10;
  v19 = v18;
  if (v16 == v18)
  {
  }

  else
  {
    if (!v16 || !v18)
    {

LABEL_20:
      v21 = [(WFRecord *)self modifiedPropertyNames];
      [v21 addObject:v22];
      goto LABEL_21;
    }

    v20 = [v16 isEqual:v18];

    if ((v20 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v21 = [(WFRecord *)self modifiedPropertyNames];
  [v21 removeObject:v22];
LABEL_21:

LABEL_22:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = objc_opt_new();
  v6 = [v4 initWithStorage:0 properties:v5 settingDefaultValues:0];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [(WFRecord *)self allProperties];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [[WFRecordPropertyMapping alloc] initWithSourceObject:self property:v12 destinationObject:v6 property:v12];
        [(WFRecordPropertyMapping *)v14 propagate:1];

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v15 = [v6 modifiedPropertyNamesSinceLastSave];
  v16 = [(WFRecord *)self modifiedPropertyNamesSinceLastSave];
  [v15 setSet:v16];

  v17 = [v6 modifiedPropertyNames];
  v18 = [(WFRecord *)self modifiedPropertyNames];
  [v17 setSet:v18];

  v19 = [v6 lastFetchedValues];
  v20 = [(WFRecord *)self lastFetchedValues];
  [v19 setDictionary:v20];

  v21 = [v6 lastSavedOrFetchedValues];
  v22 = [(WFRecord *)self lastSavedOrFetchedValues];
  [v21 setDictionary:v22];

  v23 = [(WFRecord *)self storageIdentifier];
  [v6 setStorageIdentifier:v23];

  v24 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)descriptionWithValues:(BOOL)a3
{
  v3 = a3;
  v34 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"<%@: %p, {\n", v7, self];

  v27 = v8;
  v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = [(WFRecord *)self allPropertiesByName];
  v11 = [v10 allKeys];
  v12 = [v11 sortedArrayUsingSelector:sel_compare_];

  obj = v12;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        [v9 appendString:@"\t"];
        [v9 appendString:v17];
        v18 = [(WFRecord *)self fetchedPropertyNames];
        v19 = [v18 containsObject:v17];

        if (v19)
        {
          [v9 appendString:@" (f)"];
        }

        v20 = [(WFRecord *)self modifiedPropertyNames];
        v21 = [v20 containsObject:v17];

        if (v21)
        {
          [v9 appendString:@" (m)"];
        }

        v22 = [(WFRecord *)self modifiedPropertyNamesSinceLastSave];
        v23 = [v22 containsObject:v17];

        if (v23)
        {
          [v9 appendString:@" (u)"];
        }

        if (v3)
        {
          v24 = [(WFRecord *)self valueForKey:v17];
          [v9 appendFormat:@" %@", v24];
        }

        [v9 appendString:@"\n"];
      }

      v14 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  [v9 appendString:@"}>"];
  v25 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)writeToStorage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WFRecord *)self allProperties];
  LOBYTE(a4) = [(WFRecord *)self saveProperties:v7 toStorage:v6 error:a4];

  return a4;
}

- (BOOL)saveChangesToStorage:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"WFRecord.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"storage"}];
  }

  v8 = [v7 identifier];
  v9 = [(WFRecord *)self storageIdentifier];
  v10 = v8;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = 0;
    if (v10 && v11)
    {
      v13 = [v10 isEqual:v11];
    }
  }

  v14 = [(WFRecord *)self modifiedPropertiesSinceLastSave];
  v15 = [v14 mutableCopy];

  if ((v13 & 1) == 0)
  {
    v16 = [(WFRecord *)self fetchedProperties];
    [v15 unionSet:v16];
  }

  if ([v15 count])
  {
    LODWORD(a4) = [(WFRecord *)self saveProperties:v15 toStorage:v7 error:a4];
    if ((a4 & v13) == 1)
    {
      v17 = [v15 valueForKey:@"name"];
      LOBYTE(a4) = 1;
      [(WFRecord *)self resetModificationsForProperties:v17 onlySinceLastSave:1];
    }
  }

  else
  {
    a4 = getWFDatabaseLogObject();
    if (os_log_type_enabled(a4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[WFRecord saveChangesToStorage:error:]";
      v23 = 2112;
      v24 = self;
      _os_log_impl(&dword_1CA256000, a4, OS_LOG_TYPE_INFO, "%s Requested saving changes to storage, but looks like nothing changed — bailing out (%@)", buf, 0x16u);
    }

    LOBYTE(a4) = 1;
  }

  v18 = *MEMORY[0x1E69E9840];
  return a4;
}

- (void)loadFromStorage:(id)a3 properties:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = getWFGeneralLogObject();
  v9 = os_signpost_id_generate(v8);

  v10 = getWFGeneralLogObject();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "WFRecordLoadFromStorage", "", buf, 2u);
  }

  objc_opt_class();
  spid = v9;
  v37 = v9 - 1;
  if (objc_opt_respondsToSelector())
  {
    v41 = [objc_opt_class() recordPropertyMap];
    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v41 = 0;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  v12 = MEMORY[0x1E695DFD8];
  v13 = [(WFRecord *)self allPropertiesByName];
  v14 = [v13 allKeys];
  v7 = [v12 setWithArray:v14];

LABEL_9:
  v15 = objc_opt_class();
  v40 = [WFRecord propertiesForClass:v15 walkingSuperclassesUntilReaching:objc_opt_class()];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v7;
  v42 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v42)
  {
    v39 = *v44;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v43 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = [(WFRecord *)self allPropertiesByName];
        v20 = [v19 objectForKey:v17];

        if (!v20)
        {
          v28 = [MEMORY[0x1E696AAA8] currentHandler];
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          [v28 handleFailureInMethod:a2 object:self file:@"WFRecord.m" lineNumber:140 description:{@"Property name %@ is invalid for class: %@", v17, v30, spid}];
        }

        v21 = [v41 objectForKeyedSubscript:v17];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v17;
        }

        v24 = v23;

        v25 = [v40 objectForKeyedSubscript:v24];
        if (v25)
        {
          v26 = [[WFRecordPropertyMapping alloc] initWithSourceObject:v6 property:v25 destinationObject:self property:v20];
          [(WFRecordPropertyMapping *)v26 propagate:1];
          v27 = [(WFRecord *)self fetchedPropertyNames];
          [v27 addObject:v17];
        }

        objc_autoreleasePoolPop(v18);
      }

      v42 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v42);
  }

  v31 = [v6 identifier];
  [(WFRecord *)self setStorageIdentifier:v31];

  [(WFRecord *)self resetModificationsForProperties:obj onlySinceLastSave:0];
  v32 = getWFGeneralLogObject();
  v33 = v32;
  if (v37 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v33, OS_SIGNPOST_INTERVAL_END, spid, "WFRecordLoadFromStorage", "", buf, 2u);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (NSSet)modifiedProperties
{
  v3 = [(WFRecord *)self modifiedPropertyNames];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__WFRecord_modifiedProperties__block_invoke;
  v6[3] = &unk_1E8376538;
  v6[4] = self;
  v4 = [v3 if_map:v6];

  return v4;
}

id __30__WFRecord_modifiedProperties__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 allPropertiesByName];
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

- (NSSet)modifiedPropertiesSinceLastSave
{
  v3 = [(WFRecord *)self modifiedPropertyNamesSinceLastSave];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__WFRecord_modifiedPropertiesSinceLastSave__block_invoke;
  v6[3] = &unk_1E8376538;
  v6[4] = self;
  v4 = [v3 if_map:v6];

  return v4;
}

id __43__WFRecord_modifiedPropertiesSinceLastSave__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 allPropertiesByName];
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

- (NSSet)fetchedProperties
{
  v3 = [(WFRecord *)self fetchedPropertyNames];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__WFRecord_fetchedProperties__block_invoke;
  v6[3] = &unk_1E8376538;
  v6[4] = self;
  v4 = [v3 if_map:v6];

  return v4;
}

id __29__WFRecord_fetchedProperties__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 allPropertiesByName];
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

- (WFRecord)initWithStorage:(id)a3 properties:(id)a4 settingDefaultValues:(BOOL)a5
{
  v5 = a5;
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = getWFGeneralLogObject();
  v11 = os_signpost_id_generate(v10);

  v12 = getWFGeneralLogObject();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 138412290;
    v37 = objc_opt_class();
    v14 = v37;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "WFRecordInitWithStorage", "class=%{signpost.description:attribute}@", buf, 0xCu);
  }

  v35.receiver = self;
  v35.super_class = WFRecord;
  v15 = [(WFRecord *)&v35 init];
  if (v15)
  {
    v16 = [objc_opt_class() recordSubclassProperties];
    allPropertiesByName = v15->_allPropertiesByName;
    v15->_allPropertiesByName = v16;

    v18 = objc_opt_new();
    fetchedPropertyNames = v15->_fetchedPropertyNames;
    v15->_fetchedPropertyNames = v18;

    v20 = objc_opt_new();
    modifiedPropertyNamesSinceLastSave = v15->_modifiedPropertyNamesSinceLastSave;
    v15->_modifiedPropertyNamesSinceLastSave = v20;

    v22 = objc_opt_new();
    lastSavedOrFetchedValues = v15->_lastSavedOrFetchedValues;
    v15->_lastSavedOrFetchedValues = v22;

    v24 = objc_opt_new();
    modifiedPropertyNames = v15->_modifiedPropertyNames;
    v15->_modifiedPropertyNames = v24;

    v26 = objc_opt_new();
    lastFetchedValues = v15->_lastFetchedValues;
    v15->_lastFetchedValues = v26;

    v28 = [v8 identifier];
    storageIdentifier = v15->_storageIdentifier;
    v15->_storageIdentifier = v28;

    if (v8)
    {
      [(WFRecord *)v15 loadFromStorage:v8 properties:v9];
    }

    if (v5)
    {
      [(WFRecord *)v15 setDefaultPropertyValuesExceptFetched];
    }

    [(WFRecord *)v15 resetModificationsForProperties:0 onlySinceLastSave:0];
    [(WFRecord *)v15 setupPropertyObservation];
    v30 = getWFGeneralLogObject();
    v31 = v30;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v31, OS_SIGNPOST_INTERVAL_END, v11, "WFRecordInitWithStorage", "", buf, 2u);
    }

    v32 = v15;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (id)propertiesForClass:(Class)a3
{
  v4 = objc_opt_new();
  v5 = +[WFRecord ignoredPropertyNames];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(objc_class *)a3 ignoredPropertyNames];

    v5 = v6;
  }

  outCount = 0;
  v7 = class_copyPropertyList(a3, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:property_getName(v7[i])];
      if (([v5 containsObject:v9] & 1) == 0)
      {
        v10 = [[WFRecordProperty alloc] initWithName:v9 property:v7[i]];
        if (v10)
        {
          [v4 setObject:v10 forKey:v9];
        }
      }
    }
  }

  free(v7);

  return v4;
}

+ (id)propertiesForClass:(Class)a3 walkingSuperclassesUntilReaching:(Class)a4
{
  v7 = objc_opt_new();
  if (([(objc_class *)a3 isEqual:a4]& 1) == 0)
  {
    do
    {
      if (![(objc_class *)a3 isSubclassOfClass:a4])
      {
        break;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = [a1 propertiesForClass:a3];
      [v7 addEntriesFromDictionary:v9];

      a3 = [(objc_class *)a3 superclass];
      objc_autoreleasePoolPop(v8);
    }

    while (![(objc_class *)a3 isEqual:a4]);
  }

  return v7;
}

@end