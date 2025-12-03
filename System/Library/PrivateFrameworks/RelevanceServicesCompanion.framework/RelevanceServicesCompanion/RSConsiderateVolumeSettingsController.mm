@interface RSConsiderateVolumeSettingsController
+ (NSString)prefsDidChangeNotification;
+ (NSString)prefsDidChangeWatchNotification;
+ (int64_t)getAudioCategoryFromAVAudioCategory:(id)category;
- (BOOL)hasActiveCategory;
- (BOOL)isEnabledForCategory:(int64_t)category;
- (RSConsiderateVolumeSettingsController)init;
- (RSConsiderateVolumeSettingsController)initWithAlwaysSynchronize:(BOOL)synchronize;
- (int64_t)getUserProfileForCategory:(int64_t)category;
- (void)setEnabled:(BOOL)enabled forCategory:(int64_t)category;
- (void)setUserProfile:(int64_t)profile forCategory:(int64_t)category;
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

- (RSConsiderateVolumeSettingsController)initWithAlwaysSynchronize:(BOOL)synchronize
{
  v5 = objc_allocWithZone(type metadata accessor for ConsiderateVolumeSettingsController());
  *(&self->super.isa + OBJC_IVAR___RSConsiderateVolumeSettingsController_settingsController) = ConsiderateVolumeSettingsController.init(alwaysSynchronize:)(synchronize);
  v7.receiver = self;
  v7.super_class = RSConsiderateVolumeSettingsController;
  return [(RSConsiderateVolumeSettingsController *)&v7 init];
}

- (BOOL)isEnabledForCategory:(int64_t)category
{
  selfCopy = self;
  LOBYTE(category) = RSConsiderateVolumeSettingsController.isEnabled(for:)(category);

  return category & 1;
}

- (void)setEnabled:(BOOL)enabled forCategory:(int64_t)category
{
  v5 = *(&self->super.isa + OBJC_IVAR___RSConsiderateVolumeSettingsController_settingsController);
  if (category >= 5)
  {
    categoryCopy = 0;
  }

  else
  {
    categoryCopy = category;
  }

  selfCopy = self;
  ConsiderateVolumeSettingsController.setEnabled(_:for:)(enabled, categoryCopy);
}

- (int64_t)getUserProfileForCategory:(int64_t)category
{
  selfCopy = self;
  v5 = RSConsiderateVolumeSettingsController.getUserProfile(for:)(category);

  return v5;
}

- (void)setUserProfile:(int64_t)profile forCategory:(int64_t)category
{
  selfCopy = self;
  RSConsiderateVolumeSettingsController.setUserProfile(_:for:)(profile, category);
}

- (void)synchronize
{
  v2 = *(&self->super.isa + OBJC_IVAR___RSConsiderateVolumeSettingsController_settingsController);
  v3 = *(v2 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_accessor);
  selfCopy = self;

  v4 = v2 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache));
  v5 = *(v4 + 8);

  *(v4 + 8) = MEMORY[0x277D84F98];
  os_unfair_lock_unlock(v4);
}

+ (int64_t)getAudioCategoryFromAVAudioCategory:(id)category
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
  selfCopy = self;
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