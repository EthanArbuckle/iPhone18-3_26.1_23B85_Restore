@interface PSSpinnerTableCell
+ (Class)alternativeCellClass;
- (PSSpinnerTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSSpinnerTableCell

- (PSSpinnerTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = PSSpinnerTableCell;
  v4 = [(PSTableCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4 && ![(PSTableCell *)v4 skipsPreferencesTableCellLayoutSubviews])
  {
    v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v5->_spinner;
    v5->_spinner = v6;

    v8 = [(PSSpinnerTableCell *)v5 contentView];
    [v8 addSubview:v5->_spinner];
  }

  return v5;
}

- (void)layoutSubviews
{
  if ([(PSTableCell *)self skipsPreferencesTableCellLayoutSubviews])
  {
    v13.receiver = self;
    v13.super_class = PSSpinnerTableCell;
    [(PSTableCell *)&v13 layoutSubviews];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PSSpinnerTableCell;
    [(PSTableCell *)&v12 layoutSubviews];
    v3 = [(PSSpinnerTableCell *)self contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;

    [(UIActivityIndicatorView *)self->_spinner frame];
    v9 = (v5 - v8) * 0.5;
    v11 = (v7 - v10) * 0.5;
    [(UIActivityIndicatorView *)self->_spinner setFrame:floorf(v9), floorf(v11)];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = PSSpinnerTableCell;
  [(PSTableCell *)&v4 refreshCellContentsWithSpecifier:a3];
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
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