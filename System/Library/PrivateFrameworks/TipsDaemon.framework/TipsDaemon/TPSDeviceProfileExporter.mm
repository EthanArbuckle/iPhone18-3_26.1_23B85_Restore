@interface TPSDeviceProfileExporter
+ (void)updateDeviceProfileWithDataSource:(TPSDeviceProfileDataSource *)source completionHandler:(id)handler;
- (TPSDeviceProfileExporter)init;
@end

@implementation TPSDeviceProfileExporter

+ (void)updateDeviceProfileWithDataSource:(TPSDeviceProfileDataSource *)source completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = source;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_232E016B0();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_232E07030;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_232E07ED0;
  v15[5] = v14;
  swift_unknownObjectRetain();
  sub_232DF3F0C(0, 0, v10, &unk_232E07040, v15);
}

- (TPSDeviceProfileExporter)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TPSDeviceProfileExporter *)&v3 init];
}

@end