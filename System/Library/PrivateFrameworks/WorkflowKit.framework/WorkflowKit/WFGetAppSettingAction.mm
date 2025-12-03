@interface WFGetAppSettingAction
- (BOOL)isApprovedForPublicShortcutsDrawer;
- (BOOL)setParameterState:(id)state forKey:(id)key;
- (BOOL)visibleForUse:(int64_t)use;
- (INAppDescriptor)displayableAppDescriptor;
- (NSArray)outputContentClasses;
- (NSArray)parameterDefinitions;
- (WFActionParameterSummary)parameterSummary;
- (_TtC11WorkflowKit21WFGetAppSettingAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
- (id)backingActionIdentifiers;
- (id)entityMetadataForIdentifier:(id)identifier;
- (id)localizedKeywordsWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
- (void)runWithInput:(WFContentCollection *)input completionHandler:(id)handler;
@end

@implementation WFGetAppSettingAction

- (INAppDescriptor)displayableAppDescriptor
{
  selfCopy = self;
  v3 = sub_1CA5F0CE0();

  return v3;
}

- (BOOL)setParameterState:(id)state forKey:(id)key
{
  sub_1CA94C3A8();
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_1CA5F0EA4(state);
  swift_unknownObjectRelease();

  return v7 & 1;
}

- (void)runWithInput:(WFContentCollection *)input completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = input;
  v7[3] = v6;
  v7[4] = self;
  inputCopy = input;
  selfCopy = self;

  sub_1CA67052C(&unk_1CA98E790, v7);
}

- (NSArray)parameterDefinitions
{
  selfCopy = self;
  sub_1CA5F30EC();

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v3 = sub_1CA94C648();

  return v3;
}

- (NSArray)outputContentClasses
{
  selfCopy = self;
  sub_1CA5F3534();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
  v3 = sub_1CA94C648();

  return v3;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1CA5F3990();

  v6 = sub_1CA94C368();

  return v6;
}

- (id)localizedKeywordsWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1CA5F41D0();

  v6 = sub_1CA94C648();

  return v6;
}

- (WFActionParameterSummary)parameterSummary
{
  selfCopy = self;
  v3 = sub_1CA5F4570();

  return v3;
}

- (BOOL)visibleForUse:(int64_t)use
{
  selfCopy = self;
  LOBYTE(use) = sub_1CA5F4684(use);

  return use & 1;
}

- (BOOL)isApprovedForPublicShortcutsDrawer
{
  selfCopy = self;
  sub_1CA5F4844();
  v4 = v3;

  return v4 & 1;
}

- (id)backingActionIdentifiers
{
  selfCopy = self;
  sub_1CA5F49F0();

  v3 = sub_1CA94C648();

  return v3;
}

- (id)entityMetadataForIdentifier:(id)identifier
{
  sub_1CA94C3A8();
  selfCopy = self;
  v5 = sub_1CA5F4AE0();

  return v5;
}

- (_TtC11WorkflowKit21WFGetAppSettingAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  sub_1CA94C3A8();
  if (parameters)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    sub_1CA94C1C8();
  }

  definitionCopy = definition;
  WFGetAppSettingAction.init(identifier:definition:serializedParameters:)();
}

@end