@interface SUICGLIndexCacheEntry
- (void)dealloc;
@end

@implementation SUICGLIndexCacheEntry

- (void)dealloc
{
  free(self->_gl_indices);
  v3.receiver = self;
  v3.super_class = SUICGLIndexCacheEntry;
  [(SUICGLIndexCacheEntry *)&v3 dealloc];
}

@end