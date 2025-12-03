@interface PULivePhotoTrimScrubberSnapStripControllerSpec
- (id)currentPositionMarkerColor;
- (id)disabledColor;
- (id)originalPositionMarkerColor;
- (id)suggestedMarkerColor;
@end

@implementation PULivePhotoTrimScrubberSnapStripControllerSpec

- (id)suggestedMarkerColor
{
  v2 = +[PUInterfaceManager currentTheme];
  photoEditingAdjustmentsBarSuggestedMarkerColor = [v2 photoEditingAdjustmentsBarSuggestedMarkerColor];

  return photoEditingAdjustmentsBarSuggestedMarkerColor;
}

- (id)originalPositionMarkerColor
{
  v2 = +[PUInterfaceManager currentTheme];
  photoEditingAdjustmentsBarOriginalPositionMarkerColor = [v2 photoEditingAdjustmentsBarOriginalPositionMarkerColor];

  return photoEditingAdjustmentsBarOriginalPositionMarkerColor;
}

- (id)currentPositionMarkerColor
{
  v2 = +[PUInterfaceManager currentTheme];
  photoEditingAdjustmentsBarCurrentPositionMarkerColor = [v2 photoEditingAdjustmentsBarCurrentPositionMarkerColor];

  return photoEditingAdjustmentsBarCurrentPositionMarkerColor;
}

- (id)disabledColor
{
  v2 = +[PUInterfaceManager currentTheme];
  photoEditingAdjustmentsBarCurrentPositionDisabledMarkerColor = [v2 photoEditingAdjustmentsBarCurrentPositionDisabledMarkerColor];

  return photoEditingAdjustmentsBarCurrentPositionDisabledMarkerColor;
}

@end