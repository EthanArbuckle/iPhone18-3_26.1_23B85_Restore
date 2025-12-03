@interface HUDUserClientInsightGroup
- (HUDUserClientInsightGroup)initWithCategory:(id)category;
@end

@implementation HUDUserClientInsightGroup

- (HUDUserClientInsightGroup)initWithCategory:(id)category
{
  categoryCopy = category;
  v11.receiver = self;
  v11.super_class = HUDUserClientInsightGroup;
  v6 = [(HUDUserClientInsightGroup *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_category, category);
    v8 = objc_opt_new();
    insights = v7->_insights;
    v7->_insights = v8;

    v7->_enabled = 1;
  }

  return v7;
}

@end