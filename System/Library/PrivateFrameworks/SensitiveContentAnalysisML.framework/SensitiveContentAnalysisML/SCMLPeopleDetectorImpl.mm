@interface SCMLPeopleDetectorImpl
- (_TtC26SensitiveContentAnalysisML22SCMLPeopleDetectorImpl)init;
- (id)initOnBehalfOf:(int64_t)of modelManagerServicesUseCaseID:(id)d locale:(id)locale error:(id *)error;
- (void)predictWithText:(NSString *)text completionHandler:(id)handler;
@end

@implementation SCMLPeopleDetectorImpl

- (id)initOnBehalfOf:(int64_t)of modelManagerServicesUseCaseID:(id)d locale:(id)locale error:(id *)error
{
  v7 = sub_1B8AEFCC8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B8AF0668();
  v13 = v12;
  sub_1B8AEFC58();
  return SCMLPeopleDetectorImpl.init(onBehalfOf:modelManagerServicesUseCaseID:locale:)(of, v11, v13, v10);
}

- (void)predictWithText:(NSString *)text completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B88, &qword_1B8AFAB20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = text;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B8AF0888();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B8AFAB30;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B8AF8B60;
  v15[5] = v14;
  textCopy = text;
  selfCopy = self;
  sub_1B8AD7798(0, 0, v10, &unk_1B8AFAB40, v15);
}

- (_TtC26SensitiveContentAnalysisML22SCMLPeopleDetectorImpl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end