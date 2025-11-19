@interface TSCHChartSeriesTypeLine
- (TSCHChartSeriesTypeLine)init;
- (id)elementBuilder;
- (id)g_genericToSpecificPropertyMapLine;
- (id)propertiesForReferenceColors;
- (id)userInterfaceName;
- (unsigned)filterChartLabelPosition:(unsigned int)a3;
@end

@implementation TSCHChartSeriesTypeLine

- (TSCHChartSeriesTypeLine)init
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TSCHChartSeriesTypeLine;
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

- (unsigned)filterChartLabelPosition:(unsigned int)a3
{
  v3 = a3 & 0xFFFFFFBE;
  if ((~a3 & 0xC) == 0)
  {
    v3 = a3 & 0xFFFFFFB6;
  }

  if ((~v3 & 0x30) == 0)
  {
    v3 &= 0xFFFFFF9F;
  }

  v4 = v3 & 0xFFFFFFBC;
  if ((v3 & 0xFFFFFFBC) == 0)
  {
    v4 = 4;
  }

  if ((v3 & 2) != 0)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

- (id)elementBuilder
{
  if (qword_280A46DE0 != -1)
  {
    sub_2764A7388();
  }

  v3 = qword_280A46DE8;

  return v3;
}

- (id)propertiesForReferenceColors
{
  if (qword_280A46DF8 != -1)
  {
    sub_2764A739C();
  }

  v3 = qword_280A46DF0;

  return v3;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Line", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)g_genericToSpecificPropertyMapLine
{
  if (qword_280A47480 != -1)
  {
    sub_2764A79D8();
  }

  v3 = qword_280A47478;

  return v3;
}

@end