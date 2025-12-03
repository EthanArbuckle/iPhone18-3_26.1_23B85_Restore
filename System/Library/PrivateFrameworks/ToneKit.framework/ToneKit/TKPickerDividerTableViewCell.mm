@interface TKPickerDividerTableViewCell
- (CGRect)_dividerViewFrame;
- (TKPickerDividerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setContentBackdropOverlayBlendMode:(int64_t)mode;
- (void)setSeparatorStyle:(int64_t)style;
@end

@implementation TKPickerDividerTableViewCell

- (TKPickerDividerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = TKPickerDividerTableViewCell;
  v4 = [(TKPickerDividerTableViewCell *)&v10 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    [(TKPickerDividerTableViewCell *)v4 _dividerViewFrame];
    v6 = [v5 initWithFrame:?];
    dividerView = v4->_dividerView;
    v4->_dividerView = v6;

    contentView = [(TKPickerDividerTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_dividerView];
  }

  return v4;
}

- (void)setContentBackdropOverlayBlendMode:(int64_t)mode
{
  if (self->_contentBackdropOverlayBlendMode != mode)
  {
    self->_contentBackdropOverlayBlendMode = mode;
    [(UIView *)self->_dividerView _setDrawsAsBackdropOverlayWithBlendMode:?];
  }
}

- (void)setSeparatorStyle:(int64_t)style
{
  v3.receiver = self;
  v3.super_class = TKPickerDividerTableViewCell;
  [(TKPickerDividerTableViewCell *)&v3 setSeparatorStyle:0];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = TKPickerDividerTableViewCell;
  [(TKPickerDividerTableViewCell *)&v4 layoutSubviews];
  dividerView = self->_dividerView;
  [(TKPickerDividerTableViewCell *)self _dividerViewFrame];
  [(UIView *)dividerView setFrame:?];
}

- (CGRect)_dividerViewFrame
{
  [(TKPickerDividerTableViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  contentView = [(TKPickerDividerTableViewCell *)self contentView];
  [(TKPickerDividerTableViewCell *)self convertRect:contentView toView:v4, v6, v8, v10];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  window = [(TKPickerDividerTableViewCell *)self window];
  screen = [window screen];

  if (!screen)
  {
    screen = [MEMORY[0x277D759A0] mainScreen];
  }

  [screen scale];
  v23 = v19 + -1.0 / v22;

  v24 = v13;
  v25 = v15;
  v26 = v17;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

@end