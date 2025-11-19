@interface TSCH3DBarChartDefaultAppearance
+ (BarExtrusionDetails)defaultDetails;
- (TSCH3DBarChartDefaultAppearance)initWithProperties:(id)a3;
- (float)chartMinZForScene:(id)a3;
- (float)maxValueForSeries:(int64_t)a3;
- (float)signedValueForSeries:(id)a3 index:(void *)a4;
@end

@implementation TSCH3DBarChartDefaultAppearance

+ (BarExtrusionDetails)defaultDetails
{
  *&retstr->crossSection.detail = xmmword_2764D6100;
  retstr->crossSection.crossType = 1;
  retstr->spine.bevelHeight = 0.15;
  *&retstr->spine.bevelSlices = xmmword_2764D6110;
  retstr->spine.creaseAngle = 1.3;
  return result;
}

- (TSCH3DBarChartDefaultAppearance)initWithProperties:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TSCH3DBarChartDefaultAppearance;
  v5 = [(TSCH3DBarChartDefaultAppearance *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_properties, v4);
  }

  return v6;
}

- (float)maxValueForSeries:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_properties);
  objc_msgSend_maxValueForSeries_(WeakRetained, v5, v6, v7, v8, a3);
  v10 = v9;

  return v10;
}

- (float)signedValueForSeries:(id)a3 index:(void *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_properties);
  v12 = objc_msgSend_rangeForSeries_index_(WeakRetained, v8, v9, v10, v11, v6, a4);
  objc_msgSend_signedScale(v12, v13, v14, v15, v16);
  v18 = v17;

  return v18;
}

- (float)chartMinZForScene:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_properties);

  if (!WeakRetained)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DBarChartDefaultAppearance chartMinZForScene:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBarElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 642, 0, "invalid nil value for '%{public}s'", "_properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_loadWeakRetained(&self->_properties);
  objc_msgSend_chartInitialDepthOffset(v24, v25, v26, v27, v28);
  v30 = v29;

  return v30 + ([TSCH3DBarChartDefaultAppearance depthForScene:]_0() * -0.5);
}

@end