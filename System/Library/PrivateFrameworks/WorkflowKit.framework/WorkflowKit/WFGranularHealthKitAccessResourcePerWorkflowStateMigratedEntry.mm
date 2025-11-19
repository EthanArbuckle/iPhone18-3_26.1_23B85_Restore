@interface WFGranularHealthKitAccessResourcePerWorkflowStateMigratedEntry
- (WFGranularHealthKitAccessResourcePerWorkflowStateMigratedEntry)initWithCoder:(id)a3;
@end

@implementation WFGranularHealthKitAccessResourcePerWorkflowStateMigratedEntry

- (WFGranularHealthKitAccessResourcePerWorkflowStateMigratedEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFGranularHealthKitAccessResourcePerWorkflowStateMigratedEntry;
  v5 = [(WFGranularHealthKitAccessResourcePerWorkflowStateMigratedEntry *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isAuthorized"];
    authorized = v5->authorized;
    v5->authorized = v6;

    v8 = v5;
  }

  return v5;
}

@end