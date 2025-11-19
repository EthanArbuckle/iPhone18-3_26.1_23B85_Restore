@interface SUTableHeaderView
- (SUTableHeaderView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)edgeInsets;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBottomBorderColor:(id)a3;
- (void)setEdgeInsets:(UIEdgeInsets)a3;
- (void)setIndex:(int64_t)a3;
- (void)setShadowColor:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setSubtitleFont:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleFont:(id)a3;
- (void)sizeToFit;
@end

@implementation SUTableHeaderView

- (SUTableHeaderView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SUTableHeaderView;
  v3 = [(SUTableHeaderView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    *&v3->_edgeInsets.top = xmmword_1C233A030;
    *&v3->_edgeInsets.bottom = xmmword_1C233A030;
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v4->_subtitleLabel = v5;
    -[UILabel setBackgroundColor:](v5, "setBackgroundColor:", [MEMORY[0x1E69DC888] clearColor]);
    -[UILabel setFont:](v4->_subtitleLabel, "setFont:", [MEMORY[0x1E69DB878] systemFontOfSize:14.0]);
    [(UILabel *)v4->_subtitleLabel setNumberOfLines:0];
    -[UILabel setShadowColor:](v4->_subtitleLabel, "setShadowColor:", [MEMORY[0x1E69DC888] whiteColor]);
    [(UILabel *)v4->_subtitleLabel setShadowOffset:0.0, 1.0];
    -[UILabel setTextColor:](v4->_subtitleLabel, "setTextColor:", [MEMORY[0x1E69DC888] colorWithRed:0.298039216 green:0.337254902 blue:0.423529412 alpha:1.0]);
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v4->_titleLabel = v6;
    -[UILabel setBackgroundColor:](v6, "setBackgroundColor:", [MEMORY[0x1E69DC888] clearColor]);
    -[UILabel setFont:](v4->_titleLabel, "setFont:", [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0]);
    -[UILabel setShadowColor:](v4->_titleLabel, "setShadowColor:", [MEMORY[0x1E69DC888] whiteColor]);
    [(UILabel *)v4->_titleLabel setShadowOffset:0.0, 1.0];
    -[UILabel setTextColor:](v4->_titleLabel, "setTextColor:", [MEMORY[0x1E69DC888] colorWithRed:0.298039216 green:0.337254902 blue:0.423529412 alpha:1.0]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUTableHeaderView;
  [(SUTableHeaderView *)&v3 dealloc];
}

- (void)drawRect:(CGRect)a3
{
  if (self->_bottomBorderColor)
  {
    [(SUTableHeaderView *)self bounds:a3.origin.x];
    v5 = v4;
    v7 = v6;
    [(UIColor *)self->_bottomBorderColor set];
    v9 = 0;
    v10 = 1.0;
    v11 = v5;

    v8 = v7 + -1.0;
    UIRectFill(*&v9);
  }
}

- (void)layoutSubviews
{
  [(SUTableHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_titleLabel sizeToFit];
  [(UILabel *)self->_titleLabel frame];
  v12 = v11;
  v30 = v13;
  p_edgeInsets = &self->_edgeInsets;
  left = self->_edgeInsets.left;
  v32.origin.x = v4;
  v32.origin.y = v6;
  v32.size.width = v8;
  v32.size.height = v10;
  MaxX = CGRectGetMaxX(v32);
  right = self->_edgeInsets.right;
  [(UILabel *)self->_subtitleLabel frame];
  v17 = v16;
  v18 = self->_edgeInsets.left;
  v33.origin.x = v4;
  v33.origin.y = v6;
  v33.size.width = v8;
  v33.size.height = v10;
  v19 = CGRectGetMaxX(v33) - self->_edgeInsets.right - v18;
  [(UILabel *)self->_subtitleLabel sizeThatFits:v19, 1.79769313e308];
  v21 = v20;
  if ([(SUTableHeaderView *)self title]&& [(SUTableHeaderView *)self subtitle])
  {
    v22 = 0;
    v12 = 4.0;
    v17 = v30 + 4.0 + -2.0;
  }

  else
  {
    if ([(SUTableHeaderView *)self title])
    {
      v12 = 5.0;
    }

    else if ([(SUTableHeaderView *)self subtitle])
    {
      v17 = 1.0;
    }

    v22 = 1;
  }

  if (self->_style == 1)
  {
    v23 = v17 + 6.0;
    v24 = v12 + 6.0;
  }

  else
  {
    v23 = v17 + 10.0;
    v24 = v12 + 10.0;
    if (self->_index)
    {
      v24 = v12;
      v23 = v17;
    }
  }

  v25 = v23 + p_edgeInsets->top;
  v26 = v24 + p_edgeInsets->top;
  [(UILabel *)self->_subtitleLabel setTextAlignment:v22];
  [(UILabel *)self->_subtitleLabel setFrame:v18, v25, v19, v21];
  titleLabel = self->_titleLabel;

  [(UILabel *)titleLabel setFrame:left, v26, MaxX - right - left, v30];
}

- (void)sizeToFit
{
  [(SUTableHeaderView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(SUTableHeaderView *)self layoutIfNeeded];
  if ([(SUTableHeaderView *)self title]&& [(SUTableHeaderView *)self subtitle])
  {
    [(UILabel *)self->_titleLabel frame];
    v10 = v9 + 4.0 + -2.0;
    [(UILabel *)self->_subtitleLabel frame];
    v12 = v10 + v11;
    v13 = 3.0;
LABEL_8:
    v16 = v12 + v13;
    goto LABEL_9;
  }

  if ([(SUTableHeaderView *)self title])
  {
    [(UILabel *)self->_titleLabel frame];
    v12 = v14 + 5.0;
    v13 = 7.0;
    goto LABEL_8;
  }

  if ([(SUTableHeaderView *)self subtitle])
  {
    [(UILabel *)self->_subtitleLabel frame];
    v12 = v15 + 1.0;
    v13 = 5.0;
    goto LABEL_8;
  }

  v16 = 0.0;
LABEL_9:
  if (self->_style == 1)
  {
    v16 = v16 + 10.0;
  }

  else if (!self->_index)
  {
    v16 = v16 + 10.0;
  }

  v17 = v16 + self->_edgeInsets.top + self->_edgeInsets.bottom;

  [(SUTableHeaderView *)self setFrame:v4, v6, v8, v17];
}

- (void)setBottomBorderColor:(id)a3
{
  bottomBorderColor = self->_bottomBorderColor;
  if (bottomBorderColor != a3)
  {

    self->_bottomBorderColor = a3;

    [(SUTableHeaderView *)self setNeedsDisplay];
  }
}

- (void)setEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_edgeInsets.top, v3), vceqq_f64(*&self->_edgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_edgeInsets = a3;
    [(SUTableHeaderView *)self setNeedsDisplay];
  }
}

- (void)setIndex:(int64_t)a3
{
  if (self->_index != a3)
  {
    self->_index = a3;
    [(SUTableHeaderView *)self setNeedsDisplay];
  }
}

- (void)setShadowColor:(id)a3
{
  [(UILabel *)self->_subtitleLabel setShadowColor:?];
  titleLabel = self->_titleLabel;

  [(UILabel *)titleLabel setShadowColor:a3];
}

- (void)setSubtitle:(id)a3
{
  [(UILabel *)self->_subtitleLabel setText:?];
  if ([a3 length])
  {
    [(SUTableHeaderView *)self addSubview:self->_subtitleLabel];
  }

  else
  {
    [(UILabel *)self->_subtitleLabel removeFromSuperview];
  }

  [(SUTableHeaderView *)self setNeedsLayout];
}

- (void)setSubtitleFont:(id)a3
{
  [(UILabel *)self->_subtitleLabel setFont:a3];

  [(SUTableHeaderView *)self setNeedsLayout];
}

- (void)setTextColor:(id)a3
{
  [(UILabel *)self->_subtitleLabel setTextColor:?];
  titleLabel = self->_titleLabel;

  [(UILabel *)titleLabel setTextColor:a3];
}

- (void)setTitle:(id)a3
{
  [(UILabel *)self->_titleLabel setText:?];
  if ([a3 length])
  {
    [(SUTableHeaderView *)self addSubview:self->_titleLabel];
  }

  else
  {
    [(UILabel *)self->_titleLabel removeFromSuperview];
  }

  [(SUTableHeaderView *)self setNeedsLayout];
}

- (void)setTitleFont:(id)a3
{
  [(UILabel *)self->_titleLabel setFont:a3];

  [(SUTableHeaderView *)self setNeedsLayout];
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end