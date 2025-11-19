@interface _UITableViewCellBadge
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UITableViewCellBadge)initWithFrame:(CGRect)a3;
- (id)color;
- (id)font;
- (id)text;
- (uint64_t)setAccessoryUsesMonochromaticTreatment:(uint64_t)result;
- (uint64_t)setFont:(uint64_t)result;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setColor:(uint64_t)a1;
@end

@implementation _UITableViewCellBadge

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = _UITableViewCellBadge;
  [(UIView *)&v9 layoutSubviews];
  if (self)
  {
    badgeTextLabel = self->_badgeTextLabel;
  }

  else
  {
    badgeTextLabel = 0;
  }

  [(UIView *)badgeTextLabel sizeToFit];
  [(UIView *)self bounds];
  if (self)
  {
    v8 = self->_badgeTextLabel;
  }

  else
  {
    v8 = 0;
  }

  [(UIView *)v8 setCenter:v4 + v6 * 0.5, v5 + v7 * 0.5];
}

- (_UITableViewCellBadge)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _UITableViewCellBadge;
  v3 = [(UIView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    [(UILabel *)v4 setTextAlignment:2];
    [(UIView *)v3 addSubview:v4];
    badgeTextLabel = v3->_badgeTextLabel;
    v3->_badgeTextLabel = v4;

    [(_UITableViewCellBadge *)v3 setColor:?];
  }

  return v3;
}

- (void)setColor:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v4 = +[UIColor secondaryLabelColor];
    }

    v5 = v4;
    [*(a1 + 416) setTextColor:v4];
  }

  else
  {
    v5 = v3;
  }
}

- (void)setBackgroundColor:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UITableViewCellBadge;
  [(UIView *)&v7 setBackgroundColor:?];
  if (a3)
  {
    v5 = *MEMORY[0x1E6979E40];
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [(UIView *)self layer];
  [v6 setCornerRadius:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  if (self)
  {
    self = self->_badgeTextLabel;
  }

  [(_UITableViewCellBadge *)self sizeThatFits:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  v8 = [(UIView *)v3 backgroundColor];

  v9 = -6.0;
  if (!v8)
  {
    v9 = 0.0;
  }

  v10 = fmax(v7 - v9, 21.0);
  if (v10 < v5 - v9 || v8 == 0)
  {
    v12 = v5 - v9;
  }

  else
  {
    v12 = v10;
  }

  result.height = v10;
  result.width = v12;
  return result;
}

- (uint64_t)setFont:(uint64_t)result
{
  if (result && a2)
  {
    v2 = result;
    [*(result + 416) setFont:a2];
    v3 = *(v2 + 416);

    return [v3 setAdjustsFontForContentSizeCategory:1];
  }

  return result;
}

- (id)font
{
  if (a1)
  {
    a1 = [a1[52] font];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)setAccessoryUsesMonochromaticTreatment:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 416);
    if (a2)
    {
      [v3 _setMonochromaticTreatment:1];
      v3 = *(v2 + 416);
      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

    return [v3 _setEnableMonochromaticTreatment:v4];
  }

  return result;
}

- (id)color
{
  if (a1)
  {
    a1 = [a1[52] textColor];
    v1 = vars8;
  }

  return a1;
}

- (id)text
{
  if (a1)
  {
    a1 = [a1[52] text];
    v1 = vars8;
  }

  return a1;
}

@end