@interface TSCHChartTypeStackedArea3D
- (TSCH3DChartRotationLimit)rotation3DLimit;
- (id)imageWithPreset:(id)preset target:(int)target imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame documentRoot:(id)root shouldCache:(BOOL *)cache;
- (id)name;
- (id)userInterfaceName;
@end

@implementation TSCHChartTypeStackedArea3D

- (TSCH3DChartRotationLimit)rotation3DLimit
{
  v2 = -40.0;
  v3 = 40.0;
  v4 = -30.0;
  v5 = 9.0;
  result.var3 = v5;
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"3D Stacked Area", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)imageWithPreset:(id)preset target:(int)target imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame documentRoot:(id)root shouldCache:(BOOL *)cache
{
  v11.receiver = self;
  v11.super_class = TSCHChartTypeStackedArea3D;
  v9 = [(TSCHChartType *)&v11 imageWithPreset:preset target:*&target imageSize:root imageScale:cache swatchFrame:size.width documentRoot:size.height shouldCache:scale, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  return v9;
}

- (id)name
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"3D Stacked Area Chart", &stru_288528678, @"TSCharts");

  return v10;
}

@end