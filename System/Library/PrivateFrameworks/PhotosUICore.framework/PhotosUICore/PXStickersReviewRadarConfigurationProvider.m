@interface PXStickersReviewRadarConfigurationProvider
- (PXRadarConfiguration)radarConfiguration;
@end

@implementation PXStickersReviewRadarConfigurationProvider

- (PXRadarConfiguration)radarConfiguration
{
  v2 = objc_alloc_init(PXRadarConfiguration);
  [(PXRadarConfiguration *)v2 setComponent:34];
  [(PXRadarConfiguration *)v2 setClassification:7];
  v3 = +[PXFeedbackTapToRadarUtilities defaultDescription];
  [(PXRadarConfiguration *)v2 setDescription:v3];

  [(PXRadarConfiguration *)v2 setWantsPhotosDiagnostics:1];

  return v2;
}

@end