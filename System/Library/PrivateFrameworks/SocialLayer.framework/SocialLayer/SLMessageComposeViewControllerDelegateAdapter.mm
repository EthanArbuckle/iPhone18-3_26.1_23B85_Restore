@interface SLMessageComposeViewControllerDelegateAdapter
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
@end

@implementation SLMessageComposeViewControllerDelegateAdapter

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  resultHandler = [(SLMessageComposeViewControllerDelegateAdapter *)self resultHandler];

  if (resultHandler)
  {
    resultHandler2 = [(SLMessageComposeViewControllerDelegateAdapter *)self resultHandler];
    (resultHandler2)[2](resultHandler2, controllerCopy, result);
  }
}

@end