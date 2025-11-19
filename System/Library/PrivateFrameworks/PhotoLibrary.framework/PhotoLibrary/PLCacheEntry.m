@interface PLCacheEntry
- (lruEntry)lruListEntry;
- (void)dealloc;
- (void)setObject:(id)a3;
@end

@implementation PLCacheEntry

- (lruEntry)lruListEntry
{
  result = self->_entry;
  if (!result)
  {
    result = malloc_type_calloc(1uLL, 0x20uLL, 0x10A00406268BE83uLL);
    self->_entry = result;
  }

  return result;
}

- (void)setObject:(id)a3
{
  if (self->_object != a3)
  {
    v5 = a3;

    self->_object = a3;
  }
}

- (void)dealloc
{
  free(self->_entry);
  v3.receiver = self;
  v3.super_class = PLCacheEntry;
  [(PLCacheEntry *)&v3 dealloc];
}

@end