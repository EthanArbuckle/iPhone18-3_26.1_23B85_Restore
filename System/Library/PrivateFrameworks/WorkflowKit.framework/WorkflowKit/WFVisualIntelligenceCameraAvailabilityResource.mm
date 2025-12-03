@interface WFVisualIntelligenceCameraAvailabilityResource
- (_TtC11WorkflowKit46WFVisualIntelligenceCameraAvailabilityResource)initWithDefinition:(id)definition;
- (void)configureWithRunSource:(id)source;
- (void)refreshAvailability;
@end

@implementation WFVisualIntelligenceCameraAvailabilityResource

- (void)configureWithRunSource:(id)source
{
  sourceCopy = source;
  selfCopy = self;
  WFVisualIntelligenceCameraAvailabilityResource.configure(withRunSource:)(sourceCopy);
}

- (void)refreshAvailability
{
  selfCopy = self;
  WFVisualIntelligenceCameraAvailabilityResource.refreshAvailability()();
}

- (_TtC11WorkflowKit46WFVisualIntelligenceCameraAvailabilityResource)initWithDefinition:(id)definition
{
  if (definition)
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