@interface WFDeviceCapabilityResource
- (_TtC11WorkflowKit26WFDeviceCapabilityResource)initWithDefinition:(id)definition;
- (void)refreshAvailability;
@end

@implementation WFDeviceCapabilityResource

- (void)refreshAvailability
{
  selfCopy = self;
  sub_1CA67FF14();
}

- (_TtC11WorkflowKit26WFDeviceCapabilityResource)initWithDefinition:(id)definition
{
  if (definition)
  {
    sub_1CA94C1C8();
  }

  WFDeviceCapabilityResource.init(definition:)();
}

@end