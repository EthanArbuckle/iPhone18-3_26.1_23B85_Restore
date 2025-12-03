@interface STUIStatusBarTimeItem
- (STUIStatusBarStringView)dateView;
- (STUIStatusBarStringView)pillTimeView;
- (STUIStatusBarStringView)shortTimeView;
- (STUIStatusBarStringView)timeView;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)viewForIdentifier:(id)identifier;
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

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v41.receiver = self;
  v41.super_class = STUIStatusBarTimeItem;
  v8 = [(STUIStatusBarItem *)&v41 applyUpdate:updateCopy toDisplayItem:itemCopy];
  if ([updateCopy dataChanged])
  {
    identifier = [itemCopy identifier];
    timeDisplayIdentifier = [objc_opt_class() timeDisplayIdentifier];
    v11 = timeDisplayIdentifier;
    if (identifier == timeDisplayIdentifier)
    {
      data = [updateCopy data];
      timeEntry = [data timeEntry];

      if (timeEntry)
      {
        if ([itemCopy isEnabled])
        {
          data2 = [updateCopy data];
          timeEntry2 = [data2 timeEntry];
          [itemCopy setEnabled:{objc_msgSend(timeEntry2, "isEnabled")}];
        }

        else
        {
          [itemCopy setEnabled:0];
        }

        if (![itemCopy isEnabled])
        {
          goto LABEL_34;
        }

        timeView = [(STUIStatusBarTimeItem *)self timeView];
        data3 = [updateCopy data];
        timeEntry3 = [data3 timeEntry];
        goto LABEL_31;
      }
    }

    else
    {
    }

    identifier2 = [itemCopy identifier];
    shortTimeDisplayIdentifier = [objc_opt_class() shortTimeDisplayIdentifier];
    v14 = shortTimeDisplayIdentifier;
    if (identifier2 == shortTimeDisplayIdentifier)
    {
      data4 = [updateCopy data];
      shortTimeEntry = [data4 shortTimeEntry];

      if (shortTimeEntry)
      {
        if ([itemCopy isEnabled])
        {
          data5 = [updateCopy data];
          shortTimeEntry2 = [data5 shortTimeEntry];
          [itemCopy setEnabled:{objc_msgSend(shortTimeEntry2, "isEnabled")}];
        }

        else
        {
          [itemCopy setEnabled:0];
        }

        if (![itemCopy isEnabled])
        {
          goto LABEL_34;
        }

        shortTimeView = [(STUIStatusBarTimeItem *)self shortTimeView];
LABEL_30:
        timeView = shortTimeView;
        data3 = [updateCopy data];
        timeEntry3 = [data3 shortTimeEntry];
LABEL_31:
        stringValue2 = timeEntry3;
        stringValue = [timeEntry3 stringValue];
        __51__STUIStatusBarTimeItem_applyUpdate_toDisplayItem___block_invoke(timeView, stringValue);
        goto LABEL_32;
      }
    }

    else
    {
    }

    identifier3 = [itemCopy identifier];
    pillTimeDisplayIdentifier = [objc_opt_class() pillTimeDisplayIdentifier];
    v17 = pillTimeDisplayIdentifier;
    if (identifier3 != pillTimeDisplayIdentifier)
    {

LABEL_8:
      timeView = [itemCopy identifier];
      data3 = [objc_opt_class() dateDisplayIdentifier];
      if (timeView != data3)
      {
LABEL_33:

        goto LABEL_34;
      }

      data6 = [updateCopy data];
      dateEntry = [data6 dateEntry];

      if (!dateEntry)
      {
        goto LABEL_34;
      }

      if ([itemCopy isEnabled])
      {
        data7 = [updateCopy data];
        dateEntry2 = [data7 dateEntry];
        [itemCopy setEnabled:{objc_msgSend(dateEntry2, "isEnabled")}];
      }

      else
      {
        [itemCopy setEnabled:0];
      }

      if (![itemCopy isEnabled])
      {
        goto LABEL_34;
      }

      timeView = [updateCopy data];
      data3 = [timeView dateEntry];
      stringValue2 = [data3 stringValue];
      stringValue = [(STUIStatusBarTimeItem *)self dateView];
      [stringValue setText:stringValue2];
LABEL_32:

      goto LABEL_33;
    }

    data8 = [updateCopy data];
    shortTimeEntry3 = [data8 shortTimeEntry];

    if (!shortTimeEntry3)
    {
      goto LABEL_8;
    }

    if ([itemCopy isEnabled])
    {
      data9 = [updateCopy data];
      shortTimeEntry4 = [data9 shortTimeEntry];
      [itemCopy setEnabled:{objc_msgSend(shortTimeEntry4, "isEnabled")}];
    }

    else
    {
      [itemCopy setEnabled:0];
    }

    if (![itemCopy isEnabled])
    {
      goto LABEL_34;
    }

    shortTimeView = [(STUIStatusBarTimeItem *)self pillTimeView];
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

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  timeDisplayIdentifier = [objc_opt_class() timeDisplayIdentifier];

  if (timeDisplayIdentifier == identifierCopy)
  {
    timeView = [(STUIStatusBarTimeItem *)self timeView];
  }

  else
  {
    shortTimeDisplayIdentifier = [objc_opt_class() shortTimeDisplayIdentifier];

    if (shortTimeDisplayIdentifier == identifierCopy)
    {
      timeView = [(STUIStatusBarTimeItem *)self shortTimeView];
    }

    else
    {
      pillTimeDisplayIdentifier = [objc_opt_class() pillTimeDisplayIdentifier];

      if (pillTimeDisplayIdentifier == identifierCopy)
      {
        timeView = [(STUIStatusBarTimeItem *)self pillTimeView];
      }

      else
      {
        dateDisplayIdentifier = [objc_opt_class() dateDisplayIdentifier];

        if (dateDisplayIdentifier == identifierCopy)
        {
          timeView = [(STUIStatusBarTimeItem *)self dateView];
        }

        else
        {
          v12.receiver = self;
          v12.super_class = STUIStatusBarTimeItem;
          timeView = [(STUIStatusBarItem *)&v12 viewForIdentifier:identifierCopy];
        }
      }
    }
  }

  v10 = timeView;

  return v10;
}

@end