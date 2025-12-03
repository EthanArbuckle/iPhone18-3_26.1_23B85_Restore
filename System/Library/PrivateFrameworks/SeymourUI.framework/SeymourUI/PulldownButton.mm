@interface PulldownButton
- (BOOL)isHighlighted;
- (_TtC9SeymourUI14PulldownButton)initWithCoder:(id)coder;
- (void)setHighlighted:(BOOL)highlighted;
- (void)tintColorDidChange;
@end

@implementation PulldownButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PulldownButton();
  return [(PulldownButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PulldownButton();
  v4 = v7.receiver;
  [(PulldownButton *)&v7 setHighlighted:highlightedCopy];
  isHighlighted = [v4 isHighlighted];
  v6 = 0.4;
  if (!isHighlighted)
  {
    v6 = 1.0;
  }

  [v4 setAlpha_];
}

- (_TtC9SeymourUI14PulldownButton)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC9SeymourUI14PulldownButton_appearance;
  sub_20BCBD68C(v10);
  v5 = v10[3];
  *(v4 + 2) = v10[2];
  *(v4 + 3) = v5;
  *(v4 + 8) = v11;
  v6 = v10[1];
  *v4 = v10[0];
  *(v4 + 1) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI14PulldownButton_attributedTitle;
  v8 = sub_20C132924();
  (*(*(v8 - 8) + 56))(self + v7, 1, 1, v8);
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_20BCBBF20();
}

@end