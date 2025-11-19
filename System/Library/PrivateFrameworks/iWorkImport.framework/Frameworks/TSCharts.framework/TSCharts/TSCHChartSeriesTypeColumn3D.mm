@interface TSCHChartSeriesTypeColumn3D
- (id)g_genericToSpecificPropertyMap3DColumn;
- (id)genericToSpecificPropertyMap;
- (id)userInterfaceName;
@end

@implementation TSCHChartSeriesTypeColumn3D

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2762453B4;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A46EE8 != -1)
  {
    dispatch_once(&qword_280A46EE8, block);
  }

  return qword_280A46EE0;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Column 3D", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)g_genericToSpecificPropertyMap3DColumn
{
  if (qword_280A47510 != -1)
  {
    sub_2764A7A8C();
  }

  v3 = qword_280A47508;

  return v3;
}

@end