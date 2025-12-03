@interface TSKUIAlertViewCompletionHandlerDelegate
- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index;
- (void)dealloc;
@end

@implementation TSKUIAlertViewCompletionHandlerDelegate

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKUIAlertViewCompletionHandlerDelegate;
  [(TSKUIAlertViewCompletionHandlerDelegate *)&v3 dealloc];
}

- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index
{
  completionHandler = [(TSKUIAlertViewCompletionHandlerDelegate *)self completionHandler];
  if (completionHandler)
  {
    v5 = completionHandler[2];

    v5();
  }
}

@end