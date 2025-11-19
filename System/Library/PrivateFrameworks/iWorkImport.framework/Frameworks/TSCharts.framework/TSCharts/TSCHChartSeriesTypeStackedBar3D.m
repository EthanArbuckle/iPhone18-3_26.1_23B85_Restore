@interface TSCHChartSeriesTypeStackedBar3D
- (id)g_genericToSpecificPropertyMap3DStackedBar;
- (id)genericToSpecificPropertyMap;
- (id)userInterfaceName;
@end

@implementation TSCHChartSeriesTypeStackedBar3D

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276245948;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A46F18 != -1)
  {
    dispatch_once(&qword_280A46F18, block);
  }

  return qword_280A46F10;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Stacked Bar 3D", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)g_genericToSpecificPropertyMap3DStackedBar
{
  objc_opt_class();
  v6 = objc_msgSend_bar3DSeries(TSCHChartSeriesType, v2, v3, v4, v5);
  v7 = TSUCheckedDynamicCast();
  v12 = objc_msgSend_g_genericToSpecificPropertyMap3DBar(v7, v8, v9, v10, v11);

  return v12;
}

@end