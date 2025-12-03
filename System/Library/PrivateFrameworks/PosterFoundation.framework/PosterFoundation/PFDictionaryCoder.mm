@interface PFDictionaryCoder
- (BOOL)containsValueForKey:(id)key;
- (BOOL)decodeBoolForKey:(id)key;
- (PFDictionaryCoder)init;
- (PFDictionaryCoder)initWithMutableDictionary:(id)dictionary;
- (const)decodeBytesForKey:(id)key returnedLength:(unint64_t *)length;
- (double)decodeDoubleForKey:(id)key;
- (float)decodeFloatForKey:(id)key;
- (id)decodeObjectOfClass:(Class)class forKey:(id)key;
- (id)decodeObjectOfClasses:(id)classes forKey:(id)key;
- (int)decodeInt32ForKey:(id)key;
- (int)decodeIntForKey:(id)key;
- (int64_t)decodeInt64ForKey:(id)key;
- (int64_t)decodeIntegerForKey:(id)key;
- (uint64_t)decodeTopLevelObjectOfClass:(void *)class forKey:;
- (void)encodeBytes:(const char *)bytes length:(unint64_t)length forKey:(id)key;
- (void)encodeConditionalObject:(id)object forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeFloat:(float)float forKey:(id)key;
- (void)encodeInt64:(int64_t)int64 forKey:(id)key;
- (void)encodeInteger:(int64_t)integer forKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
@end

@implementation PFDictionaryCoder

- (PFDictionaryCoder)init
{
  v3 = objc_opt_new();
  v4 = [(PFDictionaryCoder *)self initWithMutableDictionary:v3];

  return v4;
}

- (PFDictionaryCoder)initWithMutableDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PFDictionaryCoder;
  v6 = [(PFDictionaryCoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
  }

  return v7;
}

- (BOOL)containsValueForKey:(id)key
{
  dictionary = self->_dictionary;
  keyCopy = key;
  allKeys = [(NSMutableDictionary *)dictionary allKeys];
  v6 = [allKeys containsObject:keyCopy];

  return v6;
}

- (BOOL)decodeBoolForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_self();
  v6 = [(PFDictionaryCoder *)self decodeObjectOfClass:v5 forKey:keyCopy];

  LOBYTE(keyCopy) = [v6 BOOLValue];
  return keyCopy;
}

- (int)decodeIntForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_self();
  v6 = [(PFDictionaryCoder *)self decodeObjectOfClass:v5 forKey:keyCopy];

  LODWORD(keyCopy) = [v6 intValue];
  return keyCopy;
}

- (int)decodeInt32ForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_self();
  v6 = [(PFDictionaryCoder *)self decodeObjectOfClass:v5 forKey:keyCopy];

  LODWORD(keyCopy) = [v6 intValue];
  return keyCopy;
}

- (int64_t)decodeInt64ForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_self();
  v6 = [(PFDictionaryCoder *)self decodeObjectOfClass:v5 forKey:keyCopy];

  integerValue = [v6 integerValue];
  return integerValue;
}

- (float)decodeFloatForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_self();
  v6 = [(PFDictionaryCoder *)self decodeObjectOfClass:v5 forKey:keyCopy];

  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (double)decodeDoubleForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_self();
  v6 = [(PFDictionaryCoder *)self decodeObjectOfClass:v5 forKey:keyCopy];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (int64_t)decodeIntegerForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_self();
  v6 = [(PFDictionaryCoder *)self decodeObjectOfClass:v5 forKey:keyCopy];

  integerValue = [v6 integerValue];
  return integerValue;
}

- (const)decodeBytesForKey:(id)key returnedLength:(unint64_t *)length
{
  keyCopy = key;
  v7 = objc_opt_self();
  v8 = [(PFDictionaryCoder *)self decodeObjectOfClass:v7 forKey:keyCopy];

  if (length)
  {
    *length = [v8 length];
  }

  bytes = [v8 bytes];

  return bytes;
}

- (id)decodeObjectOfClasses:(id)classes forKey:(id)key
{
  v20 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  v7 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:key];
  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = classesCopy;
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

- (id)decodeObjectOfClass:(Class)class forKey:(id)key
{
  v4 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:key];
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

- (void)encodeObject:(id)object forKey:(id)key
{
  dictionary = self->_dictionary;
  if (object)
  {
    [(NSMutableDictionary *)dictionary setObject:object forKeyedSubscript:key];
  }

  else
  {
    [(NSMutableDictionary *)dictionary removeObjectForKey:key];
  }
}

- (void)encodeConditionalObject:(id)object forKey:(id)key
{
  if (object)
  {
    [(NSMutableDictionary *)self->_dictionary setObject:object forKeyedSubscript:key];
  }
}

- (void)encodeInteger:(int64_t)integer forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithInteger:integer];
  [(NSMutableDictionary *)self->_dictionary setObject:v8 forKeyedSubscript:keyCopy];
}

- (void)encodeFloat:(float)float forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  *&v8 = float;
  v9 = [v6 numberWithFloat:v8];
  [(NSMutableDictionary *)self->_dictionary setObject:v9 forKeyedSubscript:keyCopy];
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithDouble:double];
  [(NSMutableDictionary *)self->_dictionary setObject:v8 forKeyedSubscript:keyCopy];
}

- (void)encodeInt64:(int64_t)int64 forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithLongLong:int64];
  [(NSMutableDictionary *)self->_dictionary setObject:v8 forKeyedSubscript:keyCopy];
}

- (void)encodeBytes:(const char *)bytes length:(unint64_t)length forKey:(id)key
{
  if (bytes)
  {
    v8 = MEMORY[0x1E695DEF0];
    keyCopy = key;
    v10 = [v8 dataWithBytes:bytes length:length];
    [(PFDictionaryCoder *)self encodeObject:v10 forKey:keyCopy];
  }
}

- (uint64_t)decodeTopLevelObjectOfClass:(void *)class forKey:
{
  if (class)
  {
    [class doesNotRecognizeSelector:sel_decodeTopLevelObjectOfClass_forKey_];
  }

  return 0;
}

@end