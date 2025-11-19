@interface SSPromiseCompletionBlocks
- (SSPromiseCompletionBlocks)init;
- (void)addCompletionBlock:(id)a3;
- (void)addErrorBlock:(id)a3;
- (void)addSuccessBlock:(id)a3;
- (void)callCompletionBlock:(id)a3 withPromiseResult:(id)a4;
- (void)callErrorBlock:(id)a3 withPromiseResult:(id)a4;
- (void)callSuccessBlock:(id)a3 withPromiseResult:(id)a4;
- (void)flushCompletionBlocksWithPromiseResult:(id)a3;
@end

@implementation SSPromiseCompletionBlocks

- (SSPromiseCompletionBlocks)init
{
  v6.receiver = self;
  v6.super_class = SSPromiseCompletionBlocks;
  v2 = [(SSPromiseCompletionBlocks *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completionBlocks = v2->_completionBlocks;
    v2->_completionBlocks = v3;
  }

  return v2;
}

- (void)addCompletionBlock:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  completionBlocks = v4->_completionBlocks;
  v6 = [v7 copy];
  [(NSMutableArray *)completionBlocks addObject:v6];

  objc_sync_exit(v4);
}

- (void)addErrorBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SSPromiseCompletionBlocks_addErrorBlock___block_invoke;
  v6[3] = &unk_1E84AE288;
  v7 = v4;
  v5 = v4;
  [(SSPromiseCompletionBlocks *)self addCompletionBlock:v6];
}

uint64_t __43__SSPromiseCompletionBlocks_addErrorBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)addSuccessBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__SSPromiseCompletionBlocks_addSuccessBlock___block_invoke;
  v6[3] = &unk_1E84AE288;
  v7 = v4;
  v5 = v4;
  [(SSPromiseCompletionBlocks *)self addCompletionBlock:v6];
}

uint64_t __45__SSPromiseCompletionBlocks_addSuccessBlock___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)callCompletionBlock:(id)a3 withPromiseResult:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = [v5 result];
  v7 = [v5 error];

  (*(a3 + 2))(v6, v8, v7);
}

- (void)callErrorBlock:(id)a3 withPromiseResult:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__SSPromiseCompletionBlocks_callErrorBlock_withPromiseResult___block_invoke;
  v8[3] = &unk_1E84AE288;
  v9 = v6;
  v7 = v6;
  [(SSPromiseCompletionBlocks *)self callCompletionBlock:v8 withPromiseResult:a4];
}

uint64_t __62__SSPromiseCompletionBlocks_callErrorBlock_withPromiseResult___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)callSuccessBlock:(id)a3 withPromiseResult:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__SSPromiseCompletionBlocks_callSuccessBlock_withPromiseResult___block_invoke;
  v8[3] = &unk_1E84AE288;
  v9 = v6;
  v7 = v6;
  [(SSPromiseCompletionBlocks *)self callCompletionBlock:v8 withPromiseResult:a4];
}

uint64_t __64__SSPromiseCompletionBlocks_callSuccessBlock_withPromiseResult___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)flushCompletionBlocksWithPromiseResult:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableArray *)v5->_completionBlocks copy];
  [(NSMutableArray *)v5->_completionBlocks removeAllObjects];
  objc_sync_exit(v5);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [v4 result];
        v13 = [v4 error];
        (*(v11 + 16))(v11, v12, v13);

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

@end