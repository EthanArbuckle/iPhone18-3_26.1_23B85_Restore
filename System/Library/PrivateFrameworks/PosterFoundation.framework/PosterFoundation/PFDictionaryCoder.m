@interface PFDictionaryCoder
- (BOOL)containsValueForKey:(id)a3;
- (BOOL)decodeBoolForKey:(id)a3;
- (PFDictionaryCoder)init;
- (PFDictionaryCoder)initWithMutableDictionary:(id)a3;
- (const)decodeBytesForKey:(id)a3 returnedLength:(unint64_t *)a4;
- (double)decodeDoubleForKey:(id)a3;
- (float)decodeFloatForKey:(id)a3;
- (id)decodeObjectOfClass:(Class)a3 forKey:(id)a4;
- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4;
- (int)decodeInt32ForKey:(id)a3;
- (int)decodeIntForKey:(id)a3;
- (int64_t)decodeInt64ForKey:(id)a3;
- (int64_t)decodeIntegerForKey:(id)a3;
- (uint64_t)decodeTopLevelObjectOfClass:(void *)a1 forKey:;
- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5;
- (void)encodeConditionalObject:(id)a3 forKey:(id)a4;
- (void)encodeDouble:(double)a3 forKey:(id)a4;
- (void)encodeFloat:(float)a3 forKey:(id)a4;
- (void)encodeInt64:(int64_t)a3 forKey:(id)a4;
- (void)encodeInteger:(int64_t)a3 forKey:(id)a4;
- (void)encodeObject:(id)a3 forKey:(id)a4;
@end

@implementation PFDictionaryCoder

- (PFDictionaryCoder)init
{
  v3 = objc_opt_new();
  v4 = [(PFDictionaryCoder *)self initWithMutableDictionary:v3];

  return v4;
}

- (PFDictionaryCoder)initWithMutableDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PFDictionaryCoder;
  v6 = [(PFDictionaryCoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, a3);
  }

  return v7;
}

- (BOOL)containsValueForKey:(id)a3
{
  dictionary = self->_dictionary;
  v4 = a3;
  v5 = [(NSMutableDictionary *)dictionary allKeys];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)decodeBoolForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(PFDictionaryCoder *)self decodeObjectOfClass:v5 forKey:v4];

  LOBYTE(v4) = [v6 BOOLValue];
  return v4;
}

- (int)decodeIntForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(PFDictionaryCoder *)self decodeObjectOfClass:v5 forKey:v4];

  LODWORD(v4) = [v6 intValue];
  return v4;
}

- (int)decodeInt32ForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(PFDictionaryCoder *)self decodeObjectOfClass:v5 forKey:v4];

  LODWORD(v4) = [v6 intValue];
  return v4;
}

- (int64_t)decodeInt64ForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(PFDictionaryCoder *)self decodeObjectOfClass:v5 forKey:v4];

  v7 = [v6 integerValue];
  return v7;
}

- (float)decodeFloatForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(PFDictionaryCoder *)self decodeObjectOfClass:v5 forKey:v4];

  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (double)decodeDoubleForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(PFDictionaryCoder *)self decodeObjectOfClass:v5 forKey:v4];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (int64_t)decodeIntegerForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(PFDictionaryCoder *)self decodeObjectOfClass:v5 forKey:v4];

  v7 = [v6 integerValue];
  return v7;
}

- (const)decodeBytesForKey:(id)a3 returnedLength:(unint64_t *)a4
{
  v6 = a3;
  v7 = objc_opt_self();
  v8 = [(PFDictionaryCoder *)self decodeObjectOfClass:v7 forKey:v6];

  if (a4)
  {
    *a4 = [v8 length];
  }

  v9 = [v8 bytes];

  return v9;
}

- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:a4];
  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v9 = v7;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)decodeObjectOfClass:(Class)a3 forKey:(id)a4
{
  v4 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:a4];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  dictionary = self->_dictionary;
  if (a3)
  {
    [(NSMutableDictionary *)dictionary setObject:a3 forKeyedSubscript:a4];
  }

  else
  {
    [(NSMutableDictionary *)dictionary removeObjectForKey:a4];
  }
}

- (void)encodeConditionalObject:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_dictionary setObject:a3 forKeyedSubscript:a4];
  }
}

- (void)encodeInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [(NSMutableDictionary *)self->_dictionary setObject:v8 forKeyedSubscript:v7];
}

- (void)encodeFloat:(float)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  *&v8 = a3;
  v9 = [v6 numberWithFloat:v8];
  [(NSMutableDictionary *)self->_dictionary setObject:v9 forKeyedSubscript:v7];
}

- (void)encodeDouble:(double)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithDouble:a3];
  [(NSMutableDictionary *)self->_dictionary setObject:v8 forKeyedSubscript:v7];
}

- (void)encodeInt64:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithLongLong:a3];
  [(NSMutableDictionary *)self->_dictionary setObject:v8 forKeyedSubscript:v7];
}

- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forKey:(id)a5
{
  if (a3)
  {
    v8 = MEMORY[0x1E695DEF0];
    v9 = a5;
    v10 = [v8 dataWithBytes:a3 length:a4];
    [(PFDictionaryCoder *)self encodeObject:v10 forKey:v9];
  }
}

- (uint64_t)decodeTopLevelObjectOfClass:(void *)a1 forKey:
{
  if (a1)
  {
    [a1 doesNotRecognizeSelector:sel_decodeTopLevelObjectOfClass_forKey_];
  }

  return 0;
}

@end