@interface TSCHChartSeriesTypeBar
- (TSCHChartSeriesTypeBar)init;
- (id)elementBuilder;
- (id)g_genericToSpecificPropertyMapBar;
- (id)userInterfaceName;
- (id)userInterfaceNameForLabelPosition:(id)a3;
- (unsigned)adjustLabelPosition:(unsigned int)a3 forAxisValue:(double)a4 intercept:(double)a5;
- (unsigned)filterChartLabelPosition:(unsigned int)a3;
@end

@implementation TSCHChartSeriesTypeBar

- (TSCHChartSeriesTypeBar)init
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TSCHChartSeriesTypeBar;
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

- (id)userInterfaceNameForLabelPosition:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_intValue(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_filterChartLabelPosition_(self, v10, v11, v12, v13, v9);
  if (v14 == objc_msgSend_filterChartLabelPosition_(self, v15, v16, v17, v18, 5))
  {
    v23 = sub_276360774(v20, v21, v22);
    v28 = objc_msgSend_localizedStringForKey_value_table_(v23, v24, v25, v26, v27, @"Right", &stru_288528678, @"TSCharts");
LABEL_9:
    v52 = v28;

    goto LABEL_10;
  }

  if (v14 == objc_msgSend_filterChartLabelPosition_(self, v19, v20, v21, v22, 0))
  {
    v23 = sub_276360774(v30, v31, v32);
    v28 = objc_msgSend_localizedStringForKey_value_table_(v23, v33, v34, v35, v36, @"Middle", &stru_288528678, @"TSCharts");
    goto LABEL_9;
  }

  if (v14 == objc_msgSend_filterChartLabelPosition_(self, v29, v30, v31, v32, 9))
  {
    v23 = sub_276360774(v38, v39, v40);
    v28 = objc_msgSend_localizedStringForKey_value_table_(v23, v41, v42, v43, v44, @"Left", &stru_288528678, @"TSCharts");
    goto LABEL_9;
  }

  if (v14 == objc_msgSend_filterChartLabelPosition_(self, v37, v38, v39, v40, 6))
  {
    v23 = sub_276360774(v45, v46, v47);
    v28 = objc_msgSend_localizedStringForKey_value_table_(v23, v48, v49, v50, v51, @"Outside", &stru_288528678, @"TSCharts");
    goto LABEL_9;
  }

  v52 = 0;
LABEL_10:

  return v52;
}

- (unsigned)filterChartLabelPosition:(unsigned int)a3
{
  v3 = a3 & 0xFFFFFF8F;
  if ((a3 & 4) != 0)
  {
    v3 = a3 & 0xFFFFFF8B | 0x20;
  }

  if ((v3 & 8) != 0)
  {
    v3 = v3 & 0xFFFFFFA3 | 0x10;
  }

  if ((v3 & 2) != 0)
  {
    if ((v3 & 0x20) != 0)
    {
      return 34;
    }

    v3 = v3 & 0xFFFFFF98;
  }

  if (v3 >= 2)
  {
    return v3 | 1;
  }

  else
  {
    return 0;
  }
}

- (unsigned)adjustLabelPosition:(unsigned int)a3 forAxisValue:(double)a4 intercept:(double)a5
{
  v5 = a3 & 0xFFFFFFCF | 0x10;
  if ((a3 & 0x20) == 0)
  {
    v5 = a3;
  }

  v6 = a3 & 0xFFFFFFCF | 0x20;
  if ((a3 & 0x10) == 0)
  {
    v6 = v5;
  }

  if (a4 >= a5)
  {
    v6 = a3;
  }

  if ((a3 & 2) != 0)
  {
    return v6;
  }

  else
  {
    return a3;
  }
}

- (id)elementBuilder
{
  if (qword_280A46DB0 != -1)
  {
    sub_2764A7360();
  }

  v3 = qword_280A46DB8;

  return v3;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Bar", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)g_genericToSpecificPropertyMapBar
{
  if (qword_280A47460 != -1)
  {
    sub_2764A79B0();
  }

  v3 = qword_280A47458;

  return v3;
}

@end