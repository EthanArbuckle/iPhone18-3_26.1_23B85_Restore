@interface PMDeviceProvider
+ (void)fetchListsOfSharingDevicesSeparatedByAvailability:(id)a3;
- (PMDeviceProvider)init;
@end

@implementation PMDeviceProvider

+ (void)fetchListsOfSharingDevicesSeparatedByAvailability:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = sub_21CB858E4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_21CBB4A38;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21CBA0DB8;
  v13[5] = v12;
  sub_21C963EF4(0, 0, v8, &unk_21CBA0DC0, v13);
}

- (PMDeviceProvider)init
{
  v3.receiver = self;
  v3.super_class = PMDeviceProvider;
  return [(PMDeviceProvider *)&v3 init];
}

@end