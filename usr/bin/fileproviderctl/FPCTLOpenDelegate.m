@interface FPCTLOpenDelegate
- (void)openResourceOperation:(id)a3 didFailWithError:(id)a4;
- (void)openResourceOperationDidComplete:(id)a3;
@end

@implementation FPCTLOpenDelegate

- (void)openResourceOperationDidComplete:(id)a3
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 0);
  }
}

- (void)openResourceOperation:(id)a3 didFailWithError:(id)a4
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, a4);
  }
}

@end