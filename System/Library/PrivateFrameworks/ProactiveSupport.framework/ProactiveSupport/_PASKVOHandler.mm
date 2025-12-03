@interface _PASKVOHandler
- (_PASKVOHandler)init;
- (void)_watchKeyPath:(id)path ofObject:(id)object options:(unint64_t)options usingTask:(id)task;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reactAfterChangesToKeyPath:(id)path ofObject:(id)object usingBlock:(id)block;
- (void)reactAsynchronouslyAfterChangesToKeyPath:(id)path ofObject:(id)object usingBlock:(id)block onQueue:(id)queue;
- (void)reactBeforeAndAfterChangesToKeyPath:(id)path ofObject:(id)object usingBlock:(id)block;
@end

@implementation _PASKVOHandler

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (pthread_mutex_lock(&self->_lock) != 22)
  {
    contextCopy = context;
    pthread_mutex_unlock(&self->_lock);
    v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A500]];
    null = [MEMORY[0x1E695DFB0] null];

    if (v14 == null)
    {

      v14 = 0;
    }

    v16 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    null2 = [MEMORY[0x1E695DFB0] null];

    if (v16 == null2)
    {

      v16 = 0;
    }

    v18 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F8]];
    bOOLValue = [v18 BOOLValue];

    beforeAndAfterBlock = [contextCopy beforeAndAfterBlock];

    if (beforeAndAfterBlock)
    {
      beforeAndAfterBlock2 = [contextCopy beforeAndAfterBlock];
      (beforeAndAfterBlock2)[2](beforeAndAfterBlock2, pathCopy, objectCopy, v14, v16, bOOLValue);
    }

    else
    {
      afterBlock = [contextCopy afterBlock];

      if (!afterBlock)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_PASKVOHandler.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"task.afterBlock"}];
      }

      beforeAndAfterBlock2 = [contextCopy afterBlock];
      (beforeAndAfterBlock2[2])(beforeAndAfterBlock2, pathCopy, objectCopy, v14, v16);
    }
  }
}

- (void)_watchKeyPath:(id)path ofObject:(id)object options:(unint64_t)options usingTask:(id)task
{
  pathCopy = path;
  objectCopy = object;
  taskCopy = task;
  pthread_mutex_lock(&self->_lock);
  [(NSMutableArray *)self->_tasks addObject:taskCopy];
  [objectCopy addObserver:self forKeyPath:pathCopy options:options context:taskCopy];
  pthread_mutex_unlock(&self->_lock);
}

- (void)reactBeforeAndAfterChangesToKeyPath:(id)path ofObject:(id)object usingBlock:(id)block
{
  blockCopy = block;
  objectCopy = object;
  pathCopy = path;
  v11 = objc_opt_new();
  [v11 setKeyPath:pathCopy];
  [v11 setObject:objectCopy];
  [v11 setBeforeAndAfterBlock:blockCopy];

  [(_PASKVOHandler *)self _watchKeyPath:pathCopy ofObject:objectCopy options:11 usingTask:v11];
}

- (void)reactAsynchronouslyAfterChangesToKeyPath:(id)path ofObject:(id)object usingBlock:(id)block onQueue:(id)queue
{
  blockCopy = block;
  queueCopy = queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87___PASKVOHandler_reactAsynchronouslyAfterChangesToKeyPath_ofObject_usingBlock_onQueue___block_invoke;
  v14[3] = &unk_1E77F1EC8;
  v15 = queueCopy;
  v16 = blockCopy;
  v12 = blockCopy;
  v13 = queueCopy;
  [(_PASKVOHandler *)self reactAfterChangesToKeyPath:path ofObject:object usingBlock:v14];
}

- (void)reactAfterChangesToKeyPath:(id)path ofObject:(id)object usingBlock:(id)block
{
  blockCopy = block;
  objectCopy = object;
  pathCopy = path;
  v11 = objc_opt_new();
  [v11 setKeyPath:pathCopy];
  [v11 setObject:objectCopy];
  [v11 setAfterBlock:blockCopy];

  [(_PASKVOHandler *)self _watchKeyPath:pathCopy ofObject:objectCopy options:3 usingTask:v11];
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
        object = [v7 object];
        if (object)
        {
          keyPath = [v7 keyPath];
          [object removeObserver:self forKeyPath:keyPath context:v7];
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