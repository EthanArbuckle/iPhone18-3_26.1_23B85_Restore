@interface SBInsecureDrawingAlertItemTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBInsecureDrawingAlertItemTestRecipe

- (void)handleVolumeIncrease
{
  if (!self->_alertItem)
  {
    v3 = objc_alloc_init(SBInsecureDrawingAlertItem);
    alertItem = self->_alertItem;
    self->_alertItem = v3;

    [(SBInsecureDrawingAlertItem *)self->_alertItem setProcessName:@"Test Process"];
  }

  v5 = +[SBAlertItemsController sharedInstance];
  [v5 activateAlertItem:self->_alertItem];
}

- (void)handleVolumeDecrease
{
  if (self->_alertItem)
  {
    v3 = +[SBAlertItemsController sharedInstance];
    [v3 deactivateAlertItem:self->_alertItem];

    alertItem = self->_alertItem;
    self->_alertItem = 0;
  }
}

@end