@interface WFImageCache
- (CGImage)imageForKey:(id)a3;
- (WFImageCache)init;
- (void)removeAllObjects;
- (void)setImage:(CGImage *)a3 forKey:(id)a4;
@end

@implementation WFImageCache

- (void)removeAllObjects
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(WFImageCache *)self backingStore];
  [v3 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (CGImage)imageForKey:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFImageCache.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = [(WFImageCache *)self backingStore];
  v7 = [v6 objectForKeyedSubscript:v5];

  os_unfair_lock_unlock(&self->_lock);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [v7 copyImage];
  if (!v8)
  {
    os_unfair_lock_lock(&self->_lock);
    v9 = [(WFImageCache *)self backingStore];
    [v9 setObject:0 forKeyedSubscript:v5];

    os_unfair_lock_unlock(&self->_lock);
LABEL_6:
    v8 = 0;
  }

  return v8;
}

- (void)setImage:(CGImage *)a3 forKey:(id)a4
{
  v7 = a4;
  v12 = v7;
  if (a3)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFImageCache.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"image"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"WFImageCache.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"key"}];

LABEL_3:
  v8 = [[WFPurgeableImage alloc] initWithCGImage:a3];
  os_unfair_lock_lock(&self->_lock);
  v9 = [(WFImageCache *)self backingStore];
  [v9 setObject:v8 forKeyedSubscript:v12];

  os_unfair_lock_unlock(&self->_lock);
}

- (WFImageCache)init
{
  v7.receiver = self;
  v7.super_class = WFImageCache;
  v2 = [(WFImageCache *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    backingStore = v2->_backingStore;
    v2->_backingStore = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = v2;
  }

  return v2;
}

@end