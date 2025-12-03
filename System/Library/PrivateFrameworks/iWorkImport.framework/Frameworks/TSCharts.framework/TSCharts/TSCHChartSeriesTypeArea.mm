@interface TSCHChartSeriesTypeArea
- (TSCHChartSeriesTypeArea)init;
- (id)elementBuilder;
- (id)g_genericToSpecificPropertyMapArea;
- (id)userInterfaceName;
- (unsigned)filterChartLabelPosition:(unsigned int)position;
@end

@implementation TSCHChartSeriesTypeArea

- (TSCHChartSeriesTypeArea)init
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TSCHChartSeriesTypeArea;
  v2 = [(TSCHChartSeriesType *)&v17 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCAE60];
    v4 = objc_opt_class();
    v9 = objc_msgSend_valueWithPointer_(v3, v5, v6, v7, v8, v4);
    v18[0] = v9;
    v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v11, v12, v13, v18, 1);
    seriesRendererClasses = v2->super._seriesRendererClasses;
    v2->super._seriesRendererClasses = v14;
  }

  return v2;
}

- (unsigned)filterChartLabelPosition:(unsigned int)position
{
  v3 = position & 0xFFFFFFBC;
  if ((~position & 0xC) == 0)
  {
    v3 = position & 0xFFFFFFB4;
  }

  if ((~v3 & 0x30) != 0)
  {
    return v3;
  }

  else
  {
    return v3 & 0xFFFFFF9C;
  }
}

- (id)elementBuilder
{
  if (qword_280A46E00 != -1)
  {
    sub_2764A73B0();
  }

  v3 = qword_280A46E08;

  return v3;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Area", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)g_genericToSpecificPropertyMapArea
{
  if (qword_280A47490 != -1)
  {
    sub_2764A79EC();
  }

  v3 = qword_280A47488;

  return v3;
}

@end