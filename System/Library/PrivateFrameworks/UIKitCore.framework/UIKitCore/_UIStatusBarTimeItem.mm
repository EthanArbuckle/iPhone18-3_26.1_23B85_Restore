@interface _UIStatusBarTimeItem
- (_UIStatusBarStringView)dateView;
- (_UIStatusBarStringView)pillTimeView;
- (_UIStatusBarStringView)shortTimeView;
- (_UIStatusBarStringView)timeView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)viewForIdentifier:(id)a3;
- (void)_create_dateView;
- (void)_create_pillTimeView;
- (void)_create_shortTimeView;
- (void)_create_timeView;
@end

@implementation _UIStatusBarTimeItem

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v40.receiver = self;
  v40.super_class = _UIStatusBarTimeItem;
  v8 = [(_UIStatusBarItem *)&v40 applyUpdate:v6 toDisplayItem:v7];
  if ([v6 dataChanged])
  {
    v9 = [v7 identifier];
    v10 = [objc_opt_class() timeDisplayIdentifier];
    v11 = v10;
    if (v9 == v10)
    {
      v24 = [v6 data];
      v25 = [v24 timeEntry];

      if (v25)
      {
        if ([v7 isEnabled])
        {
          v26 = [v6 data];
          v27 = [v26 timeEntry];
          [v7 setEnabled:{objc_msgSend(v27, "isEnabled")}];
        }

        else
        {
          [v7 setEnabled:0];
        }

        if (![v7 isEnabled])
        {
          goto LABEL_35;
        }

        v18 = [v6 data];
        v19 = [v18 timeEntry];
        v36 = [v19 stringValue];
        v37 = [(_UIStatusBarTimeItem *)self timeView];
        goto LABEL_33;
      }
    }

    else
    {
    }

    v12 = [v7 identifier];
    v13 = [objc_opt_class() shortTimeDisplayIdentifier];
    v14 = v13;
    if (v12 == v13)
    {
      v28 = [v6 data];
      v29 = [v28 shortTimeEntry];

      if (v29)
      {
        if ([v7 isEnabled])
        {
          v30 = [v6 data];
          v31 = [v30 shortTimeEntry];
          [v7 setEnabled:{objc_msgSend(v31, "isEnabled")}];
        }

        else
        {
          [v7 setEnabled:0];
        }

        if (![v7 isEnabled])
        {
          goto LABEL_35;
        }

        v18 = [v6 data];
        v19 = [v18 shortTimeEntry];
        v36 = [v19 stringValue];
        v37 = [(_UIStatusBarTimeItem *)self shortTimeView];
        goto LABEL_33;
      }
    }

    else
    {
    }

    v15 = [v7 identifier];
    v16 = [objc_opt_class() pillTimeDisplayIdentifier];
    v17 = v16;
    if (v15 == v16)
    {
      v32 = [v6 data];
      v33 = [v32 shortTimeEntry];

      if (v33)
      {
        if ([v7 isEnabled])
        {
          v34 = [v6 data];
          v35 = [v34 shortTimeEntry];
          [v7 setEnabled:{objc_msgSend(v35, "isEnabled")}];
        }

        else
        {
          [v7 setEnabled:0];
        }

        if (![v7 isEnabled])
        {
          goto LABEL_35;
        }

        v18 = [v6 data];
        v19 = [v18 shortTimeEntry];
        v36 = [v19 stringValue];
        v37 = [(_UIStatusBarTimeItem *)self pillTimeView];
        goto LABEL_33;
      }
    }

    else
    {
    }

    v18 = [v7 identifier];
    v19 = [objc_opt_class() dateDisplayIdentifier];
    if (v18 != v19)
    {
LABEL_34:

      goto LABEL_35;
    }

    v20 = [v6 data];
    v21 = [v20 dateEntry];

    if (!v21)
    {
      goto LABEL_35;
    }

    if ([v7 isEnabled])
    {
      v22 = [v6 data];
      v23 = [v22 dateEntry];
      [v7 setEnabled:{objc_msgSend(v23, "isEnabled")}];
    }

    else
    {
      [v7 setEnabled:0];
    }

    if (![v7 isEnabled])
    {
      goto LABEL_35;
    }

    v18 = [v6 data];
    v19 = [v18 dateEntry];
    v36 = [v19 stringValue];
    v37 = [(_UIStatusBarTimeItem *)self dateView];
LABEL_33:
    v38 = v37;
    [v37 setText:v36];

    goto LABEL_34;
  }

LABEL_35:

  return v8;
}

- (_UIStatusBarStringView)timeView
{
  timeView = self->_timeView;
  if (!timeView)
  {
    [(_UIStatusBarTimeItem *)self _create_timeView];
    timeView = self->_timeView;
  }

  return timeView;
}

- (void)_create_timeView
{
  v3 = [_UIStatusBarStringView alloc];
  v4 = [(_UIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  timeView = self->_timeView;
  self->_timeView = v4;

  [(_UIStatusBarStringView *)self->_timeView setFontStyle:1];
  v6 = self->_timeView;

  [(UILabel *)v6 setAdjustsFontSizeToFitWidth:1];
}

- (_UIStatusBarStringView)shortTimeView
{
  shortTimeView = self->_shortTimeView;
  if (!shortTimeView)
  {
    [(_UIStatusBarTimeItem *)self _create_shortTimeView];
    shortTimeView = self->_shortTimeView;
  }

  return shortTimeView;
}

- (void)_create_shortTimeView
{
  v3 = [_UIStatusBarStringView alloc];
  v4 = [(_UIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  shortTimeView = self->_shortTimeView;
  self->_shortTimeView = v4;

  [(_UIStatusBarStringView *)self->_shortTimeView setFontStyle:1];
  v6 = self->_shortTimeView;

  [(UILabel *)v6 setAdjustsFontSizeToFitWidth:1];
}

- (_UIStatusBarStringView)pillTimeView
{
  pillTimeView = self->_pillTimeView;
  if (!pillTimeView)
  {
    [(_UIStatusBarTimeItem *)self _create_pillTimeView];
    pillTimeView = self->_pillTimeView;
  }

  return pillTimeView;
}

- (void)_create_pillTimeView
{
  v3 = [_UIStatusBarStringView alloc];
  v4 = [(_UIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  pillTimeView = self->_pillTimeView;
  self->_pillTimeView = v4;

  [(_UIStatusBarStringView *)self->_pillTimeView setFontStyle:1];
  [(UILabel *)self->_pillTimeView setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_pillTimeView setBaselineAdjustment:1];
  v6 = self->_pillTimeView;
  LODWORD(v7) = 1132003328;

  [(UIView *)v6 setContentCompressionResistancePriority:0 forAxis:v7];
}

- (_UIStatusBarStringView)dateView
{
  dateView = self->_dateView;
  if (!dateView)
  {
    [(_UIStatusBarTimeItem *)self _create_dateView];
    dateView = self->_dateView;
  }

  return dateView;
}

- (void)_create_dateView
{
  v3 = [_UIStatusBarStringView alloc];
  v4 = [(_UIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  dateView = self->_dateView;
  self->_dateView = v4;
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() timeDisplayIdentifier];

  if (v5 == v4)
  {
    v9 = [(_UIStatusBarTimeItem *)self timeView];
  }

  else
  {
    v6 = [objc_opt_class() shortTimeDisplayIdentifier];

    if (v6 == v4)
    {
      v9 = [(_UIStatusBarTimeItem *)self shortTimeView];
    }

    else
    {
      v7 = [objc_opt_class() pillTimeDisplayIdentifier];

      if (v7 == v4)
      {
        v9 = [(_UIStatusBarTimeItem *)self pillTimeView];
      }

      else
      {
        v8 = [objc_opt_class() dateDisplayIdentifier];

        if (v8 == v4)
        {
          v9 = [(_UIStatusBarTimeItem *)self dateView];
        }

        else
        {
          v12.receiver = self;
          v12.super_class = _UIStatusBarTimeItem;
          v9 = [(_UIStatusBarItem *)&v12 viewForIdentifier:v4];
        }
      }
    }
  }

  v10 = v9;

  return v10;
}

@end