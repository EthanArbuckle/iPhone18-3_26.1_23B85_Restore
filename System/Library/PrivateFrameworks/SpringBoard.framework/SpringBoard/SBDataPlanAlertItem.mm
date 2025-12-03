@interface SBDataPlanAlertItem
- (void)didDeactivateForReason:(int)reason;
@end

@implementation SBDataPlanAlertItem

- (void)didDeactivateForReason:(int)reason
{
  v3 = *&reason;
  if (SBAlertItemIsUserDeactivate())
  {
    alertController = [(SBAlertItem *)self alertController];
    actions = [alertController actions];
    v7 = [actions count];

    if (!v7)
    {
      v8 = +[SBAlertItemsController sharedInstance];
      [v8 activateAlertItem:self];
    }
  }

  v9.receiver = self;
  v9.super_class = SBDataPlanAlertItem;
  [(SBAlertItem *)&v9 didDeactivateForReason:v3];
}

@end