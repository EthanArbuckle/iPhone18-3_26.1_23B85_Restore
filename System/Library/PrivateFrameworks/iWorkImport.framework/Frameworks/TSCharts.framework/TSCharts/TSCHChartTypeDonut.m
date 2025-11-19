@interface TSCHChartTypeDonut
- (id)alternateArchiveChartTypeAndReturnWriterVersion:(unint64_t *)a3 readerVersion:(unint64_t *)a4 featureID:(id *)a5;
- (id)localizedActionStringForWedgeExplosion;
- (id)localizedDeliveryTypeForWedge;
- (id)localizedTitleForDeliveryTypeWedge;
- (id)localizedWedgeDragLabelWithPercent:(unint64_t)a3;
- (id)name;
- (id)userInterfaceName;
@end

@implementation TSCHChartTypeDonut

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"2D Donut", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)localizedDeliveryTypeForWedge
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"By Segment", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)localizedTitleForDeliveryTypeWedge
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Segment", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)alternateArchiveChartTypeAndReturnWriterVersion:(unint64_t *)a3 readerVersion:(unint64_t *)a4 featureID:(id *)a5
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_8:
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, "[TSCHChartTypeDonut alternateArchiveChartTypeAndReturnWriterVersion:readerVersion:featureID:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartType.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 1770, 0, "invalid nil value for '%{public}s'", "outReaderVersion");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_9:
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, "[TSCHChartTypeDonut alternateArchiveChartTypeAndReturnWriterVersion:readerVersion:featureID:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartType.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 1771, 0, "invalid nil value for '%{public}s'", "outFeatureID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
    v11 = 0;
    goto LABEL_10;
  }

  v12 = MEMORY[0x277D81150];
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, "[TSCHChartTypeDonut alternateArchiveChartTypeAndReturnWriterVersion:readerVersion:featureID:]");
  v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartType.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 1769, 0, "invalid nil value for '%{public}s'", "outWriterVersion");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_4:
  v11 = 0;
  if (a3 && a4)
  {
    *a3 = *MEMORY[0x277D80990];
    *a4 = *MEMORY[0x277D80970];
    *a5 = @"TSCHDonutCharts";
    v11 = objc_msgSend_pieChart(TSCHChartType, a2, v5, v6, v7);
  }

LABEL_10:

  return v11;
}

- (id)localizedWedgeDragLabelWithPercent:(unint64_t)a3
{
  v7 = sub_276360774(v3, v4, v5);
  v12 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, v9, v10, v11, @"Segment Position: %lu%%", &stru_288528678, @"TSCharts");

  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, v14, v15, v16, v12, a3);

  return v17;
}

- (id)localizedActionStringForWedgeExplosion
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Set Segment Distance From Center", &stru_288528678, @"TSChartsUndo");

  return v10;
}

- (id)name
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"2D Donut Chart", &stru_288528678, @"TSCharts");

  return v10;
}

@end