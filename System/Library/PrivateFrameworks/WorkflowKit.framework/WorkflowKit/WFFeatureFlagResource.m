@interface WFFeatureFlagResource
- (_TtC11WorkflowKit21WFFeatureFlagResource)initWithDefinition:(id)a3;
- (_TtC11WorkflowKit21WFFeatureFlagResource)initWithDomain:(id)a3 feature:(id)a4 value:(BOOL)a5;
- (void)refreshAvailability;
@end

@implementation WFFeatureFlagResource

- (_TtC11WorkflowKit21WFFeatureFlagResource)initWithDomain:(id)a3 feature:(id)a4 value:(BOOL)a5
{
  v6 = sub_1CA94C3A8();
  v8 = v7;
  v9 = sub_1CA94C3A8();
  WFFeatureFlagResource.init(domain:feature:value:)(v6, v8, v9, v10, a5);
  return result;
}

- (void)refreshAvailability
{
  v2 = self;
  sub_1CA32FBE4();
}

- (_TtC11WorkflowKit21WFFeatureFlagResource)initWithDefinition:(id)a3
{
  if (a3)
  {
    sub_1CA94C1C8();
  }

  WFFeatureFlagResource.init(definition:)();
}

@end