@interface TSCHChartFeatureMixed
- (Class)valueAxisClassForID:(id)d scale:(int64_t)scale;
- (id)defaultDataFileName;
- (id)genericToSpecificPropertyMap;
- (id)supportedSeriesTypes;
- (id)userInterfaceName;
@end

@implementation TSCHChartFeatureMixed

- (Class)valueAxisClassForID:(id)d scale:(int64_t)scale
{
  v9 = objc_msgSend_type(d, a2, v4, v5, v6);
  if (v9 == 2)
  {
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v10 = objc_msgSend_p_selectAxisClassForScale_linearClass_logClass_percentClass_(self, v13, v14, v15, v16, scale, v11, v12, 0);
  }

  else if (v9 == 1)
  {
    v10 = objc_opt_class();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)defaultDataFileName
{
  v5 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], a2, v2, v3, v4);
  if (objc_msgSend_designModeEnabled(v5, v6, v7, v8, v9))
  {
    v10 = @"TSCHDesignDefaultDataMixed.plist";
  }

  else
  {
    v10 = @"TSCHDefaultDataMixed.plist";
  }

  v11 = v10;

  return v10;
}

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276357844;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A47BC0 != -1)
  {
    dispatch_once(&qword_280A47BC0, block);
  }

  return qword_280A47BB8;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Mixed", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)supportedSeriesTypes
{
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_msgSend_mixedColumnSeries(TSCHChartSeriesType, a2, v2, v3, v4);
  v11 = objc_msgSend_mixedLineSeries(TSCHChartSeriesType, v7, v8, v9, v10);
  v16 = objc_msgSend_mixedAreaSeries(TSCHChartSeriesType, v12, v13, v14, v15);
  v21 = objc_msgSend_setWithObjects_(v5, v17, v18, v19, v20, v6, v11, v16, 0);

  return v21;
}

@end