@interface _UISurfaceLightEffectEntry
- (BOOL)isSameTypeOfEffect:(id)a3;
- (_TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry)init;
- (void)addEffectToView:(id)a3;
- (void)applyIdentityEffectToView:(id)a3;
- (void)applyRequestedEffectToView:(id)a3;
- (void)removeEffectFromView:(id)a3;
@end

@implementation _UISurfaceLightEffectEntry

- (void)addEffectToView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188DCFA28(v4);
}

- (void)removeEffectFromView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188DD1654(v4);
}

- (void)applyIdentityEffectToView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188DEBB54(v4);
}

- (void)applyRequestedEffectToView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188DECB48(v4);
}

- (BOOL)isSameTypeOfEffect:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1890F48FC(v4);

  return self & 1;
}

- (_TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end