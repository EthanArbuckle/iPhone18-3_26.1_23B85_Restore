@interface TSUCustomCallBackDictionary
- (TSUCustomCallBackDictionary)initWithCFDictionary:(__CFDictionary *)dictionary;
- (TSUCustomCallBackDictionary)initWithCapacity:(unint64_t)capacity keyCallBacks:(id *)backs valueCallBacks:(id *)callBacks;
- (id)allKeys;
- (id)allValues;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectEnumerator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
- (void)getObjects:(id *)objects andKeys:(id *)keys;
- (void)setObject:(id)object forUncopiedKey:(id)key;
@end

@implementation TSUCustomCallBackDictionary

- (TSUCustomCallBackDictionary)initWithCFDictionary:(__CFDictionary *)dictionary
{
  v6.receiver = self;
  v6.super_class = TSUCustomCallBackDictionary;
  v4 = [(TSUCustomCallBackDictionary *)&v6 init];
  if (v4)
  {
    v4->mDictionary = CFDictionaryCreateMutableCopy(0, 0, dictionary);
  }

  return v4;
}

- (TSUCustomCallBackDictionary)initWithCapacity:(unint64_t)capacity keyCallBacks:(id *)backs valueCallBacks:(id *)callBacks
{
  v10.receiver = self;
  v10.super_class = TSUCustomCallBackDictionary;
  v8 = [(TSUCustomCallBackDictionary *)&v10 init];
  if (v8)
  {
    v8->mDictionary = CFDictionaryCreateMutable(0, capacity, backs, callBacks);
  }

  return v8;
}

- (void)dealloc
{
  mDictionary = self->mDictionary;
  if (mDictionary)
  {
    CFRelease(mDictionary);
    self->mDictionary = 0;
  }

  v4.receiver = self;
  v4.super_class = TSUCustomCallBackDictionary;
  [(TSUCustomCallBackDictionary *)&v4 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  mDictionary = self->mDictionary;

  return [v4 initWithCFDictionary:mDictionary];
}

- (void)setObject:(id)object forUncopiedKey:(id)key
{
  if (!object)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Attempt to insert nil value into %@", objc_opt_class()}];
  }

  mDictionary = self->mDictionary;

  CFDictionarySetValue(mDictionary, key, object);
}

- (void)getObjects:(id *)objects andKeys:(id *)keys
{
  if (CFDictionaryGetCount(self->mDictionary))
  {
    v7 = (objects | keys) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    mDictionary = self->mDictionary;

    CFDictionaryGetKeysAndValues(mDictionary, keys, objects);
  }
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

- (id)objectEnumerator
{
  allValues = [(TSUCustomCallBackDictionary *)self allValues];

  return [allValues objectEnumerator];
}

- (id)allKeys
{
  keys[16] = *MEMORY[0x277D85DE8];
  Count = CFDictionaryGetCount(self->mDictionary);
  v4 = Count;
  v5 = keys;
  if (Count >= 0x10)
  {
    v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  }

  CFDictionaryGetKeysAndValues(self->mDictionary, v5, 0);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:v4];
  if (v5 != keys)
  {
    free(v5);
  }

  return v6;
}

- (id)keyEnumerator
{
  allKeys = [(TSUCustomCallBackDictionary *)self allKeys];

  return [allKeys objectEnumerator];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  Count = CFDictionaryGetCount(self->mDictionary);
  if (state->var0 >= Count)
  {
    return 0;
  }

  v10 = Count;
  v11 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(self->mDictionary, v11, 0);
  if (v10 - state->var0 < count)
  {
    count = v10 - state->var0;
  }

  memcpy(objects, &v11[state->var0], 8 * count);
  free(v11);
  state->var0 += count;
  state->var1 = objects;
  state->var2 = &state->var2;
  return count;
}

@end