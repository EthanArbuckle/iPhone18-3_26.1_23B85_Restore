@interface PLCacheEntry
- (lruEntry)lruListEntry;
- (void)dealloc;
- (void)setObject:(id)object;
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

- (void)setObject:(id)object
{
  if (self->_object != object)
  {
    objectCopy = object;

    self->_object = object;
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