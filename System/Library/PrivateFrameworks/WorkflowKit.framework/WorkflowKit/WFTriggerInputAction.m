@interface WFTriggerInputAction
- (_TtC11WorkflowKit20WFTriggerInputAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (id)localizedNameWithContext:(id)a3;
@end

@implementation WFTriggerInputAction

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA45C08C(v4);

  v6 = sub_1CA94C368();

  return v6;
}

- (_TtC11WorkflowKit20WFTriggerInputAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  sub_1CA94C3A8();
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    sub_1CA94C1C8();
  }

  v7 = a4;
  WFTriggerInputAction.init(identifier:definition:serializedParameters:)();
}

@end