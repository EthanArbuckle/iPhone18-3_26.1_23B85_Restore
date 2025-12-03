@interface FPCTLOpenDelegate
- (void)openResourceOperation:(id)operation didFailWithError:(id)error;
- (void)openResourceOperationDidComplete:(id)complete;
@end

@implementation FPCTLOpenDelegate

- (void)openResourceOperationDidComplete:(id)complete
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 0);
  }
}

- (void)openResourceOperation:(id)operation didFailWithError:(id)error
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, error);
  }
}

@end