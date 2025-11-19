@interface TSCHChartTypePie
- (id)localizedToolTipDescriptionForShadow;
- (id)name;
- (id)userInterfaceName;
@end

@implementation TSCHChartTypePie

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"2D Pie", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)localizedToolTipDescriptionForShadow
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Choose to add a shadow to each wedge, or to the entire chart.", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)name
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"2D Pie Chart", &stru_288528678, @"TSCharts");

  return v10;
}

@end