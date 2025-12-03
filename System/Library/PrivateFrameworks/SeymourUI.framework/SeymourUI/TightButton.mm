@interface TightButton
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI11TightButton)initWithCoder:(id)coder;
- (_TtC9SeymourUI11TightButton)initWithFrame:(CGRect)frame;
- (float)contentHuggingPriorityForAxis:(int64_t)axis;
@end

@implementation TightButton

- (float)contentHuggingPriorityForAxis:(int64_t)axis
{
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  return v4;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  titleLabel = [(TightButton *)selfCopy titleLabel];
  if (titleLabel)
  {
    v4 = titleLabel;
    [titleLabel intrinsicContentSize];

    sub_20C13D4F4();
  }

  else
  {
    v11.receiver = selfCopy;
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

- (_TtC9SeymourUI11TightButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TightButton();
  return [(TightButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUI11TightButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TightButton();
  coderCopy = coder;
  v5 = [(TightButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end