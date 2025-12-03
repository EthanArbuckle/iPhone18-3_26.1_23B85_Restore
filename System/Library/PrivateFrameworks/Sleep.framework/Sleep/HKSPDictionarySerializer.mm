@interface HKSPDictionarySerializer
- (BOOL)serialize:(id)serialize error:(id *)error;
- (HKSPDictionarySerializer)initWithSerializationOptions:(unint64_t)options;
- (NSSet)serializedClasses;
- (id)_dictionaryForProtocolObject:(id)object;
- (void)_encodeObject:(id)object forKey:(id)key;
- (void)_encodeProtocolObject:(id)object forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeFloat:(float)float forKey:(id)key;
- (void)encodeInt64:(int64_t)int64 forKey:(id)key;
- (void)encodeInteger:(int64_t)integer forKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
- (void)encodeRootObject:(id)object;
@end

@implementation HKSPDictionarySerializer

- (HKSPDictionarySerializer)initWithSerializationOptions:(unint64_t)options
{
  v14.receiver = self;
  v14.super_class = HKSPDictionarySerializer;
  v4 = [(HKSPDictionarySerializer *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_serializationOptions = options;
    v6 = MEMORY[0x277CBEB18];
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = [v6 arrayWithObject:v7];
    stack = v5->_stack;
    v5->_stack = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mutableSerializedClasses = v5->_mutableSerializedClasses;
    v5->_mutableSerializedClasses = v10;

    v12 = v5;
  }

  return v5;
}

- (BOOL)serialize:(id)serialize error:(id *)error
{
  [(HKSPDictionarySerializer *)self encodeRootObject:serialize];
  if (error)
  {
    *error = [(NSError *)self->_internalError copy];
  }

  internalError = [(HKSPDictionarySerializer *)self internalError];
  v7 = internalError == 0;

  return v7;
}

- (NSSet)serializedClasses
{
  v2 = [(NSMutableSet *)self->_mutableSerializedClasses copy];

  return v2;
}

- (void)encodeRootObject:(id)object
{
  v13[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (![objectCopy conformsToProtocol:&unk_287A87508])
  {
    v5 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"Root object not serializable";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v7 = [v5 errorWithDomain:@"com.apple.sleep.serialization" code:3 userInfo:v6];
    internalError = self->_internalError;
    self->_internalError = v7;
  }

  if (!self->_internalError)
  {
    v9 = [(HKSPDictionarySerializer *)self _dictionaryForProtocolObject:objectCopy];
    serializedDictionary = self->_serializedDictionary;
    self->_serializedDictionary = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)encodeInteger:(int64_t)integer forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithInteger:integer];
  [(HKSPDictionarySerializer *)self _encodeObject:v8 forKey:keyCopy];
}

- (void)encodeInt64:(int64_t)int64 forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithLongLong:int64];
  [(HKSPDictionarySerializer *)self _encodeObject:v8 forKey:keyCopy];
}

- (void)encodeFloat:(float)float forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  *&v8 = float;
  v9 = [v6 numberWithFloat:v8];
  [(HKSPDictionarySerializer *)self _encodeObject:v9 forKey:keyCopy];
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithDouble:double];
  [(HKSPDictionarySerializer *)self _encodeObject:v8 forKey:keyCopy];
}

- (void)encodeObject:(id)object forKey:(id)key
{
  v40 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objectCopy;
    array = [MEMORY[0x277CBEB18] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          if ([v15 conformsToProtocol:&unk_287A87508])
          {
            v16 = [(HKSPDictionarySerializer *)self _dictionaryForProtocolObject:v15];
            [array addObject:v16];
          }

          else
          {
            [array addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v12);
    }

    [(HKSPDictionarySerializer *)self _encodeObject:array forKey:keyCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = keyCopy;
      v29 = objectCopy;
      v17 = objectCopy;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v19 = v17;
      v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v31;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v31 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v30 + 1) + 8 * j);
            v25 = [v19 objectForKeyedSubscript:{v24, v28}];
            if ([v25 conformsToProtocol:&unk_287A87508])
            {
              v26 = [(HKSPDictionarySerializer *)self _dictionaryForProtocolObject:v25];
              [dictionary setObject:v26 forKeyedSubscript:v24];
            }

            else
            {
              [dictionary setObject:v25 forKeyedSubscript:v24];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v21);
      }

      keyCopy = v28;
      [(HKSPDictionarySerializer *)self _encodeObject:dictionary forKey:v28];

      objectCopy = v29;
    }

    else if ([objectCopy conformsToProtocol:&unk_287A87508])
    {
      [(HKSPDictionarySerializer *)self _encodeProtocolObject:objectCopy forKey:keyCopy];
    }

    else
    {
      [(HKSPDictionarySerializer *)self _encodeObject:objectCopy forKey:keyCopy];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_encodeProtocolObject:(id)object forKey:(id)key
{
  keyCopy = key;
  v7 = [(HKSPDictionarySerializer *)self _dictionaryForProtocolObject:object];
  [(HKSPDictionarySerializer *)self _encodeObject:v7 forKey:keyCopy];
}

- (void)_encodeObject:(id)object forKey:(id)key
{
  stack = self->_stack;
  keyCopy = key;
  objectCopy = object;
  lastObject = [(NSMutableArray *)stack lastObject];
  [lastObject setObject:objectCopy forKeyedSubscript:keyCopy];
}

- (id)_dictionaryForProtocolObject:(id)object
{
  objectCopy = object;
  v5 = [objectCopy copy];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(NSMutableArray *)self->_stack addObject:v7];
  [v5 encodeWithCoder:self];
  [(NSMutableArray *)self->_stack removeLastObject];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"$", objc_opt_class()];
  [v6 setObject:v7 forKeyedSubscript:v8];
  mutableSerializedClasses = self->_mutableSerializedClasses;
  v10 = objc_opt_class();

  [(NSMutableSet *)mutableSerializedClasses addObject:v10];

  return v6;
}

@end