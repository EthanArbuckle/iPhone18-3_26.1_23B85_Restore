@interface ImpressionSent
- (_TtC17PromotedContentUI14ImpressionSent)initWithCoder:(id)a3;
- (_TtC17PromotedContentUI14ImpressionSent)initWithFrame:(CGRect)a3;
@end

@implementation ImpressionSent

- (_TtC17PromotedContentUI14ImpressionSent)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17PromotedContentUI14ImpressionSent_alreadySent) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17PromotedContentUI14ImpressionSent_alreadyRecorded) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ImpressionSent();
  return [(ImpressionSent *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC17PromotedContentUI14ImpressionSent)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17PromotedContentUI14ImpressionSent_alreadySent) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17PromotedContentUI14ImpressionSent_alreadyRecorded) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ImpressionSent();
  v4 = a3;
  v5 = [(ImpressionSent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end