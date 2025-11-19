@interface PosterRackTopButton
- (_TtC11PosterBoard19PosterRackTopButton)initWithCoder:(id)a3;
- (_TtC11PosterBoard19PosterRackTopButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PosterRackTopButton

- (void)layoutSubviews
{
  v2 = self;
  sub_21B65D0D8();
}

- (_TtC11PosterBoard19PosterRackTopButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard19PosterRackTopButton_contentWidthForCalculatedFittingFont) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PosterRackTopButton();
  return [(PosterRackTopButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11PosterBoard19PosterRackTopButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard19PosterRackTopButton_contentWidthForCalculatedFittingFont) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PosterRackTopButton();
  v4 = a3;
  v5 = [(PosterRackTopButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end