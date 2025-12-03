@interface PhotosSecondaryToolbarLensControl
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC12PhotosUICore33PhotosSecondaryToolbarLensControl)initWithCoder:(id)coder;
- (_TtC12PhotosUICore33PhotosSecondaryToolbarLensControl)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PhotosSecondaryToolbarLensControl

- (_TtC12PhotosUICore33PhotosSecondaryToolbarLensControl)initWithCoder:(id)coder
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_gridLensTitle) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_performsUpdates) = 0;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosSecondaryToolbarLensControl();
  v2 = v3.receiver;
  [(PhotosSecondaryToolbarLensControl *)&v3 layoutSubviews];
  [v2 bounds];
  sub_1A524D9E4();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_lensControl) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC12PhotosUICore33PhotosSecondaryToolbarLensControl)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end