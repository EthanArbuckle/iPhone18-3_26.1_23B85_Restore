@interface TSCHChartSeriesTypeMixedLine
- (id)g_genericToSpecificPropertyMapMixedLine;
- (id)genericToSpecificPropertyMap;
- (id)userInterfaceName;
@end

@implementation TSCHChartSeriesTypeMixedLine

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27624473C;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A46E88 != -1)
  {
    dispatch_once(&qword_280A46E88, block);
  }

  return qword_280A46E80;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Line", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)g_genericToSpecificPropertyMapMixedLine
{
  if (qword_280A474E0 != -1)
  {
    sub_2764A7A50();
  }

  v3 = qword_280A474D8;

  return v3;
}

@end