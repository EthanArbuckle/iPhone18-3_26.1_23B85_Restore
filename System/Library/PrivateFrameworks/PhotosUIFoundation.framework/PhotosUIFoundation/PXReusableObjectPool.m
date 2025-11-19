@interface PXReusableObjectPool
- (PXReusableObjectPool)init;
- (PXReusableObjectPoolDelegate)delegate;
- (id)checkOutReusableObjectWithReuseIdentifier:(int64_t)a3;
- (void)checkInReusableObject:(id)a3;
- (void)registerReusableObjectForReuseIdentifier:(int64_t)a3 maximumPoolSize:(int64_t)a4 creationHandler:(id)a5;
- (void)removeAllReusableObjectsWithReuseIdentifier:(int64_t)a3;
- (void)setDelegate:(id)a3;
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

- (void)removeAllReusableObjectsWithReuseIdentifier:(int64_t)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v4 = [(PXReusableObjectPool *)self reusableObjectsByReuseIdentifier];
  v5 = [v4 objectForKeyedSubscript:v6];
  [v5 removeAllObjects];
}

- (void)checkInReusableObject:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 becomeReusable];
  if (self->_delegateFlags.respondsToObjectBecameReusable)
  {
    v5 = [(PXReusableObjectPool *)self delegate];
    [v5 reusableObjectPool:self objectBecameReusable:v4];
  }

  v6 = [v4 _px_reuseIdentifier];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  v8 = [(PXReusableObjectPool *)self reusableObjectsByReuseIdentifier];
  v9 = [v8 objectForKeyedSubscript:v7];
  if (v9)
  {
    v10 = v9;
    v11 = [(PXReusableObjectPool *)self maximumPoolSizeByReuseIdentifier];
    v12 = [v11 objectForKeyedSubscript:v7];
    v13 = [v12 unsignedIntegerValue];

    if (v13 && [v10 count] >= v13)
    {
      v14 = PFUIGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = 134218242;
        v16 = v13;
        v17 = 2112;
        v18 = v4;
        _os_log_impl(&dword_1B3F73000, v14, OS_LOG_TYPE_ERROR, "Dropping reusable object because we have reached our max pool size of %ld: %@", &v15, 0x16u);
      }
    }

    else
    {
      [v10 addObject:v4];
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v8 setObject:v10 forKeyedSubscript:v7];
  }
}

- (id)checkOutReusableObjectWithReuseIdentifier:(int64_t)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(PXReusableObjectPool *)self reusableObjectsByReuseIdentifier];
  v8 = [v7 objectForKeyedSubscript:v6];
  if ([v8 count])
  {
    v9 = [v8 firstObject];
    [v8 removeObjectAtIndex:0];
    [v9 prepareForReuse];
    if (!self->_delegateFlags.respondsToObjectPreparedForReuse)
    {
      goto LABEL_9;
    }

    v10 = [(PXReusableObjectPool *)self delegate];
    [v10 reusableObjectPool:self objectPreparedForReuse:v9];
  }

  else
  {
    v11 = [(PXReusableObjectPool *)self objectCreationBlocksByReuseIdentifier];
    v10 = [v11 objectForKeyedSubscript:v6];

    if (!v10)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      [v14 handleFailureInMethod:a2 object:self file:@"PXReusableObjectPool.m" lineNumber:77 description:{@"no creation handlers registered for reuse identifier %@", v15}];
    }

    v9 = v10[2](v10);
    [v9 _px_setReuseIdentifier:a3];
    if (self->_delegateFlags.respondsToDidCreateReusableObject)
    {
      v12 = [(PXReusableObjectPool *)self delegate];
      [v12 reusableObjectPool:self didCreateReusableObject:v9];
    }
  }

LABEL_9:

  return v9;
}

- (void)registerReusableObjectForReuseIdentifier:(int64_t)a3 maximumPoolSize:(int64_t)a4 creationHandler:(id)a5
{
  v8 = MEMORY[0x1E696AD98];
  v9 = a5;
  v15 = [v8 numberWithInteger:a3];
  v10 = [v9 copy];

  v11 = _Block_copy(v10);
  v12 = [(PXReusableObjectPool *)self objectCreationBlocksByReuseIdentifier];
  [v12 setObject:v11 forKeyedSubscript:v15];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v14 = [(PXReusableObjectPool *)self maximumPoolSizeByReuseIdentifier];
  [v14 setObject:v13 forKeyedSubscript:v15];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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