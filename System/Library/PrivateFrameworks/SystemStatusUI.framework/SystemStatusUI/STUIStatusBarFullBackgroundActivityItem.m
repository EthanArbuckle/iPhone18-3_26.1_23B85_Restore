@interface STUIStatusBarFullBackgroundActivityItem
- (STUIStatusBarStringView)detailStringView;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3;
- (id)viewForIdentifier:(id)a3;
- (void)_create_backgroundView;
- (void)_create_detailStringView;
@end

@implementation STUIStatusBarFullBackgroundActivityItem

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a4;
  v19.receiver = self;
  v19.super_class = STUIStatusBarFullBackgroundActivityItem;
  v7 = a3;
  v8 = [(STUIStatusBarBackgroundActivityItem *)&v19 applyUpdate:v7 toDisplayItem:v6];
  v9 = [v7 data];
  v10 = [v9 backgroundActivityEntry];

  LODWORD(v9) = [v7 dataChanged];
  if (v9)
  {
    v11 = [v6 identifier];
    v12 = [objc_opt_class() detailDisplayIdentifier];

    if (v11 == v12)
    {
      v13 = [v10 detailString];
      if ([v6 isEnabled])
      {
        v17 = [v13 length] != 0;
      }

      else
      {
        v17 = 0;
      }

      [v6 setEnabled:v17];
      if (![v6 isEnabled])
      {
        goto LABEL_11;
      }

      v16 = [(STUIStatusBarFullBackgroundActivityItem *)self detailStringView];
      [v16 setText:v13];
    }

    else
    {
      v13 = [v10 backgroundActivityIdentifier];
      v14 = [v6 identifier];
      v15 = [objc_opt_class() backgroundDisplayIdentifier];

      if (v14 != v15)
      {
LABEL_11:

        goto LABEL_12;
      }

      v16 = [STUIStatusBarActivityAction actionForBackgroundActivityWithIdentifier:v13];
      [v6 setAction:v16];
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
  v3 = [(STUIStatusBarBackgroundActivityItem *)self backgroundView];
  [v3 setCornerRadius:0.0];
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() detailDisplayIdentifier];

  if (v5 == v4)
  {
    v6 = [(STUIStatusBarFullBackgroundActivityItem *)self detailStringView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarFullBackgroundActivityItem;
    v6 = [(STUIStatusBarBackgroundActivityItem *)&v9 viewForIdentifier:v4];
  }

  v7 = v6;

  return v7;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() backgroundDisplayIdentifier];

  if (v5 == v4)
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
    v6 = [objc_opt_class() detailDisplayIdentifier];

    if (v6 == v4)
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
      v7 = [(STUIStatusBarBackgroundActivityItem *)&v12 additionAnimationForDisplayItemWithIdentifier:v4];
    }
  }

  v10 = v7;

  return v10;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() backgroundDisplayIdentifier];

  if (v5 == v4)
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
    v6 = [objc_opt_class() detailDisplayIdentifier];

    if (v6 != v4)
    {
      v12.receiver = self;
      v12.super_class = STUIStatusBarFullBackgroundActivityItem;
      v7 = [(STUIStatusBarBackgroundActivityItem *)&v12 removalAnimationForDisplayItemWithIdentifier:v4];
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