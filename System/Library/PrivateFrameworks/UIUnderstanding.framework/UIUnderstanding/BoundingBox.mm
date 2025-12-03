@interface BoundingBox
- (CGRect)rect;
- (CGSize)imageSize;
- (NSString)description;
- (_TtC15UIUnderstanding11BoundingBox)init;
- (_TtC15UIUnderstanding11BoundingBox)initWithRect:(CGRect)rect imageSize:(CGSize)size;
- (void)setImageSize:(CGSize)size;
- (void)setRect:(CGRect)rect;
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

- (void)setRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (void)setImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = (self + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize);
  swift_beginAccess();
  *v5 = width;
  v5[1] = height;
}

- (_TtC15UIUnderstanding11BoundingBox)initWithRect:(CGRect)rect imageSize:(CGSize)size
{
  *(&self->super.isa + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect) = rect;
  *(&self->super.isa + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize) = size;
  v5.receiver = self;
  v5.super_class = type metadata accessor for BoundingBox();
  return [(BoundingBox *)&v5 init];
}

- (NSString)description
{
  selfCopy = self;
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