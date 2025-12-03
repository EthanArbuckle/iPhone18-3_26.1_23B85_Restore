@interface PFTStack
- (PFTStack)init;
- (id)pop;
- (id)popAll;
- (void)popAllWithHandler:(id)handler;
- (void)popWithHandler:(id)handler;
- (void)push:(id)push;
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

- (void)push:(id)push
{
  if (push)
  {
    [(NSMutableArray *)self->_objects addObject:?];
  }
}

- (id)pop
{
  if (off_2870E41C0(&__block_literal_global_4, self->_objects))
  {
    lastObject = 0;
  }

  else
  {
    lastObject = [(NSMutableArray *)self->_objects lastObject];
    [(NSMutableArray *)self->_objects removeLastObject];
  }

  return lastObject;
}

- (id)popAll
{
  v3 = [(NSMutableArray *)self->_objects copy];
  [(NSMutableArray *)self->_objects removeAllObjects];

  return v3;
}

- (void)popWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [(PFTStack *)self pop];
  if (v4)
  {
    handlerCopy[2](handlerCopy, v4);
  }
}

- (void)popAllWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [(PFTStack *)self pop];
  if (v4)
  {
    v5 = v4;
    do
    {
      handlerCopy[2](handlerCopy, v5);
      v6 = [(PFTStack *)self pop];

      v5 = v6;
    }

    while (v6);
  }
}

@end