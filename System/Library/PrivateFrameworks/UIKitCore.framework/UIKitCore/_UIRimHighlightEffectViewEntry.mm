@interface _UIRimHighlightEffectViewEntry
- (_TtC5UIKit30_UIRimHighlightEffectViewEntry)init;
- (void)addEffectToView:(id)a3;
- (void)applyIdentityEffectToView:(id)a3;
- (void)applyRequestedEffectToView:(id)a3;
- (void)removeEffectFromView:(id)a3;
@end

@implementation _UIRimHighlightEffectViewEntry

- (void)removeEffectFromView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188DECF64(v4);
}

- (void)applyRequestedEffectToView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188DEF6B0(v4);
}

- (void)applyIdentityEffectToView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188DF0E08(v4);
}

- (void)addEffectToView:(id)a3
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_activationOrigin + 4) != 1 || (*(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_deactivationOrigin + 4) & 1) == 0)
  {
    v4 = a3;
    v7 = self;
    v5 = sub_188DF2098(v4);
    [v4 addSubview_];
    v6 = [v4 layer];
    [v6 setAllowsGroupBlending_];
  }
}

- (_TtC5UIKit30_UIRimHighlightEffectViewEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end