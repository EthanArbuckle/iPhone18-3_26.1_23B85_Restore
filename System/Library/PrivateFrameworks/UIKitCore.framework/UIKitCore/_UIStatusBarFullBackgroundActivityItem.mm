@interface _UIStatusBarFullBackgroundActivityItem
- (_UIStatusBarStringView)detailStringView;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_backgroundView;
- (void)_create_detailStringView;
@end

@implementation _UIStatusBarFullBackgroundActivityItem

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = _UIStatusBarFullBackgroundActivityItem;
  updateCopy = update;
  v8 = [(_UIStatusBarBackgroundActivityItem *)&v20 applyUpdate:updateCopy toDisplayItem:itemCopy];
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
      if ([itemCopy isEnabled])
      {
        detailStringView = [(_UIStatusBarFullBackgroundActivityItem *)self detailStringView];
        [detailStringView setText:detailString];
      }
    }

    else
    {
      type = [backgroundActivityEntry type];
      identifier2 = [itemCopy identifier];
      backgroundDisplayIdentifier = [objc_opt_class() backgroundDisplayIdentifier];

      if (identifier2 != backgroundDisplayIdentifier)
      {
        goto LABEL_11;
      }

      detailString = [_UIStatusBarActivityAction actionForBackgroundActivityType:type];
      [itemCopy setAction:detailString];
    }
  }

LABEL_11:

  return v8;
}

- (_UIStatusBarStringView)detailStringView
{
  detailStringView = self->_detailStringView;
  if (!detailStringView)
  {
    [(_UIStatusBarFullBackgroundActivityItem *)self _create_detailStringView];
    detailStringView = self->_detailStringView;
  }

  return detailStringView;
}

- (void)_create_detailStringView
{
  v3 = [_UIStatusBarStringView alloc];
  v4 = [(_UIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  detailStringView = self->_detailStringView;
  self->_detailStringView = v4;
}

- (void)_create_backgroundView
{
  v4.receiver = self;
  v4.super_class = _UIStatusBarFullBackgroundActivityItem;
  [(_UIStatusBarBackgroundActivityItem *)&v4 _create_backgroundView];
  backgroundView = [(_UIStatusBarBackgroundActivityItem *)self backgroundView];
  [backgroundView setCornerRadius:0.0];
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  detailDisplayIdentifier = [objc_opt_class() detailDisplayIdentifier];

  if (detailDisplayIdentifier == identifierCopy)
  {
    detailStringView = [(_UIStatusBarFullBackgroundActivityItem *)self detailStringView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIStatusBarFullBackgroundActivityItem;
    detailStringView = [(_UIStatusBarBackgroundActivityItem *)&v9 viewForIdentifier:identifierCopy];
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
    v8 = _UIStatusBar_Log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Adding full display background activity item view", buf, 2u);
    }

    v7 = [_UIStatusBarAnimationFactory fadeAnimationWithDuration:0.5];
  }

  else
  {
    detailDisplayIdentifier = [objc_opt_class() detailDisplayIdentifier];

    if (detailDisplayIdentifier == identifierCopy)
    {
      v9 = _UIStatusBar_Log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Adding full display detail background activity item view", buf, 2u);
      }

      v7 = +[_UIStatusBarAnimationFactory noAnimation];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = _UIStatusBarFullBackgroundActivityItem;
      v7 = [(_UIStatusBarBackgroundActivityItem *)&v12 additionAnimationForDisplayItemWithIdentifier:identifierCopy];
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
    v8 = _UIStatusBar_Log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Removing full display background activity item view";
LABEL_8:
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    }
  }

  else
  {
    detailDisplayIdentifier = [objc_opt_class() detailDisplayIdentifier];

    if (detailDisplayIdentifier != identifierCopy)
    {
      v12.receiver = self;
      v12.super_class = _UIStatusBarFullBackgroundActivityItem;
      v7 = [(_UIStatusBarBackgroundActivityItem *)&v12 removalAnimationForDisplayItemWithIdentifier:identifierCopy];
      goto LABEL_10;
    }

    v8 = _UIStatusBar_Log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Removing full display detail background activity item view";
      goto LABEL_8;
    }
  }

  v7 = [_UIStatusBarAnimationFactory fadeAnimationWithDuration:0.5];
LABEL_10:
  v10 = v7;

  return v10;
}

@end