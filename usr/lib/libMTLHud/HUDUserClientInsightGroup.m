@interface HUDUserClientInsightGroup
- (HUDUserClientInsightGroup)initWithCategory:(id)a3;
@end

@implementation HUDUserClientInsightGroup

- (HUDUserClientInsightGroup)initWithCategory:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HUDUserClientInsightGroup;
  v6 = [(HUDUserClientInsightGroup *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_category, a3);
    v8 = objc_opt_new();
    insights = v7->_insights;
    v7->_insights = v8;

    v7->_enabled = 1;
  }

  return v7;
}

@end