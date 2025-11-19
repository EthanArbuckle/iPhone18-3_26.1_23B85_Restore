@interface PGPastSupersetGroup
+ (id)pastSupersetGroupWithMomentNodes:(id)a3 dateInterval:(id)a4 supersetCityNodeAsCollection:(id)a5 densestCloseLocationNodeAsCollection:(id)a6 locationHelper:(id)a7;
@end

@implementation PGPastSupersetGroup

+ (id)pastSupersetGroupWithMomentNodes:(id)a3 dateInterval:(id)a4 supersetCityNodeAsCollection:(id)a5 densestCloseLocationNodeAsCollection:(id)a6 locationHelper:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_opt_new();
  [v16 setMomentNodes:v15];

  [v16 setDateInterval:v14];
  [v16 setSupersetCityNodes:v13];
  [v16 setDensestCloseLocationNodes:v12];

  v17 = [v11 stateNodeFromCityNodeAsCollection:v13];

  [v16 setStateNodeAsCollection:v17];

  return v16;
}

@end