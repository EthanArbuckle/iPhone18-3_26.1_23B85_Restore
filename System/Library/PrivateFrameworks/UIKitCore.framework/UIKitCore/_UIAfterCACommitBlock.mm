@interface _UIAfterCACommitBlock
+ (id)blockWithBlock:(id)a3;
- (BOOL)run;
- (unsigned)_initWithBlock:(unsigned __int8 *)a1;
@end

@implementation _UIAfterCACommitBlock

- (BOOL)run
{
  if (pthread_main_np() != 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UIAfterCACommitQueue.m" lineNumber:127 description:@"Call must be made on main thread"];
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

+ (id)blockWithBlock:(id)a3
{
  v3 = a3;
  v4 = [[_UIAfterCACommitBlock alloc] _initWithBlock:v3];

  return v4;
}

- (unsigned)_initWithBlock:(unsigned __int8 *)a1
{
  v3 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = _UIAfterCACommitBlock;
    v4 = objc_msgSendSuper2(&v9, sel_init);
    a1 = v4;
    if (v4)
    {
      v5 = *(v4 + 1);
      *(v4 + 1) = 0;

      v6 = [v3 copy];
      v7 = *(a1 + 2);
      *(a1 + 2) = v6;

      atomic_store(0, a1 + 24);
    }
  }

  return a1;
}

@end