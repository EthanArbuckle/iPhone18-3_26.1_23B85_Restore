@interface _MFWeakObjectCacheRef
- (MFWeakObjectCache)cache;
- (void)dealloc;
@end

@implementation _MFWeakObjectCacheRef

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  v4 = [WeakRetained objectForKey:self->_key shouldGenerate:0 wasCached:0];

  v5.receiver = self;
  v5.super_class = _MFWeakObjectCacheRef;
  [(_MFWeakObjectCacheRef *)&v5 dealloc];
}

- (MFWeakObjectCache)cache
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);

  return WeakRetained;
}

@end