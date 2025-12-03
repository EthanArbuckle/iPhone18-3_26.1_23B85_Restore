@interface SKCompletionHandler
- (SKCompletionHandler)initWithCompletionBlock:(id)block progressBlock:(id)progressBlock function:(const char *)function;
@end

@implementation SKCompletionHandler

- (SKCompletionHandler)initWithCompletionBlock:(id)block progressBlock:(id)progressBlock function:(const char *)function
{
  blockCopy = block;
  progressBlockCopy = progressBlock;
  v16.receiver = self;
  v16.super_class = SKCompletionHandler;
  v10 = [(SKCompletionHandler *)&v16 init];
  if (v10)
  {
    v11 = _Block_copy(blockCopy);
    completionBlock = v10->_completionBlock;
    v10->_completionBlock = v11;

    v13 = _Block_copy(progressBlockCopy);
    progressBlock = v10->_progressBlock;
    v10->_progressBlock = v13;

    v10->_functionName = function;
  }

  return v10;
}

@end