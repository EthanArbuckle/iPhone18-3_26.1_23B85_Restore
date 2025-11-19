@interface TightButton
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI11TightButton)initWithCoder:(id)a3;
- (_TtC9SeymourUI11TightButton)initWithFrame:(CGRect)a3;
- (float)contentHuggingPriorityForAxis:(int64_t)a3;
@end

@implementation TightButton

- (float)contentHuggingPriorityForAxis:(int64_t)a3
{
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  return v4;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = [(TightButton *)v2 titleLabel];
  if (v3)
  {
    v4 = v3;
    [v3 intrinsicContentSize];

    sub_20C13D4F4();
  }

  else
  {
    v11.receiver = v2;
    v11.super_class = type metadata accessor for TightButton();
    [(TightButton *)&v11 intrinsicContentSize];
  }

  v7 = v5;
  v8 = v6;

  v9 = v7;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC9SeymourUI11TightButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TightButton();
  return [(TightButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUI11TightButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TightButton();
  v4 = a3;
  v5 = [(TightButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end