@interface WFFeatureFlagResource
- (_TtC11WorkflowKit21WFFeatureFlagResource)initWithDefinition:(id)definition;
- (_TtC11WorkflowKit21WFFeatureFlagResource)initWithDomain:(id)domain feature:(id)feature value:(BOOL)value;
- (void)refreshAvailability;
@end

@implementation WFFeatureFlagResource

- (_TtC11WorkflowKit21WFFeatureFlagResource)initWithDomain:(id)domain feature:(id)feature value:(BOOL)value
{
  v6 = sub_1CA94C3A8();
  v8 = v7;
  v9 = sub_1CA94C3A8();
  WFFeatureFlagResource.init(domain:feature:value:)(v6, v8, v9, v10, value);
  return result;
}

- (void)refreshAvailability
{
  selfCopy = self;
  sub_1CA32FBE4();
}

- (_TtC11WorkflowKit21WFFeatureFlagResource)initWithDefinition:(id)definition
{
  if (definition)
  {
    sub_1CA94C1C8();
  }

  WFFeatureFlagResource.init(definition:)();
}

@end