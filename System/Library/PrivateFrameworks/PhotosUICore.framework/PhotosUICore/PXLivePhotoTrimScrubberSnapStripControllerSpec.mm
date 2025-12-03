@interface PXLivePhotoTrimScrubberSnapStripControllerSpec
- (PXLivePhotoTrimScrubberSnapStripControllerSpec)init;
@end

@implementation PXLivePhotoTrimScrubberSnapStripControllerSpec

- (PXLivePhotoTrimScrubberSnapStripControllerSpec)init
{
  v10.receiver = self;
  v10.super_class = PXLivePhotoTrimScrubberSnapStripControllerSpec;
  v2 = [(PXLivePhotoTrimScrubberSnapStripControllerSpec *)&v10 init];
  if (v2)
  {
    darkGrayColor = [MEMORY[0x1E69DC888] darkGrayColor];
    disabledColor = v2->_disabledColor;
    v2->_disabledColor = darkGrayColor;

    lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
    originalPositionMarkerColor = v2->_originalPositionMarkerColor;
    v2->_originalPositionMarkerColor = lightGrayColor;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    currentPositionMarkerColor = v2->_currentPositionMarkerColor;
    v2->_currentPositionMarkerColor = whiteColor;

    *&v2->_alwaysShowKeyTime = 257;
  }

  return v2;
}

@end