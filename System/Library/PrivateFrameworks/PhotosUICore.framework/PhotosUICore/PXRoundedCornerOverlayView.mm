@interface PXRoundedCornerOverlayView
- (PXFocusInfo)focusInfo;
- (PXRoundedCornerOverlayView)initWithFrame:(CGRect)frame;
- (void)_setNeedsUpdate;
- (void)_updateIfNeeded;
- (void)_updateImageIfNeeded;
- (void)performChanges:(id)changes;
- (void)setContinuousCorners:(BOOL)corners;
- (void)setCornerRadius:(double)radius;
- (void)setCornersToRound:(unint64_t)round;
- (void)setDisplayScale:(double)scale;
- (void)setOverlayColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PXRoundedCornerOverlayView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = PXRoundedCornerOverlayView;
  [(PXRoundedCornerOverlayView *)&v10 traitCollectionDidChange:changeCopy];
  image = [(PXRoundedCornerOverlayView *)self image];
  if (image)
  {
    v6 = image;
    traitCollection = [(PXRoundedCornerOverlayView *)self traitCollection];
    v8 = [traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

    if (v8)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __55__PXRoundedCornerOverlayView_traitCollectionDidChange___block_invoke;
      v9[3] = &unk_1E7736BA0;
      v9[4] = self;
      [(PXRoundedCornerOverlayView *)self performChanges:v9];
    }
  }
}

- (void)_updateImageIfNeeded
{
  if (self->_needsUpdateFlags.image)
  {
    v27 = v5;
    v28 = v4;
    v29 = v2;
    v30 = v3;
    self->_needsUpdateFlags.image = 0;
    [(PXRoundedCornerOverlayView *)self displayScale];
    v8 = v7;
    [(PXRoundedCornerOverlayView *)self cornerRadius];
    v10 = v9;
    continuousCorners = [(PXRoundedCornerOverlayView *)self continuousCorners];
    overlayColor = [(PXRoundedCornerOverlayView *)self overlayColor];
    cornersToRound = [(PXRoundedCornerOverlayView *)self cornersToRound];
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"%@-%.2f-%.2f-%@-%lu", v16, v8, v10, objc_msgSend(overlayColor, "CGColor"), cornersToRound];

    v18 = MEMORY[0x1E69DCAB8];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __50__PXRoundedCornerOverlayView__updateImageIfNeeded__block_invoke;
    v21[3] = &unk_1E7730B98;
    v26 = continuousCorners;
    v23 = v10;
    v24 = v8;
    v22 = overlayColor;
    v25 = cornersToRound;
    v19 = overlayColor;
    v20 = [v18 _cachedImageForKey:v17 fromBlock:v21];
    [(PXRoundedCornerOverlayView *)self setImage:v20];
  }
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingChanges && !self->_isPerformingUpdates)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXRoundedCornerOverlayView.m" lineNumber:132 description:@"not inside -performChanges: or _updateIfNeeded"];
  }
}

- (void)_updateIfNeeded
{
  if ([(PXRoundedCornerOverlayView *)self _needsUpdate])
  {
    isPerformingUpdates = self->_isPerformingUpdates;
    self->_isPerformingUpdates = 1;
    [(PXRoundedCornerOverlayView *)self _updateImageIfNeeded];
    self->_isPerformingUpdates = isPerformingUpdates;
    if ([(PXRoundedCornerOverlayView *)self _needsUpdate])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXRoundedCornerOverlayView.m" lineNumber:122 description:@"update still needed after update pass"];
    }
  }
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  v7 = changesCopy;
  if (changesCopy)
  {
    mutableChangeObject = [(PXRoundedCornerOverlayView *)self mutableChangeObject];
    v7[2](v7, mutableChangeObject);
  }

  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {
    [(PXRoundedCornerOverlayView *)self _updateIfNeeded];
  }
}

- (PXFocusInfo)focusInfo
{
  if (self->_continuousCorners)
  {
    v3 = MEMORY[0x1E69796E8];
  }

  else
  {
    v3 = MEMORY[0x1E69796E0];
  }

  v4 = *v3;
  [(PXRoundedCornerOverlayView *)self cornerRadius];
  v5 = [PXFocusInfo focusInfoWithView:self cornerRadius:v4 cornerCurve:?];

  return v5;
}

- (void)setDisplayScale:(double)scale
{
  if (self->_displayScale != scale)
  {
    self->_displayScale = scale;
    [(PXRoundedCornerOverlayView *)self _invalidateImage];
  }
}

- (void)setOverlayColor:(id)color
{
  colorCopy = color;
  if (self->_overlayColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_overlayColor, color);
    [(PXRoundedCornerOverlayView *)self _invalidateImage];
    colorCopy = v6;
  }
}

- (void)setContinuousCorners:(BOOL)corners
{
  if (self->_continuousCorners != corners)
  {
    self->_continuousCorners = corners;
    [(PXRoundedCornerOverlayView *)self _invalidateImage];
  }
}

- (void)setCornersToRound:(unint64_t)round
{
  if (self->_cornersToRound != round)
  {
    self->_cornersToRound = round;
    [(PXRoundedCornerOverlayView *)self _invalidateImage];
  }
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(PXRoundedCornerOverlayView *)self _invalidateImage];
  }
}

- (PXRoundedCornerOverlayView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = PXRoundedCornerOverlayView;
  result = [(PXRoundedCornerOverlayView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_cornersToRound = -1;
    result->_continuousCorners = 1;
  }

  return result;
}

@end