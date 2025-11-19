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
    v3 = [MEMORY[0x1E69DC888] darkGrayColor];
    disabledColor = v2->_disabledColor;
    v2->_disabledColor = v3;

    v5 = [MEMORY[0x1E69DC888] lightGrayColor];
    originalPositionMarkerColor = v2->_originalPositionMarkerColor;
    v2->_originalPositionMarkerColor = v5;

    v7 = [MEMORY[0x1E69DC888] whiteColor];
    currentPositionMarkerColor = v2->_currentPositionMarkerColor;
    v2->_currentPositionMarkerColor = v7;

    *&v2->_alwaysShowKeyTime = 257;
  }

  return v2;
}

@end