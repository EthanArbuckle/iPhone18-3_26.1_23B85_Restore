@interface TSCHChartPolarCategoryAxis
- (id)g_genericToSpecificPropertyMap;
@end

@implementation TSCHChartPolarCategoryAxis

- (id)g_genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2762CFAC8;
  block[3] = &unk_27A6B6D38;
  block[4] = self;
  if (qword_280A47310 != -1)
  {
    dispatch_once(&qword_280A47310, block);
  }

  return qword_280A47308;
}

@end