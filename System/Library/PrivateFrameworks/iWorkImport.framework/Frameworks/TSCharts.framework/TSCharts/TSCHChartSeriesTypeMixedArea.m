@interface TSCHChartSeriesTypeMixedArea
- (id)g_genericToSpecificPropertyMapMixedArea;
- (id)genericToSpecificPropertyMap;
- (id)userInterfaceName;
@end

@implementation TSCHChartSeriesTypeMixedArea

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276244928;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A46E98 != -1)
  {
    dispatch_once(&qword_280A46E98, block);
  }

  return qword_280A46E90;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Area", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)g_genericToSpecificPropertyMapMixedArea
{
  if (qword_280A474F0 != -1)
  {
    sub_2764A7A64();
  }

  v3 = qword_280A474E8;

  return v3;
}

@end