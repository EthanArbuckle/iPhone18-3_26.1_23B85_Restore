@interface TSCHChartTypeStackedBar3D
- (TSCH3DChartRotationLimit)rotation3DLimit;
- (id)imageWithPreset:(id)a3 target:(int)a4 imageSize:(CGSize)a5 imageScale:(double)a6 swatchFrame:(CGRect)a7 documentRoot:(id)a8 shouldCache:(BOOL *)a9;
- (id)name;
- (id)titlePositionerWithInfo:(id)a3 scene:(id)a4;
- (id)userInterfaceName;
@end

@implementation TSCHChartTypeStackedBar3D

- (id)titlePositionerWithInfo:(id)a3 scene:(id)a4
{
  v7 = objc_msgSend_positionerWithInfo_scene_(TSCH3DHorizontalChartTitlePositioner, a2, v4, v5, v6, a3, a4);

  return v7;
}

- (TSCH3DChartRotationLimit)rotation3DLimit
{
  v2 = -40.0;
  v3 = 9.0;
  v4 = -30.0;
  v5 = 30.0;
  result.var3 = v5;
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"3D Stacked Bar", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)imageWithPreset:(id)a3 target:(int)a4 imageSize:(CGSize)a5 imageScale:(double)a6 swatchFrame:(CGRect)a7 documentRoot:(id)a8 shouldCache:(BOOL *)a9
{
  v11.receiver = self;
  v11.super_class = TSCHChartTypeStackedBar3D;
  v9 = [(TSCHChartType *)&v11 imageWithPreset:a3 target:*&a4 imageSize:a8 imageScale:a9 swatchFrame:a5.width documentRoot:a5.height shouldCache:a6, a7.origin.x, a7.origin.y, a7.size.width, a7.size.height];

  return v9;
}

- (id)name
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"3D Stacked Bar Chart", &stru_288528678, @"TSCharts");

  return v10;
}

@end