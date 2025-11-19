@interface _PASKVOHandler
- (_PASKVOHandler)init;
- (void)_watchKeyPath:(id)a3 ofObject:(id)a4 options:(unint64_t)a5 usingTask:(id)a6;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)reactAfterChangesToKeyPath:(id)a3 ofObject:(id)a4 usingBlock:(id)a5;
- (void)reactAsynchronouslyAfterChangesToKeyPath:(id)a3 ofObject:(id)a4 usingBlock:(id)a5 onQueue:(id)a6;
- (void)reactBeforeAndAfterChangesToKeyPath:(id)a3 ofObject:(id)a4 usingBlock:(id)a5;
@end

@implementation _PASKVOHandler

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v24 = a3;
  v11 = a4;
  v12 = a5;
  if (pthread_mutex_lock(&self->_lock) != 22)
  {
    v13 = a6;
    pthread_mutex_unlock(&self->_lock);
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A500]];
    v15 = [MEMORY[0x1E695DFB0] null];

    if (v14 == v15)
    {

      v14 = 0;
    }

    v16 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v17 = [MEMORY[0x1E695DFB0] null];

    if (v16 == v17)
    {

      v16 = 0;
    }

    v18 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F8]];
    v19 = [v18 BOOLValue];

    v20 = [v13 beforeAndAfterBlock];

    if (v20)
    {
      v21 = [v13 beforeAndAfterBlock];
      (v21)[2](v21, v24, v11, v14, v16, v19);
    }

    else
    {
      v22 = [v13 afterBlock];

      if (!v22)
      {
        v23 = [MEMORY[0x1E696AAA8] currentHandler];
        [v23 handleFailureInMethod:a2 object:self file:@"_PASKVOHandler.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"task.afterBlock"}];
      }

      v21 = [v13 afterBlock];
      (v21[2])(v21, v24, v11, v14, v16);
    }
  }
}

- (void)_watchKeyPath:(id)a3 ofObject:(id)a4 options:(unint64_t)a5 usingTask:(id)a6
{
  v12 = a3;
  v10 = a4;
  v11 = a6;
  pthread_mutex_lock(&self->_lock);
  [(NSMutableArray *)self->_tasks addObject:v11];
  [v10 addObserver:self forKeyPath:v12 options:a5 context:v11];
  pthread_mutex_unlock(&self->_lock);
}

- (void)reactBeforeAndAfterChangesToKeyPath:(id)a3 ofObject:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  [v11 setKeyPath:v10];
  [v11 setObject:v9];
  [v11 setBeforeAndAfterBlock:v8];

  [(_PASKVOHandler *)self _watchKeyPath:v10 ofObject:v9 options:11 usingTask:v11];
}

- (void)reactAsynchronouslyAfterChangesToKeyPath:(id)a3 ofObject:(id)a4 usingBlock:(id)a5 onQueue:(id)a6
{
  v10 = a5;
  v11 = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87___PASKVOHandler_reactAsynchronouslyAfterChangesToKeyPath_ofObject_usingBlock_onQueue___block_invoke;
  v14[3] = &unk_1E77F1EC8;
  v15 = v11;
  v16 = v10;
  v12 = v10;
  v13 = v11;
  [(_PASKVOHandler *)self reactAfterChangesToKeyPath:a3 ofObject:a4 usingBlock:v14];
}

- (void)reactAfterChangesToKeyPath:(id)a3 ofObject:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  [v11 setKeyPath:v10];
  [v11 setObject:v9];
  [v11 setAfterBlock:v8];

  [(_PASKVOHandler *)self _watchKeyPath:v10 ofObject:v9 options:3 usingTask:v11];
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_tasks;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 object];
        if (v8)
        {
          v9 = [v7 keyPath];
          [v8 removeObserver:self forKeyPath:v9 context:v7];
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  pthread_mutex_unlock(&self->_lock);
  pthread_mutex_destroy(&self->_lock);
  v11.receiver = self;
  v11.super_class = _PASKVOHandler;
  [(_PASKVOHandler *)&v11 dealloc];
  v10 = *MEMORY[0x1E69E9840];
}

- (_PASKVOHandler)init
{
  v9 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _PASKVOHandler;
  v2 = [(_PASKVOHandler *)&v7 init];
  if (v2)
  {
    v8.__sig = 0;
    *v8.__opaque = 0;
    pthread_mutexattr_init(&v8);
    pthread_mutexattr_settype(&v8, 2);
    pthread_mutex_init(&v2->_lock, &v8);
    pthread_mutexattr_destroy(&v8);
    v3 = objc_opt_new();
    tasks = v2->_tasks;
    v2->_tasks = v3;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

@end