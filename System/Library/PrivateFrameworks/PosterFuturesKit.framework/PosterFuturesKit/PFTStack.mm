@interface PFTStack
- (PFTStack)init;
- (id)pop;
- (id)popAll;
- (void)popAllWithHandler:(id)a3;
- (void)popWithHandler:(id)a3;
- (void)push:(id)a3;
@end

@implementation PFTStack

- (PFTStack)init
{
  v7.receiver = self;
  v7.super_class = PFTStack;
  v2 = [(PFTStack *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objects = v2->_objects;
    v2->_objects = v3;

    v5 = v2;
  }

  return v2;
}

- (void)push:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_objects addObject:?];
  }
}

- (id)pop
{
  if (off_2870E41C0(&__block_literal_global_4, self->_objects))
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSMutableArray *)self->_objects lastObject];
    [(NSMutableArray *)self->_objects removeLastObject];
  }

  return v3;
}

- (id)popAll
{
  v3 = [(NSMutableArray *)self->_objects copy];
  [(NSMutableArray *)self->_objects removeAllObjects];

  return v3;
}

- (void)popWithHandler:(id)a3
{
  v5 = a3;
  v4 = [(PFTStack *)self pop];
  if (v4)
  {
    v5[2](v5, v4);
  }
}

- (void)popAllWithHandler:(id)a3
{
  v7 = a3;
  v4 = [(PFTStack *)self pop];
  if (v4)
  {
    v5 = v4;
    do
    {
      v7[2](v7, v5);
      v6 = [(PFTStack *)self pop];

      v5 = v6;
    }

    while (v6);
  }
}

@end