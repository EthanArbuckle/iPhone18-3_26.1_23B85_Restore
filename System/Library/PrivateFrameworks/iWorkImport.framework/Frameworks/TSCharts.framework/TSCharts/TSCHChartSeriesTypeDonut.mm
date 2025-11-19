@interface TSCHChartSeriesTypeDonut
- (TSCHChartSeriesTypeDonut)init;
- (id)elementBuilder;
- (id)g_genericToSpecificPropertyMapDonut;
- (id)genericToSpecificPropertyMap;
- (id)inspectorLocalizedValueLabelsTabName;
- (id)seriesFillLabelUIString;
- (id)userInterfaceName;
@end

@implementation TSCHChartSeriesTypeDonut

- (TSCHChartSeriesTypeDonut)init
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TSCHChartSeriesTypeDonut;
  v2 = [(TSCHChartSeriesTypePie *)&v17 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCAE60];
    v4 = objc_opt_class();
    v9 = objc_msgSend_valueWithPointer_(v3, v5, v6, v7, v8, v4);
    v18[0] = v9;
    v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v11, v12, v13, v18, 1);
    seriesRendererClasses = v2->super.super._seriesRendererClasses;
    v2->super.super._seriesRendererClasses = v14;
  }

  return v2;
}

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2762417A0;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A46D78 != -1)
  {
    dispatch_once(&qword_280A46D78, block);
  }

  return qword_280A46D70;
}

- (id)elementBuilder
{
  if (qword_280A46D80 != -1)
  {
    sub_2764A7324();
  }

  v3 = qword_280A46D88;

  return v3;
}

- (id)inspectorLocalizedValueLabelsTabName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Segment Labels", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)seriesFillLabelUIString
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Segment Fill", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Donut", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)g_genericToSpecificPropertyMapDonut
{
  if (qword_280A47430 != -1)
  {
    sub_2764A7974();
  }

  v3 = qword_280A47428;

  return v3;
}

@end