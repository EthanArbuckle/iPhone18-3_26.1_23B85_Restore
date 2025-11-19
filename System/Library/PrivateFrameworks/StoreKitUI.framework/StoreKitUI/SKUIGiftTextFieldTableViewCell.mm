@interface SKUIGiftTextFieldTableViewCell
- (SKUIGiftTextFieldTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setKeyboardType:(int64_t)a3;
- (void)setLabel:(id)a3;
@end

@implementation SKUIGiftTextFieldTableViewCell

- (SKUIGiftTextFieldTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftTextFieldTableViewCell initWithStyle:reuseIdentifier:];
  }

  v24.receiver = self;
  v24.super_class = SKUIGiftTextFieldTableViewCell;
  v7 = [(SKUIGiftTextFieldTableViewCell *)&v24 initWithStyle:a3 reuseIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [(SKUIGiftTextFieldTableViewCell *)v7 contentView];
    v10 = objc_alloc_init(MEMORY[0x277D75BB8]);
    textField = v8->_textField;
    v8->_textField = v10;

    v12 = v8->_textField;
    v13 = [MEMORY[0x277D75348] _systemBackgroundColor];
    [(UITextField *)v12 setBackgroundColor:v13];

    v14 = v8->_textField;
    v15 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [(UITextField *)v14 setFont:v15];

    v16 = v8->_textField;
    v17 = [MEMORY[0x277D75348] _labelColor];
    [(UITextField *)v16 setTextColor:v17];

    [(UITextField *)v8->_textField sizeToFit];
    [v9 addSubview:v8->_textField];
    v18 = objc_alloc_init(MEMORY[0x277D75D18]);
    topBorderView = v8->_topBorderView;
    v8->_topBorderView = v18;

    v20 = v8->_topBorderView;
    v21 = [MEMORY[0x277D75348] tableSeparatorColor];
    [(UIView *)v20 setBackgroundColor:v21];

    [v9 addSubview:v8->_topBorderView];
    v22 = [MEMORY[0x277D75128] sharedApplication];
    v8->_leftToRight = [v22 userInterfaceLayoutDirection] == 0;
  }

  return v8;
}

- (void)setEnabled:(BOOL)a3
{
  [(UITextField *)self->_textField setEnabled:?];
  textField = self->_textField;
  v6 = [MEMORY[0x277D75348] _labelColor];
  v8 = v6;
  if (a3)
  {
    [(UITextField *)textField setTextColor:v6];
  }

  else
  {
    v7 = [v6 colorWithAlphaComponent:0.3];
    [(UITextField *)textField setTextColor:v7];
  }
}

- (void)setKeyboardType:(int64_t)a3
{
  [(UITextField *)self->_textField setAutocapitalizationType:a3 != 7];
  textField = self->_textField;

  [(UITextField *)textField setKeyboardType:a3];
}

- (void)setLabel:(id)a3
{
  v16 = a3;
  v4 = [(SKUIGiftTextFieldTableViewCell *)self label];
  if (v4 != v16 && ([v16 isEqualToString:v4] & 1) == 0)
  {
    label = self->_label;
    if (v16)
    {
      if (!label)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_label;
        self->_label = v6;

        v8 = self->_label;
        v9 = [MEMORY[0x277D75348] _systemBackgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_label;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_label;
        v13 = [MEMORY[0x277D75348] _secondaryLabelColor];
        [(UILabel *)v12 setTextColor:v13];

        v14 = [(SKUIGiftTextFieldTableViewCell *)self contentView];
        [v14 addSubview:self->_label];

        label = self->_label;
      }

      [(UILabel *)label setText:?];
      [(UILabel *)self->_label sizeToFit];
    }

    else
    {
      [(UILabel *)label removeFromSuperview];
      v15 = self->_label;
      self->_label = 0;
    }

    [(SKUIGiftTextFieldTableViewCell *)self setNeedsLayout];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = SKUIGiftTextFieldTableViewCell;
  v5 = [(SKUIGiftTextFieldTableViewCell *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if ([v5 isDescendantOfView:self])
  {
    v6 = self->_textField;

    v5 = v6;
  }

  return v5;
}

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = SKUIGiftTextFieldTableViewCell;
  [(SKUIGiftTextFieldTableViewCell *)&v43 layoutSubviews];
  v3 = [(SKUIGiftTextFieldTableViewCell *)self contentView];
  [v3 bounds];
  v39 = v5;
  v41 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v7 + -15.0;
  label = self->_label;
  if (label)
  {
    [(UILabel *)label frame];
    width = v44.size.width;
    height = v44.size.height;
    v14 = 15.0;
    v44.origin.x = 15.0;
    MaxX = CGRectGetMaxX(v44);
    v16 = (v9 - height) * 0.5;
    v17 = floorf(v16);
    [(UILabel *)self->_label setFrame:15.0, v17, width, height];
    v18 = [(SKUIGiftTextFieldTableViewCell *)self leftToRight];
    v19 = self->_label;
    if (!v18)
    {
      [SKUICGRectHelpers rect:15.0 withFlippedOriginXRelativeTo:v17, width, height, v41, v39, v7, v9];
      v14 = v20;
      v17 = v21;
      width = v22;
      height = v23;
    }

    v24 = MaxX + 5.0;
    [(UILabel *)v19 setFrame:v14, v17, width, height, *&v39, *&v41];
  }

  else
  {
    v24 = 15.0;
  }

  [(UITextField *)self->_textField frame:*&v39];
  v26 = v25;
  v27 = v10 - v24;
  v28 = (v9 - v25) * 0.5;
  v29 = floorf(v28);
  v30 = [(SKUIGiftTextFieldTableViewCell *)self leftToRight];
  textField = self->_textField;
  if (!v30)
  {
    [SKUICGRectHelpers rect:v24 withFlippedOriginXRelativeTo:v29, v10 - v24, v26, v42, v40, v7, v9];
    v24 = v32;
    v29 = v33;
    v27 = v34;
    v26 = v35;
  }

  [(UITextField *)textField setFrame:v24, v29, v27, v26];
  topBorderView = self->_topBorderView;
  v37 = [MEMORY[0x277D759A0] mainScreen];
  [v37 scale];
  [(UIView *)topBorderView setFrame:15.0, 0.0, v7 + -15.0, 1.0 / v38];
}

- (void)initWithStyle:reuseIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftTextFieldTableViewCell initWithStyle:reuseIdentifier:]";
}

@end