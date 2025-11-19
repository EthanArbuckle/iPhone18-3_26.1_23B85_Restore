@interface PXPlacesMapPipelineFactory
+ (id)pinPipelineForDataSource:(id)a3;
+ (id)thumbnailPipelineForDataSource:(id)a3 extendedTraitCollection:(id)a4 geotaggableInfo:(id)a5 popoverImageType:(int64_t)a6 popoverImageOptions:(unint64_t)a7 countLabelStyle:(int64_t)a8 thumbnailLocationCurator:(id)a9;
@end

@implementation PXPlacesMapPipelineFactory

+ (id)thumbnailPipelineForDataSource:(id)a3 extendedTraitCollection:(id)a4 geotaggableInfo:(id)a5 popoverImageType:(int64_t)a6 popoverImageOptions:(unint64_t)a7 countLabelStyle:(int64_t)a8 thumbnailLocationCurator:(id)a9
{
  v15 = a9;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = +[PXPlacesPopoverImageFactory sharedInstance];
  [v19 backgroundImageSizeForType:a6 usingTraitCollection:0];
  v21 = v20;
  v23 = v22;

  v24 = [(PXPlacesMapLayout *)[PXPlacesMapThumbnailClusterLayout alloc] initWithDataSource:v18];
  [(PXPlacesMapThumbnailClusterLayout *)v24 setHorizontalClusteringDistancePixels:v21];
  [(PXPlacesMapThumbnailClusterLayout *)v24 setVerticalClusteringDistancePixels:v23];
  v25 = objc_alloc_init(PXPlacesMapInPlaceUpdatePlan);
  v26 = [[PXPlacesMapThumbnailRenderer alloc] initWithTraitCollection:v17 informationDelegate:v16 popoverImageType:a6 popoverImageOptions:a7 countLabelStyle:a8 thumbnailLocationCurator:v15];

  v27 = objc_alloc_init(PXPlacesMapPassthroughSelectionHandler);
  v28 = [[PXPlacesMapPipeline alloc] initWithLayout:v24 updatePlan:v25 renderer:v26 selectionHandler:v27];

  return v28;
}

+ (id)pinPipelineForDataSource:(id)a3
{
  v3 = a3;
  v4 = [(PXPlacesMapLayout *)[PXPlacesMapGeometricClusterLayout alloc] initWithDataSource:v3];

  v5 = objc_alloc_init(PXPlacesMapInPlaceUpdatePlan);
  v6 = objc_alloc_init(PXPlacesMapPinRenderer);
  v7 = objc_alloc_init(PXPlacesMapPassthroughSelectionHandler);
  v8 = [[PXPlacesMapPipeline alloc] initWithLayout:v4 updatePlan:v5 renderer:v6 selectionHandler:v7];

  return v8;
}

@end