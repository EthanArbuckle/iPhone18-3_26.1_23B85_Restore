@interface SXTextView
- (CGRect)frameInCanvas;
- (CGRect)parentFrame;
- (NSString)description;
- (SXTextTangierRepAccessibilityElement)rep;
- (SXTextView)initWithCoder:(id)coder;
- (SXTextView)initWithFrame:(CGRect)frame;
- (SXTextViewDelegate)delegate;
- (TSDCanvas)canvas;
- (id)accessibilityCustomRotorMembershipForRep:(id)rep;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)infoGeometry;
- (int64_t)accessibilityContainerType;
- (void)_updateOverlayTransform;
- (void)directLayerHostRemoveIfMatchingContainerLayer:(id)layer forRep:(id)rep;
- (void)directLayerHostUpdateOverlayLayers:(id)layers forRep:(id)rep;
- (void)directLayerHostUpdateWithContainerLayer:(id)layer forRep:(id)rep;
- (void)directLayerhostUpdateTopLevelTilingLayers:(id)layers forRep:(id)rep;
- (void)invalidate;
- (void)provideInfosLayoutTo:(id)to;
- (void)setFrame:(CGRect)frame;
- (void)setFrameInCanvas:(CGRect)canvas;
- (void)setIsSelectable:(BOOL)selectable;
- (void)setMightBeVisuallyMisplaced:(BOOL)misplaced;
- (void)setShouldHyphenate:(BOOL)hyphenate;
@end

@implementation SXTextView

- (SXTextView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SXTextView;
  v3 = [(SXTextView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SXTextView *)v3 setBackgroundColor:clearColor];

    [(SXTextView *)v3 setIsSelectable:1];
  }

  return v3;
}

- (SXTextView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SXTextView;
  v5 = [(SXTextView *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SXTextView *)v5 setBackgroundColor:clearColor];

    [(SXTextView *)v5 setIsSelectable:1];
  }

  return v5;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(SXTextView *)self mightBeVisuallyMisplaced])
  {
    v8 = [(SXTextView *)self rep];
    updateFromVisualPosition = [v8 updateFromVisualPosition];

    if (updateFromVisualPosition)
    {
      v10 = [(SXTextView *)self rep];
      v11 = [v10 icc];
      [v11 invalidateLayers];
    }
  }

  if ([(SXTextView *)self pointInside:eventCopy withEvent:x, y])
  {
    canvas = [(SXTextView *)self canvas];
    canvasController = [canvas canvasController];
    canvasView = [canvasController canvasView];
  }

  else
  {
    canvasView = 0;
  }

  return canvasView;
}

- (void)invalidate
{
  infoGeometry = [(SXTextView *)self infoGeometry];
  textInfo = [(SXTextView *)self textInfo];
  [textInfo setGeometry:infoGeometry];

  layoutController = [(SXTextView *)self layoutController];
  textInfo2 = [(SXTextView *)self textInfo];
  v5 = [layoutController layoutForInfo:textInfo2];
  [v5 invalidate];
}

- (void)directLayerHostRemoveIfMatchingContainerLayer:(id)layer forRep:(id)rep
{
  repCopy = rep;
  if (self->_repContainerLayer == layer)
  {
    [(SXTextView *)self directLayerHostUpdateWithContainerLayer:0 forRep:repCopy];
  }
}

- (void)directLayerHostUpdateWithContainerLayer:(id)layer forRep:(id)rep
{
  layerCopy = layer;
  repCopy = rep;
  [(SXTextView *)self setRep:repCopy];
  v9 = [(SXTextView *)self rep];
  v10 = +[SXAXCustomRotorDefinition linksRotor];
  v11 = [SXAXCustomRotor rotorWithName:v10];
  [v9 setLinkRotor:v11];

  v12 = [(SXTextView *)self rep];
  v13 = +[SXAXCustomRotorDefinition headingsRotor];
  v14 = [SXAXCustomRotor rotorWithName:v13];
  [v12 setHeadingsRotor:v14];

  v15 = [(SXTextView *)self rep];
  [(SXTextView *)self frameInCanvas];
  [v15 setFrameInCanvas:?];

  canvas = [repCopy canvas];
  canvasController = [canvas canvasController];
  v18 = [(SXTextView *)self rep];
  [v18 setIcc:canvasController];

  canvas2 = [repCopy canvas];
  [(SXTextView *)self setCanvas:canvas2];

  v20 = [(SXTextView *)self rep];
  [v20 setAccessibilityDataSource:self];

  repContainerLayer = self->_repContainerLayer;
  v22 = layerCopy;
  if (repContainerLayer != layerCopy)
  {
    [(CALayer *)repContainerLayer removeFromSuperlayer];
    objc_storeStrong(&self->_repContainerLayer, layer);
    if (!self->_repContainerLayer)
    {
      goto LABEL_6;
    }

    layer = [(SXTextView *)self layer];
    [layer insertSublayer:self->_repContainerLayer atIndex:0];

    v22 = self->_repContainerLayer;
  }

  if (v22)
  {
    [(SXTextView *)self frameInCanvas];
    memset(&v28, 0, sizeof(v28));
    CATransform3DMakeTranslation(&v28, -v24, -v25, 0.0);
    v27 = v28;
    [(CALayer *)self->_repContainerLayer setSublayerTransform:&v27];
    v26 = [(SXTextView *)self rep];
    [v26 updateFromVisualPosition];
  }

LABEL_6:
}

- (void)directLayerhostUpdateTopLevelTilingLayers:(id)layers forRep:(id)rep
{
  layersCopy = layers;
  if (self->_repContainerLayer)
  {
    [layersCopy addObject:?];
  }
}

- (void)_updateOverlayTransform
{
  v3 = [(SXTextView *)self rep];

  if (v3)
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    v4 = [(SXTextView *)self rep];
    layout = [v4 layout];
    v6 = layout;
    if (layout)
    {
      [layout transformInRoot];
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
      v9 = 0u;
    }

    CATransform3DMakeTranslation(&v8, -(*&v11 + *(MEMORY[0x1E695EFF8] + 8) * *&v10 + *&v9 * *MEMORY[0x1E695EFF8]), -(*(&v11 + 1) + *(MEMORY[0x1E695EFF8] + 8) * *(&v10 + 1) + *(&v9 + 1) * *MEMORY[0x1E695EFF8]), 0.0);
    v7 = v8;
    [(CALayer *)self->_overlayContainerLayer setSublayerTransform:&v7];
  }
}

- (void)directLayerHostUpdateOverlayLayers:(id)layers forRep:(id)rep
{
  layersCopy = layers;
  v5 = [layersCopy count];
  overlayContainerLayer = self->_overlayContainerLayer;
  if (v5)
  {
    if (!overlayContainerLayer)
    {
      layer = [MEMORY[0x1E69D5670] layer];
      v8 = self->_overlayContainerLayer;
      self->_overlayContainerLayer = layer;

      if (self->_repContainerLayer)
      {
        layer2 = [(SXTextView *)self layer];
        [layer2 insertSublayer:self->_overlayContainerLayer above:self->_repContainerLayer];
      }

      else
      {
        layer2 = [(SXTextView *)self layer];
        [layer2 insertSublayer:self->_overlayContainerLayer atIndex:0];
      }
    }

    [(SXTextView *)self _updateOverlayTransform];
    sublayers = [(CALayer *)self->_overlayContainerLayer sublayers];
    v12 = [sublayers isEqual:layersCopy];

    if ((v12 & 1) == 0)
    {
      [(CALayer *)self->_overlayContainerLayer setSublayers:layersCopy];
    }
  }

  else if (overlayContainerLayer)
  {
    [(CALayer *)overlayContainerLayer removeFromSuperlayer];
    v10 = self->_overlayContainerLayer;
    self->_overlayContainerLayer = 0;
  }
}

- (void)setFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SXTextView;
  [(SXTextView *)&v5 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = [(SXTextView *)self rep];
  [(SXTextView *)self frameInCanvas];
  [v4 setFrameInCanvas:?];
}

- (CGRect)frameInCanvas
{
  p_frameInCanvas = &self->_frameInCanvas;
  if (CGRectIsEmpty(self->_frameInCanvas))
  {
    [(SXTextView *)self frame];
  }

  else
  {
    x = p_frameInCanvas->origin.x;
    y = p_frameInCanvas->origin.y;
    width = p_frameInCanvas->size.width;
    height = p_frameInCanvas->size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setFrameInCanvas:(CGRect)canvas
{
  height = canvas.size.height;
  width = canvas.size.width;
  y = canvas.origin.y;
  x = canvas.origin.x;
  self->_frameInCanvas = canvas;
  v7 = [(SXTextView *)self rep];
  [v7 setFrameInCanvas:{x, y, width, height}];
}

- (void)setShouldHyphenate:(BOOL)hyphenate
{
  self->_shouldHyphenate = hyphenate;
  shouldHyphenate = [(SXTextView *)self shouldHyphenate];
  textInfo = [(SXTextView *)self textInfo];
  [textInfo setShouldHyphenate:shouldHyphenate];
}

- (void)setIsSelectable:(BOOL)selectable
{
  self->_isSelectable = selectable;
  isSelectable = [(SXTextView *)self isSelectable];
  textInfo = [(SXTextView *)self textInfo];
  [textInfo setIsSelectable:isSelectable];
}

- (id)infoGeometry
{
  [(SXTextView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  canvas = [(SXTextView *)self canvas];
  canvasController = [canvas canvasController];
  canvasView = [canvasController canvasView];

  if (canvasView)
  {
    [(SXTextView *)self convertRect:canvasView toView:v4, v6, v8, v10];
    v4 = v14;
    v6 = v15;
    v8 = v16;
    v10 = v17;
  }

  v18 = [objc_alloc(MEMORY[0x1E69D5648]) initWithPosition:v4 size:{v6, v8, v10}];

  return v18;
}

- (void)setMightBeVisuallyMisplaced:(BOOL)misplaced
{
  if (self->_mightBeVisuallyMisplaced)
  {
    v5 = [(SXTextView *)self rep];
    updateFromVisualPosition = [v5 updateFromVisualPosition];

    if (updateFromVisualPosition)
    {
      v7 = [(SXTextView *)self rep];
      v8 = [v7 icc];
      currentlyScrolling = [v8 currentlyScrolling];

      if ((currentlyScrolling & 1) == 0)
      {
        v10 = [(SXTextView *)self rep];
        v11 = [v10 icc];
        [v11 invalidateLayers];
      }
    }
  }

  self->_mightBeVisuallyMisplaced = misplaced;
}

- (void)provideInfosLayoutTo:(id)to
{
  toCopy = to;
  delegate = [(SXTextView *)self delegate];
  v5 = [delegate textRulesForTextView:self];

  delegate2 = [(SXTextView *)self delegate];
  v7 = [delegate2 componentIdentifierForTextView:self];

  if ([v5 textFlow] == 1)
  {
    v8 = @"body";
  }

  else
  {
    v8 = v7;
  }

  textLayouter = [(SXTextView *)self textLayouter];
  wpStorage = [textLayouter wpStorage];
  textLayouter2 = [(SXTextView *)self textLayouter];
  wpLayout = [textLayouter2 wpLayout];
  [toCopy addTextStorage:wpStorage withLayout:wpLayout forNamedFlow:v8 directLayerHostView:self selectable:-[SXTextView isSelectable](self componentIdentifier:{"isSelectable"), v7}];
}

- (id)accessibilityCustomRotorMembershipForRep:(id)rep
{
  delegate = [(SXTextView *)self delegate];
  v5 = [delegate accessibilityCustomRotorMembershipForTextView:self];

  return v5;
}

- (id)accessibilityLabel
{
  delegate = [(SXTextView *)self delegate];
  v4 = [delegate accessibilityContextualLabelForTextView:self];

  return v4;
}

- (int64_t)accessibilityContainerType
{
  accessibilityLabel = [(SXTextView *)self accessibilityLabel];
  v4 = [accessibilityLabel length];

  if (v4)
  {
    return 4;
  }

  v6.receiver = self;
  v6.super_class = SXTextView;
  return [(SXTextView *)&v6 accessibilityContainerType];
}

- (id)accessibilityElements
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(SXTextView *)self rep];
  v4 = v3;
  if (v3)
  {
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v4 setAccessibilityContainer:self];
  }

  else
  {
    v5 = 0;
  }

  if (_AXSCommandAndControlEnabled() && !UIAccessibilityIsVoiceOverRunning())
  {
    v6 = [v4 valueForKey:@"sxaxLinkElements"];
    array = [v6 array];

    if ([array count])
    {
      v8 = [array arrayByAddingObject:v4];

      v5 = v8;
    }
  }

  return v5;
}

- (NSString)description
{
  textInfo = [(SXTextView *)self textInfo];
  storage = [textInfo storage];
  string = [storage string];
  textInfo2 = [(SXTextView *)self textInfo];
  storage2 = [textInfo2 storage];
  string2 = [storage2 string];
  v9 = [string2 length];

  if (v9 >= 0xF)
  {
    v10 = 15;
  }

  else
  {
    v10 = v9;
  }

  v11 = [string substringWithRange:{0, v10}];

  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  [(SXTextView *)self frame];
  v14 = NSStringFromCGRect(v19);
  [(SXTextView *)self frameInCanvas];
  v15 = NSStringFromCGRect(v20);
  v16 = [v12 stringWithFormat:@"<%@: %p frame: %@; frameInCanvas: %@; string: %@>", v13, self, v14, v15, v11];;

  return v16;
}

- (SXTextViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)parentFrame
{
  x = self->_parentFrame.origin.x;
  y = self->_parentFrame.origin.y;
  width = self->_parentFrame.size.width;
  height = self->_parentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (SXTextTangierRepAccessibilityElement)rep
{
  WeakRetained = objc_loadWeakRetained(&self->_rep);

  return WeakRetained;
}

- (TSDCanvas)canvas
{
  WeakRetained = objc_loadWeakRetained(&self->_canvas);

  return WeakRetained;
}

@end