@interface _UIAfterCACommitBlock
+ (id)blockWithBlock:(id)block;
- (BOOL)run;
- (unsigned)_initWithBlock:(unsigned __int8 *)block;
@end

@implementation _UIAfterCACommitBlock

- (BOOL)run
{
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIAfterCACommitQueue.m" lineNumber:127 description:@"Call must be made on main thread"];
  }

  block = self->_block;
  if (block)
  {
    v5 = objc_autoreleasePoolPush();
    (*(self->_block + 2))();
    v6 = self->_block;
    self->_block = 0;

    objc_autoreleasePoolPop(v5);
  }

  return block != 0;
}

+ (id)blockWithBlock:(id)block
{
  blockCopy = block;
  v4 = [[_UIAfterCACommitBlock alloc] _initWithBlock:blockCopy];

  return v4;
}

- (unsigned)_initWithBlock:(unsigned __int8 *)block
{
  v3 = a2;
  if (block)
  {
    v9.receiver = block;
    v9.super_class = _UIAfterCACommitBlock;
    v4 = objc_msgSendSuper2(&v9, sel_init);
    block = v4;
    if (v4)
    {
      v5 = *(v4 + 1);
      *(v4 + 1) = 0;

      v6 = [v3 copy];
      v7 = *(block + 2);
      *(block + 2) = v6;

      atomic_store(0, block + 24);
    }
  }

  return block;
}

@end