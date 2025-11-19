@interface ConsiderateVolumeSettingsController
- (_TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController)init;
- (void)dealloc;
@end

@implementation ConsiderateVolumeSettingsController

- (_TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController)init
{
  v3 = objc_allocWithZone(swift_getObjectType());
  v4 = ConsiderateVolumeSettingsController.init(alwaysSynchronize:)(1);
  swift_getObjectType();
  v5 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x30);
  v6 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_alwaysSynchronize);
  v5 = self;
  if ((v4 & 1) == 0)
  {
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveEveryObserver(v6, v5);
  }

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(ConsiderateVolumeSettingsController *)&v7 dealloc];
}

@end