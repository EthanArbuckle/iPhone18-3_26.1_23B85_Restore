@interface TTRISeparator
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation TTRISeparator

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  TTRISeparator.intrinsicContentSize.getter();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  TTRISeparator.intrinsicContentSize.getter();
  v7 = v6;
  v9 = v8;
  v10 = *MEMORY[0x277D77260];

  if (v7 == v10)
  {
    v11 = width;
  }

  else
  {
    v11 = v7;
  }

  if (v9 == v10)
  {
    v12 = height;
  }

  else
  {
    v12 = v9;
  }

  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  TTRISeparator.layoutSubviews()();
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  TTRISeparator.backgroundColor.setter(color);
}

@end