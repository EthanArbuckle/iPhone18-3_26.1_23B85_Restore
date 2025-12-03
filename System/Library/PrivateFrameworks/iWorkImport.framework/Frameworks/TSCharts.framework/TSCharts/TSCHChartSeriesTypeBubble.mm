@interface TSCHChartSeriesTypeBubble
- (TSCHChartSeriesTypeBubble)init;
- (id)elementBuilder;
- (id)g_genericToSpecificPropertyMapBubble;
- (id)inspectorLocalizedValueLabelsDisclosureTitle;
- (id)inspectorLocalizedValueLabelsTabName;
- (id)propertiesForReferenceColors;
- (id)userInterfaceName;
- (unsigned)filterChartLabelPosition:(unsigned int)position;
@end

@implementation TSCHChartSeriesTypeBubble

- (TSCHChartSeriesTypeBubble)init
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TSCHChartSeriesTypeBubble;
  v2 = [(TSCHChartSeriesTypeScatter *)&v17 init];
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

- (unsigned)filterChartLabelPosition:(unsigned int)position
{
  v5.receiver = self;
  v5.super_class = TSCHChartSeriesTypeBubble;
  v3 = [(TSCHChartSeriesTypeScatter *)&v5 filterChartLabelPosition:*&position];
  if ((v3 & 0xFFFFFFBC) != 0)
  {
    return v3 & 0xFFFFFFBC | 2;
  }

  else
  {
    return 0;
  }
}

- (id)elementBuilder
{
  if (qword_280A46EA0 != -1)
  {
    sub_2764A7400();
  }

  v3 = qword_280A46EA8;

  return v3;
}

- (id)propertiesForReferenceColors
{
  if (qword_280A46EB8 != -1)
  {
    sub_2764A7414();
  }

  v3 = qword_280A46EB0;

  return v3;
}

- (id)inspectorLocalizedValueLabelsTabName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Bubble Labels", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)inspectorLocalizedValueLabelsDisclosureTitle
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Bubble Labels", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Bubble", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)g_genericToSpecificPropertyMapBubble
{
  if (qword_280A47450 != -1)
  {
    sub_2764A799C();
  }

  v3 = qword_280A47448;

  return v3;
}

@end