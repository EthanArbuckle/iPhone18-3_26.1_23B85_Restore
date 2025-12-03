@interface TSCHChartSeriesTypeStackedColumn
- (TSCHChartSeriesTypeStackedColumn)init;
- (id)elementBuilder;
- (id)g_genericToSpecificPropertyMapStackedColumn;
- (id)genericToSpecificPropertyMap;
- (id)userInterfaceName;
- (id)userInterfaceNameForLabelPosition:(id)position;
- (unint64_t)numberOfSeriesForCalculatingBarWidth:(id)width;
- (unsigned)filterChartLabelPosition:(unsigned int)position;
@end

@implementation TSCHChartSeriesTypeStackedColumn

- (TSCHChartSeriesTypeStackedColumn)init
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TSCHChartSeriesTypeStackedColumn;
  v2 = [(TSCHChartSeriesTypeColumn *)&v17 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCAE60];
    v4 = objc_opt_class();
    v9 = objc_msgSend_valueWithPointer_(v3, v5, v6, v7, v8, v4);
    v18[0] = v9;
    v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v11, v12, v13, v18, 1);
    seriesRendererClasses = v2->super.super.super._seriesRendererClasses;
    v2->super.super.super._seriesRendererClasses = v14;
  }

  return v2;
}

- (id)userInterfaceNameForLabelPosition:(id)position
{
  positionCopy = position;
  v9 = objc_msgSend_intValue(positionCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_filterChartLabelPosition_(self, v10, v11, v12, v13, v9);
  if (v14 == objc_msgSend_filterChartLabelPosition_(self, v15, v16, v17, v18, 5))
  {
    v23 = sub_276360774(v20, v21, v22);
    v28 = objc_msgSend_localizedStringForKey_value_table_(v23, v24, v25, v26, v27, @"Top", &stru_288528678, @"TSCharts");
LABEL_7:
    v44 = v28;

    goto LABEL_8;
  }

  if (v14 == objc_msgSend_filterChartLabelPosition_(self, v19, v20, v21, v22, 0))
  {
    v23 = sub_276360774(v30, v31, v32);
    v28 = objc_msgSend_localizedStringForKey_value_table_(v23, v33, v34, v35, v36, @"Middle", &stru_288528678, @"TSCharts");
    goto LABEL_7;
  }

  if (v14 == objc_msgSend_filterChartLabelPosition_(self, v29, v30, v31, v32, 9))
  {
    v23 = sub_276360774(v37, v38, v39);
    v28 = objc_msgSend_localizedStringForKey_value_table_(v23, v40, v41, v42, v43, @"Bottom", &stru_288528678, @"TSCharts");
    goto LABEL_7;
  }

  v44 = 0;
LABEL_8:

  return v44;
}

- (unsigned)filterChartLabelPosition:(unsigned int)position
{
  if ((position & 0xFFFFFF8C) != 0)
  {
    return (position & 0xFFFFFF8C) + 1;
  }

  else
  {
    return 0;
  }
}

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2762432E0;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A46E18 != -1)
  {
    dispatch_once(&qword_280A46E18, block);
  }

  return qword_280A46E10;
}

- (unint64_t)numberOfSeriesForCalculatingBarWidth:(id)width
{
  v4.receiver = self;
  v4.super_class = TSCHChartSeriesTypeStackedColumn;
  return [(TSCHChartSeriesType *)&v4 numberOfSeriesForCalculatingBarWidth:width]!= 0;
}

- (id)elementBuilder
{
  if (qword_280A46E20 != -1)
  {
    sub_2764A73C4();
  }

  v3 = qword_280A46E28;

  return v3;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Stacked Column", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)g_genericToSpecificPropertyMapStackedColumn
{
  if (qword_280A474C0 != -1)
  {
    sub_2764A7A28();
  }

  v3 = qword_280A474B8;

  return v3;
}

@end