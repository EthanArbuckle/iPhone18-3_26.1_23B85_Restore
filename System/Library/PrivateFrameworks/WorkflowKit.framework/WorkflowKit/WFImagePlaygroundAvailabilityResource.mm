@interface WFImagePlaygroundAvailabilityResource
- (NSString)name;
- (_TtC11WorkflowKit37WFImagePlaygroundAvailabilityResource)initWithDefinition:(id)definition;
- (_TtC11WorkflowKit37WFImagePlaygroundAvailabilityResource)initWithDefinition:(id)definition enableDistributedNotifications:(BOOL)notifications;
- (id)localizedErrorReasonForStatus:(unint64_t)status;
- (void)refreshAvailability;
@end

@implementation WFImagePlaygroundAvailabilityResource

- (NSString)name
{
  selfCopy = self;
  WFImagePlaygroundAvailabilityResource.name.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1CA94C368();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)refreshAvailability
{
  selfCopy = self;
  WFImagePlaygroundAvailabilityResource.refreshAvailability()();
}

- (id)localizedErrorReasonForStatus:(unint64_t)status
{
  selfCopy = self;
  WFImagePlaygroundAvailabilityResource.localizedErrorReason(for:)(status);
  v6 = v5;

  if (v6)
  {
    v7 = sub_1CA94C368();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_TtC11WorkflowKit37WFImagePlaygroundAvailabilityResource)initWithDefinition:(id)definition enableDistributedNotifications:(BOOL)notifications
{
  if (definition)
  {
    sub_1CA94C1C8();
  }

  WFImagePlaygroundAvailabilityResource.init(definition:enableDistributedNotifications:)();
}

- (_TtC11WorkflowKit37WFImagePlaygroundAvailabilityResource)initWithDefinition:(id)definition
{
  if (definition)
  {
    sub_1CA94C1C8();
  }

  WFImagePlaygroundAvailabilityResource.init(definition:)();
}

@end