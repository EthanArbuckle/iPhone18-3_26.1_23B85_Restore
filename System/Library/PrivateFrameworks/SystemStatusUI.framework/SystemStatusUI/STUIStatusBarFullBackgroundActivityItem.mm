@interface STUIStatusBarFullBackgroundActivityItem
- (STUIStatusBarStringView)detailStringView;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_backgroundView;
- (void)_create_detailStringView;
@end

@implementation STUIStatusBarFullBackgroundActivityItem

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  itemCopy = item;
  v19.receiver = self;
  v19.super_class = STUIStatusBarFullBackgroundActivityItem;
  updateCopy = update;
  v8 = [(STUIStatusBarBackgroundActivityItem *)&v19 applyUpdate:updateCopy toDisplayItem:itemCopy];
  data = [updateCopy data];
  backgroundActivityEntry = [data backgroundActivityEntry];

  LODWORD(data) = [updateCopy dataChanged];
  if (data)
  {
    identifier = [itemCopy identifier];
    detailDisplayIdentifier = [objc_opt_class() detailDisplayIdentifier];

    if (identifier == detailDisplayIdentifier)
    {
      detailString = [backgroundActivityEntry detailString];
      if ([itemCopy isEnabled])
      {
        v17 = [detailString length] != 0;
      }

      else
      {
        v17 = 0;
      }

      [itemCopy setEnabled:v17];
      if (![itemCopy isEnabled])
      {
        goto LABEL_11;
      }

      detailStringView = [(STUIStatusBarFullBackgroundActivityItem *)self detailStringView];
      [detailStringView setText:detailString];
    }

    else
    {
      detailString = [backgroundActivityEntry backgroundActivityIdentifier];
      identifier2 = [itemCopy identifier];
      backgroundDisplayIdentifier = [objc_opt_class() backgroundDisplayIdentifier];

      if (identifier2 != backgroundDisplayIdentifier)
      {
LABEL_11:

        goto LABEL_12;
      }

      detailStringView = [STUIStatusBarActivityAction actionForBackgroundActivityWithIdentifier:detailString];
      [itemCopy setAction:detailStringView];
    }

    goto LABEL_11;
  }

LABEL_12:

  return v8;
}

- (STUIStatusBarStringView)detailStringView
{
  detailStringView = self->_detailStringView;
  if (!detailStringView)
  {
    [(STUIStatusBarFullBackgroundActivityItem *)self _create_detailStringView];
    detailStringView = self->_detailStringView;
  }

  return detailStringView;
}

- (void)_create_detailStringView
{
  v3 = [STUIStatusBarStringView alloc];
  v4 = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  detailStringView = self->_detailStringView;
  self->_detailStringView = v4;

  MEMORY[0x2821F96F8](v4, detailStringView);
}

- (void)_create_backgroundView
{
  v4.receiver = self;
  v4.super_class = STUIStatusBarFullBackgroundActivityItem;
  [(STUIStatusBarBackgroundActivityItem *)&v4 _create_backgroundView];
  backgroundView = [(STUIStatusBarBackgroundActivityItem *)self backgroundView];
  [backgroundView setCornerRadius:0.0];
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  detailDisplayIdentifier = [objc_opt_class() detailDisplayIdentifier];

  if (detailDisplayIdentifier == identifierCopy)
  {
    detailStringView = [(STUIStatusBarFullBackgroundActivityItem *)self detailStringView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarFullBackgroundActivityItem;
    detailStringView = [(STUIStatusBarBackgroundActivityItem *)&v9 viewForIdentifier:identifierCopy];
  }

  v7 = detailStringView;

  return v7;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  backgroundDisplayIdentifier = [objc_opt_class() backgroundDisplayIdentifier];

  if (backgroundDisplayIdentifier == identifierCopy)
  {
    v8 = _STUIStatusBar_BackgroundActivity_Log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26C4DD000, v8, OS_LOG_TYPE_DEFAULT, "Adding full display background activity item view", buf, 2u);
    }

    v7 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:0.5];
  }

  else
  {
    detailDisplayIdentifier = [objc_opt_class() detailDisplayIdentifier];

    if (detailDisplayIdentifier == identifierCopy)
    {
      v9 = _STUIStatusBar_BackgroundActivity_Log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26C4DD000, v9, OS_LOG_TYPE_DEFAULT, "Adding full display detail background activity item view", buf, 2u);
      }

      v7 = +[STUIStatusBarAnimationFactory noAnimation];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = STUIStatusBarFullBackgroundActivityItem;
      v7 = [(STUIStatusBarBackgroundActivityItem *)&v12 additionAnimationForDisplayItemWithIdentifier:identifierCopy];
    }
  }

  v10 = v7;

  return v10;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  backgroundDisplayIdentifier = [objc_opt_class() backgroundDisplayIdentifier];

  if (backgroundDisplayIdentifier == identifierCopy)
  {
    v8 = _STUIStatusBar_BackgroundActivity_Log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Removing full display background activity item view";
LABEL_8:
      _os_log_impl(&dword_26C4DD000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    }
  }

  else
  {
    detailDisplayIdentifier = [objc_opt_class() detailDisplayIdentifier];

    if (detailDisplayIdentifier != identifierCopy)
    {
      v12.receiver = self;
      v12.super_class = STUIStatusBarFullBackgroundActivityItem;
      v7 = [(STUIStatusBarBackgroundActivityItem *)&v12 removalAnimationForDisplayItemWithIdentifier:identifierCopy];
      goto LABEL_10;
    }

    v8 = _STUIStatusBar_BackgroundActivity_Log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Removing full display detail background activity item view";
      goto LABEL_8;
    }
  }

  v7 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:0.5];
LABEL_10:
  v10 = v7;

  return v10;
}

@end