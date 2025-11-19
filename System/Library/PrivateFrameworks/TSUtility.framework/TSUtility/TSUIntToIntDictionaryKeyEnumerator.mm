@interface TSUIntToIntDictionaryKeyEnumerator
- (TSUIntToIntDictionaryKeyEnumerator)initWithIntegerKeyDictionary:(id)a3;
- (int64_t)nextKey;
- (void)dealloc;
@end

@implementation TSUIntToIntDictionaryKeyEnumerator

- (TSUIntToIntDictionaryKeyEnumerator)initWithIntegerKeyDictionary:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSUIntToIntDictionaryKeyEnumerator;
  v4 = [(TSUIntToIntDictionaryKeyEnumerator *)&v7 init];
  if (v4)
  {
    v5 = [a3 count];
    v4->_count = v5;
    if (v5)
    {
      v4->_keys = malloc_type_calloc(v5, 8uLL, 0x10040436913F5uLL);
      CFDictionaryGetKeysAndValues([a3 p_cfDictionary], v4->_keys, 0);
    }
  }

  return v4;
}

- (void)dealloc
{
  keys = self->_keys;
  if (keys)
  {
    free(keys);
  }

  v4.receiver = self;
  v4.super_class = TSUIntToIntDictionaryKeyEnumerator;
  [(TSUIntToIntDictionaryKeyEnumerator *)&v4 dealloc];
}

- (int64_t)nextKey
{
  index = self->_index;
  if (index >= self->_count)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  keys = self->_keys;
  self->_index = index + 1;
  return keys[index];
}

@end