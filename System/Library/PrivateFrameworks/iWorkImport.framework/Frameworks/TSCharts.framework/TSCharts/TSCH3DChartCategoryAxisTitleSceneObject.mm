@interface TSCH3DChartCategoryAxisTitleSceneObject
+ (double)textRotationForChartInfo:(id)a3;
+ (id)axisForInfo:(id)a3;
- (LabelTransform)labelTransformForPositioner:(SEL)a3;
@end

@implementation TSCH3DChartCategoryAxisTitleSceneObject

+ (id)axisForInfo:(id)a3
{
  v6 = objc_msgSend_axisForInfo_(TSCHChartCategoryAxis, a2, v3, v4, v5, a3);

  return v6;
}

+ (double)textRotationForChartInfo:(id)a3
{
  v6 = objc_msgSend_chartType(a3, a2, v3, v4, v5);
  objc_msgSend_categoryAxisTitleRotation(v6, v7, v8, v9, v10);
  v12 = v11;

  return v12;
}

- (LabelTransform)labelTransformForPositioner:(SEL)a3
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