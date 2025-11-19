@interface SCMLSafetyGuardrail
- (NSString)bundleID;
- (_TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail)init;
- (void)predictWithText:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation SCMLSafetyGuardrail

- (NSString)bundleID
{
  v2 = *(self + OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_bundleID);
  v3 = *(self + OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_bundleID + 8);

  v4 = sub_1B8AF0658();

  return v4;
}

- (void)predictWithText:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B88, &qword_1B8AFAB20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B8AF0888();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B8AFB528;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B8AF8B60;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1B8AD7798(0, 0, v10, &unk_1B8AFAB40, v15);
}

- (_TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end