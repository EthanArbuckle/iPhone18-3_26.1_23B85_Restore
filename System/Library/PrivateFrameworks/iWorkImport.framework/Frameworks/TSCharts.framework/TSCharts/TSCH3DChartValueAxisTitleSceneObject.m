@interface TSCH3DChartValueAxisTitleSceneObject
+ (BOOL)isFixedPositionForScene:(id)a3;
+ (double)textRotationForChartInfo:(id)a3;
+ (id)axisForInfo:(id)a3;
+ (void)setIsFixedPosition:(BOOL)a3 forScene:(id)a4;
@end

@implementation TSCH3DChartValueAxisTitleSceneObject

+ (void)setIsFixedPosition:(BOOL)a3 forScene:(id)a4
{
  v4 = a3;
  v14 = a4;
  v9 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, v6, v7, v8, v4);
  objc_msgSend_setProperties_forType_(v14, v10, v11, v12, v13, v9, @"TSCH3DChartValueAxisSceneObjectLabelWrapBoundsPropertyKey");
}

+ (BOOL)isFixedPositionForScene:(id)a3
{
  v6 = objc_msgSend_propertiesForType_(a3, a2, v3, v4, v5, @"TSCH3DChartValueAxisSceneObjectLabelWrapBoundsPropertyKey");
  v11 = objc_msgSend_BOOLValue(v6, v7, v8, v9, v10);

  return v11;
}

+ (id)axisForInfo:(id)a3
{
  v6 = objc_msgSend_axisForInfo_(TSCHChartValueAxis, a2, v3, v4, v5, a3);

  return v6;
}

+ (double)textRotationForChartInfo:(id)a3
{
  v6 = objc_msgSend_chartType(a3, a2, v3, v4, v5);
  objc_msgSend_valueAxisTitleRotation(v6, v7, v8, v9, v10);
  v12 = v11;

  return v12;
}

@end