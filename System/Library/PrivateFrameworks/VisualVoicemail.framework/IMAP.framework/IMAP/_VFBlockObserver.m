@interface _VFBlockObserver
- (_VFBlockObserver)initWithResultBlock:(id)a3 completionBlock:(id)a4 failureBlock:(id)a5;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)a3;
- (void)observerDidReceiveResult:(id)a3;
@end

@implementation _VFBlockObserver

- (_VFBlockObserver)initWithResultBlock:(id)a3 completionBlock:(id)a4 failureBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _VFBlockObserver;
  v11 = [(_VFBlockObserver *)&v19 init];
  if (v11)
  {
    v12 = MEMORY[0x2743C3100](v8);
    resultBlock = v11->_resultBlock;
    v11->_resultBlock = v12;

    v14 = MEMORY[0x2743C3100](v9);
    completionBlock = v11->_completionBlock;
    v11->_completionBlock = v14;

    v16 = MEMORY[0x2743C3100](v10);
    failureBlock = v11->_failureBlock;
    v11->_failureBlock = v16;
  }

  return v11;
}

- (void)observerDidReceiveResult:(id)a3
{
  resultBlock = self->_resultBlock;
  if (resultBlock)
  {
    resultBlock[2](resultBlock, a3);
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

- (void)observerDidFailWithError:(id)a3
{
  failureBlock = self->_failureBlock;
  if (failureBlock)
  {
    failureBlock[2](failureBlock, a3);
  }
}

@end