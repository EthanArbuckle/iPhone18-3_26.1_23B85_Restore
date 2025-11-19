@interface WFVisualIntelligenceCameraAvailabilityResource
- (_TtC11WorkflowKit46WFVisualIntelligenceCameraAvailabilityResource)initWithDefinition:(id)a3;
- (void)configureWithRunSource:(id)a3;
- (void)refreshAvailability;
@end

@implementation WFVisualIntelligenceCameraAvailabilityResource

- (void)configureWithRunSource:(id)a3
{
  v4 = a3;
  v5 = self;
  WFVisualIntelligenceCameraAvailabilityResource.configure(withRunSource:)(v4);
}

- (void)refreshAvailability
{
  v2 = self;
  WFVisualIntelligenceCameraAvailabilityResource.refreshAvailability()();
}

- (_TtC11WorkflowKit46WFVisualIntelligenceCameraAvailabilityResource)initWithDefinition:(id)a3
{
  if (a3)
  {
    v3 = sub_1CA94C1C8();
  }

  else
  {
    v3 = 0;
  }

  return WFVisualIntelligenceCameraAvailabilityResource.init(definition:)(v3);
}

@end