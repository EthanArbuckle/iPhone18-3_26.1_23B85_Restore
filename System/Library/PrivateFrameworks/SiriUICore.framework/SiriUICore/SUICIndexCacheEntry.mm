@interface SUICIndexCacheEntry
- (void)dealloc;
@end

@implementation SUICIndexCacheEntry

- (void)dealloc
{
  free(self->_metal_indices);
  v3.receiver = self;
  v3.super_class = SUICIndexCacheEntry;
  [(SUICIndexCacheEntry *)&v3 dealloc];
}

@end