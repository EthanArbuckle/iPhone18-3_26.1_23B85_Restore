@interface PXStoryViewModeFocusedClipsViewTransition
- ($7A74DE1ADD4D9428579EDAA94466197A)cornerRadiusForClipWithInfo:(id *)info proposedCornerRadius:(id)radius inViewMode:(int64_t)mode layout:(id)layout;
- ($B0175D27BC26B8A5DA33FAD13D27C2F3)contentsTransformOverrideForClipWithInfo:(SEL)info proposedOverride:(id *)override inViewMode:(id *)mode layout:(int64_t)layout;
- (CGRect)frameForClipWithInfo:(id *)info proposedFrame:(CGRect)frame inViewMode:(int64_t)mode layout:(id)layout;
- (PXStoryViewModeFocusedClipsViewTransition)initWithSourceViewMode:(int64_t)mode sourceSnapshot:(id)snapshot destinationViewMode:(int64_t)viewMode destinationSnapshot:(id)destinationSnapshot assetReference:(id)reference;
- (PXStoryViewModeFocusedClipsViewTransition)initWithSourceViewMode:(int64_t)mode sourceSnapshot:(id)snapshot destinationViewMode:(int64_t)viewMode destinationSnapshot:(id)destinationSnapshot assetReference:(id)reference focusedClipIdentifiers:(id)identifiers trackingClipIdentifier:(int64_t)identifier;
- (double)zPositionForClipWithInfo:(id *)info proposedZPosition:(double)position inViewMode:(int64_t)mode layout:(id)layout;
@end

@implementation PXStoryViewModeFocusedClipsViewTransition

- (double)zPositionForClipWithInfo:(id *)info proposedZPosition:(double)position inViewMode:(int64_t)mode layout:(id)layout
{
  if ([(PXStoryViewModeFocusedClipsViewTransition *)self trackingClipIdentifier:info]== info->var0)
  {
    return position + position;
  }

  v9 = [(NSIndexSet *)self->_focusedClipIdentifiers containsIndex:?];
  result = position * 0.5;
  if (v9)
  {
    return position;
  }

  return result;
}

- ($B0175D27BC26B8A5DA33FAD13D27C2F3)contentsTransformOverrideForClipWithInfo:(SEL)info proposedOverride:(id *)override inViewMode:(id *)mode layout:(int64_t)layout
{
  v9 = *&mode->var1.origin.y;
  *&retstr->var0 = *&mode->var0;
  *&retstr->var1.origin.y = v9;
  retstr->var1.size.height = mode->var1.size.height;
  result = [(PXStoryViewModeTransition *)self regionOfInterest];
  if (result)
  {
    v11 = result;
    v12 = [(NSIndexSet *)self->_focusedClipIdentifiers containsIndex:override->var0];

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

- ($7A74DE1ADD4D9428579EDAA94466197A)cornerRadiusForClipWithInfo:(id *)info proposedCornerRadius:(id)radius inViewMode:(int64_t)mode layout:(id)layout
{
  v7 = *&radius.var0.var0.var0;
  v8 = v6;
  layout = [(NSIndexSet *)self->_focusedClipIdentifiers containsIndex:info->var0, *&radius.var0.var0.var0, *&radius.var0.var1[2], mode, layout];
  if (layout)
  {
    sourceViewMode = [(PXStoryViewModeTransition *)self sourceViewMode];
    LODWORD(v13) = v8;
    if (sourceViewMode != v7)
    {
      regionOfInterest = [(PXStoryViewModeTransition *)self regionOfInterest];

      LODWORD(v15) = v8;
      if (regionOfInterest)
      {
        regionOfInterest2 = [(PXStoryViewModeTransition *)self regionOfInterest];
        imageViewSpec = [regionOfInterest2 imageViewSpec];
        [imageViewSpec cornerRadius];
      }
    }

    if ([(PXStoryViewModeTransition *)self destinationViewMode]!= v7)
    {
      regionOfInterest3 = [(PXStoryViewModeTransition *)self regionOfInterest];

      if (regionOfInterest3)
      {
        regionOfInterest4 = [(PXStoryViewModeTransition *)self regionOfInterest];
        imageViewSpec2 = [regionOfInterest4 imageViewSpec];
        [imageViewSpec2 cornerRadius];
      }
    }

    [(PXStoryViewModeTransition *)self fractionCompleted];
    PXFloatSaturate();
  }

  *&result.var0.var1[2] = v11;
  *&result.var0.var0.var0 = layout;
  return result;
}

- (CGRect)frameForClipWithInfo:(id *)info proposedFrame:(CGRect)frame inViewMode:(int64_t)mode layout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  var1 = info->var1;
  regionOfInterest = [(PXStoryViewModeTransition *)self regionOfInterest];
  rootLayout = [layoutCopy rootLayout];
  coordinateSpace = [rootLayout coordinateSpace];

  if (var1 <= 5 && ((0x32u >> var1) & 1) != 0)
  {
    if (regionOfInterest)
    {
      if (coordinateSpace)
      {
        focusedClipIdentifiers = [(PXStoryViewModeFocusedClipsViewTransition *)self focusedClipIdentifiers];
        v18 = [focusedClipIdentifiers containsIndex:info->var0];

        if (v18)
        {
          [regionOfInterest rectInCoordinateSpace:coordinateSpace];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;
          rootLayout2 = [layoutCopy rootLayout];
          [layoutCopy convertRect:rootLayout2 fromLayout:{v20, v22, v24, v26}];

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

- (PXStoryViewModeFocusedClipsViewTransition)initWithSourceViewMode:(int64_t)mode sourceSnapshot:(id)snapshot destinationViewMode:(int64_t)viewMode destinationSnapshot:(id)destinationSnapshot assetReference:(id)reference focusedClipIdentifiers:(id)identifiers trackingClipIdentifier:(int64_t)identifier
{
  identifiersCopy = identifiers;
  v20.receiver = self;
  v20.super_class = PXStoryViewModeFocusedClipsViewTransition;
  v17 = [(PXStoryViewModeTransition *)&v20 initWithSourceViewMode:mode sourceSnapshot:snapshot destinationViewMode:viewMode destinationSnapshot:destinationSnapshot assetReference:reference];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_focusedClipIdentifiers, identifiers);
    v18->_trackingClipIdentifier = identifier;
  }

  return v18;
}

- (PXStoryViewModeFocusedClipsViewTransition)initWithSourceViewMode:(int64_t)mode sourceSnapshot:(id)snapshot destinationViewMode:(int64_t)viewMode destinationSnapshot:(id)destinationSnapshot assetReference:(id)reference
{
  snapshotCopy = snapshot;
  destinationSnapshotCopy = destinationSnapshot;
  referenceCopy = reference;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewModeTransition.m" lineNumber:265 description:{@"%s is not available as initializer", "-[PXStoryViewModeFocusedClipsViewTransition initWithSourceViewMode:sourceSnapshot:destinationViewMode:destinationSnapshot:assetReference:]"}];

  abort();
}

@end