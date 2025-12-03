@interface _PXCompletionHandlerManager
- (_PXCompletionHandlerManager)init;
- (_PXCompletionHandlerManagerDelegate)delegate;
- (void)_handleTimeoutOfCompletionHandler:(id)handler;
- (void)addCompletionHandler:(id)handler;
- (void)callCompletionHandlers;
@end

@implementation _PXCompletionHandlerManager

- (_PXCompletionHandlerManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)callCompletionHandlers
{
  completionHandlers = self->_completionHandlers;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53___PXCompletionHandlerManager_callCompletionHandlers__block_invoke;
  v5[3] = &unk_1E772F6B8;
  v5[4] = self;
  [(NSMutableArray *)completionHandlers enumerateObjectsUsingBlock:v5];
  [(NSMutableArray *)self->_completionHandlers removeAllObjects];
  delegate = [(_PXCompletionHandlerManager *)self delegate];
  [delegate didCallLastCompletionHandlerForCompletionHandlerManager:self];
}

- (void)addCompletionHandler:(id)handler
{
  aBlock = [handler copy];
  v4 = _Block_copy(aBlock);
  [(_PXCompletionHandlerManager *)self performSelector:sel__handleTimeoutOfCompletionHandler_ withObject:v4 afterDelay:10.0];

  completionHandlers = self->_completionHandlers;
  v6 = _Block_copy(aBlock);
  [(NSMutableArray *)completionHandlers addObject:v6];
}

- (void)_handleTimeoutOfCompletionHandler:(id)handler
{
  v4 = *(handler + 2);
  handlerCopy = handler;
  v4();
  completionHandlers = self->_completionHandlers;
  v7 = _Block_copy(handlerCopy);

  [(NSMutableArray *)completionHandlers removeObject:v7];
  if (![(NSMutableArray *)self->_completionHandlers count])
  {
    delegate = [(_PXCompletionHandlerManager *)self delegate];
    [delegate didCallLastCompletionHandlerForCompletionHandlerManager:self];
  }
}

- (_PXCompletionHandlerManager)init
{
  v6.receiver = self;
  v6.super_class = _PXCompletionHandlerManager;
  v2 = [(_PXCompletionHandlerManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v3;
  }

  return v2;
}

@end