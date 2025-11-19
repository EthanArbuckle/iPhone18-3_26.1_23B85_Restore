@interface UIImageView(SensorKitUI)
+ (id)skui_imageViewForAuthGroup:()SensorKitUI parentSize:;
@end

@implementation UIImageView(SensorKitUI)

+ (id)skui_imageViewForAuthGroup:()SensorKitUI parentSize:
{
  v5 = [a4 illustration];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  [v5 size];
  v8 = v7;
  [v6 size];
  v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{0.0, 0.0, a1, a1 * (v8 / v9)}];
  [v10 setImage:v6];
  [v10 setContentMode:1];
  return v10;
}

@end