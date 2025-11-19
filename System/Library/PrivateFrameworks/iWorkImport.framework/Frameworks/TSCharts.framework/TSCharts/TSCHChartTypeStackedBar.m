@interface TSCHChartTypeStackedBar
- (id)name;
- (id)userInterfaceName;
@end

@implementation TSCHChartTypeStackedBar

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"2D Stacked Bar", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)name
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"2D Stacked Bar Chart", &stru_288528678, @"TSCharts");

  return v10;
}

@end