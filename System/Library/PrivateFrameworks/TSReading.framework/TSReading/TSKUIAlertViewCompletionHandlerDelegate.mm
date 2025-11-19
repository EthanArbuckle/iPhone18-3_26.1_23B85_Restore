@interface TSKUIAlertViewCompletionHandlerDelegate
- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4;
- (void)dealloc;
@end

@implementation TSKUIAlertViewCompletionHandlerDelegate

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKUIAlertViewCompletionHandlerDelegate;
  [(TSKUIAlertViewCompletionHandlerDelegate *)&v3 dealloc];
}

- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4
{
  v4 = [(TSKUIAlertViewCompletionHandlerDelegate *)self completionHandler];
  if (v4)
  {
    v5 = v4[2];

    v5();
  }
}

@end