@interface _UIStatusBarFullBackgroundActivityItem
- (_UIStatusBarStringView)detailStringView;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3;
- (id)viewForIdentifier:(id)a3;
- (void)_create_backgroundView;
- (void)_create_detailStringView;
@end

@implementation _UIStatusBarFullBackgroundActivityItem

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a4;
  v20.receiver = self;
  v20.super_class = _UIStatusBarFullBackgroundActivityItem;
  v7 = a3;
  v8 = [(_UIStatusBarBackgroundActivityItem *)&v20 applyUpdate:v7 toDisplayItem:v6];
  v9 = [v7 data];
  v10 = [v9 backgroundActivityEntry];

  LODWORD(v9) = [v7 dataChanged];
  if (v9)
  {
    v11 = [v6 identifier];
    v12 = [objc_opt_class() detailDisplayIdentifier];

    if (v11 == v12)
    {
      v16 = [v10 detailString];
      if ([v6 isEnabled])
      {
        v17 = [v16 length] != 0;
      }

      else
      {
        v17 = 0;
      }

      [v6 setEnabled:v17];
      if ([v6 isEnabled])
      {
        v18 = [(_UIStatusBarFullBackgroundActivityItem *)self detailStringView];
        [v18 setText:v16];
      }
    }

    else
    {
      v13 = [v10 type];
      v14 = [v6 identifier];
      v15 = [objc_opt_class() backgroundDisplayIdentifier];

      if (v14 != v15)
      {
        goto LABEL_11;
      }

      v16 = [_UIStatusBarActivityAction actionForBackgroundActivityType:v13];
      [v6 setAction:v16];
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
  v3 = [(_UIStatusBarBackgroundActivityItem *)self backgroundView];
  [v3 setCornerRadius:0.0];
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() detailDisplayIdentifier];

  if (v5 == v4)
  {
    v6 = [(_UIStatusBarFullBackgroundActivityItem *)self detailStringView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIStatusBarFullBackgroundActivityItem;
    v6 = [(_UIStatusBarBackgroundActivityItem *)&v9 viewForIdentifier:v4];
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
    v6 = [objc_opt_class() detailDisplayIdentifier];

    if (v6 == v4)
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
      v7 = [(_UIStatusBarBackgroundActivityItem *)&v12 additionAnimationForDisplayItemWithIdentifier:v4];
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
    v6 = [objc_opt_class() detailDisplayIdentifier];

    if (v6 != v4)
    {
      v12.receiver = self;
      v12.super_class = _UIStatusBarFullBackgroundActivityItem;
      v7 = [(_UIStatusBarBackgroundActivityItem *)&v12 removalAnimationForDisplayItemWithIdentifier:v4];
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