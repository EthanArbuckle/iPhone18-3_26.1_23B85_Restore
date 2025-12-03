@interface SCMLCombinedImageSanitizerBackend
- (_TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend)init;
- (_TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend)initWithConfiguration:(id)configuration error:(id *)error;
- (void)sanitizeWithRequest:(SCMLImageSanitizerRequest *)request output:(SCMLImageSanitization *)output backends:(unint64_t)backends completionHandler:(id)handler;
@end

@implementation SCMLCombinedImageSanitizerBackend

- (_TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend)initWithConfiguration:(id)configuration error:(id *)error
{
  type metadata accessor for CombinedImageSanitizerBackend();
  v6 = swift_allocObject();
  configurationCopy = configuration;
  sub_1B8AA3440(configurationCopy);
  *(&self->super.isa + OBJC_IVAR____TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend_backend) = v6;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SCMLCombinedImageSanitizerBackend();
  v8 = [(SCMLCombinedImageSanitizerBackend *)&v10 init];

  return v8;
}

- (void)sanitizeWithRequest:(SCMLImageSanitizerRequest *)request output:(SCMLImageSanitization *)output backends:(unint64_t)backends completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B88, &qword_1B8AFAB20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = request;
  v16[3] = output;
  v16[4] = backends;
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
  requestCopy = request;
  outputCopy = output;
  selfCopy = self;
  sub_1B8AD7798(0, 0, v14, &unk_1B8AFAB40, v19);
}

- (_TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end