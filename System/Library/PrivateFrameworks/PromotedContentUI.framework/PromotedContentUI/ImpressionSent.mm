@interface ImpressionSent
- (_TtC17PromotedContentUI14ImpressionSent)initWithCoder:(id)coder;
- (_TtC17PromotedContentUI14ImpressionSent)initWithFrame:(CGRect)frame;
@end

@implementation ImpressionSent

- (_TtC17PromotedContentUI14ImpressionSent)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17PromotedContentUI14ImpressionSent_alreadySent) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17PromotedContentUI14ImpressionSent_alreadyRecorded) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ImpressionSent();
  return [(ImpressionSent *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC17PromotedContentUI14ImpressionSent)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17PromotedContentUI14ImpressionSent_alreadySent) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17PromotedContentUI14ImpressionSent_alreadyRecorded) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ImpressionSent();
  coderCopy = coder;
  v5 = [(ImpressionSent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end