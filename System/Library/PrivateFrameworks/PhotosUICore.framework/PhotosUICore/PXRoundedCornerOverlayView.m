@interface PXRoundedCornerOverlayView
- (PXFocusInfo)focusInfo;
- (PXRoundedCornerOverlayView)initWithFrame:(CGRect)a3;
- (void)_setNeedsUpdate;
- (void)_updateIfNeeded;
- (void)_updateImageIfNeeded;
- (void)performChanges:(id)a3;
- (void)setContinuousCorners:(BOOL)a3;
- (void)setCornerRadius:(double)a3;
- (void)setCornersToRound:(unint64_t)a3;
- (void)setDisplayScale:(double)a3;
- (void)setOverlayColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PXRoundedCornerOverlayView

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PXRoundedCornerOverlayView;
  [(PXRoundedCornerOverlayView *)&v10 traitCollectionDidChange:v4];
  v5 = [(PXRoundedCornerOverlayView *)self image];
  if (v5)
  {
    v6 = v5;
    v7 = [(PXRoundedCornerOverlayView *)self traitCollection];
    v8 = [v7 hasDifferentColorAppearanceComparedToTraitCollection:v4];

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
    v11 = [(PXRoundedCornerOverlayView *)self continuousCorners];
    v12 = [(PXRoundedCornerOverlayView *)self overlayColor];
    v13 = [(PXRoundedCornerOverlayView *)self cornersToRound];
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"%@-%.2f-%.2f-%@-%lu", v16, v8, v10, objc_msgSend(v12, "CGColor"), v13];

    v18 = MEMORY[0x1E69DCAB8];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __50__PXRoundedCornerOverlayView__updateImageIfNeeded__block_invoke;
    v21[3] = &unk_1E7730B98;
    v26 = v11;
    v23 = v10;
    v24 = v8;
    v22 = v12;
    v25 = v13;
    v19 = v12;
    v20 = [v18 _cachedImageForKey:v17 fromBlock:v21];
    [(PXRoundedCornerOverlayView *)self setImage:v20];
  }
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingChanges && !self->_isPerformingUpdates)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PXRoundedCornerOverlayView.m" lineNumber:132 description:@"not inside -performChanges: or _updateIfNeeded"];
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
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"PXRoundedCornerOverlayView.m" lineNumber:122 description:@"update still needed after update pass"];
    }
  }
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  v7 = v4;
  if (v4)
  {
    v6 = [(PXRoundedCornerOverlayView *)self mutableChangeObject];
    v7[2](v7, v6);
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

- (void)setDisplayScale:(double)a3
{
  if (self->_displayScale != a3)
  {
    self->_displayScale = a3;
    [(PXRoundedCornerOverlayView *)self _invalidateImage];
  }
}

- (void)setOverlayColor:(id)a3
{
  v5 = a3;
  if (self->_overlayColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_overlayColor, a3);
    [(PXRoundedCornerOverlayView *)self _invalidateImage];
    v5 = v6;
  }
}

- (void)setContinuousCorners:(BOOL)a3
{
  if (self->_continuousCorners != a3)
  {
    self->_continuousCorners = a3;
    [(PXRoundedCornerOverlayView *)self _invalidateImage];
  }
}

- (void)setCornersToRound:(unint64_t)a3
{
  if (self->_cornersToRound != a3)
  {
    self->_cornersToRound = a3;
    [(PXRoundedCornerOverlayView *)self _invalidateImage];
  }
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(PXRoundedCornerOverlayView *)self _invalidateImage];
  }
}

- (PXRoundedCornerOverlayView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = PXRoundedCornerOverlayView;
  result = [(PXRoundedCornerOverlayView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_cornersToRound = -1;
    result->_continuousCorners = 1;
  }

  return result;
}

@end