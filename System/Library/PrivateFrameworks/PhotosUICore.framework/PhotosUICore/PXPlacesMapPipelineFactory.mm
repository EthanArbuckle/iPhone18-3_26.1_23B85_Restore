@interface PXPlacesMapPipelineFactory
+ (id)pinPipelineForDataSource:(id)source;
+ (id)thumbnailPipelineForDataSource:(id)source extendedTraitCollection:(id)collection geotaggableInfo:(id)info popoverImageType:(int64_t)type popoverImageOptions:(unint64_t)options countLabelStyle:(int64_t)style thumbnailLocationCurator:(id)curator;
@end

@implementation PXPlacesMapPipelineFactory

+ (id)thumbnailPipelineForDataSource:(id)source extendedTraitCollection:(id)collection geotaggableInfo:(id)info popoverImageType:(int64_t)type popoverImageOptions:(unint64_t)options countLabelStyle:(int64_t)style thumbnailLocationCurator:(id)curator
{
  curatorCopy = curator;
  infoCopy = info;
  collectionCopy = collection;
  sourceCopy = source;
  v19 = +[PXPlacesPopoverImageFactory sharedInstance];
  [v19 backgroundImageSizeForType:type usingTraitCollection:0];
  v21 = v20;
  v23 = v22;

  v24 = [(PXPlacesMapLayout *)[PXPlacesMapThumbnailClusterLayout alloc] initWithDataSource:sourceCopy];
  [(PXPlacesMapThumbnailClusterLayout *)v24 setHorizontalClusteringDistancePixels:v21];
  [(PXPlacesMapThumbnailClusterLayout *)v24 setVerticalClusteringDistancePixels:v23];
  v25 = objc_alloc_init(PXPlacesMapInPlaceUpdatePlan);
  v26 = [[PXPlacesMapThumbnailRenderer alloc] initWithTraitCollection:collectionCopy informationDelegate:infoCopy popoverImageType:type popoverImageOptions:options countLabelStyle:style thumbnailLocationCurator:curatorCopy];

  v27 = objc_alloc_init(PXPlacesMapPassthroughSelectionHandler);
  v28 = [[PXPlacesMapPipeline alloc] initWithLayout:v24 updatePlan:v25 renderer:v26 selectionHandler:v27];

  return v28;
}

+ (id)pinPipelineForDataSource:(id)source
{
  sourceCopy = source;
  v4 = [(PXPlacesMapLayout *)[PXPlacesMapGeometricClusterLayout alloc] initWithDataSource:sourceCopy];

  v5 = objc_alloc_init(PXPlacesMapInPlaceUpdatePlan);
  v6 = objc_alloc_init(PXPlacesMapPinRenderer);
  v7 = objc_alloc_init(PXPlacesMapPassthroughSelectionHandler);
  v8 = [[PXPlacesMapPipeline alloc] initWithLayout:v4 updatePlan:v5 renderer:v6 selectionHandler:v7];

  return v8;
}

@end