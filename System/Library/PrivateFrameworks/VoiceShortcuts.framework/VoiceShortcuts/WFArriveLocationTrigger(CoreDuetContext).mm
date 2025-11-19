@interface WFArriveLocationTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFArriveLocationTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  v1 = [a1 region];
  v2 = objc_alloc(MEMORY[0x277CBFCD8]);
  [v1 center];
  v4 = v3;
  v6 = v5;
  [v1 radius];
  v8 = v7;
  v9 = [v1 identifier];
  v10 = [v2 initWithCenter:v9 radius:v4 identifier:{v6, v8}];

  if (v10)
  {
    v11 = [MEMORY[0x277CFE338] predicateForCircularLocationRegion:v10 state:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end