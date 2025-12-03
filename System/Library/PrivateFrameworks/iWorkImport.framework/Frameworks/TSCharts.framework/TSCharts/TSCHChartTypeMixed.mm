@interface TSCHChartTypeMixed
- (id)defaultSeriesType:(unint64_t)type;
- (id)name;
- (id)userInterfaceName;
@end

@implementation TSCHChartTypeMixed

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"2D Mixed", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)defaultSeriesType:(unint64_t)type
{
  if (type)
  {
    objc_msgSend_mixedColumnSeries(TSCHChartSeriesType, a2, v3, v4, v5);
  }

  else
  {
    objc_msgSend_mixedLineSeries(TSCHChartSeriesType, a2, v3, v4, v5);
  }
  v6 = ;

  return v6;
}

- (id)name
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Mixed Chart", &stru_288528678, @"TSCharts");

  return v10;
}

@end