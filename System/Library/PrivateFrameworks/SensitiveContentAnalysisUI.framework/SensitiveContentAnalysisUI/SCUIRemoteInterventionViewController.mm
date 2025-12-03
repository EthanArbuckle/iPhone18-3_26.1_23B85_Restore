@interface SCUIRemoteInterventionViewController
+ (id)contextDictionaryFromTypeErasedConfig:(id)config;
+ (id)typeErasedConfigWithWorkflow:(int64_t)workflow contextDictionary:(id)dictionary type:(int64_t)type options:(int64_t)options;
- (SCUIRemoteInterventionViewController)initWithCoder:(id)coder;
- (SCUIRemoteInterventionViewController)initWithFacade:(id)facade typeErasedConfig:(id)config;
- (SCUIRemoteInterventionViewController)initWithFacade:(id)facade workflow:(int64_t)workflow type:(int64_t)type contextDictionary:(id)dictionary;
- (SCUIRemoteInterventionViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation SCUIRemoteInterventionViewController

- (SCUIRemoteInterventionViewController)initWithCoder:(id)coder
{
  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

- (SCUIRemoteInterventionViewController)initWithFacade:(id)facade workflow:(int64_t)workflow type:(int64_t)type contextDictionary:(id)dictionary
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v29 - v12;
  v14 = sub_1BC759EE0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for InterventionConfig(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v29 - v23;
  if (dictionary)
  {
    dictionary = sub_1BC75BA40();
  }

  swift_unknownObjectRetain();
  sub_1BC6E53B4(type);
  v25 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  sub_1BC6E3EAC(workflow, dictionary, v17, 1, v13, v24);
  ObjectType = swift_getObjectType();
  sub_1BC6E86E8(v24, v22);
  v27 = (*(ObjectType + 96))(facade, v22);
  sub_1BC6980C0(v24);
  swift_deallocPartialClassInstance();
  return v27;
}

- (SCUIRemoteInterventionViewController)initWithFacade:(id)facade typeErasedConfig:(id)config
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1BC75C160();
  swift_unknownObjectRelease();
  return RemoteInterventionViewController.init(facade:typeErasedConfig:)(facade, v6);
}

- (SCUIRemoteInterventionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)typeErasedConfigWithWorkflow:(int64_t)workflow contextDictionary:(id)dictionary type:(int64_t)type options:(int64_t)options
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  v13 = sub_1BC759EE0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for InterventionConfig(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v27 - v22;
  if (dictionary)
  {
    dictionary = sub_1BC75BA40();
  }

  sub_1BC6E53B4(type);
  v24 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
  sub_1BC6E3EAC(workflow, dictionary, v16, 1, v12, v23);
  sub_1BC6E86E8(v23, v21);
  v25 = sub_1BC75C620();
  sub_1BC6980C0(v23);

  return v25;
}

+ (id)contextDictionaryFromTypeErasedConfig:(id)config
{
  swift_unknownObjectRetain();
  sub_1BC75C160();
  swift_unknownObjectRelease();
  _s26SensitiveContentAnalysisUI32RemoteInterventionViewControllerC17contextDictionary20fromTypeErasedConfigSDys11AnyHashableVypGyp_tFZ_0(v5);
  __swift_destroy_boxed_opaque_existential_1(v5);
  v3 = sub_1BC75BA30();

  return v3;
}

@end