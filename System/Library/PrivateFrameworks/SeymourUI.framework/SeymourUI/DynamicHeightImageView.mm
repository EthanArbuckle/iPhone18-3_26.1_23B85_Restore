@interface DynamicHeightImageView
- (_TtC9SeymourUI22DynamicHeightImageView)initWithCoder:(id)coder;
- (_TtC9SeymourUI22DynamicHeightImageView)initWithImage:(id)image;
- (_TtC9SeymourUI22DynamicHeightImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (void)layoutSubviews;
@end

@implementation DynamicHeightImageView

- (_TtC9SeymourUI22DynamicHeightImageView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI22DynamicHeightImageView_imageViewHeightConstraint) = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20C0E0734();
}

- (_TtC9SeymourUI22DynamicHeightImageView)initWithImage:(id)image
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI22DynamicHeightImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end