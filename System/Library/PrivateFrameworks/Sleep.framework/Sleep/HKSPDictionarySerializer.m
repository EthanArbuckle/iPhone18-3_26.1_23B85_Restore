@interface HKSPDictionarySerializer
- (BOOL)serialize:(id)a3 error:(id *)a4;
- (HKSPDictionarySerializer)initWithSerializationOptions:(unint64_t)a3;
- (NSSet)serializedClasses;
- (id)_dictionaryForProtocolObject:(id)a3;
- (void)_encodeObject:(id)a3 forKey:(id)a4;
- (void)_encodeProtocolObject:(id)a3 forKey:(id)a4;
- (void)encodeDouble:(double)a3 forKey:(id)a4;
- (void)encodeFloat:(float)a3 forKey:(id)a4;
- (void)encodeInt64:(int64_t)a3 forKey:(id)a4;
- (void)encodeInteger:(int64_t)a3 forKey:(id)a4;
- (void)encodeObject:(id)a3 forKey:(id)a4;
- (void)encodeRootObject:(id)a3;
@end

@implementation HKSPDictionarySerializer

- (HKSPDictionarySerializer)initWithSerializationOptions:(unint64_t)a3
{
  v14.receiver = self;
  v14.super_class = HKSPDictionarySerializer;
  v4 = [(HKSPDictionarySerializer *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_serializationOptions = a3;
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

- (BOOL)serialize:(id)a3 error:(id *)a4
{
  [(HKSPDictionarySerializer *)self encodeRootObject:a3];
  if (a4)
  {
    *a4 = [(NSError *)self->_internalError copy];
  }

  v6 = [(HKSPDictionarySerializer *)self internalError];
  v7 = v6 == 0;

  return v7;
}

- (NSSet)serializedClasses
{
  v2 = [(NSMutableSet *)self->_mutableSerializedClasses copy];

  return v2;
}

- (void)encodeRootObject:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 conformsToProtocol:&unk_287A87508])
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
    v9 = [(HKSPDictionarySerializer *)self _dictionaryForProtocolObject:v4];
    serializedDictionary = self->_serializedDictionary;
    self->_serializedDictionary = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)encodeInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [(HKSPDictionarySerializer *)self _encodeObject:v8 forKey:v7];
}

- (void)encodeInt64:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithLongLong:a3];
  [(HKSPDictionarySerializer *)self _encodeObject:v8 forKey:v7];
}

- (void)encodeFloat:(float)a3 forKey:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  *&v8 = a3;
  v9 = [v6 numberWithFloat:v8];
  [(HKSPDictionarySerializer *)self _encodeObject:v9 forKey:v7];
}

- (void)encodeDouble:(double)a3 forKey:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithDouble:a3];
  [(HKSPDictionarySerializer *)self _encodeObject:v8 forKey:v7];
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [MEMORY[0x277CBEB18] array];
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
            [v9 addObject:v16];
          }

          else
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v12);
    }

    [(HKSPDictionarySerializer *)self _encodeObject:v9 forKey:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v7;
      v29 = v6;
      v17 = v6;
      v18 = [MEMORY[0x277CBEB38] dictionary];
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
              [v18 setObject:v26 forKeyedSubscript:v24];
            }

            else
            {
              [v18 setObject:v25 forKeyedSubscript:v24];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v21);
      }

      v7 = v28;
      [(HKSPDictionarySerializer *)self _encodeObject:v18 forKey:v28];

      v6 = v29;
    }

    else if ([v6 conformsToProtocol:&unk_287A87508])
    {
      [(HKSPDictionarySerializer *)self _encodeProtocolObject:v6 forKey:v7];
    }

    else
    {
      [(HKSPDictionarySerializer *)self _encodeObject:v6 forKey:v7];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_encodeProtocolObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(HKSPDictionarySerializer *)self _dictionaryForProtocolObject:a3];
  [(HKSPDictionarySerializer *)self _encodeObject:v7 forKey:v6];
}

- (void)_encodeObject:(id)a3 forKey:(id)a4
{
  stack = self->_stack;
  v6 = a4;
  v7 = a3;
  v8 = [(NSMutableArray *)stack lastObject];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

- (id)_dictionaryForProtocolObject:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
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