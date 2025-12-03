@interface LemonadeInlineStoryPlayerUIView
- (_TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView)initWithCoder:(id)coder;
- (_TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation LemonadeInlineStoryPlayerUIView

- (_TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___player) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___contentPlayerView) = 0;
  v4 = self + OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView_placeholderKenBurnsEffect;
  type metadata accessor for LemonadeInlineStoryPlayer();
  *v4 = sub_1A41F5728();
  *(v4 + 1) = v5;
  v4[16] = v6 & 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___placeholderView) = 1;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1A435D024();
}

- (_TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end