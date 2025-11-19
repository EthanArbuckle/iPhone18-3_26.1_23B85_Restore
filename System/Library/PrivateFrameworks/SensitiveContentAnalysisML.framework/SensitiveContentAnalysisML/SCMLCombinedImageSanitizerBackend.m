@interface SCMLCombinedImageSanitizerBackend
- (_TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend)init;
- (_TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend)initWithConfiguration:(id)a3 error:(id *)a4;
- (void)sanitizeWithRequest:(SCMLImageSanitizerRequest *)a3 output:(SCMLImageSanitization *)a4 backends:(unint64_t)a5 completionHandler:(id)a6;
@end

@implementation SCMLCombinedImageSanitizerBackend

- (_TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend)initWithConfiguration:(id)a3 error:(id *)a4
{
  type metadata accessor for CombinedImageSanitizerBackend();
  v6 = swift_allocObject();
  v7 = a3;
  sub_1B8AA3440(v7);
  *(&self->super.isa + OBJC_IVAR____TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend_backend) = v6;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SCMLCombinedImageSanitizerBackend();
  v8 = [(SCMLCombinedImageSanitizerBackend *)&v10 init];

  return v8;
}

- (void)sanitizeWithRequest:(SCMLImageSanitizerRequest *)a3 output:(SCMLImageSanitization *)a4 backends:(unint64_t)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B88, &qword_1B8AFAB20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_1B8AF0888();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B8AF8B58;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1B8AF8B60;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = self;
  sub_1B8AD7798(0, 0, v14, &unk_1B8AFAB40, v19);
}

- (_TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end