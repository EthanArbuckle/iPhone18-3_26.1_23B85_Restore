@interface TSCHChartFeaturePie
- (id)genericToSpecificPropertyMap;
- (id)userInterfaceName;
@end

@implementation TSCHChartFeaturePie

- (id)genericToSpecificPropertyMap
{
  v4.receiver = self;
  v4.super_class = TSCHChartFeaturePie;
  v2 = [(TSCHChartFeaturePieFamily *)&v4 genericToSpecificPropertyMap];

  return v2;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Pie", &stru_288528678, @"TSCharts");

  return v10;
}

@end