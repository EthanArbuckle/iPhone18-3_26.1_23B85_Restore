@interface AccountDeviceObserver
- (void)deviceListChanged;
@end

@implementation AccountDeviceObserver

- (void)deviceListChanged
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = sub_22766C4B0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;

  sub_2272CA940(0, 0, v6, &unk_22767ED28, v8);
}

@end