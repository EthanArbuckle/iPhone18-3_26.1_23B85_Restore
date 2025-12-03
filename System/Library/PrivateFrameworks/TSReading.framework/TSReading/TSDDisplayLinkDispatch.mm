@interface TSDDisplayLinkDispatch
- (void)performBlockNextFrame:(id)frame;
- (void)teardown;
@end

@implementation TSDDisplayLinkDispatch

- (void)teardown
{
  objc_sync_enter(self);
  [(TSDDisplayLink *)self->_displayLink teardown];

  self->_displayLink = 0;
  self->_blocks = 0;

  objc_sync_exit(self);
}

- (void)performBlockNextFrame:(id)frame
{
  v4 = [frame copy];
  objc_sync_enter(self);
  blocks = self->_blocks;
  if (!blocks)
  {
    blocks = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_blocks = blocks;
  }

  [(NSMutableArray *)blocks addObject:v4];
  if (!self->_displayLink)
  {
    v6 = objc_alloc_init(TSDDisplayLink);
    self->_displayLink = v6;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__TSDDisplayLinkDispatch_performBlockNextFrame___block_invoke;
    v7[3] = &unk_279D49708;
    v7[4] = self;
    [(TSDDisplayLink *)v6 setTickBlock:v7];
    [(TSDDisplayLink *)self->_displayLink start];
  }

  objc_sync_exit(self);
}

uint64_t __48__TSDDisplayLinkDispatch_performBlockNextFrame___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(*(a1 + 32) + 8) = 0;
  objc_sync_exit(v2);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v12 + 1) + 8 * i) + 16))();
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = v4;
  return 1;
}

@end