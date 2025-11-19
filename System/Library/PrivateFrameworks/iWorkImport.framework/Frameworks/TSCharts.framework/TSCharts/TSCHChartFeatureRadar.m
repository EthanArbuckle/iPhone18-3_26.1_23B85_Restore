@interface TSCHChartFeatureRadar
- (Class)valueAxisClassForID:(id)a3 scale:(int64_t)a4;
- (TSCHChartFeatureRadar)initWithChartType:(id)a3;
- (id)defaultDataFileName;
- (id)supportedSeriesTypes;
@end

@implementation TSCHChartFeatureRadar

- (TSCHChartFeatureRadar)initWithChartType:(id)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [TSCHChartAxisID alloc];
  v10 = objc_msgSend_initWithType_ordinal_(v5, v6, v7, v8, v9, 5, 0);
  v34[0] = v10;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v12, v13, v14, v34, 1);

  v16 = [TSCHChartAxisID alloc];
  v21 = objc_msgSend_initWithType_ordinal_(v16, v17, v18, v19, v20, 6, 0);
  v33 = v21;
  v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v23, v24, v25, &v33, 1);

  v31 = objc_msgSend_initWithChartType_valueAxisIDs_categoryAxisIDs_(self, v27, v28, v29, v30, v4, v15, v26);
  return v31;
}

- (id)defaultDataFileName
{
  v5 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], a2, v2, v3, v4);
  if (objc_msgSend_designModeEnabled(v5, v6, v7, v8, v9))
  {
    v10 = @"TSCHDesignDefaultDataRadar.plist";
  }

  else
  {
    v10 = @"TSCHDefaultDataRadar.plist";
  }

  v11 = v10;

  return v10;
}

- (id)supportedSeriesTypes
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_msgSend_radarAreaSeries(TSCHChartSeriesType, a2, v2, v3, v4);
  v18[0] = v6;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v8, v9, v10, v18, 1);
  v16 = objc_msgSend_setWithArray_(v5, v12, v13, v14, v15, v11);

  return v16;
}

- (Class)valueAxisClassForID:(id)a3 scale:(int64_t)a4
{
  if (objc_msgSend_type(a3, a2, v4, v5, v6) == 5)
  {
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v15 = objc_msgSend_p_selectAxisClassForScale_linearClass_logClass_percentClass_(self, v11, v12, v13, v14, a4, v9, v10, 0);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end