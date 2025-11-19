@interface _PASLRUCache
- (_PASLRUCache)initWithCountLimit:(unint64_t)a3;
- (id)objectForKey:(id)a3;
- (void)enumerateKeysAndObjectsUsingBlock:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation _PASLRUCache

- (void)enumerateKeysAndObjectsUsingBlock:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2487;
  v29 = __Block_byref_object_dispose__2488;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2487;
  v23 = __Block_byref_object_dispose__2488;
  v24 = 0;
  lock = self->_lock;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __50___PASLRUCache_enumerateKeysAndObjectsUsingBlock___block_invoke;
  v18[3] = &unk_1E77F2128;
  v18[4] = &v25;
  v18[5] = &v19;
  [(_PASLock *)lock runWithLockAcquired:v18];
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v20[5];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v31 count:16];
  if (v7)
  {
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v11 = [v26[5] objectForKeyedSubscript:{v10, v13}];
      v4[2](v4, v10, v11, &v17);
      LOBYTE(v10) = v17;

      if (v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v31 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35___PASLRUCache_removeObjectForKey___block_invoke;
  v7[3] = &unk_1E77F20E0;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33___PASLRUCache_setObject_forKey___block_invoke;
  v11[3] = &unk_1E77F20B8;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  [(_PASLock *)lock runWithLockAcquired:v11];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2487;
  v16 = __Block_byref_object_dispose__2488;
  v17 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29___PASLRUCache_objectForKey___block_invoke;
  v9[3] = &unk_1E77F2090;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (_PASLRUCache)initWithCountLimit:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = _PASLRUCache;
  v4 = [(_PASLRUCache *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_countLimit = a3;
    v6 = [_PASLock alloc];
    v7 = objc_opt_new();
    v8 = [(_PASLock *)v6 initWithGuardedData:v7];
    lock = v5->_lock;
    v5->_lock = v8;
  }

  return v5;
}

@end