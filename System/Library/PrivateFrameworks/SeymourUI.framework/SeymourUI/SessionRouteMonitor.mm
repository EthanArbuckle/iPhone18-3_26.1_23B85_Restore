@interface SessionRouteMonitor
- (void)onOutputDeviceChanged;
@end

@implementation SessionRouteMonitor

- (void)onOutputDeviceChanged
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_20C13CDF4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;

  sub_20B614F94(0, 0, v5, &unk_20C166E38, v7);
}

@end