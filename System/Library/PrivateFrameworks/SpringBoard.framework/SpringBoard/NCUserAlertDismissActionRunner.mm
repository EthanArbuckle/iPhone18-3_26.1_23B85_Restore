@interface NCUserAlertDismissActionRunner
- (void)executeAction:(id)action fromOrigin:(id)origin endpoint:(id)endpoint withParameters:(id)parameters completion:(id)completion;
@end

@implementation NCUserAlertDismissActionRunner

- (void)executeAction:(id)action fromOrigin:(id)origin endpoint:(id)endpoint withParameters:(id)parameters completion:(id)completion
{
  completionCopy = completion;
  alertItem = [(NCUserAlertActionRunner *)self alertItem];
  v9 = alertItem;
  if (alertItem)
  {
    [alertItem deactivate];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

@end