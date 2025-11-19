@interface WFPhotosMemoryCreationAvailabilityResource
- (NSString)name;
- (_TtC11WorkflowKit42WFPhotosMemoryCreationAvailabilityResource)initWithDefinition:(id)a3;
- (_TtC11WorkflowKit42WFPhotosMemoryCreationAvailabilityResource)initWithDefinition:(id)a3 enableDistributedNotifications:(BOOL)a4;
- (id)localizedErrorReasonForStatus:(unint64_t)a3;
- (void)refreshAvailability;
@end

@implementation WFPhotosMemoryCreationAvailabilityResource

- (NSString)name
{
  v2 = self;
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
  v2 = self;
  WFPhotosMemoryCreationAvailabilityResource.refreshAvailability()();
}

- (id)localizedErrorReasonForStatus:(unint64_t)a3
{
  v4 = self;
  WFPhotosMemoryCreationAvailabilityResource.localizedErrorReason(for:)(a3);
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

- (_TtC11WorkflowKit42WFPhotosMemoryCreationAvailabilityResource)initWithDefinition:(id)a3 enableDistributedNotifications:(BOOL)a4
{
  if (a3)
  {
    sub_1CA94C1C8();
  }

  WFPhotosMemoryCreationAvailabilityResource.init(definition:enableDistributedNotifications:)();
}

- (_TtC11WorkflowKit42WFPhotosMemoryCreationAvailabilityResource)initWithDefinition:(id)a3
{
  if (a3)
  {
    sub_1CA94C1C8();
  }

  WFPhotosMemoryCreationAvailabilityResource.init(definition:)();
}

@end