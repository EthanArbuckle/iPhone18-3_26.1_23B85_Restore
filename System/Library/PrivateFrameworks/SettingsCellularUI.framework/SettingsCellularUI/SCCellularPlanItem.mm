@interface SCCellularPlanItem
- (SCCellularPlanItem)initWithAlias:(id)alias alias:(id)a4;
@end

@implementation SCCellularPlanItem

- (SCCellularPlanItem)initWithAlias:(id)alias alias:(id)a4
{
  aliasCopy = alias;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SCCellularPlanItem;
  v9 = [(SCCellularPlanItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_item, alias);
    objc_storeStrong(&v10->_alias, a4);
  }

  return v10;
}

@end