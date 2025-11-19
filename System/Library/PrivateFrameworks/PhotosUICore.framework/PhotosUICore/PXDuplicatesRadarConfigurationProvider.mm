@interface PXDuplicatesRadarConfigurationProvider
- (PXRadarConfiguration)radarConfiguration;
@end

@implementation PXDuplicatesRadarConfigurationProvider

- (PXRadarConfiguration)radarConfiguration
{
  v2 = objc_alloc_init(PXRadarConfiguration);
  [(PXRadarConfiguration *)v2 setComponent:11];
  [(PXRadarConfiguration *)v2 setClassification:7];
  v3 = +[PXFeedbackTapToRadarUtilities defaultDescription];
  [(PXRadarConfiguration *)v2 setDescription:v3];

  [(PXRadarConfiguration *)v2 setAttachmentsIncludeAnyUserAsset:1];
  [(PXRadarConfiguration *)v2 setKeywordIDs:&unk_1F1910948];
  [(PXRadarConfiguration *)v2 setWantsPhotosDiagnostics:1];

  return v2;
}

@end