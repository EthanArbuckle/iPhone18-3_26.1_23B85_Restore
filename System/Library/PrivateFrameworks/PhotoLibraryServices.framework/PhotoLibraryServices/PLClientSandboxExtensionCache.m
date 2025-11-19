@interface PLClientSandboxExtensionCache
- (BOOL)containsURL:(id)a3;
- (PLClientSandboxExtensionCache)initWithCacheLimit:(unint64_t)a3;
- (id)urlByStrippingFragmentFromURL:(id)a3;
- (void)insertSandboxedURL:(id)a3;
@end

@implementation PLClientSandboxExtensionCache

- (id)urlByStrippingFragmentFromURL:(id)a3
{
  v3 = a3;
  v4 = [v3 fragment];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AF20] componentsWithURL:v3 resolvingAgainstBaseURL:0];
    [v6 setFragment:0];
    v7 = [v6 URL];
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

- (BOOL)containsURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    sandboxExtensionURLs = [v4 path];

    if (sandboxExtensionURLs)
    {
      os_unfair_lock_lock(&self->_lock);
      sandboxExtensionURLs = self->_sandboxExtensionURLs;
      v7 = [(PLClientSandboxExtensionCache *)self urlByStrippingFragmentFromURL:v5];
      v8 = [sandboxExtensionURLs indexOfObject:v7];

      LOBYTE(sandboxExtensionURLs) = v8 != 0x7FFFFFFFFFFFFFFFLL;
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = self->_sandboxExtensionURLs;
        v10 = [MEMORY[0x1E696AC90] indexSetWithIndex:v8];
        [(NSMutableOrderedSet *)v9 moveObjectsAtIndexes:v10 toIndex:0];
      }

      os_unfair_lock_unlock(&self->_lock);
    }
  }

  else
  {
    LOBYTE(sandboxExtensionURLs) = 0;
  }

  return sandboxExtensionURLs;
}

- (void)insertSandboxedURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [v4 path];

    v4 = v9;
    if (v5)
    {
      os_unfair_lock_lock(&self->_lock);
      v6 = [(NSMutableOrderedSet *)self->_sandboxExtensionURLs indexOfObject:v9];
      sandboxExtensionURLs = self->_sandboxExtensionURLs;
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSMutableOrderedSet *)self->_sandboxExtensionURLs insertObject:v9 atIndex:0];
      }

      else
      {
        v8 = [MEMORY[0x1E696AC90] indexSetWithIndex:v6];
        [(NSMutableOrderedSet *)sandboxExtensionURLs moveObjectsAtIndexes:v8 toIndex:0];
      }

      if ([(NSMutableOrderedSet *)self->_sandboxExtensionURLs count]> self->_cacheLimit)
      {
        [(NSMutableOrderedSet *)self->_sandboxExtensionURLs removeObjectAtIndex:[(NSMutableOrderedSet *)self->_sandboxExtensionURLs count]- 1];
      }

      os_unfair_lock_unlock(&self->_lock);
      v4 = v9;
    }
  }
}

- (PLClientSandboxExtensionCache)initWithCacheLimit:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = PLClientSandboxExtensionCache;
  v4 = [(PLClientSandboxExtensionCache *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_cacheLimit = a3;
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    sandboxExtensionURLs = v5->_sandboxExtensionURLs;
    v5->_sandboxExtensionURLs = v6;
  }

  return v5;
}

@end