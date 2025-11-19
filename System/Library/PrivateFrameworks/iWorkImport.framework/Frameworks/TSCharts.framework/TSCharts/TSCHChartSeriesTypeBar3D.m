@interface TSCHChartSeriesTypeBar3D
- (id)g_genericToSpecificPropertyMap3DBar;
- (id)genericToSpecificPropertyMap;
- (id)userInterfaceName;
@end

@implementation TSCHChartSeriesTypeBar3D

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27624576C;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A46F08 != -1)
  {
    dispatch_once(&qword_280A46F08, block);
  }

  return qword_280A46F00;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Bar 3D", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)g_genericToSpecificPropertyMap3DBar
{
  if (qword_280A47520 != -1)
  {
    sub_2764A7AA0();
  }

  v3 = qword_280A47518;

  return v3;
}

@end