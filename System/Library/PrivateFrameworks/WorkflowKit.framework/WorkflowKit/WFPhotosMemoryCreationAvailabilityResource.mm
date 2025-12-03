@interface WFPhotosMemoryCreationAvailabilityResource
- (NSString)name;
- (_TtC11WorkflowKit42WFPhotosMemoryCreationAvailabilityResource)initWithDefinition:(id)definition;
- (_TtC11WorkflowKit42WFPhotosMemoryCreationAvailabilityResource)initWithDefinition:(id)definition enableDistributedNotifications:(BOOL)notifications;
- (id)localizedErrorReasonForStatus:(unint64_t)status;
- (void)refreshAvailability;
@end

@implementation WFPhotosMemoryCreationAvailabilityResource

- (NSString)name
{
  selfCopy = self;
  WFPhotosMemoryCreationAvailabilityResource.name.getter();
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
  WFPhotosMemoryCreationAvailabilityResource.refreshAvailability()();
}

- (id)localizedErrorReasonForStatus:(unint64_t)status
{
  selfCopy = self;
  WFPhotosMemoryCreationAvailabilityResource.localizedErrorReason(for:)(status);
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

- (_TtC11WorkflowKit42WFPhotosMemoryCreationAvailabilityResource)initWithDefinition:(id)definition enableDistributedNotifications:(BOOL)notifications
{
  if (definition)
  {
    sub_1CA94C1C8();
  }

  WFPhotosMemoryCreationAvailabilityResource.init(definition:enableDistributedNotifications:)();
}

- (_TtC11WorkflowKit42WFPhotosMemoryCreationAvailabilityResource)initWithDefinition:(id)definition
{
  if (definition)
  {
    sub_1CA94C1C8();
  }

  WFPhotosMemoryCreationAvailabilityResource.init(definition:)();
}

@end