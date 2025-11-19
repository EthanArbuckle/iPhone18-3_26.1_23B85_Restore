@interface TTRISeparator
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation TTRISeparator

- (CGSize)intrinsicContentSize
{
  v2 = self;
  TTRISeparator.intrinsicContentSize.getter();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
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
  v2 = self;
  TTRISeparator.layoutSubviews()();
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  TTRISeparator.backgroundColor.setter(a3);
}

@end