@interface _UIBarBadgeView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSDictionary)textAttributes;
- (NSString)text;
- (UIColor)badgeColor;
- (UIOffset)textOffset;
- (_UIFloatingTabBarPlatformMetrics)_currentPlatformMetrics;
- (void)_updateAttributedText;
- (void)layoutSubviews;
- (void)setBadgeColor:(id)a3;
- (void)setFont:(id)a3;
- (void)setText:(id)a3;
- (void)setTextAttributes:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTextOffset:(UIOffset)a3;
@end

@implementation _UIBarBadgeView

- (NSString)text
{
  if (*(self + OBJC_IVAR____UIBarBadgeView_text + 8))
  {

    v2 = sub_18A4A7258();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setText:(id)a3
{
  if (a3)
  {
    v4 = sub_18A4A7288();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_189019468(v4, v6);
}

- (UIColor)badgeColor
{
  v2 = [(UIView *)self backgroundColor];

  return v2;
}

- (void)setBadgeColor:(id)a3
{
  if (a3)
  {
    v4 = self;
    v5 = a3;
  }

  else
  {
    v6 = objc_opt_self();
    v7 = self;
    v5 = [v6 systemRedColor];
  }

  v8 = a3;
  [(UIView *)self setBackgroundColor:v5];
}

- (void)setFont:(id)a3
{
  v4 = self;
  v5 = a3;
  v9 = [(_UIBarBadgeView *)v4 textLabel];
  v6 = v5;
  if (!v5)
  {
    v7 = [(_UIBarBadgeView *)v4 _currentPlatformMetrics];
    v6 = [(_UIFloatingTabBarPlatformMetrics *)v7 badgeFont];
  }

  v8 = v5;
  [(UILabel *)v9 setFont:v6];
}

- (NSDictionary)textAttributes
{
  if (*(self + OBJC_IVAR____UIBarBadgeView_textAttributes))
  {
    type metadata accessor for Key(0);
    sub_188C5E0DC();

    v2 = sub_18A4A7088();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setTextAttributes:(id)a3
{
  if (a3)
  {
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v4 = sub_18A4A70A8();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____UIBarBadgeView_textAttributes) = v4;
  v5 = self;

  [(_UIBarBadgeView *)v5 _updateAttributedText];
}

- (UIOffset)textOffset
{
  v2 = *(self + OBJC_IVAR____UIBarBadgeView_textOffset);
  v3 = *(self + OBJC_IVAR____UIBarBadgeView_textOffset + 8);
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (void)setTextOffset:(UIOffset)a3
{
  v3 = *(self + OBJC_IVAR____UIBarBadgeView_textOffset);
  v4 = *(self + OBJC_IVAR____UIBarBadgeView_textOffset + 8);
  *(self + OBJC_IVAR____UIBarBadgeView_textOffset) = a3;
  if (a3.horizontal != v3 || a3.vertical != v4)
  {
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setTextColor:(id)a3
{
  v4 = self;
  v5 = a3;
  v8 = [(_UIBarBadgeView *)v4 textLabel];
  v6 = v5;
  if (!v5)
  {
    v6 = [objc_opt_self() whiteColor];
  }

  v7 = v5;
  [(UILabel *)v8 setTextColor:v6];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_189019D30(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_189019ED4();
}

- (void)_updateAttributedText
{
  v2 = self;
  sub_18901A0D4();
}

- (_UIFloatingTabBarPlatformMetrics)_currentPlatformMetrics
{
  v2 = self;
  v3 = [(UIView *)v2 traitCollection];
  v4 = [(UITraitCollection *)v3 userInterfaceIdiom];

  v5 = _UIFloatingTabBarGetPlatformMetrics(v4);

  return v5;
}

@end