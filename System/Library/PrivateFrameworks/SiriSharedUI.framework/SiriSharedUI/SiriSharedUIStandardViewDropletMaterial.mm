@interface SiriSharedUIStandardViewDropletMaterial
- (_TtC12SiriSharedUI39SiriSharedUIStandardViewDropletMaterial)initWithCoder:(id)coder;
- (_TtC12SiriSharedUI39SiriSharedUIStandardViewDropletMaterial)initWithEffect:(id)effect;
- (void)layoutSubviews;
@end

@implementation SiriSharedUIStandardViewDropletMaterial

- (_TtC12SiriSharedUI39SiriSharedUIStandardViewDropletMaterial)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12SiriSharedUI39SiriSharedUIStandardViewDropletMaterial_isLightMode) = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12SiriSharedUI39SiriSharedUIStandardViewDropletMaterial_fresnelAlphaLightMode) = 0x3FE999999999999ALL;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12SiriSharedUI39SiriSharedUIStandardViewDropletMaterial_fresnelAlphaDarkMode) = 0x3FC999999999999ALL;
  result = sub_21E4DD468();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SiriSharedUIStandardViewDropletMaterial();
  v2 = v3.receiver;
  [(SiriSharedUIStandardVisualEffectView *)&v3 layoutSubviews];
  sub_21E451A80();
}

- (_TtC12SiriSharedUI39SiriSharedUIStandardViewDropletMaterial)initWithEffect:(id)effect
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end