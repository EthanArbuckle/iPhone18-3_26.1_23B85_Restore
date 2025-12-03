@interface REMResolutionTokenMap
+ (REMResolutionTokenMap)mapWithData:(id)data;
+ (REMResolutionTokenMap)resolutionTokenMapWithJSONData:(id)data keyMap:(id)map;
- (BOOL)isEqual:(id)equal;
- (REMResolutionTokenMap)init;
- (REMResolutionTokenMap)initWithCoder:(id)coder;
- (REMResolutionTokenMap)initWithMap:(id)map;
- (id)archivedData;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)getTokenForKey:(id)key;
- (id)getTokenKeys;
- (int64_t)compare:(id)compare forKey:(id)key;
- (int64_t)compareAndMergeWithMap:(id)map forKey:(id)key;
- (void)archivedData;
- (void)encodeWithCoder:(id)coder;
- (void)forceMergeFromMap:(id)map forKey:(id)key;
- (void)initTokenWithDefaultValueIfNecessaryForKey:(id)key;
- (void)setToken:(id)token forKey:(id)key;
- (void)updateForKey:(id)key;
@end

@implementation REMResolutionTokenMap

- (REMResolutionTokenMap)init
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(REMResolutionTokenMap *)self initWithMap:dictionary];

  return v4;
}

- (REMResolutionTokenMap)initWithMap:(id)map
{
  mapCopy = map;
  v8.receiver = self;
  v8.super_class = REMResolutionTokenMap;
  v5 = [(REMResolutionTokenMap *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(REMResolutionTokenMap *)v5 setMap:mapCopy];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(REMResolutionTokenMap *)self map];
  [coderCopy encodeObject:v5 forKey:@"map"];
}

- (REMResolutionTokenMap)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"map"];

  v10 = [(REMResolutionTokenMap *)self initWithMap:v9];
  return v10;
}

- (void)updateForKey:(id)key
{
  keyCopy = key;
  v4 = [(REMResolutionTokenMap *)self map];
  v5 = [v4 objectForKeyedSubscript:keyCopy];

  if (!v5)
  {
    v5 = objc_alloc_init(REMResolutionToken);
    v6 = [(REMResolutionTokenMap *)self map];
    [v6 setObject:v5 forKeyedSubscript:keyCopy];
  }

  [(REMResolutionToken *)v5 update];
}

- (void)initTokenWithDefaultValueIfNecessaryForKey:(id)key
{
  keyCopy = key;
  v4 = [(REMResolutionTokenMap *)self map];
  v5 = [v4 objectForKeyedSubscript:keyCopy];

  if (!v5)
  {
    initWithDefaultValue = [[REMResolutionToken alloc] initWithDefaultValue];
    v7 = [(REMResolutionTokenMap *)self map];
    [v7 setObject:initWithDefaultValue forKeyedSubscript:keyCopy];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [REMResolutionTokenMap alloc];
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v6 = [(REMResolutionTokenMap *)self map];
  v7 = [v5 initWithDictionary:v6 copyItems:1];
  v8 = [(REMResolutionTokenMap *)v4 initWithMap:v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(REMResolutionTokenMap *)self map];
      v6 = [(REMResolutionTokenMap *)equalCopy map];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (int64_t)compare:(id)compare forKey:(id)key
{
  v28 = *MEMORY[0x1E69E9840];
  compareCopy = compare;
  keyCopy = key;
  v8 = [(REMResolutionTokenMap *)self map];
  v9 = [v8 objectForKeyedSubscript:keyCopy];

  v10 = [compareCopy map];
  v11 = [v10 objectForKeyedSubscript:keyCopy];

  if (!(v9 | v11))
  {
    v13 = +[REMLogStore utility];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v21 = [(REMResolutionTokenMap *)self map];
      allKeys = [v21 allKeys];
      v17 = [allKeys componentsJoinedByString:{@", "}];
      v18 = [compareCopy map];
      allKeys2 = [v18 allKeys];
      v20 = [allKeys2 componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v23 = keyCopy;
      v24 = 2112;
      v25 = v17;
      v26 = 2112;
      v27 = v20;
      _os_log_fault_impl(&dword_19A0DB000, v13, OS_LOG_TYPE_FAULT, "Comparing two undefined resolution token is unexpected and should never happen {key: %{public}@, self.map.allKeys: %@, other.map.allKeys: %@}", buf, 0x20u);
    }

LABEL_8:
    v12 = -1;
    goto LABEL_9;
  }

  if (!v9 || v11)
  {
    if (v9 || !v11)
    {
      v12 = [v9 compare:v11];
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = 1;
LABEL_9:

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (int64_t)compareAndMergeWithMap:(id)map forKey:(id)key
{
  mapCopy = map;
  keyCopy = key;
  v8 = [(REMResolutionTokenMap *)self compare:mapCopy forKey:keyCopy];
  if (v8 == -1)
  {
    v9 = [mapCopy map];
    v10 = [v9 objectForKeyedSubscript:keyCopy];
    v11 = [v10 copy];
    v12 = [(REMResolutionTokenMap *)self map];
    [v12 setObject:v11 forKeyedSubscript:keyCopy];
  }

  return v8;
}

- (void)forceMergeFromMap:(id)map forKey:(id)key
{
  keyCopy = key;
  v10 = [map map];
  v7 = [v10 objectForKeyedSubscript:keyCopy];
  v8 = [v7 copy];
  v9 = [(REMResolutionTokenMap *)self map];
  [v9 setObject:v8 forKeyedSubscript:keyCopy];
}

- (id)getTokenForKey:(id)key
{
  keyCopy = key;
  v5 = [(REMResolutionTokenMap *)self map];
  v6 = [v5 objectForKeyedSubscript:keyCopy];

  return v6;
}

- (void)setToken:(id)token forKey:(id)key
{
  keyCopy = key;
  tokenCopy = token;
  v8 = [(REMResolutionTokenMap *)self map];
  [v8 setObject:tokenCopy forKeyedSubscript:keyCopy];
}

- (id)getTokenKeys
{
  v2 = [(REMResolutionTokenMap *)self map];
  allKeys = [v2 allKeys];

  return allKeys;
}

- (id)archivedData
{
  v8 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v8];
  v3 = v8;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = +[REMLogStore utility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [REMResolutionTokenMap archivedData];
    }
  }

  return v2;
}

+ (REMResolutionTokenMap)mapWithData:(id)data
{
  v9 = 0;
  v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:self fromData:data error:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = +[REMLogStore utility];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[REMResolutionTokenMap mapWithData:];
    }
  }

  return v3;
}

- (id)debugDescription
{
  v2 = [(REMResolutionTokenMap *)self map];
  v3 = [v2 debugDescription];

  return v3;
}

+ (REMResolutionTokenMap)resolutionTokenMapWithJSONData:(id)data keyMap:(id)map
{
  v39 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  mapCopy = map;
  if (dataCopy && [dataCopy length])
  {
    v37 = 0;
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:&v37];
    v7 = v37;
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = REMDynamicCast(v8, v6);
      if (v9)
      {
        v29 = v7;
        v30 = dataCopy;
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v28 = v9;
        v10 = [v9 objectForKeyedSubscript:@"map"];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        keyEnumerator = [v10 keyEnumerator];
        v12 = [keyEnumerator countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v34;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v34 != v14)
              {
                objc_enumerationMutation(keyEnumerator);
              }

              v16 = *(*(&v33 + 1) + 8 * i);
              v17 = [v10 objectForKey:v16];
              v18 = [REMResolutionToken resolutionTokenWithJSONObject:v17];
              if (v18)
              {
                v19 = [mapCopy objectForKey:v16];
                v20 = v19;
                if (v19)
                {
                  v21 = v19;
                }

                else
                {
                  v21 = v16;
                }

                v22 = v21;

                [dictionary setObject:v18 forKey:v22];
              }
            }

            v13 = [keyEnumerator countByEnumeratingWithState:&v33 objects:v38 count:16];
          }

          while (v13);
        }

        v23 = dictionary;
        v24 = [[REMResolutionTokenMap alloc] initWithMap:dictionary];

        dataCopy = v30;
        v9 = v28;
        v7 = v29;
      }

      else
      {
        v23 = +[REMLogStore utility];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          [REMResolutionTokenMap resolutionTokenMapWithJSONData:v6 keyMap:v23];
        }

        v24 = 0;
      }
    }

    else
    {
      v9 = +[REMLogStore utility];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        +[REMResolutionTokenMap resolutionTokenMapWithJSONData:keyMap:];
      }

      v24 = 0;
    }

    v25 = v24;
  }

  else
  {
    v25 = objc_alloc_init(REMResolutionTokenMap);
  }

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (void)archivedData
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_ERROR, "Error encoding resolution token map {error: %@}", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)mapWithData:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_ERROR, "Error decoding resolution token map {error: %@}", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)resolutionTokenMapWithJSONData:(uint64_t)a1 keyMap:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unexpected class to decode data to REMResolutionTokenMap. Returning nil {class: %@}", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)resolutionTokenMapWithJSONData:keyMap:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_FAULT, "Failed to decode data to REMResolutionTokenMap. Returning nil {error: %@}", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end