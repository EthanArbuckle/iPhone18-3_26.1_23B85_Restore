@interface PUTileTree
- (BOOL)containsObject:(id)a3 withTileIdentifier:(id)a4;
- (PUTileTree)init;
- (PUTileTree)initWithTileTree:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initUsingUniqueLeafs:(BOOL)a3;
- (id)objectWithTileIdentifier:(id)a3;
- (void)addObject:(id)a3 withTileIdentifier:(id)a4;
- (void)enumerateObjectsUsingBlock:(id)a3;
- (void)enumerateObjectsWithTileIdentifier:(id)a3 usingBlock:(id)a4;
- (void)removeAllObjects;
- (void)removeObject:(id)a3 withTileIdentifier:(id)a4;
- (void)removeObjectWithTileIdentifier:(id)a3;
@end

@implementation PUTileTree

- (id)description
{
  v7.receiver = self;
  v7.super_class = PUTileTree;
  v3 = [(PUTileTree *)&v7 description];
  v4 = [(PUTileTree *)self _objectsByTileIdentifier];
  v5 = [v3 stringByAppendingFormat:@" objects: %@", v4];

  return v5;
}

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  [(PUTileTree *)self setIsEnumerating:1];
  v5 = [(PUTileTree *)self useUniqueLeafs];
  v6 = [(PUTileTree *)self _objectsByTileIdentifier];
  if (v5)
  {
    v7 = v12;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v8 = &unk_1E7B7E6D0;
    v9 = __41__PUTileTree_enumerateObjectsUsingBlock___block_invoke;
  }

  else
  {
    v7 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v8 = &unk_1E7B7E6F8;
    v9 = __41__PUTileTree_enumerateObjectsUsingBlock___block_invoke_2;
  }

  v7[2] = v9;
  v7[3] = v8;
  v7[4] = v4;
  v10 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];

  [(PUTileTree *)self setIsEnumerating:0];
}

void __41__PUTileTree_enumerateObjectsUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v12 != v9)
      {
        objc_enumerationMutation(v6);
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32));
      if (a4)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateObjectsWithTileIdentifier:(id)a3 usingBlock:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(PUTileTree *)self setIsEnumerating:1];
  v8 = [(PUTileTree *)self _objectsByTileIdentifier];
  v9 = [v8 objectForKeyedSubscript:v6];

  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v16 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v7[2](v7, *(*(&v15 + 1) + 8 * v14), &v19);
      if (v19)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [(PUTileTree *)self setIsEnumerating:0, v15];
}

- (id)objectWithTileIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PUTileTree *)self _objectsByTileIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (BOOL)containsObject:(id)a3 withTileIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUTileTree *)self useUniqueLeafs];
  v9 = [(PUTileTree *)self _objectsByTileIdentifier];
  v10 = [v9 objectForKeyedSubscript:v6];

  if (v8)
  {
    v11 = v10 == v7;
  }

  else
  {
    v11 = [v10 containsObject:v7];
  }

  return v11;
}

- (void)removeAllObjects
{
  if ([(PUTileTree *)self isEnumerating])
  {
    v3 = PXAssertGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_ERROR, "Attempting to remove all objects while enumerating", v5, 2u);
    }
  }

  v4 = [(PUTileTree *)self _objectsByTileIdentifier];
  [v4 removeAllObjects];
}

- (void)removeObjectWithTileIdentifier:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PUTileTree *)self isEnumerating])
  {
    v5 = PXAssertGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_error_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "Attempting to remove object with identifier: %@ while enumerating", &v7, 0xCu);
    }
  }

  v6 = [(PUTileTree *)self _objectsByTileIdentifier];
  [v6 removeObjectForKey:v4];
}

- (void)removeObject:(id)a3 withTileIdentifier:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(PUTileTree *)self isEnumerating])
  {
    v8 = PXAssertGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_error_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Attempting to remove object: %@ with identifier: %@ while enumerating", &v11, 0x16u);
    }
  }

  v9 = [(PUTileTree *)self _objectsByTileIdentifier];
  if ([(PUTileTree *)self useUniqueLeafs])
  {
    [v9 removeObjectForKey:v7];
  }

  else
  {
    v10 = [v9 objectForKeyedSubscript:v7];
    [v10 removeObject:v6];
  }
}

- (void)addObject:(id)a3 withTileIdentifier:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(PUTileTree *)self isEnumerating])
  {
    v8 = PXAssertGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_error_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Attempting to add object: %@ with identifier: %@ while enumerating", &v11, 0x16u);
    }
  }

  v9 = [(PUTileTree *)self _objectsByTileIdentifier];
  if ([(PUTileTree *)self useUniqueLeafs])
  {
    [v9 setObject:v6 forKeyedSubscript:v7];
  }

  else
  {
    v10 = [v9 objectForKeyedSubscript:v7];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v9 setObject:v10 forKeyedSubscript:v7];
    }

    [v10 addObject:v6];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithTileTree:self];
}

- (PUTileTree)initWithTileTree:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PUTileTree;
  v5 = [(PUTileTree *)&v18 init];
  if (v5)
  {
    v6 = [v4 useUniqueLeafs];
    v5->_useUniqueLeafs = v6;
    v7 = v4[2];
    if (v6)
    {
      v8 = [v7 mutableCopy];
      objectsByTileIdentifier = v5->__objectsByTileIdentifier;
      v5->__objectsByTileIdentifier = v8;
    }

    else
    {
      v10 = MEMORY[0x1E695DF90];
      objectsByTileIdentifier = v7;
      v11 = [[v10 alloc] initWithCapacity:{-[NSMutableDictionary count](objectsByTileIdentifier, "count")}];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __31__PUTileTree_initWithTileTree___block_invoke;
      v16[3] = &unk_1E7B7E6A8;
      v12 = v11;
      v17 = v12;
      [(NSMutableDictionary *)objectsByTileIdentifier enumerateKeysAndObjectsUsingBlock:v16];
      v13 = v5->__objectsByTileIdentifier;
      v5->__objectsByTileIdentifier = v12;
      v14 = v12;
    }
  }

  return v5;
}

void __31__PUTileTree_initWithTileTree___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 mutableCopy];
  [v4 setObject:v5 forKey:a2];
}

- (id)initUsingUniqueLeafs:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = PUTileTree;
  v4 = [(PUTileTree *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_useUniqueLeafs = a3;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    objectsByTileIdentifier = v5->__objectsByTileIdentifier;
    v5->__objectsByTileIdentifier = v6;
  }

  return v5;
}

- (PUTileTree)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUTileTree.m" lineNumber:21 description:@"use designated initializer"];

  return [(PUTileTree *)self initUsingUniqueLeafs:0];
}

@end