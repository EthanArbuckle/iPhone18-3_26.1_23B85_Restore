@interface PKMessageTableCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKMessageTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_dismissButtonPressed;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setActionOnDismiss:(id)dismiss;
- (void)setContent:(id)content;
@end

@implementation PKMessageTableCell

- (PKMessageTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v32.receiver = self;
  v32.super_class = PKMessageTableCell;
  v7 = [(PKMessageTableCell *)&v32 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69DCC30]);
    subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
    v10 = [v8 initWithConfiguration:subtitleCellConfiguration];

    contentView = [(PKMessageTableCell *)v7 contentView];
    [contentView addSubview:v10];

    objc_storeStrong(&v7->_listContentView, v10);
    v12 = MEMORY[0x1E69DC740];
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
    v14 = MEMORY[0x1E69DCAD8];
    v15 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB950]];
    v16 = [v14 configurationWithFont:v15];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v18 = [v12 pkui_plainConfigurationWithImage:v13 imageConfiguration:v16 foregroundColor:secondaryLabelColor];

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
    contentView2 = [(PKMessageTableCell *)v7 contentView];
    [contentView2 addSubview:v7->_dismissButton];

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

- (void)setContent:(id)content
{
  contentCopy = content;
  configuration = [(UIListContentView *)self->_listContentView configuration];
  v5 = [contentCopy isEqual:configuration];

  if ((v5 & 1) == 0)
  {
    listContentView = self->_listContentView;
    if (contentCopy)
    {
      [(UIListContentView *)listContentView setConfiguration:contentCopy];
    }

    else
    {
      subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
      [(UIListContentView *)listContentView setConfiguration:subtitleCellConfiguration];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UIListContentView *)self->_listContentView sizeThatFits:fits.width + -20.0 + -20.0, 3.40282347e38];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)setActionOnDismiss:(id)dismiss
{
  v4 = _Block_copy(dismiss);
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
  subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  [(PKMessageTableCell *)self setContent:subtitleCellConfiguration];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PKMessageTableCell;
  [(PKMessageTableCell *)&v11 layoutSubviews];
  _shouldReverseLayoutDirection = [(PKMessageTableCell *)self _shouldReverseLayoutDirection];
  [(PKMessageTableCell *)self bounds];
  remainder.origin.x = v4;
  remainder.origin.y = v5;
  remainder.size.width = v6;
  remainder.size.height = v7;
  memset(&v9, 0, sizeof(v9));
  if (_shouldReverseLayoutDirection)
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