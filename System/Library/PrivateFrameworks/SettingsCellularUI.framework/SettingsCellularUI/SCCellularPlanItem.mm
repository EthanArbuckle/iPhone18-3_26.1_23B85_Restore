@interface SCCellularPlanItem
- (SCCellularPlanItem)initWithAlias:(id)a3 alias:(id)a4;
@end

@implementation SCCellularPlanItem

- (SCCellularPlanItem)initWithAlias:(id)a3 alias:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SCCellularPlanItem;
  v9 = [(SCCellularPlanItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_item, a3);
    objc_storeStrong(&v10->_alias, a4);
  }

  return v10;
}

@end