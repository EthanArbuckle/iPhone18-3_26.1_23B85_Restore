@interface HKSPDictionaryDeserializer
- (BOOL)decodeBoolForKey:(id)a3;
- (HKSPDictionaryDeserializer)initWithAllowedClasses:(id)a3 serializedDictionary:(id)a4 serializationOptions:(unint64_t)a5;
- (double)decodeDoubleForKey:(id)a3;
- (float)decodeFloatForKey:(id)a3;
- (id)_decodeDeserializable:(id)a3 error:(id *)a4;
- (id)_decodeObject:(id)a3 error:(id *)a4;
- (id)decodeObjectForKey:(id)a3;
- (id)decodeTopLevelObjectOfClass:(Class)a3 forKey:(id)a4 error:(id *)a5;
- (id)deserializeObjectOfClass:(Class)a3 error:(id *)a4;
- (int)decodeInt32ForKey:(id)a3;
- (int)decodeIntForKey:(id)a3;
- (int64_t)decodeInt64ForKey:(id)a3;
- (int64_t)decodeIntegerForKey:(id)a3;
@end

@implementation HKSPDictionaryDeserializer

- (HKSPDictionaryDeserializer)initWithAllowedClasses:(id)a3 serializedDictionary:(id)a4 serializationOptions:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = HKSPDictionaryDeserializer;
  v11 = [(HKSPDictionaryDeserializer *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_allowedClasses, a3);
    objc_storeStrong(&v12->_serializedDictionary, a4);
    v12->_serializationOptions = a5;
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stack = v12->_stack;
    v12->_stack = v13;

    v15 = v12;
  }

  return v12;
}

- (id)deserializeObjectOfClass:(Class)a3 error:(id *)a4
{
  v7 = HKSPSerializableKeyForClass(a3);
  v8 = [(HKSPDictionaryDeserializer *)self decodeTopLevelObjectOfClass:a3 forKey:v7 error:a4];

  return v8;
}

- (id)decodeTopLevelObjectOfClass:(Class)a3 forKey:(id)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  if ([(NSDictionary *)self->_serializedDictionary hksp_isSerialized])
  {
    v8 = [v7 substringFromIndex:1];
    v9 = [(NSDictionary *)self->_serializedDictionary hksp_serializedClassName];
    if ([v8 isEqualToString:v9])
    {
      v10 = [(HKSPDictionaryDeserializer *)self _decodeObject:self->_serializedDictionary error:a5];
    }

    else
    {
      if (a5)
      {
        v12 = MEMORY[0x277CCA9B8];
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected class %@", v9, *MEMORY[0x277CCA450]];
        v18 = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        *a5 = [v12 errorWithDomain:@"com.apple.sleep.serialization" code:2 userInfo:v14];
      }

      v10 = 0;
    }

    goto LABEL_10;
  }

  if (a5)
  {
    v11 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"Invalid serialized dictionary";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [v11 errorWithDomain:@"com.apple.sleep.serialization" code:1 userInfo:v8];
    *a5 = v10 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)decodeBoolForKey:(id)a3
{
  stack = self->_stack;
  v4 = a3;
  v5 = [(NSMutableArray *)stack lastObject];
  v6 = [v5 objectForKeyedSubscript:v4];

  LOBYTE(v4) = [v6 BOOLValue];
  return v4;
}

- (int64_t)decodeIntegerForKey:(id)a3
{
  stack = self->_stack;
  v4 = a3;
  v5 = [(NSMutableArray *)stack lastObject];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 integerValue];
  return v7;
}

- (int)decodeIntForKey:(id)a3
{
  stack = self->_stack;
  v4 = a3;
  v5 = [(NSMutableArray *)stack lastObject];
  v6 = [v5 objectForKeyedSubscript:v4];

  LODWORD(v4) = [v6 intValue];
  return v4;
}

- (int)decodeInt32ForKey:(id)a3
{
  stack = self->_stack;
  v4 = a3;
  v5 = [(NSMutableArray *)stack lastObject];
  v6 = [v5 objectForKeyedSubscript:v4];

  LODWORD(v4) = [v6 intValue];
  return v4;
}

- (int64_t)decodeInt64ForKey:(id)a3
{
  stack = self->_stack;
  v4 = a3;
  v5 = [(NSMutableArray *)stack lastObject];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 longLongValue];
  return v7;
}

- (float)decodeFloatForKey:(id)a3
{
  stack = self->_stack;
  v4 = a3;
  v5 = [(NSMutableArray *)stack lastObject];
  v6 = [v5 objectForKeyedSubscript:v4];

  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (double)decodeDoubleForKey:(id)a3
{
  stack = self->_stack;
  v4 = a3;
  v5 = [(NSMutableArray *)stack lastObject];
  v6 = [v5 objectForKeyedSubscript:v4];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (id)decodeObjectForKey:(id)a3
{
  stack = self->_stack;
  v5 = a3;
  v6 = [(NSMutableArray *)stack lastObject];
  v7 = [v6 objectForKeyedSubscript:v5];

  v8 = [(HKSPDictionaryDeserializer *)self _decodeObject:v7 error:0];

  return v8;
}

- (id)_decodeObject:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    if ([v7 hksp_isSerialized])
    {
      v8 = [(HKSPDictionaryDeserializer *)self _decodeDeserializable:v7 error:a4];
    }

    else
    {
      v28 = v6;
      v17 = [MEMORY[0x277CBEB38] dictionary];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v18 = v7;
      v19 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v34;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v33 + 1) + 8 * i);
            v24 = [v18 objectForKeyedSubscript:v23];
            v25 = [(HKSPDictionaryDeserializer *)self _decodeObject:v24 error:a4];
            [v17 setObject:v25 forKeyedSubscript:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v20);
      }

      v8 = [v17 copy];
      v6 = v28;
    }
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = v6;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_22;
    }

    v10 = [MEMORY[0x277CBEB18] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(HKSPDictionaryDeserializer *)self _decodeObject:*(*(&v29 + 1) + 8 * j) error:a4];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v13);
    }

    v8 = [v10 copy];
  }

LABEL_22:
  v26 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_decodeDeserializable:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 hksp_serializedKey];
  v8 = [v6 objectForKeyedSubscript:v7];
  [(NSMutableArray *)self->_stack addObject:v8];
  v9 = [v6 hksp_serializedClassName];

  if ([(NSSet *)self->_allowedClasses containsObject:NSClassFromString(v9)])
  {
    a4 = [objc_alloc(NSClassFromString(v9)) initWithCoder:self];
    [(NSMutableArray *)self->_stack removeObject:v8];
  }

  else if (a4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Disallowed class %@", v9, *MEMORY[0x277CCA450]];
    v16[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a4 = [v10 errorWithDomain:@"com.apple.sleep.serialization" code:2 userInfo:v12];

    a4 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return a4;
}

@end