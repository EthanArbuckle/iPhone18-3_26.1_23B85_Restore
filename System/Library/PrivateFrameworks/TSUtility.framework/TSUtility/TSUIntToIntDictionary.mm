@interface TSUIntToIntDictionary
- (TSUIntToIntDictionary)initWithCapacity:(unint64_t)a3;
- (id)allKeys;
- (id)allValues;
- (id)arrayOfBoxedKeys;
- (id)description;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)applyFromIntToIntDictionary:(id)a3;
- (void)dealloc;
@end

@implementation TSUIntToIntDictionary

- (TSUIntToIntDictionary)initWithCapacity:(unint64_t)a3
{
  v4 = *MEMORY[0x277CBF138];
  keyCallBacks.retain = 0;
  keyCallBacks.release = 0;
  keyCallBacks.version = v4;
  keyCallBacks.equal = 0;
  keyCallBacks.hash = 0;
  keyCallBacks.copyDescription = [TSUIntToIntDictionary initWithCapacity:]::Local::IntegerKeyDescription;
  valueCallBacks.version = *MEMORY[0x277CBF150];
  valueCallBacks.retain = 0;
  valueCallBacks.release = 0;
  valueCallBacks.copyDescription = [TSUIntToIntDictionary initWithCapacity:]::Local::IntegerKeyDescription;
  valueCallBacks.equal = 0;
  v7.receiver = self;
  v7.super_class = TSUIntToIntDictionary;
  v5 = [(TSUIntToIntDictionary *)&v7 init];
  if (v5)
  {
    v5->mDictionary = CFDictionaryCreateMutable(0, a3, &keyCallBacks, &valueCallBacks);
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

- (id)keyEnumerator
{
  v2 = [[TSUIntToIntDictionaryKeyEnumerator alloc] initWithIntegerKeyDictionary:self];

  return v2;
}

- (void)applyFromIntToIntDictionary:(id)a3
{
  if (a3)
  {
    v5 = [a3 count];
    v6 = malloc_type_calloc(v5, 8uLL, 0x10040436913F5uLL);
    CFDictionaryGetKeysAndValues([a3 p_cfDictionary], v6, 0);
    if (v5)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        -[TSUIntToIntDictionary setInt:forKey:](self, "setInt:forKey:", [a3 intForKey:v6[v7]], v6[v7]);
        v7 = v8;
      }

      while (v5 > v8++);
    }

    free(v6);
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TSUIntToIntDictionary);
  v4->mDictionary = CFDictionaryCreateMutableCopy(0, 0, self->mDictionary);
  return v4;
}

- (id)description
{
  v3 = [(TSUIntToIntDictionary *)self keyEnumerator];
  v4 = [MEMORY[0x277CCAB68] string];
  [v4 appendString:@"{\n"];
  v5 = [v3 nextKey];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v5; i != 0x7FFFFFFFFFFFFFFFLL; i = [v3 nextKey])
    {
      v7 = [(TSUIntToIntDictionary *)self intForKey:i];
      [v4 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%ld = %ld;\n", i, v7)}];
    }
  }

  [v4 appendString:@"}"];
  return v4;
}

@end