@interface RSConsiderateVolumeSettingsController
+ (NSString)prefsDidChangeNotification;
+ (NSString)prefsDidChangeWatchNotification;
+ (int64_t)getAudioCategoryFromAVAudioCategory:(id)a3;
- (BOOL)hasActiveCategory;
- (BOOL)isEnabledForCategory:(int64_t)a3;
- (RSConsiderateVolumeSettingsController)init;
- (RSConsiderateVolumeSettingsController)initWithAlwaysSynchronize:(BOOL)a3;
- (int64_t)getUserProfileForCategory:(int64_t)a3;
- (void)setEnabled:(BOOL)a3 forCategory:(int64_t)a4;
- (void)setUserProfile:(int64_t)a3 forCategory:(int64_t)a4;
- (void)synchronize;
@end

@implementation RSConsiderateVolumeSettingsController

- (RSConsiderateVolumeSettingsController)init
{
  *(&self->super.isa + OBJC_IVAR___RSConsiderateVolumeSettingsController_settingsController) = [objc_allocWithZone(type metadata accessor for ConsiderateVolumeSettingsController()) init];
  v4.receiver = self;
  v4.super_class = RSConsiderateVolumeSettingsController;
  return [(RSConsiderateVolumeSettingsController *)&v4 init];
}

- (RSConsiderateVolumeSettingsController)initWithAlwaysSynchronize:(BOOL)a3
{
  v5 = objc_allocWithZone(type metadata accessor for ConsiderateVolumeSettingsController());
  *(&self->super.isa + OBJC_IVAR___RSConsiderateVolumeSettingsController_settingsController) = ConsiderateVolumeSettingsController.init(alwaysSynchronize:)(a3);
  v7.receiver = self;
  v7.super_class = RSConsiderateVolumeSettingsController;
  return [(RSConsiderateVolumeSettingsController *)&v7 init];
}

- (BOOL)isEnabledForCategory:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = RSConsiderateVolumeSettingsController.isEnabled(for:)(a3);

  return a3 & 1;
}

- (void)setEnabled:(BOOL)a3 forCategory:(int64_t)a4
{
  v5 = *(&self->super.isa + OBJC_IVAR___RSConsiderateVolumeSettingsController_settingsController);
  if (a4 >= 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4;
  }

  v7 = self;
  ConsiderateVolumeSettingsController.setEnabled(_:for:)(a3, v6);
}

- (int64_t)getUserProfileForCategory:(int64_t)a3
{
  v4 = self;
  v5 = RSConsiderateVolumeSettingsController.getUserProfile(for:)(a3);

  return v5;
}

- (void)setUserProfile:(int64_t)a3 forCategory:(int64_t)a4
{
  v6 = self;
  RSConsiderateVolumeSettingsController.setUserProfile(_:for:)(a3, a4);
}

- (void)synchronize
{
  v2 = *(&self->super.isa + OBJC_IVAR___RSConsiderateVolumeSettingsController_settingsController);
  v3 = *(v2 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_accessor);
  v6 = self;

  v4 = v2 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache));
  v5 = *(v4 + 8);

  *(v4 + 8) = MEMORY[0x277D84F98];
  os_unfair_lock_unlock(v4);
}

+ (int64_t)getAudioCategoryFromAVAudioCategory:(id)a3
{
  v3 = sub_261AD94C0();
  v5 = _s26RelevanceServicesCompanion35ConsiderateVolumeSettingsControllerC16getAudioCategory011fromAVAudioJ0AA0deiJ0OSS_tFZ_0(v3, v4);

  if (v5 >= 5)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (BOOL)hasActiveCategory
{
  v2 = *(&self->super.isa + OBJC_IVAR___RSConsiderateVolumeSettingsController_settingsController);
  v3 = self;
  LOBYTE(v2) = ConsiderateVolumeSettingsController.hasActiveCategory.getter();

  return v2 & 1;
}

+ (NSString)prefsDidChangeNotification
{
  v2 = sub_261AD94B0();

  return v2;
}

+ (NSString)prefsDidChangeWatchNotification
{
  v2 = sub_261AD94B0();

  return v2;
}

@end