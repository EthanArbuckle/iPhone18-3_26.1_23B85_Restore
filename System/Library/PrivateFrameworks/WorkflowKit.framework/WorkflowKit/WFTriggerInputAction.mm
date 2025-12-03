@interface WFTriggerInputAction
- (_TtC11WorkflowKit20WFTriggerInputAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
- (id)localizedNameWithContext:(id)context;
@end

@implementation WFTriggerInputAction

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1CA45C08C(contextCopy);

  v6 = sub_1CA94C368();

  return v6;
}

- (_TtC11WorkflowKit20WFTriggerInputAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  sub_1CA94C3A8();
  if (parameters)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    sub_1CA94C1C8();
  }

  definitionCopy = definition;
  WFTriggerInputAction.init(identifier:definition:serializedParameters:)();
}

@end