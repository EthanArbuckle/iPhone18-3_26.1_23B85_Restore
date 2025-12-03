@interface PXLivePhotoTrimScrubberSpec
- (PXLivePhotoTrimScrubberSpec)init;
- (UIEdgeInsets)filmstripViewInsets;
- (void)_updateScrubberHeight;
- (void)setUseMiniScrubberHeight:(BOOL)height;
@end

@implementation PXLivePhotoTrimScrubberSpec

- (UIEdgeInsets)filmstripViewInsets
{
  top = self->_filmstripViewInsets.top;
  left = self->_filmstripViewInsets.left;
  bottom = self->_filmstripViewInsets.bottom;
  right = self->_filmstripViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_updateScrubberHeight
{
  v3 = MEMORY[0x1A590D320](self, a2);
  useMiniScrubberHeight = [(PXLivePhotoTrimScrubberSpec *)self useMiniScrubberHeight];
  v5 = 34.0;
  if (v3)
  {
    v6 = 44.0;
  }

  else
  {
    v5 = 26.0;
    v6 = 36.0;
  }

  if (!useMiniScrubberHeight)
  {
    v5 = 41.0;
  }

  self->_scrubberHeight = v5;
  useMiniScrubberHeight2 = [(PXLivePhotoTrimScrubberSpec *)self useMiniScrubberHeight];
  v8 = 51.0;
  if (useMiniScrubberHeight2)
  {
    v8 = v6;
  }

  self->_handleHeight = v8;
  useMiniScrubberHeight3 = [(PXLivePhotoTrimScrubberSpec *)self useMiniScrubberHeight];
  v10 = 4.0;
  if (useMiniScrubberHeight3)
  {
    v10 = 2.0;
  }

  self->_playheadWidth = v10;
}

- (void)setUseMiniScrubberHeight:(BOOL)height
{
  if (self->_useMiniScrubberHeight != height)
  {
    self->_useMiniScrubberHeight = height;
    [(PXLivePhotoTrimScrubberSpec *)self _updateScrubberHeight];
  }
}

- (PXLivePhotoTrimScrubberSpec)init
{
  v8.receiver = self;
  v8.super_class = PXLivePhotoTrimScrubberSpec;
  v2 = [(PXLivePhotoTrimScrubberSpec *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_scrubberHeight = xmmword_1A53811A0;
    *&v2->_handleWidth = xmmword_1A5381190;
    *&v2->_filmstripViewInsets.top = xmmword_1A53811B0;
    *&v2->_filmstripViewInsets.bottom = xmmword_1A53811B0;
    *&v2->_handleAnchorX = xmmword_1A53811C0;
    *&v2->_loupeOuterCornerRadius = xmmword_1A53811D0;
    filmstripBorderColor = v2->_filmstripBorderColor;
    v2->_filmstripCornerRadius = 0.0;
    v2->_filmstripBorderColor = 0;

    v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.8];
    disabledOverlayColor = v3->_disabledOverlayColor;
    v3->_disabledOverlayColor = v5;

    *&v3->_fallbackToKeyTimeTracking = 257;
    v3->_playheadWidth = 4.0;
  }

  return v3;
}

@end