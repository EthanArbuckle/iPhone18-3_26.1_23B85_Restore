@interface TSCHChartTypeDonut3D
- (id)imageWithPreset:(id)preset target:(int)target imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame documentRoot:(id)root shouldCache:(BOOL *)cache;
- (id)userInterfaceName;
@end

@implementation TSCHChartTypeDonut3D

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"3D Donut", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)imageWithPreset:(id)preset target:(int)target imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame documentRoot:(id)root shouldCache:(BOOL *)cache
{
  v11.receiver = self;
  v11.super_class = TSCHChartTypeDonut3D;
  v9 = [(TSCHChartType *)&v11 imageWithPreset:preset target:*&target imageSize:root imageScale:cache swatchFrame:size.width documentRoot:size.height shouldCache:scale, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  return v9;
}

@end