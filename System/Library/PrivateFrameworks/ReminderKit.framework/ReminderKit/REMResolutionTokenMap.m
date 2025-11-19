@interface REMResolutionTokenMap
+ (REMResolutionTokenMap)mapWithData:(id)a3;
+ (REMResolutionTokenMap)resolutionTokenMapWithJSONData:(id)a3 keyMap:(id)a4;
- (BOOL)isEqual:(id)a3;
- (REMResolutionTokenMap)init;
- (REMResolutionTokenMap)initWithCoder:(id)a3;
- (REMResolutionTokenMap)initWithMap:(id)a3;
- (id)archivedData;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)getTokenForKey:(id)a3;
- (id)getTokenKeys;
- (int64_t)compare:(id)a3 forKey:(id)a4;
- (int64_t)compareAndMergeWithMap:(id)a3 forKey:(id)a4;
- (void)archivedData;
- (void)encodeWithCoder:(id)a3;
- (void)forceMergeFromMap:(id)a3 forKey:(id)a4;
- (void)initTokenWithDefaultValueIfNecessaryForKey:(id)a3;
- (void)setToken:(id)a3 forKey:(id)a4;
- (void)updateForKey:(id)a3;
@end

@implementation REMResolutionTokenMap

- (REMResolutionTokenMap)init
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(REMResolutionTokenMap *)self initWithMap:v3];

  return v4;
}

- (REMResolutionTokenMap)initWithMap:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = REMResolutionTokenMap;
  v5 = [(REMResolutionTokenMap *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(REMResolutionTokenMap *)v5 setMap:v4];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMResolutionTokenMap *)self map];
  [v4 encodeObject:v5 forKey:@"map"];
}

- (REMResolutionTokenMap)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"map"];

  v10 = [(REMResolutionTokenMap *)self initWithMap:v9];
  return v10;
}

- (void)updateForKey:(id)a3
{
  v7 = a3;
  v4 = [(REMResolutionTokenMap *)self map];
  v5 = [v4 objectForKeyedSubscript:v7];

  if (!v5)
  {
    v5 = objc_alloc_init(REMResolutionToken);
    v6 = [(REMResolutionTokenMap *)self map];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }

  [(REMResolutionToken *)v5 update];
}

- (void)initTokenWithDefaultValueIfNecessaryForKey:(id)a3
{
  v8 = a3;
  v4 = [(REMResolutionTokenMap *)self map];
  v5 = [v4 objectForKeyedSubscript:v8];

  if (!v5)
  {
    v6 = [[REMResolutionToken alloc] initWithDefaultValue];
    v7 = [(REMResolutionTokenMap *)self map];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [REMResolutionTokenMap alloc];
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v6 = [(REMResolutionTokenMap *)self map];
  v7 = [v5 initWithDictionary:v6 copyItems:1];
  v8 = [(REMResolutionTokenMap *)v4 initWithMap:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(REMResolutionTokenMap *)self map];
      v6 = [(REMResolutionTokenMap *)v4 map];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (int64_t)compare:(id)a3 forKey:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(REMResolutionTokenMap *)self map];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [v6 map];
  v11 = [v10 objectForKeyedSubscript:v7];

  if (!(v9 | v11))
  {
    v13 = +[REMLogStore utility];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v21 = [(REMResolutionTokenMap *)self map];
      v16 = [v21 allKeys];
      v17 = [v16 componentsJoinedByString:{@", "}];
      v18 = [v6 map];
      v19 = [v18 allKeys];
      v20 = [v19 componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v23 = v7;
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

- (int64_t)compareAndMergeWithMap:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(REMResolutionTokenMap *)self compare:v6 forKey:v7];
  if (v8 == -1)
  {
    v9 = [v6 map];
    v10 = [v9 objectForKeyedSubscript:v7];
    v11 = [v10 copy];
    v12 = [(REMResolutionTokenMap *)self map];
    [v12 setObject:v11 forKeyedSubscript:v7];
  }

  return v8;
}

- (void)forceMergeFromMap:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v10 = [a3 map];
  v7 = [v10 objectForKeyedSubscript:v6];
  v8 = [v7 copy];
  v9 = [(REMResolutionTokenMap *)self map];
  [v9 setObject:v8 forKeyedSubscript:v6];
}

- (id)getTokenForKey:(id)a3
{
  v4 = a3;
  v5 = [(REMResolutionTokenMap *)self map];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)setToken:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMResolutionTokenMap *)self map];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

- (id)getTokenKeys
{
  v2 = [(REMResolutionTokenMap *)self map];
  v3 = [v2 allKeys];

  return v3;
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

+ (REMResolutionTokenMap)mapWithData:(id)a3
{
  v9 = 0;
  v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:a1 fromData:a3 error:&v9];
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

+ (REMResolutionTokenMap)resolutionTokenMapWithJSONData:(id)a3 keyMap:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v32 = a4;
  if (v5 && [v5 length])
  {
    v37 = 0;
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v37];
    v7 = v37;
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = REMDynamicCast(v8, v6);
      if (v9)
      {
        v29 = v7;
        v30 = v5;
        v31 = [MEMORY[0x1E695DF90] dictionary];
        v28 = v9;
        v10 = [v9 objectForKeyedSubscript:@"map"];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v11 = [v10 keyEnumerator];
        v12 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v33 + 1) + 8 * i);
              v17 = [v10 objectForKey:v16];
              v18 = [REMResolutionToken resolutionTokenWithJSONObject:v17];
              if (v18)
              {
                v19 = [v32 objectForKey:v16];
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

                [v31 setObject:v18 forKey:v22];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
          }

          while (v13);
        }

        v23 = v31;
        v24 = [[REMResolutionTokenMap alloc] initWithMap:v31];

        v5 = v30;
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