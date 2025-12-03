@interface TSCHChartSeriesTypeDonut3D
- (id)g_genericToSpecificPropertyMap3DDonut;
- (id)genericToSpecificPropertyMap;
- (id)userInterfaceName;
- (id)valueAxisForSeries:(id)series;
@end

@implementation TSCHChartSeriesTypeDonut3D

- (id)valueAxisForSeries:(id)series
{
  seriesCopy = series;
  v8 = objc_msgSend_axisIDForAxisType_(seriesCopy, v4, v5, v6, v7, 3);
  v13 = objc_msgSend_model(seriesCopy, v9, v10, v11, v12);
  v18 = objc_msgSend_axisForID_(v13, v14, v15, v16, v17, v8);

  return v18;
}

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276246578;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A46F78 != -1)
  {
    dispatch_once(&qword_280A46F78, block);
  }

  return qword_280A46F70;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Donut 3D", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)g_genericToSpecificPropertyMap3DDonut
{
  if (qword_280A47560 != -1)
  {
    sub_2764A7AF0();
  }

  v3 = qword_280A47558;

  return v3;
}

@end