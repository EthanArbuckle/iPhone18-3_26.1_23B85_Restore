@interface TSCHChartSeriesTypeStackedArea
- (TSCHChartSeriesTypeStackedArea)init;
- (id)elementBuilder;
- (id)g_genericToSpecificPropertyMapStackedArea;
- (id)genericToSpecificPropertyMap;
- (id)userInterfaceName;
- (unsigned)filterChartLabelPosition:(unsigned int)a3;
@end

@implementation TSCHChartSeriesTypeStackedArea

- (TSCHChartSeriesTypeStackedArea)init
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TSCHChartSeriesTypeStackedArea;
  v2 = [(TSCHChartSeriesTypeArea *)&v17 init];
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

- (unsigned)filterChartLabelPosition:(unsigned int)a3
{
  v3 = a3 & 0xFFFFFFBE;
  if ((~a3 & 0xC) == 0)
  {
    v3 = a3 & 0xFFFFFFB6;
  }

  if ((~v3 & 0x30) != 0)
  {
    return v3;
  }

  else
  {
    return v3 & 0xFFFFFF9E;
  }
}

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2762442F4;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A46E58 != -1)
  {
    dispatch_once(&qword_280A46E58, block);
  }

  return qword_280A46E50;
}

- (id)elementBuilder
{
  if (qword_280A46E60 != -1)
  {
    sub_2764A73EC();
  }

  v3 = qword_280A46E68;

  return v3;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Stacked Area", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)g_genericToSpecificPropertyMapStackedArea
{
  if (qword_280A474A0 != -1)
  {
    sub_2764A7A00();
  }

  v3 = qword_280A47498;

  return v3;
}

@end