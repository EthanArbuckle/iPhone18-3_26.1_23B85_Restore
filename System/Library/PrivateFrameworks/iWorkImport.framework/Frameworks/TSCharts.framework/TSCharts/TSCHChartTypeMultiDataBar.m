@interface TSCHChartTypeMultiDataBar
- (id)genericToSpecificPropertyMap;
- (id)name;
- (id)userInterfaceName;
@end

@implementation TSCHChartTypeMultiDataBar

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27624EB88;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A47198 != -1)
  {
    dispatch_once(&qword_280A47198, block);
  }

  return qword_280A47190;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Interactive Bar", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)name
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Interactive Bar Chart", &stru_288528678, @"TSCharts");

  return v10;
}

@end