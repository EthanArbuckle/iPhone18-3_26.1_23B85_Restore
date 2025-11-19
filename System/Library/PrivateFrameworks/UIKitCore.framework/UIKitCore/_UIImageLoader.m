@interface _UIImageLoader
+ (id)_imageLoaderWithDataFromItemProvider:(id)a3 typeIdentifier:(id)a4;
+ (id)_imageLoaderWithLoadingQueue:(id)a3 handler:(id)a4;
+ (id)_imageLoaderWithURLRequest:(id)a3 session:(id)a4;
- (NSError)_error;
- (UIImage)_image;
- (_UIImageLoader)init;
- (void)_cancel;
- (void)_loadImageWithCompletionQueue:(id)a3 handler:(id)a4;
- (void)_really_loadImage:(id)a3;
@end

@implementation _UIImageLoader

+ (id)_imageLoaderWithLoadingQueue:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_UILoadingHandlerImageLoader alloc] initWithLoadingQueue:v6 handler:v5];

  return v7;
}

+ (id)_imageLoaderWithURLRequest:(id)a3 session:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_UINSURLRequestImageLoader alloc] initWithURLRequest:v6 session:v5];

  return v7;
}

+ (id)_imageLoaderWithDataFromItemProvider:(id)a3 typeIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_UINSItemProviderImageLoader alloc] initWithItemProvider:v6 typeIdentifier:v5];

  return v7;
}

- (_UIImageLoader)init
{
  v3.receiver = self;
  v3.super_class = _UIImageLoader;
  result = [(_UIImageLoader *)&v3 init];
  if (result)
  {
    atomic_store(0, &result->_started);
    atomic_store(0, &result->_finished);
    atomic_store(0, &result->_cancelled);
    result->_trampolineLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (UIImage)_image
{
  if (atomic_load_explicit(&self->_finished, memory_order_acquire))
  {
    return self->_image;
  }

  else
  {
    return 0;
  }
}

- (NSError)_error
{
  if (atomic_load_explicit(&self->_finished, memory_order_acquire))
  {
    return self->_error;
  }

  else
  {
    return 0;
  }
}

- (void)_loadImageWithCompletionQueue:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (atomic_exchange(&self->_started._Value, 1u))
  {
    os_unfair_lock_lock(&self->_trampolineLock);
    v8 = self;
    v9 = v6;
    v10 = v7;
    os_unfair_lock_assert_owner(&self->_trampolineLock);
    if (atomic_load_explicit(&v8->_finished, memory_order_acquire))
    {
      dispatch_async(v9, v10);
    }

    else
    {
      v11 = v8->_completionTrampolines;
      if (!v11)
      {
        v11 = objc_opt_new();
        completionTrampolines = v8->_completionTrampolines;
        v8->_completionTrampolines = v11;
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___addTrampoline_block_invoke;
      aBlock[3] = &unk_1E70F37C0;
      v18 = v9;
      v19 = v10;
      v13 = _Block_copy(aBlock);
      [(NSMutableArray *)v11 addObject:v13];
    }

    os_unfair_lock_unlock(&self->_trampolineLock);
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56___UIImageLoader__loadImageWithCompletionQueue_handler___block_invoke;
    v14[3] = &unk_1E70FCE28;
    v14[4] = self;
    v15 = v6;
    v16 = v7;
    [(_UIImageLoader *)self _really_loadImage:v14];
  }
}

- (void)_cancel
{
  if (atomic_exchange(&self->_started._Value, 1u))
  {
    if (atomic_load_explicit(&self->_finished, memory_order_acquire) & 1) != 0 || [(_UIImageLoader *)self _isCancelled]|| ![(_UIImageLoader *)self _really_cancel]|| (atomic_exchange(&self->_cancelled, 1u))
    {
      return;
    }
  }

  else
  {
    [(_UIImageLoader *)self _really_cancel];
    atomic_store(1u, &self->_cancelled);
    atomic_store(1u, &self->_finished);
  }

  os_unfair_lock_lock(&self->_trampolineLock);
  atomic_store(1u, &self->_finished);
  _drainTrampolines(self);

  os_unfair_lock_unlock(&self->_trampolineLock);
}

- (void)_really_loadImage:(id)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end