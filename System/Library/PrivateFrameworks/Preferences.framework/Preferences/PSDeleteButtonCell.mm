@interface PSDeleteButtonCell
+ (Class)alternativeCellClass;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSDeleteButtonCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = PSDeleteButtonCell;
  v4 = a3;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{@"buttonColor", v7.receiver, v7.super_class}];

  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E69DC888] systemRedColor];
  }

  objc_storeStrong(&self->_buttonColor, v6);
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
  v3 = [(PSDeleteButtonCell *)self textLabel];
  [v3 setTextAlignment:1];

  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 userInterfaceLayoutDirection];

  WeakRetained = objc_loadWeakRetained(&self->super._specifier);
  v7 = [WeakRetained propertyForKey:@"alignment"];

  if (v7)
  {
    v8 = [v7 intValue];
    if (v8 == 3)
    {
      v9 = v5 == 0;
      goto LABEL_8;
    }

    if (v8 == 1)
    {
      v9 = v5 != 0;
LABEL_8:
      v10 = 2 * v9;
      v11 = [(PSDeleteButtonCell *)self textLabel];
      [v11 setTextAlignment:v10];
    }
  }

  buttonColor = self->_buttonColor;
  v13 = [(PSTableCell *)self titleLabel];
  [v13 setTextColor:buttonColor];

  v14 = self->_buttonColor;
  v15 = [(PSTableCell *)self titleLabel];
  [v15 setHighlightedTextColor:v14];
}

+ (Class)alternativeCellClass
{
  if (objc_opt_class() == a1)
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