@interface TSCHChartTypeScatter
- (id)allCDESectionLabels;
- (id)name;
- (id)userInterfaceName;
@end

@implementation TSCHChartTypeScatter

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"2D Scatter", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)allCDESectionLabels
{
  v26[2] = *MEMORY[0x277D85DE8];
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"X", &stru_288528678, @"TSCharts");
  v26[0] = v10;
  v14 = sub_276360774(v11, v12, v13);
  v19 = objc_msgSend_localizedStringForKey_value_table_(v14, v15, v16, v17, v18, @"Y", &stru_288528678, @"TSCharts");
  v26[1] = v19;
  v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v20, v21, v22, v23, v26, 2);

  return v24;
}

- (id)name
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Scatter Chart", &stru_288528678, @"TSCharts");

  return v10;
}

@end