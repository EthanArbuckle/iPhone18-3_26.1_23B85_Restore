@interface WFIntelligencePlatformViewAvailableResource
+ (_TtC11WorkflowKit43WFIntelligencePlatformViewAvailableResource)sportsTeams;
- (_TtC11WorkflowKit43WFIntelligencePlatformViewAvailableResource)initWithDefinition:(id)definition;
- (void)refreshAvailability;
@end

@implementation WFIntelligencePlatformViewAvailableResource

+ (_TtC11WorkflowKit43WFIntelligencePlatformViewAvailableResource)sportsTeams
{
  v2 = static WFIntelligencePlatformViewAvailableResource.sportsTeams.getter();

  return v2;
}

- (void)refreshAvailability
{
  selfCopy = self;
  sub_1CA2DD89C();
}

- (_TtC11WorkflowKit43WFIntelligencePlatformViewAvailableResource)initWithDefinition:(id)definition
{
  if (definition)
  {
    sub_1CA94C1C8();
  }

  WFIntelligencePlatformViewAvailableResource.init(definition:)();
}

@end