@interface TSCHChartTypeDonut3D
- (id)imageWithPreset:(id)a3 target:(int)a4 imageSize:(CGSize)a5 imageScale:(double)a6 swatchFrame:(CGRect)a7 documentRoot:(id)a8 shouldCache:(BOOL *)a9;
- (id)userInterfaceName;
@end

@implementation TSCHChartTypeDonut3D

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"3D Donut", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)imageWithPreset:(id)a3 target:(int)a4 imageSize:(CGSize)a5 imageScale:(double)a6 swatchFrame:(CGRect)a7 documentRoot:(id)a8 shouldCache:(BOOL *)a9
{
  v11.receiver = self;
  v11.super_class = TSCHChartTypeDonut3D;
  v9 = [(TSCHChartType *)&v11 imageWithPreset:a3 target:*&a4 imageSize:a8 imageScale:a9 swatchFrame:a5.width documentRoot:a5.height shouldCache:a6, a7.origin.x, a7.origin.y, a7.size.width, a7.size.height];

  return v9;
}

@end