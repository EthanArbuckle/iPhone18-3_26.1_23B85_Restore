@interface _VFBlockObserver
- (_VFBlockObserver)initWithResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)error;
- (void)observerDidReceiveResult:(id)result;
@end

@implementation _VFBlockObserver

- (_VFBlockObserver)initWithResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  failureBlockCopy = failureBlock;
  v19.receiver = self;
  v19.super_class = _VFBlockObserver;
  v11 = [(_VFBlockObserver *)&v19 init];
  if (v11)
  {
    v12 = MEMORY[0x2743C3100](blockCopy);
    resultBlock = v11->_resultBlock;
    v11->_resultBlock = v12;

    v14 = MEMORY[0x2743C3100](completionBlockCopy);
    completionBlock = v11->_completionBlock;
    v11->_completionBlock = v14;

    v16 = MEMORY[0x2743C3100](failureBlockCopy);
    failureBlock = v11->_failureBlock;
    v11->_failureBlock = v16;
  }

  return v11;
}

- (void)observerDidReceiveResult:(id)result
{
  resultBlock = self->_resultBlock;
  if (resultBlock)
  {
    resultBlock[2](resultBlock, result);
  }
}

- (void)observerDidComplete
{
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2]();
  }
}

- (void)observerDidFailWithError:(id)error
{
  failureBlock = self->_failureBlock;
  if (failureBlock)
  {
    failureBlock[2](failureBlock, error);
  }
}

@end