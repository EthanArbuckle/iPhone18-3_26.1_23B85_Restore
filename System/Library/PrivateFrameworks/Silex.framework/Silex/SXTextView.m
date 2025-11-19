@interface SXTextView
- (CGRect)frameInCanvas;
- (CGRect)parentFrame;
- (NSString)description;
- (SXTextTangierRepAccessibilityElement)rep;
- (SXTextView)initWithCoder:(id)a3;
- (SXTextView)initWithFrame:(CGRect)a3;
- (SXTextViewDelegate)delegate;
- (TSDCanvas)canvas;
- (id)accessibilityCustomRotorMembershipForRep:(id)a3;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)infoGeometry;
- (int64_t)accessibilityContainerType;
- (void)_updateOverlayTransform;
- (void)directLayerHostRemoveIfMatchingContainerLayer:(id)a3 forRep:(id)a4;
- (void)directLayerHostUpdateOverlayLayers:(id)a3 forRep:(id)a4;
- (void)directLayerHostUpdateWithContainerLayer:(id)a3 forRep:(id)a4;
- (void)directLayerhostUpdateTopLevelTilingLayers:(id)a3 forRep:(id)a4;
- (void)invalidate;
- (void)provideInfosLayoutTo:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setFrameInCanvas:(CGRect)a3;
- (void)setIsSelectable:(BOOL)a3;
- (void)setMightBeVisuallyMisplaced:(BOOL)a3;
- (void)setShouldHyphenate:(BOOL)a3;
@end

@implementation SXTextView

- (SXTextView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SXTextView;
  v3 = [(SXTextView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(SXTextView *)v3 setBackgroundColor:v4];

    [(SXTextView *)v3 setIsSelectable:1];
  }

  return v3;
}

- (SXTextView)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SXTextView;
  v5 = [(SXTextView *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(SXTextView *)v5 setBackgroundColor:v6];

    [(SXTextView *)v5 setIsSelectable:1];
  }

  return v5;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(SXTextView *)self mightBeVisuallyMisplaced])
  {
    v8 = [(SXTextView *)self rep];
    v9 = [v8 updateFromVisualPosition];

    if (v9)
    {
      v10 = [(SXTextView *)self rep];
      v11 = [v10 icc];
      [v11 invalidateLayers];
    }
  }

  if ([(SXTextView *)self pointInside:v7 withEvent:x, y])
  {
    v12 = [(SXTextView *)self canvas];
    v13 = [v12 canvasController];
    v14 = [v13 canvasView];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)invalidate
{
  v6 = [(SXTextView *)self infoGeometry];
  v3 = [(SXTextView *)self textInfo];
  [v3 setGeometry:v6];

  v7 = [(SXTextView *)self layoutController];
  v4 = [(SXTextView *)self textInfo];
  v5 = [v7 layoutForInfo:v4];
  [v5 invalidate];
}

- (void)directLayerHostRemoveIfMatchingContainerLayer:(id)a3 forRep:(id)a4
{
  v6 = a4;
  if (self->_repContainerLayer == a3)
  {
    [(SXTextView *)self directLayerHostUpdateWithContainerLayer:0 forRep:v6];
  }
}

- (void)directLayerHostUpdateWithContainerLayer:(id)a3 forRep:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(SXTextView *)self setRep:v8];
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

  v16 = [v8 canvas];
  v17 = [v16 canvasController];
  v18 = [(SXTextView *)self rep];
  [v18 setIcc:v17];

  v19 = [v8 canvas];
  [(SXTextView *)self setCanvas:v19];

  v20 = [(SXTextView *)self rep];
  [v20 setAccessibilityDataSource:self];

  repContainerLayer = self->_repContainerLayer;
  v22 = v7;
  if (repContainerLayer != v7)
  {
    [(CALayer *)repContainerLayer removeFromSuperlayer];
    objc_storeStrong(&self->_repContainerLayer, a3);
    if (!self->_repContainerLayer)
    {
      goto LABEL_6;
    }

    v23 = [(SXTextView *)self layer];
    [v23 insertSublayer:self->_repContainerLayer atIndex:0];

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

- (void)directLayerhostUpdateTopLevelTilingLayers:(id)a3 forRep:(id)a4
{
  v5 = a3;
  if (self->_repContainerLayer)
  {
    [v5 addObject:?];
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
    v5 = [v4 layout];
    v6 = v5;
    if (v5)
    {
      [v5 transformInRoot];
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

- (void)directLayerHostUpdateOverlayLayers:(id)a3 forRep:(id)a4
{
  v13 = a3;
  v5 = [v13 count];
  overlayContainerLayer = self->_overlayContainerLayer;
  if (v5)
  {
    if (!overlayContainerLayer)
    {
      v7 = [MEMORY[0x1E69D5670] layer];
      v8 = self->_overlayContainerLayer;
      self->_overlayContainerLayer = v7;

      if (self->_repContainerLayer)
      {
        v9 = [(SXTextView *)self layer];
        [v9 insertSublayer:self->_overlayContainerLayer above:self->_repContainerLayer];
      }

      else
      {
        v9 = [(SXTextView *)self layer];
        [v9 insertSublayer:self->_overlayContainerLayer atIndex:0];
      }
    }

    [(SXTextView *)self _updateOverlayTransform];
    v11 = [(CALayer *)self->_overlayContainerLayer sublayers];
    v12 = [v11 isEqual:v13];

    if ((v12 & 1) == 0)
    {
      [(CALayer *)self->_overlayContainerLayer setSublayers:v13];
    }
  }

  else if (overlayContainerLayer)
  {
    [(CALayer *)overlayContainerLayer removeFromSuperlayer];
    v10 = self->_overlayContainerLayer;
    self->_overlayContainerLayer = 0;
  }
}

- (void)setFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SXTextView;
  [(SXTextView *)&v5 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setFrameInCanvas:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->_frameInCanvas = a3;
  v7 = [(SXTextView *)self rep];
  [v7 setFrameInCanvas:{x, y, width, height}];
}

- (void)setShouldHyphenate:(BOOL)a3
{
  self->_shouldHyphenate = a3;
  v4 = [(SXTextView *)self shouldHyphenate];
  v5 = [(SXTextView *)self textInfo];
  [v5 setShouldHyphenate:v4];
}

- (void)setIsSelectable:(BOOL)a3
{
  self->_isSelectable = a3;
  v4 = [(SXTextView *)self isSelectable];
  v5 = [(SXTextView *)self textInfo];
  [v5 setIsSelectable:v4];
}

- (id)infoGeometry
{
  [(SXTextView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SXTextView *)self canvas];
  v12 = [v11 canvasController];
  v13 = [v12 canvasView];

  if (v13)
  {
    [(SXTextView *)self convertRect:v13 toView:v4, v6, v8, v10];
    v4 = v14;
    v6 = v15;
    v8 = v16;
    v10 = v17;
  }

  v18 = [objc_alloc(MEMORY[0x1E69D5648]) initWithPosition:v4 size:{v6, v8, v10}];

  return v18;
}

- (void)setMightBeVisuallyMisplaced:(BOOL)a3
{
  if (self->_mightBeVisuallyMisplaced)
  {
    v5 = [(SXTextView *)self rep];
    v6 = [v5 updateFromVisualPosition];

    if (v6)
    {
      v7 = [(SXTextView *)self rep];
      v8 = [v7 icc];
      v9 = [v8 currentlyScrolling];

      if ((v9 & 1) == 0)
      {
        v10 = [(SXTextView *)self rep];
        v11 = [v10 icc];
        [v11 invalidateLayers];
      }
    }
  }

  self->_mightBeVisuallyMisplaced = a3;
}

- (void)provideInfosLayoutTo:(id)a3
{
  v13 = a3;
  v4 = [(SXTextView *)self delegate];
  v5 = [v4 textRulesForTextView:self];

  v6 = [(SXTextView *)self delegate];
  v7 = [v6 componentIdentifierForTextView:self];

  if ([v5 textFlow] == 1)
  {
    v8 = @"body";
  }

  else
  {
    v8 = v7;
  }

  v9 = [(SXTextView *)self textLayouter];
  v10 = [v9 wpStorage];
  v11 = [(SXTextView *)self textLayouter];
  v12 = [v11 wpLayout];
  [v13 addTextStorage:v10 withLayout:v12 forNamedFlow:v8 directLayerHostView:self selectable:-[SXTextView isSelectable](self componentIdentifier:{"isSelectable"), v7}];
}

- (id)accessibilityCustomRotorMembershipForRep:(id)a3
{
  v4 = [(SXTextView *)self delegate];
  v5 = [v4 accessibilityCustomRotorMembershipForTextView:self];

  return v5;
}

- (id)accessibilityLabel
{
  v3 = [(SXTextView *)self delegate];
  v4 = [v3 accessibilityContextualLabelForTextView:self];

  return v4;
}

- (int64_t)accessibilityContainerType
{
  v3 = [(SXTextView *)self accessibilityLabel];
  v4 = [v3 length];

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
    v7 = [v6 array];

    if ([v7 count])
    {
      v8 = [v7 arrayByAddingObject:v4];

      v5 = v8;
    }
  }

  return v5;
}

- (NSString)description
{
  v3 = [(SXTextView *)self textInfo];
  v4 = [v3 storage];
  v5 = [v4 string];
  v6 = [(SXTextView *)self textInfo];
  v7 = [v6 storage];
  v8 = [v7 string];
  v9 = [v8 length];

  if (v9 >= 0xF)
  {
    v10 = 15;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v5 substringWithRange:{0, v10}];

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