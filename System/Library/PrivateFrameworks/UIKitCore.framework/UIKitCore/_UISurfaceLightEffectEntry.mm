@interface _UISurfaceLightEffectEntry
- (BOOL)isSameTypeOfEffect:(id)effect;
- (_TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry)init;
- (void)addEffectToView:(id)view;
- (void)applyIdentityEffectToView:(id)view;
- (void)applyRequestedEffectToView:(id)view;
- (void)removeEffectFromView:(id)view;
@end

@implementation _UISurfaceLightEffectEntry

- (void)addEffectToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188DCFA28(viewCopy);
}

- (void)removeEffectFromView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188DD1654(viewCopy);
}

- (void)applyIdentityEffectToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188DEBB54(viewCopy);
}

- (void)applyRequestedEffectToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188DECB48(viewCopy);
}

- (BOOL)isSameTypeOfEffect:(id)effect
{
  effectCopy = effect;
  selfCopy = self;
  LOBYTE(self) = sub_1890F48FC(effectCopy);

  return self & 1;
}

- (_TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end