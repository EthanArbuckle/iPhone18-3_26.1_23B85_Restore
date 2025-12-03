@interface _UIBarBadgeView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSDictionary)textAttributes;
- (NSString)text;
- (UIColor)badgeColor;
- (UIOffset)textOffset;
- (_UIFloatingTabBarPlatformMetrics)_currentPlatformMetrics;
- (void)_updateAttributedText;
- (void)layoutSubviews;
- (void)setBadgeColor:(id)color;
- (void)setFont:(id)font;
- (void)setText:(id)text;
- (void)setTextAttributes:(id)attributes;
- (void)setTextColor:(id)color;
- (void)setTextOffset:(UIOffset)offset;
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

- (void)setText:(id)text
{
  if (text)
  {
    v4 = sub_18A4A7288();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_189019468(v4, v6);
}

- (UIColor)badgeColor
{
  backgroundColor = [(UIView *)self backgroundColor];

  return backgroundColor;
}

- (void)setBadgeColor:(id)color
{
  if (color)
  {
    selfCopy = self;
    colorCopy = color;
  }

  else
  {
    v6 = objc_opt_self();
    selfCopy2 = self;
    colorCopy = [v6 systemRedColor];
  }

  colorCopy2 = color;
  [(UIView *)self setBackgroundColor:colorCopy];
}

- (void)setFont:(id)font
{
  selfCopy = self;
  fontCopy = font;
  textLabel = [(_UIBarBadgeView *)selfCopy textLabel];
  badgeFont = fontCopy;
  if (!fontCopy)
  {
    _currentPlatformMetrics = [(_UIBarBadgeView *)selfCopy _currentPlatformMetrics];
    badgeFont = [(_UIFloatingTabBarPlatformMetrics *)_currentPlatformMetrics badgeFont];
  }

  v8 = fontCopy;
  [(UILabel *)textLabel setFont:badgeFont];
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

- (void)setTextAttributes:(id)attributes
{
  if (attributes)
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
  selfCopy = self;

  [(_UIBarBadgeView *)selfCopy _updateAttributedText];
}

- (UIOffset)textOffset
{
  v2 = *(self + OBJC_IVAR____UIBarBadgeView_textOffset);
  v3 = *(self + OBJC_IVAR____UIBarBadgeView_textOffset + 8);
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (void)setTextOffset:(UIOffset)offset
{
  v3 = *(self + OBJC_IVAR____UIBarBadgeView_textOffset);
  v4 = *(self + OBJC_IVAR____UIBarBadgeView_textOffset + 8);
  *(self + OBJC_IVAR____UIBarBadgeView_textOffset) = offset;
  if (offset.horizontal != v3 || offset.vertical != v4)
  {
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setTextColor:(id)color
{
  selfCopy = self;
  colorCopy = color;
  textLabel = [(_UIBarBadgeView *)selfCopy textLabel];
  whiteColor = colorCopy;
  if (!colorCopy)
  {
    whiteColor = [objc_opt_self() whiteColor];
  }

  v7 = colorCopy;
  [(UILabel *)textLabel setTextColor:whiteColor];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
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
  selfCopy = self;
  sub_189019ED4();
}

- (void)_updateAttributedText
{
  selfCopy = self;
  sub_18901A0D4();
}

- (_UIFloatingTabBarPlatformMetrics)_currentPlatformMetrics
{
  selfCopy = self;
  traitCollection = [(UIView *)selfCopy traitCollection];
  userInterfaceIdiom = [(UITraitCollection *)traitCollection userInterfaceIdiom];

  v5 = _UIFloatingTabBarGetPlatformMetrics(userInterfaceIdiom);

  return v5;
}

@end