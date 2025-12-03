@interface WFLeaveLocationTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFLeaveLocationTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  region = [self region];
  v2 = objc_alloc(MEMORY[0x277CBFCD8]);
  [region center];
  v4 = v3;
  v6 = v5;
  [region radius];
  v8 = v7;
  identifier = [region identifier];
  v10 = [v2 initWithCenter:identifier radius:v4 identifier:{v6, v8}];

  if (v10)
  {
    v11 = [MEMORY[0x277CFE338] predicateForCircularLocationRegion:v10 state:2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end