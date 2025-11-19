@interface SKUICategoryTableViewCell
- (CGSize)expectedImageSize;
- (SKUICategoryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setExpectedImageSize:(CGSize)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation SKUICategoryTableViewCell

- (SKUICategoryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICategoryTableViewCell initWithStyle:reuseIdentifier:];
  }

  v18.receiver = self;
  v18.super_class = SKUICategoryTableViewCell;
  v7 = [(SKUICategoryTableViewCell *)&v18 initWithStyle:a3 reuseIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [(SKUICategoryTableViewCell *)v7 textLabel];
    v10 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [v9 setFont:v10];

    v11 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v9 setTextColor:v11];

    v12 = [MEMORY[0x277D75348] clearColor];
    [v9 setBackgroundColor:v12];

    v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v8->_separatorView;
    v8->_separatorView = v13;

    v15 = v8->_separatorView;
    v16 = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v15 setBackgroundColor:v16];

    [(SKUICategoryTableViewCell *)v8 addSubview:v8->_separatorView];
    v8->_layoutNeedsLayout = 1;
  }

  return v8;
}

- (void)setExpectedImageSize:(CGSize)a3
{
  if (self->_expectedImageSize.width != a3.width || self->_expectedImageSize.height != a3.height)
  {
    self->_expectedImageSize = a3;
    [(SKUICategoryTableViewCell *)self setNeedsLayout];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SKUICategoryTableViewCell *)self bounds];
  if (v9 != width || v8 != height)
  {
    self->_layoutNeedsLayout = 1;
  }

  v11.receiver = self;
  v11.super_class = SKUICategoryTableViewCell;
  [(SKUICategoryTableViewCell *)&v11 setBounds:x, y, width, height];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SKUICategoryTableViewCell *)self frame];
  if (v9 != width || v8 != height)
  {
    self->_layoutNeedsLayout = 1;
  }

  v11.receiver = self;
  v11.super_class = SKUICategoryTableViewCell;
  [(SKUICategoryTableViewCell *)&v11 setFrame:x, y, width, height];
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = SKUICategoryTableViewCell;
  [(SKUICategoryTableViewCell *)&v21 layoutSubviews];
  if (self->_layoutNeedsLayout)
  {
    [(SKUICategoryTableViewCell *)self bounds];
    v4 = v3;
    v6 = v5;
    v7 = [(SKUICategoryTableViewCell *)self imageView];
    v8 = [v7 image];

    if (v8)
    {
      [v7 frame];
      v10 = v9;
      [v7 setFrame:{15.0, (v6 - v11) * 0.5}];
      v12 = v10 + 15.0 + 15.0;
    }

    else
    {
      width = self->_expectedImageSize.width;
      v12 = 15.0;
      if (width > 0.0)
      {
        v12 = width + 15.0 + 15.0;
      }
    }

    v14 = [(SKUICategoryTableViewCell *)self textLabel];
    v15 = v14;
    if (v14)
    {
      [v14 sizeToFit];
      [v15 frame];
      [v15 setFrame:{v12, (v6 - v16) * 0.5, v4 - v12 + -15.0}];
    }

    separatorView = self->_separatorView;
    if (separatorView)
    {
      [(UIView *)separatorView frame];
      v18 = [MEMORY[0x277D759A0] mainScreen];
      [v18 scale];
      v20 = 1.0 / v19;

      [(UIView *)self->_separatorView setFrame:15.0, v6 - v20, v4 + -15.0, v20];
    }
  }

  self->_layoutNeedsLayout = 0;
}

- (CGSize)expectedImageSize
{
  width = self->_expectedImageSize.width;
  height = self->_expectedImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithStyle:reuseIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICategoryTableViewCell initWithStyle:reuseIdentifier:]";
}

@end