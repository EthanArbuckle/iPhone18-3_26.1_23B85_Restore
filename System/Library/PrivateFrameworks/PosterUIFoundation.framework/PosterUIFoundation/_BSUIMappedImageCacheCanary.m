@interface _BSUIMappedImageCacheCanary
- (_BSUIMappedImageCacheCanary)initWithCacheManager:(id)a3 key:(id)a4;
- (void)dealloc;
@end

@implementation _BSUIMappedImageCacheCanary

- (_BSUIMappedImageCacheCanary)initWithCacheManager:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _BSUIMappedImageCacheCanary;
  v8 = [(_BSUIMappedImageCacheCanary *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_cacheManager, v6);
    v10 = [v7 copy];
    key = v9->_key;
    v9->_key = v10;
  }

  return v9;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_cacheManager);

  if (WeakRetained)
  {
    objc_copyWeak(&to, &self->_cacheManager);
    v4 = self->_key;
    v5 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38___BSUIMappedImageCacheCanary_dealloc__block_invoke;
    block[3] = &unk_1E7854C68;
    objc_copyWeak(&v10, &to);
    v9 = v4;
    v6 = v4;
    dispatch_async(v5, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&to);
  }

  v7.receiver = self;
  v7.super_class = _BSUIMappedImageCacheCanary;
  [(_BSUIMappedImageCacheCanary *)&v7 dealloc];
}

@end