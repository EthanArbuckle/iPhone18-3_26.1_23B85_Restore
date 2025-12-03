@interface TSCHChartFeatureBar
- (Class)valueAxisClassForID:(id)d scale:(int64_t)scale;
- (TSCHChartFeatureBar)initWithChartType:(id)type;
- (id)categoryLabelPositioner;
- (id)columnShapeUIName;
- (id)defaultDataFileName;
- (id)genericToSpecificPropertyMap;
- (id)initialSceneWithChartInfo:(id)info layoutSettings:(id *)settings;
- (id)userInterfaceName;
@end

@implementation TSCHChartFeatureBar

- (TSCHChartFeatureBar)initWithChartType:(id)type
{
  v34[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = [TSCHChartAxisID alloc];
  v10 = objc_msgSend_initWithType_ordinal_(v5, v6, v7, v8, v9, 1, 0);
  v34[0] = v10;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v12, v13, v14, v34, 1);

  v16 = [TSCHChartAxisID alloc];
  v21 = objc_msgSend_initWithType_ordinal_(v16, v17, v18, v19, v20, 2, 0);
  v33 = v21;
  v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v23, v24, v25, &v33, 1);

  v31 = objc_msgSend_initWithChartType_valueAxisIDs_categoryAxisIDs_(self, v27, v28, v29, v30, typeCopy, v15, v26);
  return v31;
}

- (Class)valueAxisClassForID:(id)d scale:(int64_t)scale
{
  v9 = objc_msgSend_type(d, a2, v4, v5, v6);
  if (v9 == 2)
  {
    v16 = objc_opt_class();
  }

  else if (v9 == 1)
  {
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v16 = objc_msgSend_p_selectAxisClassForScale_linearClass_logClass_percentClass_(self, v12, v13, v14, v15, scale, v10, v11, 0);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)defaultDataFileName
{
  v5 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], a2, v2, v3, v4);
  if (objc_msgSend_designModeEnabled(v5, v6, v7, v8, v9))
  {
    v10 = @"TSCHDesignDefaultDataBar.plist";
  }

  else
  {
    v10 = @"TSCHDefaultDataBar.plist";
  }

  v11 = v10;

  return v10;
}

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276355524;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A47B40 != -1)
  {
    dispatch_once(&qword_280A47B40, block);
  }

  return qword_280A47B38;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Bar", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)columnShapeUIName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Bar Shape", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)categoryLabelPositioner
{
  v6 = 1065353216;
  v4 = objc_msgSend_verticalWithRange_offset_(TSCH3DGenericAxisLabelPositioner, a2, COERCE_DOUBLE(COERCE_UNSIGNED_INT(-0.5)), v2, v3, &v6);

  return v4;
}

- (id)initialSceneWithChartInfo:(id)info layoutSettings:(id *)settings
{
  v34 = *settings;
  v33.receiver = self;
  v33.super_class = TSCHChartFeatureBar;
  v4 = [(TSCHChartFeature *)&v33 initialSceneWithChartInfo:info layoutSettings:&v34];
  v9 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v5, v6, v7, v8, v4);
  v14 = v9;
  if (v9)
  {
    objc_msgSend_stageScale(v9, v10, v11, v12, v13);
    objc_msgSend_stageScale(v14, v15, v16, v17, v18);
    objc_msgSend_stageScale(v14, v19, v20, v21, v22);
    LODWORD(v23) = HIDWORD(v31);
    LODWORD(v24) = v29;
    LODWORD(v25) = v28;
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v30 = 0;
    v29 = 0;
    v25 = 0.0;
    v28 = 0;
    v24 = 0.0;
    v23 = 0.0;
    v27 = 0;
  }

  *&v34.var0 = __PAIR64__(LODWORD(v24), LODWORD(v23));
  LODWORD(v34.var8) = LODWORD(v25);
  objc_msgSend_setStageScale_(v14, v10, v25, v24, v23, &v34, v27, v28, v29, v30, v31, v32);

  return v4;
}

@end