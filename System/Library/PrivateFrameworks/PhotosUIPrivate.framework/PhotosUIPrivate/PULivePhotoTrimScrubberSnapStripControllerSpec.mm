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
  v3 = [v2 photoEditingAdjustmentsBarSuggestedMarkerColor];

  return v3;
}

- (id)originalPositionMarkerColor
{
  v2 = +[PUInterfaceManager currentTheme];
  v3 = [v2 photoEditingAdjustmentsBarOriginalPositionMarkerColor];

  return v3;
}

- (id)currentPositionMarkerColor
{
  v2 = +[PUInterfaceManager currentTheme];
  v3 = [v2 photoEditingAdjustmentsBarCurrentPositionMarkerColor];

  return v3;
}

- (id)disabledColor
{
  v2 = +[PUInterfaceManager currentTheme];
  v3 = [v2 photoEditingAdjustmentsBarCurrentPositionDisabledMarkerColor];

  return v3;
}

@end