@interface PXReusableObjectPool
- (PXReusableObjectPool)init;
- (PXReusableObjectPoolDelegate)delegate;
- (id)checkOutReusableObjectWithReuseIdentifier:(int64_t)identifier;
- (void)checkInReusableObject:(id)object;
- (void)registerReusableObjectForReuseIdentifier:(int64_t)identifier maximumPoolSize:(int64_t)size creationHandler:(id)handler;
- (void)removeAllReusableObjectsWithReuseIdentifier:(int64_t)identifier;
- (void)setDelegate:(id)delegate;
@end

@implementation PXReusableObjectPool

- (PXReusableObjectPool)init
{
  v10.receiver = self;
  v10.super_class = PXReusableObjectPool;
  v2 = [(PXReusableObjectPool *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    objectCreationBlocksByReuseIdentifier = v2->_objectCreationBlocksByReuseIdentifier;
    v2->_objectCreationBlocksByReuseIdentifier = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    reusableObjectsByReuseIdentifier = v2->_reusableObjectsByReuseIdentifier;
    v2->_reusableObjectsByReuseIdentifier = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    maximumPoolSizeByReuseIdentifier = v2->_maximumPoolSizeByReuseIdentifier;
    v2->_maximumPoolSizeByReuseIdentifier = v7;
  }

  return v2;
}

- (PXReusableObjectPoolDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)removeAllReusableObjectsWithReuseIdentifier:(int64_t)identifier
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
  reusableObjectsByReuseIdentifier = [(PXReusableObjectPool *)self reusableObjectsByReuseIdentifier];
  v5 = [reusableObjectsByReuseIdentifier objectForKeyedSubscript:v6];
  [v5 removeAllObjects];
}

- (void)checkInReusableObject:(id)object
{
  v19 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  [objectCopy becomeReusable];
  if (self->_delegateFlags.respondsToObjectBecameReusable)
  {
    delegate = [(PXReusableObjectPool *)self delegate];
    [delegate reusableObjectPool:self objectBecameReusable:objectCopy];
  }

  _px_reuseIdentifier = [objectCopy _px_reuseIdentifier];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:_px_reuseIdentifier];
  reusableObjectsByReuseIdentifier = [(PXReusableObjectPool *)self reusableObjectsByReuseIdentifier];
  v9 = [reusableObjectsByReuseIdentifier objectForKeyedSubscript:v7];
  if (v9)
  {
    v10 = v9;
    maximumPoolSizeByReuseIdentifier = [(PXReusableObjectPool *)self maximumPoolSizeByReuseIdentifier];
    v12 = [maximumPoolSizeByReuseIdentifier objectForKeyedSubscript:v7];
    unsignedIntegerValue = [v12 unsignedIntegerValue];

    if (unsignedIntegerValue && [v10 count] >= unsignedIntegerValue)
    {
      v14 = PFUIGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = 134218242;
        v16 = unsignedIntegerValue;
        v17 = 2112;
        v18 = objectCopy;
        _os_log_impl(&dword_1B3F73000, v14, OS_LOG_TYPE_ERROR, "Dropping reusable object because we have reached our max pool size of %ld: %@", &v15, 0x16u);
      }
    }

    else
    {
      [v10 addObject:objectCopy];
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [reusableObjectsByReuseIdentifier setObject:v10 forKeyedSubscript:v7];
  }
}

- (id)checkOutReusableObjectWithReuseIdentifier:(int64_t)identifier
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  reusableObjectsByReuseIdentifier = [(PXReusableObjectPool *)self reusableObjectsByReuseIdentifier];
  v8 = [reusableObjectsByReuseIdentifier objectForKeyedSubscript:v6];
  if ([v8 count])
  {
    firstObject = [v8 firstObject];
    [v8 removeObjectAtIndex:0];
    [firstObject prepareForReuse];
    if (!self->_delegateFlags.respondsToObjectPreparedForReuse)
    {
      goto LABEL_9;
    }

    delegate = [(PXReusableObjectPool *)self delegate];
    [delegate reusableObjectPool:self objectPreparedForReuse:firstObject];
  }

  else
  {
    objectCreationBlocksByReuseIdentifier = [(PXReusableObjectPool *)self objectCreationBlocksByReuseIdentifier];
    delegate = [objectCreationBlocksByReuseIdentifier objectForKeyedSubscript:v6];

    if (!delegate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXReusableObjectPool.m" lineNumber:77 description:{@"no creation handlers registered for reuse identifier %@", v15}];
    }

    firstObject = delegate[2](delegate);
    [firstObject _px_setReuseIdentifier:identifier];
    if (self->_delegateFlags.respondsToDidCreateReusableObject)
    {
      delegate2 = [(PXReusableObjectPool *)self delegate];
      [delegate2 reusableObjectPool:self didCreateReusableObject:firstObject];
    }
  }

LABEL_9:

  return firstObject;
}

- (void)registerReusableObjectForReuseIdentifier:(int64_t)identifier maximumPoolSize:(int64_t)size creationHandler:(id)handler
{
  v8 = MEMORY[0x1E696AD98];
  handlerCopy = handler;
  v15 = [v8 numberWithInteger:identifier];
  v10 = [handlerCopy copy];

  v11 = _Block_copy(v10);
  objectCreationBlocksByReuseIdentifier = [(PXReusableObjectPool *)self objectCreationBlocksByReuseIdentifier];
  [objectCreationBlocksByReuseIdentifier setObject:v11 forKeyedSubscript:v15];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:size];
  maximumPoolSizeByReuseIdentifier = [(PXReusableObjectPool *)self maximumPoolSizeByReuseIdentifier];
  [maximumPoolSizeByReuseIdentifier setObject:v13 forKeyedSubscript:v15];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToDidCreateReusableObject = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToObjectBecameReusable = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToObjectPreparedForReuse = objc_opt_respondsToSelector() & 1;
  }
}

@end