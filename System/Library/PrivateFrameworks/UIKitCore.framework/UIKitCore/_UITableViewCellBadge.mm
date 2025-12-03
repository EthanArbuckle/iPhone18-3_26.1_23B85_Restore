@interface _UITableViewCellBadge
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UITableViewCellBadge)initWithFrame:(CGRect)frame;
- (id)color;
- (id)font;
- (id)text;
- (uint64_t)setAccessoryUsesMonochromaticTreatment:(uint64_t)result;
- (uint64_t)setFont:(uint64_t)result;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setColor:(uint64_t)color;
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

- (_UITableViewCellBadge)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _UITableViewCellBadge;
  v3 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setColor:(uint64_t)color
{
  v3 = a2;
  v4 = v3;
  if (color)
  {
    if (!v3)
    {
      v4 = +[UIColor secondaryLabelColor];
    }

    v5 = v4;
    [*(color + 416) setTextColor:v4];
  }

  else
  {
    v5 = v3;
  }
}

- (void)setBackgroundColor:(id)color
{
  v7.receiver = self;
  v7.super_class = _UITableViewCellBadge;
  [(UIView *)&v7 setBackgroundColor:?];
  if (color)
  {
    v5 = *MEMORY[0x1E6979E40];
  }

  else
  {
    v5 = 0.0;
  }

  layer = [(UIView *)self layer];
  [layer setCornerRadius:v5];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  if (self)
  {
    self = self->_badgeTextLabel;
  }

  [(_UITableViewCellBadge *)self sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  backgroundColor = [(UIView *)selfCopy backgroundColor];

  v9 = -6.0;
  if (!backgroundColor)
  {
    v9 = 0.0;
  }

  v10 = fmax(v7 - v9, 21.0);
  if (v10 < v5 - v9 || backgroundColor == 0)
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
  if (self)
  {
    self = [self[52] font];
    v1 = vars8;
  }

  return self;
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
  if (self)
  {
    self = [self[52] textColor];
    v1 = vars8;
  }

  return self;
}

- (id)text
{
  if (self)
  {
    self = [self[52] text];
    v1 = vars8;
  }

  return self;
}

@end