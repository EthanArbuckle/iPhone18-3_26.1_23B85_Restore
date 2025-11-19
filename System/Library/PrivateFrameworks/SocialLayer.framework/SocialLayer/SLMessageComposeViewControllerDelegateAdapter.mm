@interface SLMessageComposeViewControllerDelegateAdapter
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
@end

@implementation SLMessageComposeViewControllerDelegateAdapter

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v8 = a3;
  v6 = [(SLMessageComposeViewControllerDelegateAdapter *)self resultHandler];

  if (v6)
  {
    v7 = [(SLMessageComposeViewControllerDelegateAdapter *)self resultHandler];
    (v7)[2](v7, v8, a4);
  }
}

@end