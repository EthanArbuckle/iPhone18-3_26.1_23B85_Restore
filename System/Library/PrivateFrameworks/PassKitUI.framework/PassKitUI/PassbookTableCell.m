@interface PassbookTableCell
- (PassbookTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)_updateActivityIndicatorForSpecifier:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PassbookTableCell

- (PassbookTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = PassbookTableCell;
  v9 = [(PSTableCell *)&v12 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    [(PassbookTableCell *)v9 _updateActivityIndicatorForSpecifier:v8];
  }

  return v10;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = PassbookTableCell;
  v4 = a3;
  [(PSTableCell *)&v5 refreshCellContentsWithSpecifier:v4];
  [(PassbookTableCell *)self _updateActivityIndicatorForSpecifier:v4, v5.receiver, v5.super_class];
}

- (void)_updateActivityIndicatorForSpecifier:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"PKSettingsSpecifierLoadingKey"];
  v7 = v4;
  if (v4 && [v4 BOOLValue])
  {
    v5 = [(PassbookTableCell *)self accessoryView];

    if (!v5)
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