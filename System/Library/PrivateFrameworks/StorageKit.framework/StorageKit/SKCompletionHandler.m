@interface SKCompletionHandler
- (SKCompletionHandler)initWithCompletionBlock:(id)a3 progressBlock:(id)a4 function:(const char *)a5;
@end

@implementation SKCompletionHandler

- (SKCompletionHandler)initWithCompletionBlock:(id)a3 progressBlock:(id)a4 function:(const char *)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = SKCompletionHandler;
  v10 = [(SKCompletionHandler *)&v16 init];
  if (v10)
  {
    v11 = _Block_copy(v8);
    completionBlock = v10->_completionBlock;
    v10->_completionBlock = v11;

    v13 = _Block_copy(v9);
    progressBlock = v10->_progressBlock;
    v10->_progressBlock = v13;

    v10->_functionName = a5;
  }

  return v10;
}

@end