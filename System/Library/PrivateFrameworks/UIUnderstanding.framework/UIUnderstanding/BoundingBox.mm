@interface BoundingBox
- (CGRect)rect;
- (CGSize)imageSize;
- (NSString)description;
- (_TtC15UIUnderstanding11BoundingBox)init;
- (_TtC15UIUnderstanding11BoundingBox)initWithRect:(CGRect)a3 imageSize:(CGSize)a4;
- (void)setImageSize:(CGSize)a3;
- (void)setRect:(CGRect)a3;
@end

@implementation BoundingBox

- (CGRect)rect
{
  v2 = (self + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (self + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
  swift_beginAccess();
  *v7 = x;
  v7[1] = y;
  v7[2] = width;
  v7[3] = height;
}

- (CGSize)imageSize
{
  v2 = (self + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = (self + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize);
  swift_beginAccess();
  *v5 = width;
  v5[1] = height;
}

- (_TtC15UIUnderstanding11BoundingBox)initWithRect:(CGRect)a3 imageSize:(CGSize)a4
{
  *(&self->super.isa + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize) = a4;
  v5.receiver = self;
  v5.super_class = type metadata accessor for BoundingBox();
  return [(BoundingBox *)&v5 init];
}

- (NSString)description
{
  v2 = self;
  sub_270298C94();

  v3 = sub_2702B3FFC();

  return v3;
}

- (_TtC15UIUnderstanding11BoundingBox)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end