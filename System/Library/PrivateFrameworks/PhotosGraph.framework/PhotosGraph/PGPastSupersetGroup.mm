@interface PGPastSupersetGroup
+ (id)pastSupersetGroupWithMomentNodes:(id)nodes dateInterval:(id)interval supersetCityNodeAsCollection:(id)collection densestCloseLocationNodeAsCollection:(id)asCollection locationHelper:(id)helper;
@end

@implementation PGPastSupersetGroup

+ (id)pastSupersetGroupWithMomentNodes:(id)nodes dateInterval:(id)interval supersetCityNodeAsCollection:(id)collection densestCloseLocationNodeAsCollection:(id)asCollection locationHelper:(id)helper
{
  helperCopy = helper;
  asCollectionCopy = asCollection;
  collectionCopy = collection;
  intervalCopy = interval;
  nodesCopy = nodes;
  v16 = objc_opt_new();
  [v16 setMomentNodes:nodesCopy];

  [v16 setDateInterval:intervalCopy];
  [v16 setSupersetCityNodes:collectionCopy];
  [v16 setDensestCloseLocationNodes:asCollectionCopy];

  v17 = [helperCopy stateNodeFromCityNodeAsCollection:collectionCopy];

  [v16 setStateNodeAsCollection:v17];

  return v16;
}

@end