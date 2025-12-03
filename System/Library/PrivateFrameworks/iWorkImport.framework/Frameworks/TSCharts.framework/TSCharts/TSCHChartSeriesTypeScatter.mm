@interface TSCHChartSeriesTypeScatter
- (TSCHChartSeriesTypeScatter)init;
- (id)elementBuilder;
- (id)g_genericToSpecificPropertyMapScatter;
- (id)p_supportedSymbolsIfSymbolsSupported;
- (id)propertiesForReferenceColors;
- (id)userInterfaceName;
- (unsigned)filterChartLabelPosition:(unsigned int)position;
@end

@implementation TSCHChartSeriesTypeScatter

- (TSCHChartSeriesTypeScatter)init
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TSCHChartSeriesTypeScatter;
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
  v3 = position & 0xFFFFFFBE;
  if ((~position & 0xC) == 0)
  {
    v3 = position & 0xFFFFFFB6;
  }

  if ((~v3 & 0x30) == 0)
  {
    v3 &= 0xFFFFFF9C;
  }

  return v3 | 2;
}

- (id)p_supportedSymbolsIfSymbolsSupported
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  for (i = 0; i != 8; ++i)
  {
    v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, v7, v8, v9, i);
    objc_msgSend_addObject_(v6, v12, v13, v14, v15, v11);
  }

  return v6;
}

- (id)propertiesForReferenceColors
{
  if (qword_280A46D98 != -1)
  {
    sub_2764A7338();
  }

  v3 = qword_280A46D90;

  return v3;
}

- (id)elementBuilder
{
  if (qword_280A46DA0 != -1)
  {
    sub_2764A734C();
  }

  v3 = qword_280A46DA8;

  return v3;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Scatter", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)g_genericToSpecificPropertyMapScatter
{
  if (qword_280A47440 != -1)
  {
    sub_2764A7988();
  }

  v3 = qword_280A47438;

  return v3;
}

@end