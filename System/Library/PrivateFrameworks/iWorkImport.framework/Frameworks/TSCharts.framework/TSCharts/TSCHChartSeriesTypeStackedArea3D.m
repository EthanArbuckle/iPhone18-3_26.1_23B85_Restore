@interface TSCHChartSeriesTypeStackedArea3D
- (id)g_genericToSpecificPropertyMap3DStackedArea;
- (id)genericToSpecificPropertyMap;
- (id)userInterfaceName;
@end

@implementation TSCHChartSeriesTypeStackedArea3D

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276246060;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A46F58 != -1)
  {
    dispatch_once(&qword_280A46F58, block);
  }

  return qword_280A46F50;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Stacked Area 3D", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)g_genericToSpecificPropertyMap3DStackedArea
{
  objc_opt_class();
  v6 = objc_msgSend_area3DSeries(TSCHChartSeriesType, v2, v3, v4, v5);
  v7 = TSUCheckedDynamicCast();
  v12 = objc_msgSend_g_genericToSpecificPropertyMap3DArea(v7, v8, v9, v10, v11);

  return v12;
}

@end