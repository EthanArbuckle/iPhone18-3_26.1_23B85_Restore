@interface PosterRackTopButton
- (_TtC11PosterBoard19PosterRackTopButton)initWithCoder:(id)coder;
- (_TtC11PosterBoard19PosterRackTopButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PosterRackTopButton

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21B65D0D8();
}

- (_TtC11PosterBoard19PosterRackTopButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard19PosterRackTopButton_contentWidthForCalculatedFittingFont) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PosterRackTopButton();
  return [(PosterRackTopButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11PosterBoard19PosterRackTopButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard19PosterRackTopButton_contentWidthForCalculatedFittingFont) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PosterRackTopButton();
  coderCopy = coder;
  v5 = [(PosterRackTopButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end