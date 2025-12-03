@interface DropletMaterialEffect.MaskedMaterialEntry
- (_TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF19MaskedMaterialEntry)init;
- (void)addEffectToView:(id)view;
- (void)applyIdentityEffectToView:(id)view;
- (void)applyRequestedEffectToView:(id)view;
- (void)removeEffectFromView:(id)view;
@end

@implementation DropletMaterialEffect.MaskedMaterialEntry

- (void)addEffectToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_21E8E6A10(viewCopy);
}

- (void)removeEffectFromView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_21E8E7178(viewCopy);
}

- (void)applyIdentityEffectToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_21E8E7290();
}

- (void)applyRequestedEffectToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_21E8E740C();
}

- (_TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF19MaskedMaterialEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end