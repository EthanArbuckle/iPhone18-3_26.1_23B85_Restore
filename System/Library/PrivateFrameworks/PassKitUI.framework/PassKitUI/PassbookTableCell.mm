@interface PassbookTableCell
- (PassbookTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_updateActivityIndicatorForSpecifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PassbookTableCell

- (PassbookTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v12.receiver = self;
  v12.super_class = PassbookTableCell;
  v9 = [(PSTableCell *)&v12 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    [(PassbookTableCell *)v9 _updateActivityIndicatorForSpecifier:specifierCopy];
  }

  return v10;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = PassbookTableCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v5 refreshCellContentsWithSpecifier:specifierCopy];
  [(PassbookTableCell *)self _updateActivityIndicatorForSpecifier:specifierCopy, v5.receiver, v5.super_class];
}

- (void)_updateActivityIndicatorForSpecifier:(id)specifier
{
  v4 = [specifier objectForKeyedSubscript:@"PKSettingsSpecifierLoadingKey"];
  v7 = v4;
  if (v4 && [v4 BOOLValue])
  {
    accessoryView = [(PassbookTableCell *)self accessoryView];

    if (!accessoryView)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [v6 startAnimating];
      [(PassbookTableCell *)self setAccessoryView:v6];
    }
  }

  else
  {
    [(PassbookTableCell *)self setAccessoryView:0];
  }
}

@end