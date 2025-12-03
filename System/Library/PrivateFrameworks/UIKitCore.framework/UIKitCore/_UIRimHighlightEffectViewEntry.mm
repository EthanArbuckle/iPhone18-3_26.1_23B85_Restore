@interface _UIRimHighlightEffectViewEntry
- (_TtC5UIKit30_UIRimHighlightEffectViewEntry)init;
- (void)addEffectToView:(id)view;
- (void)applyIdentityEffectToView:(id)view;
- (void)applyRequestedEffectToView:(id)view;
- (void)removeEffectFromView:(id)view;
@end

@implementation _UIRimHighlightEffectViewEntry

- (void)removeEffectFromView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188DECF64(viewCopy);
}

- (void)applyRequestedEffectToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188DEF6B0(viewCopy);
}

- (void)applyIdentityEffectToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188DF0E08(viewCopy);
}

- (void)addEffectToView:(id)view
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_activationOrigin + 4) != 1 || (*(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_deactivationOrigin + 4) & 1) == 0)
  {
    viewCopy = view;
    selfCopy = self;
    v5 = sub_188DF2098(viewCopy);
    [viewCopy addSubview_];
    layer = [viewCopy layer];
    [layer setAllowsGroupBlending_];
  }
}

- (_TtC5UIKit30_UIRimHighlightEffectViewEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end