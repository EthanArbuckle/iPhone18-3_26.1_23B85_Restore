@interface STUIStatusBarTimeItem
- (STUIStatusBarStringView)dateView;
- (STUIStatusBarStringView)pillTimeView;
- (STUIStatusBarStringView)shortTimeView;
- (STUIStatusBarStringView)timeView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)viewForIdentifier:(id)a3;
- (void)_create_dateView;
- (void)_create_pillTimeView;
- (void)_create_shortTimeView;
- (void)_create_timeView;
@end

@implementation STUIStatusBarTimeItem

- (STUIStatusBarStringView)shortTimeView
{
  shortTimeView = self->_shortTimeView;
  if (!shortTimeView)
  {
    [(STUIStatusBarTimeItem *)self _create_shortTimeView];
    shortTimeView = self->_shortTimeView;
  }

  return shortTimeView;
}

- (void)_create_shortTimeView
{
  v3 = [STUIStatusBarStringView alloc];
  v4 = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  shortTimeView = self->_shortTimeView;
  self->_shortTimeView = v4;

  [(STUIStatusBarStringView *)self->_shortTimeView setFontStyle:1];
  v6 = self->_shortTimeView;

  [(STUIStatusBarStringView *)v6 setAdjustsFontSizeToFitWidth:1];
}

- (STUIStatusBarStringView)timeView
{
  timeView = self->_timeView;
  if (!timeView)
  {
    [(STUIStatusBarTimeItem *)self _create_timeView];
    timeView = self->_timeView;
  }

  return timeView;
}

- (void)_create_timeView
{
  v3 = [STUIStatusBarStringView alloc];
  v4 = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  timeView = self->_timeView;
  self->_timeView = v4;

  [(STUIStatusBarStringView *)self->_timeView setFontStyle:1];
  v6 = self->_timeView;

  [(STUIStatusBarStringView *)v6 setAdjustsFontSizeToFitWidth:1];
}

- (STUIStatusBarStringView)pillTimeView
{
  pillTimeView = self->_pillTimeView;
  if (!pillTimeView)
  {
    [(STUIStatusBarTimeItem *)self _create_pillTimeView];
    pillTimeView = self->_pillTimeView;
  }

  return pillTimeView;
}

- (void)_create_pillTimeView
{
  v3 = [STUIStatusBarStringView alloc];
  v4 = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  pillTimeView = self->_pillTimeView;
  self->_pillTimeView = v4;

  [(STUIStatusBarStringView *)self->_pillTimeView setFontStyle:1];
  [(STUIStatusBarStringView *)self->_pillTimeView setAdjustsFontSizeToFitWidth:1];
  [(STUIStatusBarStringView *)self->_pillTimeView setBaselineAdjustment:1];
  v6 = self->_pillTimeView;
  LODWORD(v7) = 1132003328;

  [(STUIStatusBarStringView *)v6 setContentCompressionResistancePriority:0 forAxis:v7];
}

- (STUIStatusBarStringView)dateView
{
  dateView = self->_dateView;
  if (!dateView)
  {
    [(STUIStatusBarTimeItem *)self _create_dateView];
    dateView = self->_dateView;
  }

  return dateView;
}

- (void)_create_dateView
{
  v3 = [STUIStatusBarStringView alloc];
  self->_dateView = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  MEMORY[0x2821F96F8]();
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v41.receiver = self;
  v41.super_class = STUIStatusBarTimeItem;
  v8 = [(STUIStatusBarItem *)&v41 applyUpdate:v6 toDisplayItem:v7];
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
          goto LABEL_34;
        }

        v18 = [(STUIStatusBarTimeItem *)self timeView];
        v19 = [v6 data];
        v36 = [v19 timeEntry];
        goto LABEL_31;
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
          goto LABEL_34;
        }

        v37 = [(STUIStatusBarTimeItem *)self shortTimeView];
LABEL_30:
        v18 = v37;
        v19 = [v6 data];
        v36 = [v19 shortTimeEntry];
LABEL_31:
        v38 = v36;
        v39 = [v36 stringValue];
        __51__STUIStatusBarTimeItem_applyUpdate_toDisplayItem___block_invoke(v18, v39);
        goto LABEL_32;
      }
    }

    else
    {
    }

    v15 = [v7 identifier];
    v16 = [objc_opt_class() pillTimeDisplayIdentifier];
    v17 = v16;
    if (v15 != v16)
    {

LABEL_8:
      v18 = [v7 identifier];
      v19 = [objc_opt_class() dateDisplayIdentifier];
      if (v18 != v19)
      {
LABEL_33:

        goto LABEL_34;
      }

      v20 = [v6 data];
      v21 = [v20 dateEntry];

      if (!v21)
      {
        goto LABEL_34;
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
        goto LABEL_34;
      }

      v18 = [v6 data];
      v19 = [v18 dateEntry];
      v38 = [v19 stringValue];
      v39 = [(STUIStatusBarTimeItem *)self dateView];
      [v39 setText:v38];
LABEL_32:

      goto LABEL_33;
    }

    v32 = [v6 data];
    v33 = [v32 shortTimeEntry];

    if (!v33)
    {
      goto LABEL_8;
    }

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
      goto LABEL_34;
    }

    v37 = [(STUIStatusBarTimeItem *)self pillTimeView];
    goto LABEL_30;
  }

LABEL_34:

  return v8;
}

void __51__STUIStatusBarTimeItem_applyUpdate_toDisplayItem___block_invoke(void *a1, void *a2)
{
  v5 = a2;
  v3 = a1;
  v4 = _StatusBar_UIAttributedStringForIsolatedNumericStringIfNecessary();
  if (v4)
  {
    [v3 setAttributedText:v4];
  }

  else
  {
    [v3 setText:v5];
  }
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() timeDisplayIdentifier];

  if (v5 == v4)
  {
    v9 = [(STUIStatusBarTimeItem *)self timeView];
  }

  else
  {
    v6 = [objc_opt_class() shortTimeDisplayIdentifier];

    if (v6 == v4)
    {
      v9 = [(STUIStatusBarTimeItem *)self shortTimeView];
    }

    else
    {
      v7 = [objc_opt_class() pillTimeDisplayIdentifier];

      if (v7 == v4)
      {
        v9 = [(STUIStatusBarTimeItem *)self pillTimeView];
      }

      else
      {
        v8 = [objc_opt_class() dateDisplayIdentifier];

        if (v8 == v4)
        {
          v9 = [(STUIStatusBarTimeItem *)self dateView];
        }

        else
        {
          v12.receiver = self;
          v12.super_class = STUIStatusBarTimeItem;
          v9 = [(STUIStatusBarItem *)&v12 viewForIdentifier:v4];
        }
      }
    }
  }

  v10 = v9;

  return v10;
}

@end