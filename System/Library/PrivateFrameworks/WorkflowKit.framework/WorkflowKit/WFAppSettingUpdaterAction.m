@interface WFAppSettingUpdaterAction
- (BOOL)setParameterState:(id)a3 forKey:(id)a4;
- (BOOL)visibleForUse:(int64_t)a3;
- (INAppDescriptor)displayableAppDescriptor;
- (NSArray)availableSubjectValues;
- (NSArray)parameterDefinitions;
- (NSDictionary)outputDictionary;
- (WFActionParameterSummary)parameterSummary;
- (_TtC11WorkflowKit25WFAppSettingUpdaterAction)initWithIdentifier:(id)a3 metadata:(id)a4 metadataForParameterIdentifier:(id)a5 definition:(id)a6 serializedParameters:(id)a7 appIntentDescriptor:(id)a8 fullyQualifiedActionIdentifier:(id)a9;
- (id)localizedNameWithContext:(id)a3;
- (void)configureParameter:(id)a3;
- (void)finishRunningWith:(LNQueryOutput *)a3 completionHandler:(id)a4;
- (void)setParameterSummary:(id)a3;
@end

@implementation WFAppSettingUpdaterAction

- (NSDictionary)outputDictionary
{
  v2 = self;
  sub_1CA564338();

  v3 = sub_1CA94C1A8();

  return v3;
}

- (INAppDescriptor)displayableAppDescriptor
{
  v2 = self;
  v3 = sub_1CA5643A4();

  return v3;
}

- (WFActionParameterSummary)parameterSummary
{
  v2 = self;
  v3 = sub_1CA564470();

  return v3;
}

- (void)setParameterSummary:(id)a3
{
  v5 = a3;
  v6 = self;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA564B08();

  v6 = sub_1CA94C368();

  return v6;
}

- (NSArray)parameterDefinitions
{
  v2 = self;
  sub_1CA565038();

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v3 = sub_1CA94C648();

  return v3;
}

- (void)configureParameter:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA5658B4(v4);
}

- (BOOL)setParameterState:(id)a3 forKey:(id)a4
{
  sub_1CA94C3A8();
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_1CA565990(a3);
  swift_unknownObjectRelease();

  return v7 & 1;
}

- (BOOL)visibleForUse:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1CA565D3C(a3);

  return a3 & 1;
}

- (void)finishRunningWith:(LNQueryOutput *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1CA67052C(&unk_1CA98B6A8, v7);
}

- (NSArray)availableSubjectValues
{
  v2 = self;
  sub_1CA5663E4();

  v3 = sub_1CA94C648();

  return v3;
}

- (_TtC11WorkflowKit25WFAppSettingUpdaterAction)initWithIdentifier:(id)a3 metadata:(id)a4 metadataForParameterIdentifier:(id)a5 definition:(id)a6 serializedParameters:(id)a7 appIntentDescriptor:(id)a8 fullyQualifiedActionIdentifier:(id)a9
{
  sub_1CA94C3A8();
  sub_1CA25B3D0(0, &qword_1EC444660, 0x1E69AC670);
  sub_1CA94C1C8();
  if (a7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    sub_1CA94C1C8();
  }

  v13 = a4;
  v14 = a6;
  v15 = a8;
  v16 = a9;
  WFAppSettingUpdaterAction.__allocating_init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)();
}

@end