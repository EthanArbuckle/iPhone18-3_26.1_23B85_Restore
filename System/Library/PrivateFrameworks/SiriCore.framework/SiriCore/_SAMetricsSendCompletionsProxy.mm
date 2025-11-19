@interface _SAMetricsSendCompletionsProxy
- (_SAMetricsSendCompletionsProxy)init;
- (void)addBlock:(id)a3;
- (void)dealloc;
- (void)dispatchBlocksWithResult:(int64_t)a3 error:(id)a4;
@end

@implementation _SAMetricsSendCompletionsProxy

- (void)dispatchBlocksWithResult:(int64_t)a3 error:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([(NSMutableArray *)self->_blocks count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_blocks;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v12 + 1) + 8 * v10) + 16))(*(*(&v12 + 1) + 8 * v10));
          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [(NSMutableArray *)self->_blocks removeAllObjects];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addBlock:(id)a3
{
  if (a3)
  {
    blocks = self->_blocks;
    v5 = [a3 copy];
    v4 = MEMORY[0x26D5E5DB0]();
    [(NSMutableArray *)blocks addObject:v4];
  }
}

- (void)dealloc
{
  [(_SAMetricsSendCompletionsProxy *)self dispatchBlocksWithResult:2 error:0];
  v3.receiver = self;
  v3.super_class = _SAMetricsSendCompletionsProxy;
  [(_SAMetricsSendCompletionsProxy *)&v3 dealloc];
}

- (_SAMetricsSendCompletionsProxy)init
{
  v6.receiver = self;
  v6.super_class = _SAMetricsSendCompletionsProxy;
  v2 = [(_SAMetricsSendCompletionsProxy *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    blocks = v2->_blocks;
    v2->_blocks = v3;
  }

  return v2;
}

@end