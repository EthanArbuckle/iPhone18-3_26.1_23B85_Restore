@interface TSUIntToIntDictionary
+ (id)dictionary;
- (TSUIntToIntDictionary)initWithCapacity:(unint64_t)capacity;
- (id)allKeys;
- (id)allValues;
- (id)arrayOfBoxedKeys;
- (id)description;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)addIntToIntDictionary:(id)dictionary;
- (void)applyFromIntToIntDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateKeysAndValuesUsingBlock:(id)block;
- (void)incrementValueBy:(int64_t)by forKey:(int64_t)key;
@end

@implementation TSUIntToIntDictionary

+ (id)dictionary
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (TSUIntToIntDictionary)initWithCapacity:(unint64_t)capacity
{
  v4 = *MEMORY[0x277CBF138];
  keyCallBacks.retain = 0;
  keyCallBacks.release = 0;
  keyCallBacks.version = v4;
  keyCallBacks.equal = 0;
  keyCallBacks.hash = 0;
  keyCallBacks.copyDescription = sub_27707E350;
  valueCallBacks.version = *MEMORY[0x277CBF150];
  valueCallBacks.retain = 0;
  valueCallBacks.release = 0;
  valueCallBacks.copyDescription = sub_27707E350;
  valueCallBacks.equal = 0;
  v7.receiver = self;
  v7.super_class = TSUIntToIntDictionary;
  v5 = [(TSUIntToIntDictionary *)&v7 init];
  if (v5)
  {
    v5->mDictionary = CFDictionaryCreateMutable(0, capacity, &keyCallBacks, &valueCallBacks);
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->mDictionary);
  v3.receiver = self;
  v3.super_class = TSUIntToIntDictionary;
  [(TSUIntToIntDictionary *)&v3 dealloc];
}

- (void)incrementValueBy:(int64_t)by forKey:(int64_t)key
{
  value = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(self->mDictionary, key, &value);
  v8 = value;
  if (!ValueIfPresent)
  {
    v8 = 0;
  }

  CFDictionarySetValue(self->mDictionary, key, &v8[by]);
}

- (id)keyEnumerator
{
  v2 = [[TSUIntToIntDictionaryKeyEnumerator alloc] initWithIntegerKeyDictionary:self];

  return v2;
}

- (void)applyFromIntToIntDictionary:(id)dictionary
{
  if (dictionary)
  {
    v5 = [dictionary count];
    v6 = malloc_type_calloc(v5, 8uLL, 0x10040436913F5uLL);
    CFDictionaryGetKeysAndValues([dictionary p_cfDictionary], v6, 0);
    if (v5)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        -[TSUIntToIntDictionary setInt:forKey:](self, "setInt:forKey:", [dictionary intForKey:v6[v7]], v6[v7]);
        v7 = v8;
      }

      while (v5 > v8++);
    }

    free(v6);
  }
}

- (void)addIntToIntDictionary:(id)dictionary
{
  if (dictionary)
  {
    v5 = [dictionary count];
    v6 = malloc_type_calloc(v5, 8uLL, 0x100004000313F17uLL);
    v7 = malloc_type_calloc(v5, 8uLL, 0x100004000313F17uLL);
    CFDictionaryGetKeysAndValues([dictionary p_cfDictionary], v6, v7);
    if (v5)
    {
      v8 = v7;
      v9 = v6;
      do
      {
        v11 = *v8++;
        v10 = v11;
        v12 = *v9++;
        [(TSUIntToIntDictionary *)self incrementValueBy:v10 forKey:v12];
        --v5;
      }

      while (v5);
    }

    free(v6);

    free(v7);
  }
}

- (id)arrayOfBoxedKeys
{
  v3 = [(TSUIntToIntDictionary *)self count];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[TSUIntToIntDictionary count](self, "count")}];
  v5 = malloc_type_calloc(v3, 8uLL, 0x10040436913F5uLL);
  CFDictionaryGetKeysAndValues([(TSUIntToIntDictionary *)self p_cfDictionary], v5, 0);
  if (v3)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:v5[v6]];
      [v4 addObject:v8];

      v6 = v7;
    }

    while (v3 > v7++);
  }

  free(v5);
  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v4];

  return v10;
}

- (id)allKeys
{
  v3 = [(TSUIntToIntDictionary *)self count];
  v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v5 = malloc_type_calloc(v3, 8uLL, 0x100004000313F17uLL);
  CFDictionaryGetKeysAndValues([(TSUIntToIntDictionary *)self p_cfDictionary], v5, 0);
  if (v3)
  {
    v6 = v5;
    do
    {
      v7 = *v6++;
      [v4 addIndex:v7];
      --v3;
    }

    while (v3);
  }

  free(v5);
  return v4;
}

- (id)allValues
{
  v3 = [(TSUIntToIntDictionary *)self count];
  v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v5 = malloc_type_calloc(v3, 8uLL, 0x100004000313F17uLL);
  CFDictionaryGetKeysAndValues([(TSUIntToIntDictionary *)self p_cfDictionary], 0, v5);
  if (v3)
  {
    v6 = v5;
    do
    {
      v7 = *v6++;
      [v4 addIndex:v7];
      --v3;
    }

    while (v3);
  }

  free(v5);
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TSUIntToIntDictionary);
  mDictionary = v4->mDictionary;
  if (mDictionary)
  {
    CFRelease(mDictionary);
  }

  v4->mDictionary = CFDictionaryCreateMutableCopy(0, 0, self->mDictionary);
  return v4;
}

- (id)description
{
  keyEnumerator = [(TSUIntToIntDictionary *)self keyEnumerator];
  string = [MEMORY[0x277CCAB68] string];
  [string appendString:@"{\n"];
  nextKey = [keyEnumerator nextKey];
  if (nextKey != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = nextKey; i != 0x7FFFFFFFFFFFFFFFLL; i = [keyEnumerator nextKey])
    {
      v7 = [(TSUIntToIntDictionary *)self intForKey:i];
      [string appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%ld = %ld;\n", i, v7)}];
    }
  }

  [string appendString:@"}"];
  return string;
}

- (void)enumerateKeysAndValuesUsingBlock:(id)block
{
  if (block)
  {
    keyEnumerator = [(TSUIntToIntDictionary *)self keyEnumerator];
    nextKey = [keyEnumerator nextKey];
    if (nextKey != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = nextKey; i != 0x7FFFFFFFFFFFFFFFLL; i = [keyEnumerator nextKey])
      {
        Value = CFDictionaryGetValue(self->mDictionary, i);
        v9 = 0;
        (*(block + 2))(block, i, Value, &v9);
        if (v9)
        {
          break;
        }
      }
    }
  }
}

@end