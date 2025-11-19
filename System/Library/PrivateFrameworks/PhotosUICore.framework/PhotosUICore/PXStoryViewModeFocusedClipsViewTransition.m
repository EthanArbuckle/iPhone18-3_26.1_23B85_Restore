@interface PXStoryViewModeFocusedClipsViewTransition
- ($7A74DE1ADD4D9428579EDAA94466197A)cornerRadiusForClipWithInfo:(id *)a3 proposedCornerRadius:(id)a4 inViewMode:(int64_t)a5 layout:(id)a6;
- ($B0175D27BC26B8A5DA33FAD13D27C2F3)contentsTransformOverrideForClipWithInfo:(SEL)a3 proposedOverride:(id *)a4 inViewMode:(id *)a5 layout:(int64_t)a6;
- (CGRect)frameForClipWithInfo:(id *)a3 proposedFrame:(CGRect)a4 inViewMode:(int64_t)a5 layout:(id)a6;
- (PXStoryViewModeFocusedClipsViewTransition)initWithSourceViewMode:(int64_t)a3 sourceSnapshot:(id)a4 destinationViewMode:(int64_t)a5 destinationSnapshot:(id)a6 assetReference:(id)a7;
- (PXStoryViewModeFocusedClipsViewTransition)initWithSourceViewMode:(int64_t)a3 sourceSnapshot:(id)a4 destinationViewMode:(int64_t)a5 destinationSnapshot:(id)a6 assetReference:(id)a7 focusedClipIdentifiers:(id)a8 trackingClipIdentifier:(int64_t)a9;
- (double)zPositionForClipWithInfo:(id *)a3 proposedZPosition:(double)a4 inViewMode:(int64_t)a5 layout:(id)a6;
@end

@implementation PXStoryViewModeFocusedClipsViewTransition

- (double)zPositionForClipWithInfo:(id *)a3 proposedZPosition:(double)a4 inViewMode:(int64_t)a5 layout:(id)a6
{
  if ([(PXStoryViewModeFocusedClipsViewTransition *)self trackingClipIdentifier:a3]== a3->var0)
  {
    return a4 + a4;
  }

  v9 = [(NSIndexSet *)self->_focusedClipIdentifiers containsIndex:?];
  result = a4 * 0.5;
  if (v9)
  {
    return a4;
  }

  return result;
}

- ($B0175D27BC26B8A5DA33FAD13D27C2F3)contentsTransformOverrideForClipWithInfo:(SEL)a3 proposedOverride:(id *)a4 inViewMode:(id *)a5 layout:(int64_t)a6
{
  v9 = *&a5->var1.origin.y;
  *&retstr->var0 = *&a5->var0;
  *&retstr->var1.origin.y = v9;
  retstr->var1.size.height = a5->var1.size.height;
  result = [(PXStoryViewModeTransition *)self regionOfInterest];
  if (result)
  {
    v11 = result;
    v12 = [(NSIndexSet *)self->_focusedClipIdentifiers containsIndex:a4->var0];

    if (v12)
    {
      [(PXStoryViewModeTransition *)self sourceViewMode];
      [(PXStoryViewModeTransition *)self destinationViewMode];
      [(PXStoryViewModeTransition *)self fractionCompleted];
      PXFloatSaturate();
    }
  }

  return result;
}

- ($7A74DE1ADD4D9428579EDAA94466197A)cornerRadiusForClipWithInfo:(id *)a3 proposedCornerRadius:(id)a4 inViewMode:(int64_t)a5 layout:(id)a6
{
  v7 = *&a4.var0.var0.var0;
  v8 = v6;
  v10 = [(NSIndexSet *)self->_focusedClipIdentifiers containsIndex:a3->var0, *&a4.var0.var0.var0, *&a4.var0.var1[2], a5, a6];
  if (v10)
  {
    v12 = [(PXStoryViewModeTransition *)self sourceViewMode];
    LODWORD(v13) = v8;
    if (v12 != v7)
    {
      v14 = [(PXStoryViewModeTransition *)self regionOfInterest];

      LODWORD(v15) = v8;
      if (v14)
      {
        v16 = [(PXStoryViewModeTransition *)self regionOfInterest];
        v17 = [v16 imageViewSpec];
        [v17 cornerRadius];
      }
    }

    if ([(PXStoryViewModeTransition *)self destinationViewMode]!= v7)
    {
      v18 = [(PXStoryViewModeTransition *)self regionOfInterest];

      if (v18)
      {
        v19 = [(PXStoryViewModeTransition *)self regionOfInterest];
        v20 = [v19 imageViewSpec];
        [v20 cornerRadius];
      }
    }

    [(PXStoryViewModeTransition *)self fractionCompleted];
    PXFloatSaturate();
  }

  *&result.var0.var1[2] = v11;
  *&result.var0.var0.var0 = v10;
  return result;
}

- (CGRect)frameForClipWithInfo:(id *)a3 proposedFrame:(CGRect)a4 inViewMode:(int64_t)a5 layout:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a6;
  var1 = a3->var1;
  v14 = [(PXStoryViewModeTransition *)self regionOfInterest];
  v15 = [v12 rootLayout];
  v16 = [v15 coordinateSpace];

  if (var1 <= 5 && ((0x32u >> var1) & 1) != 0)
  {
    if (v14)
    {
      if (v16)
      {
        v17 = [(PXStoryViewModeFocusedClipsViewTransition *)self focusedClipIdentifiers];
        v18 = [v17 containsIndex:a3->var0];

        if (v18)
        {
          [v14 rectInCoordinateSpace:v16];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v27 = [v12 rootLayout];
          [v12 convertRect:v27 fromLayout:{v20, v22, v24, v26}];

          [(PXStoryViewModeTransition *)self sourceViewMode];
          [(PXStoryViewModeTransition *)self destinationViewMode];
          [(PXStoryViewModeTransition *)self fractionCompleted];
          PXRectByLinearlyInterpolatingRects();
        }
      }
    }
  }

  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (PXStoryViewModeFocusedClipsViewTransition)initWithSourceViewMode:(int64_t)a3 sourceSnapshot:(id)a4 destinationViewMode:(int64_t)a5 destinationSnapshot:(id)a6 assetReference:(id)a7 focusedClipIdentifiers:(id)a8 trackingClipIdentifier:(int64_t)a9
{
  v16 = a8;
  v20.receiver = self;
  v20.super_class = PXStoryViewModeFocusedClipsViewTransition;
  v17 = [(PXStoryViewModeTransition *)&v20 initWithSourceViewMode:a3 sourceSnapshot:a4 destinationViewMode:a5 destinationSnapshot:a6 assetReference:a7];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_focusedClipIdentifiers, a8);
    v18->_trackingClipIdentifier = a9;
  }

  return v18;
}

- (PXStoryViewModeFocusedClipsViewTransition)initWithSourceViewMode:(int64_t)a3 sourceSnapshot:(id)a4 destinationViewMode:(int64_t)a5 destinationSnapshot:(id)a6 assetReference:(id)a7
{
  v11 = a4;
  v12 = a6;
  v13 = a7;
  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"PXStoryViewModeTransition.m" lineNumber:265 description:{@"%s is not available as initializer", "-[PXStoryViewModeFocusedClipsViewTransition initWithSourceViewMode:sourceSnapshot:destinationViewMode:destinationSnapshot:assetReference:]"}];

  abort();
}

@end