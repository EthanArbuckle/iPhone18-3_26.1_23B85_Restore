@interface SBDataPlanAlertItem
- (void)didDeactivateForReason:(int)a3;
@end

@implementation SBDataPlanAlertItem

- (void)didDeactivateForReason:(int)a3
{
  v3 = *&a3;
  if (SBAlertItemIsUserDeactivate())
  {
    v5 = [(SBAlertItem *)self alertController];
    v6 = [v5 actions];
    v7 = [v6 count];

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