@interface PKMessageTableCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKMessageTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_dismissButtonPressed;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setActionOnDismiss:(id)a3;
- (void)setContent:(id)a3;
@end

@implementation PKMessageTableCell

- (PKMessageTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  v32.receiver = self;
  v32.super_class = PKMessageTableCell;
  v7 = [(PKMessageTableCell *)&v32 initWithStyle:a3 reuseIdentifier:v6];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69DCC30]);
    v9 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
    v10 = [v8 initWithConfiguration:v9];

    v11 = [(PKMessageTableCell *)v7 contentView];
    [v11 addSubview:v10];

    objc_storeStrong(&v7->_listContentView, v10);
    v12 = MEMORY[0x1E69DC740];
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
    v14 = MEMORY[0x1E69DCAD8];
    v15 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB950]];
    v16 = [v14 configurationWithFont:v15];
    v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v18 = [v12 pkui_plainConfigurationWithImage:v13 imageConfiguration:v16 foregroundColor:v17];

    objc_initWeak(&location, v7);
    v19 = MEMORY[0x1E69DC738];
    v20 = MEMORY[0x1E69DC628];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __52__PKMessageTableCell_initWithStyle_reuseIdentifier___block_invoke;
    v29 = &unk_1E8010A60;
    objc_copyWeak(&v30, &location);
    v21 = [v20 actionWithHandler:&v26];
    v22 = [v19 buttonWithConfiguration:v18 primaryAction:{v21, v26, v27, v28, v29}];
    dismissButton = v7->_dismissButton;
    v7->_dismissButton = v22;

    [(UIButton *)v7->_dismissButton setHidden:1];
    [(UIButton *)v7->_dismissButton setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
    v24 = [(PKMessageTableCell *)v7 contentView];
    [v24 addSubview:v7->_dismissButton];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __52__PKMessageTableCell_initWithStyle_reuseIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissButtonPressed];
}

- (void)_dismissButtonPressed
{
  actionOnDismiss = self->_actionOnDismiss;
  if (actionOnDismiss)
  {
    actionOnDismiss[2]();
  }
}

- (void)setContent:(id)a3
{
  v8 = a3;
  v4 = [(UIListContentView *)self->_listContentView configuration];
  v5 = [v8 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    listContentView = self->_listContentView;
    if (v8)
    {
      [(UIListContentView *)listContentView setConfiguration:v8];
    }

    else
    {
      v7 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
      [(UIListContentView *)listContentView setConfiguration:v7];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(UIListContentView *)self->_listContentView sizeThatFits:a3.width + -20.0 + -20.0, 3.40282347e38];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)setActionOnDismiss:(id)a3
{
  v4 = _Block_copy(a3);
  actionOnDismiss = self->_actionOnDismiss;
  self->_actionOnDismiss = v4;

  dismissButton = self->_dismissButton;
  v7 = self->_actionOnDismiss == 0;

  [(UIButton *)dismissButton setHidden:v7];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PKMessageTableCell;
  [(PKTableViewCell *)&v4 prepareForReuse];
  [(PKMessageTableCell *)self setActionOnDismiss:0];
  v3 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  [(PKMessageTableCell *)self setContent:v3];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PKMessageTableCell;
  [(PKMessageTableCell *)&v11 layoutSubviews];
  v3 = [(PKMessageTableCell *)self _shouldReverseLayoutDirection];
  [(PKMessageTableCell *)self bounds];
  remainder.origin.x = v4;
  remainder.origin.y = v5;
  remainder.size.width = v6;
  remainder.size.height = v7;
  memset(&v9, 0, sizeof(v9));
  if (v3)
  {
    v8 = CGRectMaxXEdge;
  }

  else
  {
    v8 = CGRectMinXEdge;
  }

  CGRectDivide(*&v4, &v9, &remainder, v6 + -20.0 + -20.0, v8);
  [(UIListContentView *)self->_listContentView setFrame:*&v9.origin, *&v9.size];
  CGRectDivide(remainder, &v9, &remainder, 10.0, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UIButton *)self->_dismissButton setFrame:?];
}

@end