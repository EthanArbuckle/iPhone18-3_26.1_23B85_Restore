@interface UINibStringIDTable
- (BOOL)lookupKey:(id)key identifier:(int64_t *)identifier;
- (UINibStringIDTable)initWithKeysTransferingOwnership:(id *)ownership count:(unint64_t)count;
- (void)dealloc;
@end

@implementation UINibStringIDTable

- (void)dealloc
{
  if (self->count)
  {
    v3 = 0;
    v4 = 0;
    do
    {

      ++v4;
      ++v3;
    }

    while (v4 < self->count);
  }

  free(self->table);
  free(self->buckets);
  v5.receiver = self;
  v5.super_class = UINibStringIDTable;
  [(UINibStringIDTable *)&v5 dealloc];
}

- (UINibStringIDTable)initWithKeysTransferingOwnership:(id *)ownership count:(unint64_t)count
{
  v16.receiver = self;
  v16.super_class = UINibStringIDTable;
  v6 = [(UINibStringIDTable *)&v16 init];
  if (v6)
  {
    v7 = 2;
    do
    {
      v8 = v7;
      v7 *= 2;
    }

    while (v8 <= 2 * count);
    v6->table = malloc_type_calloc(8uLL, v8, 0x5794E50uLL);
    v6->buckets = malloc_type_malloc(24 * count, 0x10A0040319E9F20uLL);
    v6->hashMask = v8 - 1;
    v6->count = count;
    if (count)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = &v6->buckets[v9];
        v12 = [ownership[v10] hash];
        v11->var1 = v12;
        v11->var0 = ownership[v10];
        count = v6->count;
        v14 = v6->hashMask & v12;
        v11->var2 = v6->table[v14];
        v6->table[v14] = v11;
        ++v10;
        ++v9;
      }

      while (v10 < count);
    }
  }

  return v6;
}

- (BOOL)lookupKey:(id)key identifier:(int64_t *)identifier
{
  v7 = [key hash];
  v8 = self->table[self->hashMask & v7];
  if (!v8)
  {
    return 0;
  }

  v9 = v7;
  while (1)
  {
    if (v8->var1 == v9)
    {
      var0 = v8->var0;
      if (v8->var0 == key)
      {
        goto LABEL_9;
      }

      if ([var0 isEqualToString:key])
      {
        break;
      }
    }

    v8 = v8->var2;
    if (!v8)
    {
      return 0;
    }
  }

  var0 = v8->var0;
LABEL_9:
  *identifier = 0xAAAAAAAAAAAAAAABLL * ((v8 - self->buckets) >> 3);
  if (var0 != key)
  {

    v8->var0 = [key copy];
  }

  return 1;
}

@end