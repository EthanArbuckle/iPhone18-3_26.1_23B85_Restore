@interface WFAppSettingUpdaterAction
- (BOOL)setParameterState:(id)state forKey:(id)key;
- (BOOL)visibleForUse:(int64_t)use;
- (INAppDescriptor)displayableAppDescriptor;
- (NSArray)availableSubjectValues;
- (NSArray)parameterDefinitions;
- (NSDictionary)outputDictionary;
- (WFActionParameterSummary)parameterSummary;
- (_TtC11WorkflowKit25WFAppSettingUpdaterAction)initWithIdentifier:(id)identifier metadata:(id)metadata metadataForParameterIdentifier:(id)parameterIdentifier definition:(id)definition serializedParameters:(id)parameters appIntentDescriptor:(id)descriptor fullyQualifiedActionIdentifier:(id)actionIdentifier;
- (id)localizedNameWithContext:(id)context;
- (void)configureParameter:(id)parameter;
- (void)finishRunningWith:(LNQueryOutput *)with completionHandler:(id)handler;
- (void)setParameterSummary:(id)summary;
@end

@implementation WFAppSettingUpdaterAction

- (NSDictionary)outputDictionary
{
  selfCopy = self;
  sub_1CA564338();

  v3 = sub_1CA94C1A8();

  return v3;
}

- (INAppDescriptor)displayableAppDescriptor
{
  selfCopy = self;
  v3 = sub_1CA5643A4();

  return v3;
}

- (WFActionParameterSummary)parameterSummary
{
  selfCopy = self;
  v3 = sub_1CA564470();

  return v3;
}

- (void)setParameterSummary:(id)summary
{
  summaryCopy = summary;
  selfCopy = self;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1CA564B08();

  v6 = sub_1CA94C368();

  return v6;
}

- (NSArray)parameterDefinitions
{
  selfCopy = self;
  sub_1CA565038();

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v3 = sub_1CA94C648();

  return v3;
}

- (void)configureParameter:(id)parameter
{
  parameterCopy = parameter;
  selfCopy = self;
  sub_1CA5658B4(parameterCopy);
}

- (BOOL)setParameterState:(id)state forKey:(id)key
{
  sub_1CA94C3A8();
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_1CA565990(state);
  swift_unknownObjectRelease();

  return v7 & 1;
}

- (BOOL)visibleForUse:(int64_t)use
{
  selfCopy = self;
  LOBYTE(use) = sub_1CA565D3C(use);

  return use & 1;
}

- (void)finishRunningWith:(LNQueryOutput *)with completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = with;
  v7[3] = v6;
  v7[4] = self;
  withCopy = with;
  selfCopy = self;

  sub_1CA67052C(&unk_1CA98B6A8, v7);
}

- (NSArray)availableSubjectValues
{
  selfCopy = self;
  sub_1CA5663E4();

  v3 = sub_1CA94C648();

  return v3;
}

- (_TtC11WorkflowKit25WFAppSettingUpdaterAction)initWithIdentifier:(id)identifier metadata:(id)metadata metadataForParameterIdentifier:(id)parameterIdentifier definition:(id)definition serializedParameters:(id)parameters appIntentDescriptor:(id)descriptor fullyQualifiedActionIdentifier:(id)actionIdentifier
{
  sub_1CA94C3A8();
  sub_1CA25B3D0(0, &qword_1EC444660, 0x1E69AC670);
  sub_1CA94C1C8();
  if (parameters)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    sub_1CA94C1C8();
  }

  metadataCopy = metadata;
  definitionCopy = definition;
  descriptorCopy = descriptor;
  actionIdentifierCopy = actionIdentifier;
  WFAppSettingUpdaterAction.__allocating_init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)();
}

@end