@interface PKApplyPrimaryActionRow
- (PKApplyPrimaryActionRow)initWithTitle:(id)a3;
- (void)configureCell:(id)a3;
@end

@implementation PKApplyPrimaryActionRow

- (PKApplyPrimaryActionRow)initWithTitle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKApplyPrimaryActionRow;
  v6 = [(PKApplyPrimaryActionRow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_title, a3);
  }

  return v7;
}

- (void)configureCell:(id)a3
{
  v6 = a3;
  [(PKApplyPrimaryActionRow *)self cellClass];
  if (objc_opt_isKindOfClass())
  {
    loading = self->_loading;
    v5 = v6;
    [v5 setLoading:loading];
    [v5 setTitle:self->_title];
    [v5 setAction:self->_action];
    [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9AE0]];
  }
}

@end