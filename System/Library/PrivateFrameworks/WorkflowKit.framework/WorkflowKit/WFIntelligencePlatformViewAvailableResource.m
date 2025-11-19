@interface WFIntelligencePlatformViewAvailableResource
+ (_TtC11WorkflowKit43WFIntelligencePlatformViewAvailableResource)sportsTeams;
- (_TtC11WorkflowKit43WFIntelligencePlatformViewAvailableResource)initWithDefinition:(id)a3;
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
  v2 = self;
  sub_1CA2DD89C();
}

- (_TtC11WorkflowKit43WFIntelligencePlatformViewAvailableResource)initWithDefinition:(id)a3
{
  if (a3)
  {
    sub_1CA94C1C8();
  }

  WFIntelligencePlatformViewAvailableResource.init(definition:)();
}

@end