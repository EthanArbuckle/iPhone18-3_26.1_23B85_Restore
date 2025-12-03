@interface TSCH3DChartValueAxisTitleSceneObject
+ (BOOL)isFixedPositionForScene:(id)scene;
+ (double)textRotationForChartInfo:(id)info;
+ (id)axisForInfo:(id)info;
+ (void)setIsFixedPosition:(BOOL)position forScene:(id)scene;
@end

@implementation TSCH3DChartValueAxisTitleSceneObject

+ (void)setIsFixedPosition:(BOOL)position forScene:(id)scene
{
  positionCopy = position;
  sceneCopy = scene;
  v9 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, v6, v7, v8, positionCopy);
  objc_msgSend_setProperties_forType_(sceneCopy, v10, v11, v12, v13, v9, @"TSCH3DChartValueAxisSceneObjectLabelWrapBoundsPropertyKey");
}

+ (BOOL)isFixedPositionForScene:(id)scene
{
  v6 = objc_msgSend_propertiesForType_(scene, a2, v3, v4, v5, @"TSCH3DChartValueAxisSceneObjectLabelWrapBoundsPropertyKey");
  v11 = objc_msgSend_BOOLValue(v6, v7, v8, v9, v10);

  return v11;
}

+ (id)axisForInfo:(id)info
{
  v6 = objc_msgSend_axisForInfo_(TSCHChartValueAxis, a2, v3, v4, v5, info);

  return v6;
}

+ (double)textRotationForChartInfo:(id)info
{
  v6 = objc_msgSend_chartType(info, a2, v3, v4, v5);
  objc_msgSend_valueAxisTitleRotation(v6, v7, v8, v9, v10);
  v12 = v11;

  return v12;
}

@end