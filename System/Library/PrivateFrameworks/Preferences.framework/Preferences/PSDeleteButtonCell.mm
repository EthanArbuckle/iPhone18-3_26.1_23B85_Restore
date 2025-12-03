@interface PSDeleteButtonCell
+ (Class)alternativeCellClass;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSDeleteButtonCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = PSDeleteButtonCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"buttonColor", v7.receiver, v7.super_class}];

  systemRedColor = v5;
  if (!v5)
  {
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  }

  objc_storeStrong(&self->_buttonColor, systemRedColor);
  if (!v5)
  {
  }
}

- (void)layoutSubviews
{
  if ([(PSTableCell *)self skipsPreferencesTableCellLayoutSubviews])
  {
    v17.receiver = self;
    v17.super_class = PSDeleteButtonCell;
    [(PSTableCell *)&v17 layoutSubviews];
    return;
  }

  v16.receiver = self;
  v16.super_class = PSDeleteButtonCell;
  [(PSTableCell *)&v16 layoutSubviews];
  textLabel = [(PSDeleteButtonCell *)self textLabel];
  [textLabel setTextAlignment:1];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  WeakRetained = objc_loadWeakRetained(&self->super._specifier);
  v7 = [WeakRetained propertyForKey:@"alignment"];

  if (v7)
  {
    intValue = [v7 intValue];
    if (intValue == 3)
    {
      v9 = userInterfaceLayoutDirection == 0;
      goto LABEL_8;
    }

    if (intValue == 1)
    {
      v9 = userInterfaceLayoutDirection != 0;
LABEL_8:
      v10 = 2 * v9;
      textLabel2 = [(PSDeleteButtonCell *)self textLabel];
      [textLabel2 setTextAlignment:v10];
    }
  }

  buttonColor = self->_buttonColor;
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel setTextColor:buttonColor];

  v14 = self->_buttonColor;
  titleLabel2 = [(PSTableCell *)self titleLabel];
  [titleLabel2 setHighlightedTextColor:v14];
}

+ (Class)alternativeCellClass
{
  if (objc_opt_class() == self)
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end