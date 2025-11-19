@interface PhotosPagingAccessoryButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC12PhotosUICore27PhotosPagingAccessoryButton)initWithCoder:(id)a3;
- (_TtC12PhotosUICore27PhotosPagingAccessoryButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PhotosPagingAccessoryButton

- (_TtC12PhotosUICore27PhotosPagingAccessoryButton)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC12PhotosUICore27PhotosPagingAccessoryButton_foregroundColor;
  *(&self->super.super.super.isa + v3) = [objc_opt_self() systemWhiteColor];
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PhotosPagingAccessoryButton();
  v2 = v4.receiver;
  [(PhotosPagingAccessoryButton *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC12PhotosUICore27PhotosPagingAccessoryButton_button];
  [v2 bounds];
  [v3 setFrame_];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore27PhotosPagingAccessoryButton_button) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC12PhotosUICore27PhotosPagingAccessoryButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end