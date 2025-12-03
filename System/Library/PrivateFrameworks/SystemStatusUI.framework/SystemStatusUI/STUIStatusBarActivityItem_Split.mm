@interface STUIStatusBarActivityItem_Split
- (STUIStatusBarActivityIndicator)syncStartView;
- (STUIStatusBarActivityView)activityView;
- (UIEdgeInsets)activityIndicatorAlignmentRectInsets;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_activityView;
- (void)_create_syncStartView;
@end

@implementation STUIStatusBarActivityItem_Split

- (UIEdgeInsets)activityIndicatorAlignmentRectInsets
{
  v2 = 2.66666667;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v2;
  result.left = v4;
  result.top = v3;
  return result;
}

- (STUIStatusBarActivityView)activityView
{
  activityView = self->_activityView;
  if (!activityView)
  {
    [(STUIStatusBarActivityItem_Split *)self _create_activityView];
    activityView = self->_activityView;
  }

  return activityView;
}

- (void)_create_activityView
{
  v3 = [STUIStatusBarActivityView alloc];
  v4 = [(STUIStatusBarActivityView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  activityView = self->_activityView;
  self->_activityView = v4;

  MEMORY[0x2821F96F8](v4, activityView);
}

- (STUIStatusBarActivityIndicator)syncStartView
{
  syncStartView = self->_syncStartView;
  if (!syncStartView)
  {
    [(STUIStatusBarActivityItem_Split *)self _create_syncStartView];
    syncStartView = self->_syncStartView;
  }

  return syncStartView;
}

- (void)_create_syncStartView
{
  v3 = [STUIStatusBarActivityIndicator alloc];
  v4 = [(STUIStatusBarActivityIndicator *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  syncStartView = self->_syncStartView;
  self->_syncStartView = v4;

  v6 = self->_syncStartView;

  [(STUIStatusBarActivityIndicator *)v6 setActivityIndicatorViewStyle:12];
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  syncStartDisplayIdentifier = [objc_opt_class() syncStartDisplayIdentifier];

  if (syncStartDisplayIdentifier == identifierCopy)
  {
    syncStartView = [(STUIStatusBarActivityItem_Split *)self syncStartView];
  }

  else
  {
    pillDisplayIdentifier = [objc_opt_class() pillDisplayIdentifier];

    if (pillDisplayIdentifier == identifierCopy)
    {
      syncStartView = [(STUIStatusBarActivityItem_Split *)self activityView];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = STUIStatusBarActivityItem_Split;
      syncStartView = [(STUIStatusBarActivityItem *)&v10 viewForIdentifier:identifierCopy];
    }
  }

  v8 = syncStartView;

  return v8;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = STUIStatusBarActivityItem_Split;
  v8 = [(STUIStatusBarActivityItem *)&v20 applyUpdate:updateCopy toDisplayItem:itemCopy];
  if ([updateCopy dataChanged])
  {
    data = [updateCopy data];
    activityEntry = [data activityEntry];
    type = [activityEntry type];

    identifier = [itemCopy identifier];
    syncStartDisplayIdentifier = [objc_opt_class() syncStartDisplayIdentifier];

    if (identifier != syncStartDisplayIdentifier)
    {
      identifier2 = [itemCopy identifier];
      pillDisplayIdentifier = [objc_opt_class() pillDisplayIdentifier];

      if (identifier2 != pillDisplayIdentifier)
      {
        goto LABEL_9;
      }

      activityView = [(STUIStatusBarActivityItem_Split *)self activityView];
      [activityView setIsSlow:(type >> 1) & 1];
      goto LABEL_7;
    }

    if ([(STUIStatusBarActivityItem_SyncOnly *)self _enableForType:type])
    {
      [itemCopy setViewAlpha:0.8];
      v17 = dbl_26C582300[(type & 2) == 0];
      syncStartView = [(STUIStatusBarActivityItem_Split *)self syncStartView];
      [syncStartView setAnimationDuration:v17];

      activityView = [(STUIStatusBarActivityItem_Split *)self syncStartView];
      [activityView startAnimating];
LABEL_7:

      goto LABEL_9;
    }

    [itemCopy setEnabled:0];
  }

LABEL_9:

  return v8;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pillDisplayIdentifier = [objc_opt_class() pillDisplayIdentifier];

  if (pillDisplayIdentifier == identifierCopy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __81__STUIStatusBarActivityItem_Split_additionAnimationForDisplayItemWithIdentifier___block_invoke;
    v10[3] = &unk_279D38AC0;
    v10[4] = self;
    v6 = [STUIStatusBarAnimation animationWithBlock:v10];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarActivityItem_Split;
    v6 = [(STUIStatusBarItem *)&v9 additionAnimationForDisplayItemWithIdentifier:identifierCopy];
  }

  v7 = v6;

  return v7;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pillDisplayIdentifier = [objc_opt_class() pillDisplayIdentifier];

  if (pillDisplayIdentifier == identifierCopy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __80__STUIStatusBarActivityItem_Split_removalAnimationForDisplayItemWithIdentifier___block_invoke;
    v10[3] = &unk_279D38AC0;
    v10[4] = self;
    v6 = [STUIStatusBarAnimation animationWithBlock:v10];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarActivityItem_Split;
    v6 = [(STUIStatusBarItem *)&v9 removalAnimationForDisplayItemWithIdentifier:identifierCopy];
  }

  v7 = v6;

  return v7;
}

@end