@interface PUMutableIndexPathSet
- (BOOL)isEqual:(id)a3;
- (PUMutableIndexPathSet)init;
- (PUMutableIndexPathSet)initWithCapacity:(unint64_t)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)enumerateIndexPathsUsingBlock:(id)a3;
- (void)setIndexPathSet:(id)a3;
@end

@implementation PUMutableIndexPathSet

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%p %@> indexPaths: %@", self, v5, self->_indexPaths];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(NSMutableSet *)self->_indexPaths isEqualToSet:v5[1]];
    *(v12 + 24) = v6;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v5 = v4;
    v7 = [v5 count];
    if (v7 == [(PUMutableIndexPathSet *)self count])
    {
      *(v12 + 24) = 1;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __33__PUMutableIndexPathSet_isEqual___block_invoke;
      v10[3] = &unk_1E7B7DD28;
      v10[4] = self;
      v10[5] = &v11;
      [v5 enumerateIndexPathsUsingBlock:v10];
    }
  }

LABEL_7:
  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __33__PUMutableIndexPathSet_isEqual___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsIndexPath:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (void)setIndexPathSet:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableSet *)self->_indexPaths setSet:v4[1]];
  }

  else
  {
    [(PUMutableIndexPathSet *)self removeAllIndexPaths];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__PUMutableIndexPathSet_setIndexPathSet___block_invoke;
    v5[3] = &unk_1E7B78150;
    v5[4] = self;
    [v4 enumerateIndexPathsUsingBlock:v5];
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [[PUMutableIndexPathSet alloc] initWithCapacity:[(NSMutableSet *)self->_indexPaths count]];
  v5 = v4;
  if (v4)
  {
    [(NSMutableSet *)v4->_indexPaths setSet:self->_indexPaths];
  }

  return v5;
}

- (void)enumerateIndexPathsUsingBlock:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_indexPaths;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = 0;
      v4[2](v4, v10, &v11);
      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (PUMutableIndexPathSet)initWithCapacity:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = PUMutableIndexPathSet;
  v4 = [(PUMutableIndexPathSet *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:a3];
    indexPaths = v4->_indexPaths;
    v4->_indexPaths = v5;
  }

  return v4;
}

- (PUMutableIndexPathSet)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUIndexPathSet.m" lineNumber:48 description:{@"Do not use this initializer, use the designated one instead"}];

  return 0;
}

@end