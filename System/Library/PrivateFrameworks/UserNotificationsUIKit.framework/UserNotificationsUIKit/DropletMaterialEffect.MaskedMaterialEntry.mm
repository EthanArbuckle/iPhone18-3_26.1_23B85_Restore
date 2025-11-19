@interface DropletMaterialEffect.MaskedMaterialEntry
- (_TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF19MaskedMaterialEntry)init;
- (void)addEffectToView:(id)a3;
- (void)applyIdentityEffectToView:(id)a3;
- (void)applyRequestedEffectToView:(id)a3;
- (void)removeEffectFromView:(id)a3;
@end

@implementation DropletMaterialEffect.MaskedMaterialEntry

- (void)addEffectToView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21E8E6A10(v4);
}

- (void)removeEffectFromView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21E8E7178(v4);
}

- (void)applyIdentityEffectToView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21E8E7290();
}

- (void)applyRequestedEffectToView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21E8E740C();
}

- (_TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF19MaskedMaterialEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end