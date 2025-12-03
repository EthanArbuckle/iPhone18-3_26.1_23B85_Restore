@interface TPSAppIntentsHelper
- (TPSAppIntentsHelper)init;
- (void)fetchReturnValueFromEntityNamed:(NSString *)named inBundleId:(NSString *)id withParameters:(NSDictionary *)parameters completionHandler:(id)handler;
- (void)fetchReturnValueFromIntentNamed:(NSString *)named inBundleId:(NSString *)id withParameters:(NSDictionary *)parameters completionHandler:(id)handler;
@end

@implementation TPSAppIntentsHelper

- (void)fetchReturnValueFromIntentNamed:(NSString *)named inBundleId:(NSString *)id withParameters:(NSDictionary *)parameters completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = named;
  v16[3] = id;
  v16[4] = parameters;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_232E016B0();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_232E07F08;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_232E07F10;
  v19[5] = v18;
  namedCopy = named;
  idCopy = id;
  parametersCopy = parameters;
  selfCopy = self;
  sub_232DF3F0C(0, 0, v14, &unk_232E07F18, v19);
}

- (void)fetchReturnValueFromEntityNamed:(NSString *)named inBundleId:(NSString *)id withParameters:(NSDictionary *)parameters completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = named;
  v16[3] = id;
  v16[4] = parameters;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_232E016B0();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_232E07EC8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_232E07ED0;
  v19[5] = v18;
  namedCopy = named;
  idCopy = id;
  parametersCopy = parameters;
  selfCopy = self;
  sub_232DF3F0C(0, 0, v14, &unk_232E07040, v19);
}

- (TPSAppIntentsHelper)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR___TPSAppIntentsHelper_clientLabel);
  *v4 = 0xD000000000000019;
  v4[1] = 0x8000000232E0E3A0;
  *(&self->super.isa + OBJC_IVAR___TPSAppIntentsHelper_source) = 3;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(TPSAppIntentsHelper *)&v6 init];
}

@end