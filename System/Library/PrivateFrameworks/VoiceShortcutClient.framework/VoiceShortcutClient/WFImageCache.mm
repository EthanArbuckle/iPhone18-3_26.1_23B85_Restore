@interface WFImageCache
- (CGImage)imageForKey:(id)key;
- (WFImageCache)init;
- (void)removeAllObjects;
- (void)setImage:(CGImage *)image forKey:(id)key;
@end

@implementation WFImageCache

- (void)removeAllObjects
{
  os_unfair_lock_lock(&self->_lock);
  backingStore = [(WFImageCache *)self backingStore];
  [backingStore removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (CGImage)imageForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFImageCache.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  os_unfair_lock_lock(&self->_lock);
  backingStore = [(WFImageCache *)self backingStore];
  v7 = [backingStore objectForKeyedSubscript:keyCopy];

  os_unfair_lock_unlock(&self->_lock);
  if (!v7)
  {
    goto LABEL_6;
  }

  copyImage = [v7 copyImage];
  if (!copyImage)
  {
    os_unfair_lock_lock(&self->_lock);
    backingStore2 = [(WFImageCache *)self backingStore];
    [backingStore2 setObject:0 forKeyedSubscript:keyCopy];

    os_unfair_lock_unlock(&self->_lock);
LABEL_6:
    copyImage = 0;
  }

  return copyImage;
}

- (void)setImage:(CGImage *)image forKey:(id)key
{
  keyCopy = key;
  v12 = keyCopy;
  if (image)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFImageCache.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"image"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFImageCache.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"key"}];

LABEL_3:
  v8 = [[WFPurgeableImage alloc] initWithCGImage:image];
  os_unfair_lock_lock(&self->_lock);
  backingStore = [(WFImageCache *)self backingStore];
  [backingStore setObject:v8 forKeyedSubscript:v12];

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