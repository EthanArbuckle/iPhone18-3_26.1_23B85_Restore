@interface HKSPDictionaryDeserializer
- (BOOL)decodeBoolForKey:(id)key;
- (HKSPDictionaryDeserializer)initWithAllowedClasses:(id)classes serializedDictionary:(id)dictionary serializationOptions:(unint64_t)options;
- (double)decodeDoubleForKey:(id)key;
- (float)decodeFloatForKey:(id)key;
- (id)_decodeDeserializable:(id)deserializable error:(id *)error;
- (id)_decodeObject:(id)object error:(id *)error;
- (id)decodeObjectForKey:(id)key;
- (id)decodeTopLevelObjectOfClass:(Class)class forKey:(id)key error:(id *)error;
- (id)deserializeObjectOfClass:(Class)class error:(id *)error;
- (int)decodeInt32ForKey:(id)key;
- (int)decodeIntForKey:(id)key;
- (int64_t)decodeInt64ForKey:(id)key;
- (int64_t)decodeIntegerForKey:(id)key;
@end

@implementation HKSPDictionaryDeserializer

- (HKSPDictionaryDeserializer)initWithAllowedClasses:(id)classes serializedDictionary:(id)dictionary serializationOptions:(unint64_t)options
{
  classesCopy = classes;
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = HKSPDictionaryDeserializer;
  v11 = [(HKSPDictionaryDeserializer *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_allowedClasses, classes);
    objc_storeStrong(&v12->_serializedDictionary, dictionary);
    v12->_serializationOptions = options;
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stack = v12->_stack;
    v12->_stack = v13;

    v15 = v12;
  }

  return v12;
}

- (id)deserializeObjectOfClass:(Class)class error:(id *)error
{
  v7 = HKSPSerializableKeyForClass(class);
  v8 = [(HKSPDictionaryDeserializer *)self decodeTopLevelObjectOfClass:class forKey:v7 error:error];

  return v8;
}

- (id)decodeTopLevelObjectOfClass:(Class)class forKey:(id)key error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([(NSDictionary *)self->_serializedDictionary hksp_isSerialized])
  {
    v8 = [keyCopy substringFromIndex:1];
    hksp_serializedClassName = [(NSDictionary *)self->_serializedDictionary hksp_serializedClassName];
    if ([v8 isEqualToString:hksp_serializedClassName])
    {
      v10 = [(HKSPDictionaryDeserializer *)self _decodeObject:self->_serializedDictionary error:error];
    }

    else
    {
      if (error)
      {
        v12 = MEMORY[0x277CCA9B8];
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected class %@", hksp_serializedClassName, *MEMORY[0x277CCA450]];
        v18 = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        *error = [v12 errorWithDomain:@"com.apple.sleep.serialization" code:2 userInfo:v14];
      }

      v10 = 0;
    }

    goto LABEL_10;
  }

  if (error)
  {
    v11 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"Invalid serialized dictionary";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [v11 errorWithDomain:@"com.apple.sleep.serialization" code:1 userInfo:v8];
    *error = v10 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)decodeBoolForKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)stack lastObject];
  v6 = [lastObject objectForKeyedSubscript:keyCopy];

  LOBYTE(keyCopy) = [v6 BOOLValue];
  return keyCopy;
}

- (int64_t)decodeIntegerForKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)stack lastObject];
  v6 = [lastObject objectForKeyedSubscript:keyCopy];

  integerValue = [v6 integerValue];
  return integerValue;
}

- (int)decodeIntForKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)stack lastObject];
  v6 = [lastObject objectForKeyedSubscript:keyCopy];

  LODWORD(keyCopy) = [v6 intValue];
  return keyCopy;
}

- (int)decodeInt32ForKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)stack lastObject];
  v6 = [lastObject objectForKeyedSubscript:keyCopy];

  LODWORD(keyCopy) = [v6 intValue];
  return keyCopy;
}

- (int64_t)decodeInt64ForKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)stack lastObject];
  v6 = [lastObject objectForKeyedSubscript:keyCopy];

  longLongValue = [v6 longLongValue];
  return longLongValue;
}

- (float)decodeFloatForKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)stack lastObject];
  v6 = [lastObject objectForKeyedSubscript:keyCopy];

  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (double)decodeDoubleForKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)stack lastObject];
  v6 = [lastObject objectForKeyedSubscript:keyCopy];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (id)decodeObjectForKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  lastObject = [(NSMutableArray *)stack lastObject];
  v7 = [lastObject objectForKeyedSubscript:keyCopy];

  v8 = [(HKSPDictionaryDeserializer *)self _decodeObject:v7 error:0];

  return v8;
}

- (id)_decodeObject:(id)object error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objectCopy;
    if ([v7 hksp_isSerialized])
    {
      v8 = [(HKSPDictionaryDeserializer *)self _decodeDeserializable:v7 error:error];
    }

    else
    {
      v28 = objectCopy;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
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
            v25 = [(HKSPDictionaryDeserializer *)self _decodeObject:v24 error:error];
            [dictionary setObject:v25 forKeyedSubscript:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v20);
      }

      v8 = [dictionary copy];
      objectCopy = v28;
    }
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = objectCopy;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_22;
    }

    array = [MEMORY[0x277CBEB18] array];
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

          v16 = [(HKSPDictionaryDeserializer *)self _decodeObject:*(*(&v29 + 1) + 8 * j) error:error];
          [array addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v13);
    }

    v8 = [array copy];
  }

LABEL_22:
  v26 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_decodeDeserializable:(id)deserializable error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  deserializableCopy = deserializable;
  hksp_serializedKey = [deserializableCopy hksp_serializedKey];
  v8 = [deserializableCopy objectForKeyedSubscript:hksp_serializedKey];
  [(NSMutableArray *)self->_stack addObject:v8];
  hksp_serializedClassName = [deserializableCopy hksp_serializedClassName];

  if ([(NSSet *)self->_allowedClasses containsObject:NSClassFromString(hksp_serializedClassName)])
  {
    error = [objc_alloc(NSClassFromString(hksp_serializedClassName)) initWithCoder:self];
    [(NSMutableArray *)self->_stack removeObject:v8];
  }

  else if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Disallowed class %@", hksp_serializedClassName, *MEMORY[0x277CCA450]];
    v16[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v10 errorWithDomain:@"com.apple.sleep.serialization" code:2 userInfo:v12];

    error = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return error;
}

@end