@interface PresetRestrictionsContainer
- (NSDictionary)restrictions;
- (_TtC20ScreenTimeSettingsUI27PresetRestrictionsContainer)init;
- (_TtC20ScreenTimeSettingsUI27PresetRestrictionsContainer)initWithRestrictions:(id)restrictions imageGenerationRestriction:(int64_t)restriction;
@end

@implementation PresetRestrictionsContainer

- (NSDictionary)restrictions
{

  v2 = sub_264CC453C();

  return v2;
}

- (_TtC20ScreenTimeSettingsUI27PresetRestrictionsContainer)initWithRestrictions:(id)restrictions imageGenerationRestriction:(int64_t)restriction
{
  *(self + OBJC_IVAR____TtC20ScreenTimeSettingsUI27PresetRestrictionsContainer_restrictions) = sub_264CC454C();
  *(self + OBJC_IVAR____TtC20ScreenTimeSettingsUI27PresetRestrictionsContainer_imageGenerationRestriction) = restriction;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PresetRestrictionsContainer();
  return [(PresetRestrictionsContainer *)&v7 init];
}

- (_TtC20ScreenTimeSettingsUI27PresetRestrictionsContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end