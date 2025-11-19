@interface SKUITableViewCell
- (SKUITableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIEdgeInsets)textLabelInsets;
- (void)_reloadBorderVisibility;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBottomBorderColor:(id)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setTopBorderColor:(id)a3;
@end

@implementation SKUITableViewCell

- (SKUITableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITableViewCell initWithStyle:reuseIdentifier:];
  }

  v11.receiver = self;
  v11.super_class = SKUITableViewCell;
  v7 = [(SKUITableViewCell *)&v11 initWithStyle:a3 reuseIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    *(v7 + 135) = 0x402E000000000000;
    v9 = *(MEMORY[0x277D768C8] + 16);
    *(v7 + 1048) = *MEMORY[0x277D768C8];
    *(v7 + 1064) = v9;
  }

  return v8;
}

- (void)setBottomBorderColor:(id)a3
{
  v4 = a3;
  bottomBorderView = self->_bottomBorderView;
  v9 = v4;
  if (v4)
  {
    if (!bottomBorderView)
    {
      v6 = objc_alloc_init(SKUIBorderView);
      v7 = self->_bottomBorderView;
      self->_bottomBorderView = v6;

      [(SKUITableViewCell *)self addSubview:self->_bottomBorderView];
      v4 = v9;
      bottomBorderView = self->_bottomBorderView;
    }

    [(SKUIBorderView *)bottomBorderView setColor:v4];
  }

  else
  {
    [(SKUIBorderView *)bottomBorderView removeFromSuperview];
    v8 = self->_bottomBorderView;
    self->_bottomBorderView = 0;
  }
}

- (void)setTopBorderColor:(id)a3
{
  v4 = a3;
  topBorderView = self->_topBorderView;
  v9 = v4;
  if (v4)
  {
    if (!topBorderView)
    {
      v6 = objc_alloc_init(SKUIBorderView);
      v7 = self->_topBorderView;
      self->_topBorderView = v6;

      [(SKUITableViewCell *)self addSubview:self->_topBorderView];
      v4 = v9;
      topBorderView = self->_topBorderView;
    }

    [(SKUIBorderView *)topBorderView setColor:v4];
  }

  else
  {
    [(SKUIBorderView *)topBorderView removeFromSuperview];
    v8 = self->_topBorderView;
    self->_topBorderView = 0;
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SKUITableViewCell;
  [(SKUITableViewCell *)&v3 prepareForReuse];
  self->_borderPaddingLeft = 15.0;
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = SKUITableViewCell;
  [(SKUITableViewCell *)&v5 setHighlighted:a3 animated:a4];
  [(SKUITableViewCell *)self _reloadBorderVisibility];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = SKUITableViewCell;
  [(SKUITableViewCell *)&v5 setSelected:a3 animated:a4];
  [(SKUITableViewCell *)self _reloadBorderVisibility];
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = SKUITableViewCell;
  [(SKUITableViewCell *)&v37 layoutSubviews];
  [(SKUITableViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  bottomBorderView = self->_bottomBorderView;
  borderPaddingLeft = self->_borderPaddingLeft;
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 scale];
  v11 = v6 - 1.0 / v10;
  v12 = v4 - self->_borderPaddingLeft;
  v13 = [MEMORY[0x277D759A0] mainScreen];
  [v13 scale];
  [(SKUIBorderView *)bottomBorderView setFrame:borderPaddingLeft, v11, v12, 1.0 / v14];

  topBorderView = self->_topBorderView;
  v16 = self->_borderPaddingLeft;
  v17 = [MEMORY[0x277D759A0] mainScreen];
  [v17 scale];
  [(SKUIBorderView *)topBorderView setFrame:v16, 0.0, v4 - v16, 1.0 / v18];

  v19 = [(SKUITableViewCell *)self textLabel];
  [v19 frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  top = self->_textLabelInsets.top;
  left = self->_textLabelInsets.left;
  v30 = v21 + left;
  v31 = v23 + top;
  v32 = v25 - (left + self->_textLabelInsets.right);
  v33 = v27 - (top + self->_textLabelInsets.bottom);
  v34 = [(SKUITableViewCell *)self textLabel];
  [v34 setFrame:{v30, v31, v32, v33}];

  v35 = [(SKUITableViewCell *)self textLabel];
  if (storeShouldReverseLayoutDirection())
  {
    v36 = 2;
  }

  else
  {
    v36 = 0;
  }

  [v35 setTextAlignment:v36];
}

- (void)_reloadBorderVisibility
{
  if (([(SKUITableViewCell *)self isEditing]& 1) != 0 || ![(SKUITableViewCell *)self selectionStyle])
  {
    v3 = 0;
  }

  else if (([(SKUITableViewCell *)self isHighlighted]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(SKUITableViewCell *)self isSelected];
  }

  [(SKUIBorderView *)self->_bottomBorderView setHidden:v3];
  topBorderView = self->_topBorderView;

  [(SKUIBorderView *)topBorderView setHidden:v3];
}

- (UIEdgeInsets)textLabelInsets
{
  top = self->_textLabelInsets.top;
  left = self->_textLabelInsets.left;
  bottom = self->_textLabelInsets.bottom;
  right = self->_textLabelInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)initWithStyle:reuseIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITableViewCell initWithStyle:reuseIdentifier:]";
}

@end