@interface _UIStatusBarActivityItem_Split
- (UIEdgeInsets)activityIndicatorAlignmentRectInsets;
- (_UIStatusBarActivityIndicator)syncStartView;
- (_UIStatusBarActivityView)activityView;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_activityView;
- (void)_create_syncStartView;
@end

@implementation _UIStatusBarActivityItem_Split

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

- (_UIStatusBarActivityView)activityView
{
  activityView = self->_activityView;
  if (!activityView)
  {
    [(_UIStatusBarActivityItem_Split *)self _create_activityView];
    activityView = self->_activityView;
  }

  return activityView;
}

- (void)_create_activityView
{
  v3 = [_UIStatusBarActivityView alloc];
  v4 = [(_UIStatusBarActivityView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  activityView = self->_activityView;
  self->_activityView = v4;
}

- (_UIStatusBarActivityIndicator)syncStartView
{
  syncStartView = self->_syncStartView;
  if (!syncStartView)
  {
    [(_UIStatusBarActivityItem_Split *)self _create_syncStartView];
    syncStartView = self->_syncStartView;
  }

  return syncStartView;
}

- (void)_create_syncStartView
{
  v3 = [_UIStatusBarActivityIndicator alloc];
  v4 = [(UIActivityIndicatorView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  syncStartView = self->_syncStartView;
  self->_syncStartView = v4;

  v6 = self->_syncStartView;

  [(UIActivityIndicatorView *)v6 setActivityIndicatorViewStyle:12];
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  syncStartDisplayIdentifier = [objc_opt_class() syncStartDisplayIdentifier];

  if (syncStartDisplayIdentifier == identifierCopy)
  {
    syncStartView = [(_UIStatusBarActivityItem_Split *)self syncStartView];
  }

  else
  {
    pillDisplayIdentifier = [objc_opt_class() pillDisplayIdentifier];

    if (pillDisplayIdentifier == identifierCopy)
    {
      syncStartView = [(_UIStatusBarActivityItem_Split *)self activityView];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = _UIStatusBarActivityItem_Split;
      syncStartView = [(_UIStatusBarActivityItem *)&v10 viewForIdentifier:identifierCopy];
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
  v20.super_class = _UIStatusBarActivityItem_Split;
  v8 = [(_UIStatusBarActivityItem *)&v20 applyUpdate:updateCopy toDisplayItem:itemCopy];
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

      activityView = [(_UIStatusBarActivityItem_Split *)self activityView];
      [activityView setIsSlow:(type >> 1) & 1];
      goto LABEL_7;
    }

    if ([(_UIStatusBarActivityItem_SyncOnly *)self _enableForType:type])
    {
      [itemCopy setViewAlpha:0.8];
      v17 = dbl_18A681690[(type & 2) == 0];
      syncStartView = [(_UIStatusBarActivityItem_Split *)self syncStartView];
      [syncStartView setAnimationDuration:v17];

      activityView = [(_UIStatusBarActivityItem_Split *)self syncStartView];
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
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __80___UIStatusBarActivityItem_Split_additionAnimationForDisplayItemWithIdentifier___block_invoke;
    v10[3] = &unk_1E711F828;
    v10[4] = self;
    v6 = [_UIStatusBarAnimation animationWithBlock:v10];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIStatusBarActivityItem_Split;
    v6 = [(_UIStatusBarItem *)&v9 additionAnimationForDisplayItemWithIdentifier:identifierCopy];
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
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79___UIStatusBarActivityItem_Split_removalAnimationForDisplayItemWithIdentifier___block_invoke;
    v10[3] = &unk_1E711F828;
    v10[4] = self;
    v6 = [_UIStatusBarAnimation animationWithBlock:v10];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIStatusBarActivityItem_Split;
    v6 = [(_UIStatusBarItem *)&v9 removalAnimationForDisplayItemWithIdentifier:identifierCopy];
  }

  v7 = v6;

  return v7;
}

@end