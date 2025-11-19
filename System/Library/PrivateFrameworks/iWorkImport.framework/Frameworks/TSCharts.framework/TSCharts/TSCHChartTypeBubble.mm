@interface TSCHChartTypeBubble
- (id)allCDESectionLabels;
- (id)name;
- (id)userInterfaceName;
@end

@implementation TSCHChartTypeBubble

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"2D Bubble", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)allCDESectionLabels
{
  v35[3] = *MEMORY[0x277D85DE8];
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"X", &stru_288528678, @"TSCharts");
  v14 = sub_276360774(v11, v12, v13);
  v19 = objc_msgSend_localizedStringForKey_value_table_(v14, v15, v16, v17, v18, @"Y", &stru_288528678, @"TSCharts", v10);
  v35[1] = v19;
  v23 = sub_276360774(v20, v21, v22);
  v28 = objc_msgSend_localizedStringForKey_value_table_(v23, v24, v25, v26, v27, @"Size", &stru_288528678, @"TSCharts");
  v35[2] = v28;
  v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v29, v30, v31, v32, v35, 3);

  return v33;
}

- (id)name
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Bubble Chart", &stru_288528678, @"TSCharts");

  return v10;
}

@end