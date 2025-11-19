@interface TKPickerDividerTableViewCell
- (CGRect)_dividerViewFrame;
- (TKPickerDividerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setContentBackdropOverlayBlendMode:(int64_t)a3;
- (void)setSeparatorStyle:(int64_t)a3;
@end

@implementation TKPickerDividerTableViewCell

- (TKPickerDividerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = TKPickerDividerTableViewCell;
  v4 = [(TKPickerDividerTableViewCell *)&v10 initWithStyle:0 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    [(TKPickerDividerTableViewCell *)v4 _dividerViewFrame];
    v6 = [v5 initWithFrame:?];
    dividerView = v4->_dividerView;
    v4->_dividerView = v6;

    v8 = [(TKPickerDividerTableViewCell *)v4 contentView];
    [v8 addSubview:v4->_dividerView];
  }

  return v4;
}

- (void)setContentBackdropOverlayBlendMode:(int64_t)a3
{
  if (self->_contentBackdropOverlayBlendMode != a3)
  {
    self->_contentBackdropOverlayBlendMode = a3;
    [(UIView *)self->_dividerView _setDrawsAsBackdropOverlayWithBlendMode:?];
  }
}

- (void)setSeparatorStyle:(int64_t)a3
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
  v11 = [(TKPickerDividerTableViewCell *)self contentView];
  [(TKPickerDividerTableViewCell *)self convertRect:v11 toView:v4, v6, v8, v10];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [(TKPickerDividerTableViewCell *)self window];
  v21 = [v20 screen];

  if (!v21)
  {
    v21 = [MEMORY[0x277D759A0] mainScreen];
  }

  [v21 scale];
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