@interface _UIStatusBarTimeItem
- (_UIStatusBarStringView)dateView;
- (_UIStatusBarStringView)pillTimeView;
- (_UIStatusBarStringView)shortTimeView;
- (_UIStatusBarStringView)timeView;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_dateView;
- (void)_create_pillTimeView;
- (void)_create_shortTimeView;
- (void)_create_timeView;
@end

@implementation _UIStatusBarTimeItem

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v40.receiver = self;
  v40.super_class = _UIStatusBarTimeItem;
  v8 = [(_UIStatusBarItem *)&v40 applyUpdate:updateCopy toDisplayItem:itemCopy];
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
          goto LABEL_35;
        }

        data3 = [updateCopy data];
        timeEntry3 = [data3 timeEntry];
        stringValue = [timeEntry3 stringValue];
        timeView = [(_UIStatusBarTimeItem *)self timeView];
        goto LABEL_33;
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
          goto LABEL_35;
        }

        data3 = [updateCopy data];
        timeEntry3 = [data3 shortTimeEntry];
        stringValue = [timeEntry3 stringValue];
        timeView = [(_UIStatusBarTimeItem *)self shortTimeView];
        goto LABEL_33;
      }
    }

    else
    {
    }

    identifier3 = [itemCopy identifier];
    pillTimeDisplayIdentifier = [objc_opt_class() pillTimeDisplayIdentifier];
    v17 = pillTimeDisplayIdentifier;
    if (identifier3 == pillTimeDisplayIdentifier)
    {
      data6 = [updateCopy data];
      shortTimeEntry3 = [data6 shortTimeEntry];

      if (shortTimeEntry3)
      {
        if ([itemCopy isEnabled])
        {
          data7 = [updateCopy data];
          shortTimeEntry4 = [data7 shortTimeEntry];
          [itemCopy setEnabled:{objc_msgSend(shortTimeEntry4, "isEnabled")}];
        }

        else
        {
          [itemCopy setEnabled:0];
        }

        if (![itemCopy isEnabled])
        {
          goto LABEL_35;
        }

        data3 = [updateCopy data];
        timeEntry3 = [data3 shortTimeEntry];
        stringValue = [timeEntry3 stringValue];
        timeView = [(_UIStatusBarTimeItem *)self pillTimeView];
        goto LABEL_33;
      }
    }

    else
    {
    }

    data3 = [itemCopy identifier];
    timeEntry3 = [objc_opt_class() dateDisplayIdentifier];
    if (data3 != timeEntry3)
    {
LABEL_34:

      goto LABEL_35;
    }

    data8 = [updateCopy data];
    dateEntry = [data8 dateEntry];

    if (!dateEntry)
    {
      goto LABEL_35;
    }

    if ([itemCopy isEnabled])
    {
      data9 = [updateCopy data];
      dateEntry2 = [data9 dateEntry];
      [itemCopy setEnabled:{objc_msgSend(dateEntry2, "isEnabled")}];
    }

    else
    {
      [itemCopy setEnabled:0];
    }

    if (![itemCopy isEnabled])
    {
      goto LABEL_35;
    }

    data3 = [updateCopy data];
    timeEntry3 = [data3 dateEntry];
    stringValue = [timeEntry3 stringValue];
    timeView = [(_UIStatusBarTimeItem *)self dateView];
LABEL_33:
    v38 = timeView;
    [timeView setText:stringValue];

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

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  timeDisplayIdentifier = [objc_opt_class() timeDisplayIdentifier];

  if (timeDisplayIdentifier == identifierCopy)
  {
    timeView = [(_UIStatusBarTimeItem *)self timeView];
  }

  else
  {
    shortTimeDisplayIdentifier = [objc_opt_class() shortTimeDisplayIdentifier];

    if (shortTimeDisplayIdentifier == identifierCopy)
    {
      timeView = [(_UIStatusBarTimeItem *)self shortTimeView];
    }

    else
    {
      pillTimeDisplayIdentifier = [objc_opt_class() pillTimeDisplayIdentifier];

      if (pillTimeDisplayIdentifier == identifierCopy)
      {
        timeView = [(_UIStatusBarTimeItem *)self pillTimeView];
      }

      else
      {
        dateDisplayIdentifier = [objc_opt_class() dateDisplayIdentifier];

        if (dateDisplayIdentifier == identifierCopy)
        {
          timeView = [(_UIStatusBarTimeItem *)self dateView];
        }

        else
        {
          v12.receiver = self;
          v12.super_class = _UIStatusBarTimeItem;
          timeView = [(_UIStatusBarItem *)&v12 viewForIdentifier:identifierCopy];
        }
      }
    }
  }

  v10 = timeView;

  return v10;
}

@end