@interface TSUIntegerKeyDictionary
- (TSUIntegerKeyDictionary)initWithCapacity:(unint64_t)capacity;
- (id)allValues;
- (id)description;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueEnumerator;
- (void)dealloc;
@end

@implementation TSUIntegerKeyDictionary

- (TSUIntegerKeyDictionary)initWithCapacity:(unint64_t)capacity
{
  v4 = *MEMORY[0x277CBF138];
  keyCallBacks.retain = 0;
  keyCallBacks.release = 0;
  keyCallBacks.equal = 0;
  keyCallBacks.hash = 0;
  keyCallBacks.copyDescription = sub_27705B784;
  v7.receiver = self;
  v7.super_class = TSUIntegerKeyDictionary;
  keyCallBacks.version = v4;
  v5 = [(TSUIntegerKeyDictionary *)&v7 init];
  if (v5)
  {
    v5->mDictionary = CFDictionaryCreateMutable(0, capacity, &keyCallBacks, MEMORY[0x277CBF150]);
  }

  return v5;
}

- (void)dealloc
{
  [(TSUIntegerKeyDictionary *)self removeAllObjects];
  CFRelease(self->mDictionary);
  self->mDictionary = 0;
  v3.receiver = self;
  v3.super_class = TSUIntegerKeyDictionary;
  [(TSUIntegerKeyDictionary *)&v3 dealloc];
}

- (id)keyEnumerator
{
  v2 = [[TSUIntegerKeyDictionaryKeyEnumerator alloc] initWithIntegerKeyDictionary:self];

  return v2;
}

- (id)allValues
{
  values[16] = *MEMORY[0x277D85DE8];
  Count = CFDictionaryGetCount(self->mDictionary);
  v4 = Count;
  v5 = values;
  if (Count >= 0x10)
  {
    v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  }

  CFDictionaryGetKeysAndValues(self->mDictionary, 0, v5);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:v4];
  if (v5 != values)
  {
    free(v5);
  }

  return v6;
}

- (id)valueEnumerator
{
  allValues = [(TSUIntegerKeyDictionary *)self allValues];

  return [allValues objectEnumerator];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TSUIntegerKeyDictionary);
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
  keyEnumerator = [(TSUIntegerKeyDictionary *)self keyEnumerator];
  string = [MEMORY[0x277CCAB68] string];
  [string appendString:@"{\n"];
  nextKey = [keyEnumerator nextKey];
  if (nextKey != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = nextKey; i != 0x7FFFFFFFFFFFFFFFLL; i = [keyEnumerator nextKey])
    {
      v7 = [(TSUIntegerKeyDictionary *)self objectForKey:i];
      [string appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%ld = %@;\n", i, objc_msgSend(v7, "description"))}];
    }
  }

  [string appendString:@"}"];
  return string;
}

@end