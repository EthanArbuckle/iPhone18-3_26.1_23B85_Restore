@interface PresetRestrictionsProvider
- (_TtC20ScreenTimeSettingsUI26PresetRestrictionsProvider)init;
- (void)fetchPresetRestrictionsForAge:(int64_t)age storefront:(NSString *)storefront completionHandler:(id)handler;
- (void)fetchPresetRestrictionsFromCacheForAge:(int64_t)age storefront:(NSString *)storefront completionHandler:(id)handler;
@end

@implementation PresetRestrictionsProvider

- (void)fetchPresetRestrictionsForAge:(int64_t)age storefront:(NSString *)storefront completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA380);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = age;
  v13[3] = storefront;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_264CC477C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_264CD4F28;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_264CD4F30;
  v16[5] = v15;
  storefrontCopy = storefront;
  selfCopy = self;
  sub_264CB853C(0, 0, v11, &unk_264CD4F38, v16);
}

- (void)fetchPresetRestrictionsFromCacheForAge:(int64_t)age storefront:(NSString *)storefront completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA380);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = age;
  v13[3] = storefront;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_264CC477C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_264CD4F18;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_264CD4550;
  v16[5] = v15;
  storefrontCopy = storefront;
  selfCopy = self;
  sub_264CB853C(0, 0, v11, &unk_264CD4558, v16);
}

- (_TtC20ScreenTimeSettingsUI26PresetRestrictionsProvider)init
{
  v2 = (&self->super.isa + OBJC_IVAR____TtC20ScreenTimeSettingsUI26PresetRestrictionsProvider_presetSourceID);
  *v2 = 0xD000000000000014;
  v2[1] = 0x8000000264CE2180;
  v4.receiver = self;
  v4.super_class = type metadata accessor for PresetRestrictionsProvider();
  return [(PresetRestrictionsProvider *)&v4 init];
}

@end