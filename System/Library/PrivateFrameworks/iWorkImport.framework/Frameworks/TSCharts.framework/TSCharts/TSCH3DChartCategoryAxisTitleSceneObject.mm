@interface TSCH3DChartCategoryAxisTitleSceneObject
+ (double)textRotationForChartInfo:(id)info;
+ (id)axisForInfo:(id)info;
- (LabelTransform)labelTransformForPositioner:(SEL)positioner;
@end

@implementation TSCH3DChartCategoryAxisTitleSceneObject

+ (id)axisForInfo:(id)info
{
  v6 = objc_msgSend_axisForInfo_(TSCHChartCategoryAxis, a2, v3, v4, v5, info);

  return v6;
}

+ (double)textRotationForChartInfo:(id)info
{
  v6 = objc_msgSend_chartType(info, a2, v3, v4, v5);
  objc_msgSend_categoryAxisTitleRotation(v6, v7, v8, v9, v10);
  v12 = v11;

  return v12;
}

- (LabelTransform)labelTransformForPositioner:(SEL)positioner
{
  v5 = a4;
  v11 = v5;
  if (v5)
  {
    objc_msgSend_categoryAxisTitleTransform(v5, v6, v7, v8, v9);
  }

  else
  {
    *&retstr->var0.var0.var0 = 0u;
    *&retstr->var1.var1.var0 = 0u;
  }

  return result;
}

@end