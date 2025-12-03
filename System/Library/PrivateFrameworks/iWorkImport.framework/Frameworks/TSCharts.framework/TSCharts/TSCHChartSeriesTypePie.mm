@interface TSCHChartSeriesTypePie
- (BOOL)floatValueForLabelExplosion:(float *)explosion series:(id)series;
- (TSCHChartSeriesTypePie)init;
- (id)elementBuilder;
- (id)g_genericToSpecificPropertyMapPie;
- (id)inspectorLocalizedValueLabelsDisclosureTitle;
- (id)inspectorLocalizedValueLabelsTabName;
- (id)seriesFillLabelUIString;
- (id)userInterfaceName;
- (id)userInterfaceNameForLabelPosition:(id)position;
- (unsigned)filterChartLabelPosition:(unsigned int)position forSeries:(id)series;
@end

@implementation TSCHChartSeriesTypePie

- (TSCHChartSeriesTypePie)init
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TSCHChartSeriesTypePie;
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

- (id)userInterfaceNameForLabelPosition:(id)position
{
  positionCopy = position;
  v9 = objc_msgSend_intValue(positionCopy, v5, v6, v7, v8);
  if (v9 == objc_msgSend_filterChartLabelPosition_forSeries_(self, v10, v11, v12, v13, 0, 0))
  {
    v18 = sub_276360774(v15, v16, v17);
    v23 = objc_msgSend_localizedStringForKey_value_table_(v18, v19, v20, v21, v22, @"Automatic", &stru_288528678, @"TSCharts");
LABEL_7:
    v39 = v23;

    goto LABEL_8;
  }

  if (v9 == objc_msgSend_filterChartLabelPosition_forSeries_(self, v14, v15, v16, v17, 1, 0))
  {
    v18 = sub_276360774(v25, v26, v27);
    v23 = objc_msgSend_localizedStringForKey_value_table_(v18, v28, v29, v30, v31, @"Inside", &stru_288528678, @"TSCharts");
    goto LABEL_7;
  }

  if (v9 == objc_msgSend_filterChartLabelPosition_forSeries_(self, v24, v25, v26, v27, 2, 0))
  {
    v18 = sub_276360774(v32, v33, v34);
    v23 = objc_msgSend_localizedStringForKey_value_table_(v18, v35, v36, v37, v38, @"Outside", &stru_288528678, @"TSCharts");
    goto LABEL_7;
  }

  v39 = 0;
LABEL_8:

  return v39;
}

- (unsigned)filterChartLabelPosition:(unsigned int)position forSeries:(id)series
{
  positionCopy = position;
  seriesCopy = series;
  v10 = seriesCopy;
  if (positionCopy)
  {
    v11 = 1;
  }

  else
  {
    v11 = positionCopy & 2;
  }

  v12 = objc_msgSend_model(seriesCopy, v6, v7, v8, v9);
  v17 = objc_msgSend_chartInfo(v12, v13, v14, v15, v16);

  if ((objc_msgSend_isSingleCircleSpecialCaseOutSeries_(v17, v18, v19, v20, v21, 0) & 1) == 0)
  {
    objc_msgSend_effectiveLabelExplosion(v10, v22, v23, v24, v25);
    if (v26 > 100.0)
    {
      v11 |= 2u;
    }
  }

  return v11;
}

- (id)elementBuilder
{
  if (qword_280A46D60 != -1)
  {
    sub_2764A7310();
  }

  v3 = qword_280A46D68;

  return v3;
}

- (id)inspectorLocalizedValueLabelsTabName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Wedge Labels", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)inspectorLocalizedValueLabelsDisclosureTitle
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Value Data Format", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)seriesFillLabelUIString
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Wedge Fill", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Pie", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)g_genericToSpecificPropertyMapPie
{
  if (qword_280A47420 != -1)
  {
    sub_2764A7960();
  }

  v3 = qword_280A47418;

  return v3;
}

- (BOOL)floatValueForLabelExplosion:(float *)explosion series:(id)series
{
  seriesCopy = series;
  if (!explosion)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCHChartSeriesTypePie(PieExplosionValueImplementation) floatValueForLabelExplosion:series:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesPieAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 38, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  LODWORD(v7) = 2143289344;
  objc_msgSend_floatValueForProperty_defaultValue_(seriesCopy, v5, v7, v8, v9, 1163);
  *explosion = *&v25;
  v29 = objc_msgSend_chartInfo(seriesCopy, v26, v25, v27, v28);
  v34 = objc_msgSend_chartType(v29, v30, v31, v32, v33);
  v39 = objc_msgSend_supportsPlaceTitleAtCenter(v34, v35, v36, v37, v38);

  v44 = objc_msgSend_chartInfo(seriesCopy, v40, v41, v42, v43);
  v49 = objc_msgSend_chartType(v44, v45, v46, v47, v48);
  v54 = objc_msgSend_supportsCalloutLines(v49, v50, v51, v52, v53);

  if (v54)
  {
    v59 = objc_msgSend_chartInfo(seriesCopy, v55, v56, v57, v58);
    v64 = objc_msgSend_intValueForProperty_defaultValue_(v59, v60, v61, v62, v63, 1081, 1);

    v69 = objc_msgSend_intValueForProperty_defaultValue_(seriesCopy, v65, v66, v67, v68, 1138, 2);
    v71 = v64 == 1 && v69 != 0;
  }

  else
  {
    v71 = 0;
  }

  v72 = objc_msgSend_model(seriesCopy, v55, v56, v57, v58);
  if ((objc_msgSend_numberOfSeries(v72, v73, v74, v75, v76) != 1) | v39 & 1 || v71)
  {
  }

  else
  {

    *explosion = 0.0;
  }

  return 1;
}

@end