@interface UIPDFParagraphWidget
- (BOOL)hitTest:(CGPoint)test fixedPoint:(CGPoint *)point preceeds:(BOOL *)preceeds;
- (CGPoint)currentSelectionPointOnPage;
- (CGPoint)initialSelectionPointOnPage;
- (CGPoint)viewOffset;
- (CGRect)adjustRect:(CGRect)rect toPoint:(CGPoint)point;
- (CGRect)selectionBoundsInEffectsSpace;
- (CGRect)selectionRectangle;
- (UIPDFParagraphWidget)init;
- (void)dealloc;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)endTracking;
- (void)hide;
- (void)layout;
- (void)remove;
- (void)setSelectedGrabberPosition:(CGRect)position;
- (void)setSelection:(id)selection;
- (void)track:(CGPoint)track;
@end

@implementation UIPDFParagraphWidget

- (UIPDFParagraphWidget)init
{
  v16 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = UIPDFParagraphWidget;
  v2 = [(UIPDFParagraphWidget *)&v13 init];
  if (v2)
  {
    *components = xmmword_18A681840;
    v15 = unk_18A681850;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *(v2 + 20) = CGColorCreate(DeviceRGB, components);
    CGColorSpaceRelease(DeviceRGB);
    v4 = [+[UIImage kitImageNamed:](UIImage kitImageNamed:{@"kb-drag-dot.png", "CGImage"}];
    CGImageRetain(v4);
    v12 = 1.0;
    v5 = CPIsRetina(&v12);
    v6 = v5;
    v7 = 14.0;
    v8 = v12;
    if (v5)
    {
      v7 = fmax((1.0 / v12), 0.5) * 28.0;
    }

    *(v2 + 11) = makeGrabber(v5, 0.0, 0.0, v7, v7, v12);
    *(v2 + 12) = makeGrabber(v6, 0.0, 0.0, v7, v7, v8);
    *(v2 + 13) = makeGrabber(v6, 0.0, 0.0, v7, v7, v8);
    *(v2 + 14) = makeGrabber(v6, 0.0, 0.0, v7, v7, v8);
    [*(v2 + 11) setDelegate:v2];
    [*(v2 + 12) setDelegate:v2];
    [*(v2 + 13) setDelegate:v2];
    [*(v2 + 14) setDelegate:v2];
    CGImageRelease(v4);
    v9 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 16);
    *(v2 + 1) = *MEMORY[0x1E695F050];
    *(v2 + 2) = v10;
    *(v2 + 56) = v9;
    *(v2 + 72) = v10;
    v2[48] = 0;
  }

  return v2;
}

- (void)dealloc
{
  CGColorRelease(self->_grabberColor);
  [(UIPDFParagraphWidget *)self remove];
  v3.receiver = self;
  v3.super_class = UIPDFParagraphWidget;
  [(UIPDFParagraphWidget *)&v3 dealloc];
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  [layer bounds];
  grabberColor = self->_grabberColor;

  CPCGInsetFillEllipseInRect(context, grabberColor, v6, v7, v8, v9);
}

- (CGRect)selectionBoundsInEffectsSpace
{
  effectsLayer = [(UIPDFPageView *)self->_pageView effectsLayer];
  [(UIPDFSelection *)[[(UIPDFPageView *)self->_pageView page] selection] bounds];
  self->_boundsInPDFSpace.origin.x = v4;
  self->_boundsInPDFSpace.origin.y = v5;
  self->_boundsInPDFSpace.size.width = v6;
  self->_boundsInPDFSpace.size.height = v7;
  [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  layer = [(UIView *)self->_pageView layer];

  [(CALayer *)effectsLayer convertRect:layer fromLayer:v9, v11, v13, v15];
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)setSelection:(id)selection
{
  [selection bounds];
  self->_boundsInPDFSpace.origin.x = x;
  self->_boundsInPDFSpace.origin.y = y;
  self->_boundsInPDFSpace.size.width = width;
  self->_boundsInPDFSpace.size.height = height;
  if (!self->_tracking)
  {
    v9 = x;
    v10 = y;
    v11 = width;
    v12 = height;
    memset(&v30[1], 0, sizeof(CGAffineTransform));
    if (selection)
    {
      [selection transform];
      x = self->_boundsInPDFSpace.origin.x;
      y = self->_boundsInPDFSpace.origin.y;
      width = self->_boundsInPDFSpace.size.width;
      height = self->_boundsInPDFSpace.size.height;
    }

    v30[0] = v30[1];
    self->_boundsInPDFSpace = CGRectApplyAffineTransform(*&x, v30);
    [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:v9, v10, v11, v12];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    effectsLayer = [(UIPDFPageView *)self->_pageView effectsLayer];
    [(CALayer *)effectsLayer convertRect:[(UIView *)self->_pageView layer] fromLayer:v14, v16, v18, v20];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    if (CGRectIsNull(self->_initialRect))
    {
      self->_initialRect.origin.x = v23;
      self->_initialRect.origin.y = v25;
      self->_initialRect.size.width = v27;
      self->_initialRect.size.height = v29;
    }

    [(CALayer *)effectsLayer addSublayer:self->_leftGrabber];
    [(CALayer *)effectsLayer addSublayer:self->_rightGrabber];
    [(CALayer *)effectsLayer addSublayer:self->_topGrabber];
    [(CALayer *)effectsLayer addSublayer:self->_bottomGrabber];
  }
}

- (void)remove
{
  [(CALayer *)self->_leftGrabber removeFromSuperlayer];
  self->_leftGrabber = 0;
  [(CALayer *)self->_rightGrabber removeFromSuperlayer];
  self->_rightGrabber = 0;
  [(CALayer *)self->_topGrabber removeFromSuperlayer];
  self->_topGrabber = 0;
  [(CALayer *)self->_bottomGrabber removeFromSuperlayer];
  self->_bottomGrabber = 0;
  [(CAShapeLayer *)self->_trackingBorder removeFromSuperlayer];
  self->_trackingBorder = 0;
}

- (BOOL)hitTest:(CGPoint)test fixedPoint:(CGPoint *)point preceeds:(BOOL *)preceeds
{
  [(CALayer *)[(UIPDFPageView *)self->_pageView effectsLayer] convertPoint:[(UIView *)self->_pageView layer] fromLayer:test.x, test.y];
  v50 = v8;
  v51 = v9;
  *point = *MEMORY[0x1E695EFF8];
  *preceeds = 0;
  p_topGrabber = &self->_topGrabber;
  [(CALayer *)self->_topGrabber position];
  v48 = v11;
  v49 = v12;
  p_bottomGrabber = &self->_bottomGrabber;
  [(CALayer *)self->_bottomGrabber position];
  v14.f64[1] = v48;
  v15 = vsubq_f64(v14, vdupq_lane_s64(v50, 0));
  v16.f64[1] = v49;
  v17 = vsubq_f64(v16, vdupq_lane_s64(v51, 0));
  v18 = vsqrt_f32(vcvt_f32_f64(vaddq_f64(vmulq_f64(v15, v15), vmulq_f64(v17, v17))));
  v19 = v18.f32[1];
  v20 = v18.f32[0];
  if (v18.f32[0] >= v18.f32[1])
  {
    v21 = v18.f32[1];
  }

  else
  {
    v21 = v18.f32[0];
  }

  [(CALayer *)self->_leftGrabber position];
  *&v22 = (v22 - *&v50) * (v22 - *&v50) + (v23 - *&v51) * (v23 - *&v51);
  v24 = sqrtf(*&v22);
  v25 = v24;
  if (v21 > v24)
  {
    v21 = v24;
  }

  p_rightGrabber = &self->_rightGrabber;
  [(CALayer *)self->_rightGrabber position];
  *&v27 = (v27 - *&v50) * (v27 - *&v50) + (v28 - *&v51) * (v28 - *&v51);
  v29 = sqrtf(*&v27);
  if (v21 <= v29)
  {
    v30 = v21;
  }

  else
  {
    v30 = v29;
  }

  if (v30 > 20.0)
  {
    return 0;
  }

  if (v30 == v19)
  {
    [(CALayer *)*p_bottomGrabber position];
    v33 = v32;
    v35 = v34;
    [(CALayer *)*p_bottomGrabber bounds];
    v36 = v35 - CGRectGetHeight(v52);
  }

  else if (v30 == v20)
  {
    [(CALayer *)*p_topGrabber position];
    v33 = v37;
    v39 = v38;
    [(CALayer *)*p_topGrabber bounds];
    v36 = v39 + CGRectGetHeight(v53);
    p_topGrabber = &self->_bottomGrabber;
  }

  else if (v30 == v25)
  {
    [(CALayer *)*p_rightGrabber position];
    v41 = v40;
    v36 = v42;
    [(CALayer *)*p_rightGrabber bounds];
    v33 = v41 - CGRectGetWidth(v54);
    p_topGrabber = &self->_leftGrabber;
  }

  else
  {
    if (v30 != v29)
    {
      return 0;
    }

    [(CALayer *)*p_rightGrabber position];
    v44 = v43;
    v36 = v45;
    [(CALayer *)self->_leftGrabber bounds];
    v33 = v44 + CGRectGetWidth(v55);
    p_topGrabber = &self->_rightGrabber;
  }

  [(CALayer *)[(UIView *)self->_pageView layer] convertPoint:[(UIPDFPageView *)self->_pageView effectsLayer] fromLayer:v33, v36];
  point->x = v46;
  point->y = v47;
  self->_selectedGrabber = *p_topGrabber;
  return 1;
}

- (CGPoint)viewOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)layout
{
  [MEMORY[0x1E6979518] setDisableActions:1];
  LODWORD(v3) = 1.0;
  [(CALayer *)self->_leftGrabber setOpacity:v3];
  LODWORD(v4) = 1.0;
  [(CALayer *)self->_rightGrabber setOpacity:v4];
  LODWORD(v5) = 1.0;
  [(CALayer *)self->_topGrabber setOpacity:v5];
  LODWORD(v6) = 1.0;
  [(CALayer *)self->_bottomGrabber setOpacity:v6];
  effectsLayer = [(UIPDFPageView *)self->_pageView effectsLayer];
  [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:self->_boundsInPDFSpace.origin.x, self->_boundsInPDFSpace.origin.y, self->_boundsInPDFSpace.size.width, self->_boundsInPDFSpace.size.height];
  [(CALayer *)effectsLayer convertRect:[(UIView *)self->_pageView layer] fromLayer:v8, v9, v10, v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(CALayer *)effectsLayer convertRect:0 fromLayer:0.0, 0.0, 1.0, 1.0];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  if ([(UIView *)self->_pageView window])
  {
    [(CALayer *)effectsLayer convertRect:[(UIView *)self->_pageView layer] toLayer:v21, v23, v25, v27];
    [(UIWindow *)[(UIView *)self->_pageView window] convertRect:0 toWindow:v28, v29, v30, v31];
    v25 = v32;
    v27 = v33;
  }

  memset(&v39, 0, sizeof(v39));
  CATransform3DMakeScale(&v39, v25, v27, 1.0);
  v38 = v39;
  [(CALayer *)self->_leftGrabber setTransform:&v38];
  v38 = v39;
  [(CALayer *)self->_rightGrabber setTransform:&v38];
  v38 = v39;
  [(CALayer *)self->_topGrabber setTransform:&v38];
  v38 = v39;
  [(CALayer *)self->_bottomGrabber setTransform:&v38];
  v40.origin.x = v13;
  v40.origin.y = v15;
  v40.size.width = v17;
  v40.size.height = v19;
  MinX = CGRectGetMinX(v40);
  v41.origin.x = v13;
  v41.origin.y = v15;
  v41.size.width = v17;
  v41.size.height = v19;
  [(CALayer *)self->_leftGrabber setPosition:MinX, CGRectGetMidY(v41)];
  v42.origin.x = v13;
  v42.origin.y = v15;
  v42.size.width = v17;
  v42.size.height = v19;
  MaxX = CGRectGetMaxX(v42);
  v43.origin.x = v13;
  v43.origin.y = v15;
  v43.size.width = v17;
  v43.size.height = v19;
  [(CALayer *)self->_rightGrabber setPosition:MaxX, CGRectGetMidY(v43)];
  v44.origin.x = v13;
  v44.origin.y = v15;
  v44.size.width = v17;
  v44.size.height = v19;
  MidX = CGRectGetMidX(v44);
  v45.origin.x = v13;
  v45.origin.y = v15;
  v45.size.width = v17;
  v45.size.height = v19;
  [(CALayer *)self->_topGrabber setPosition:MidX, CGRectGetMinY(v45)];
  v46.origin.x = v13;
  v46.origin.y = v15;
  v46.size.width = v17;
  v46.size.height = v19;
  v37 = CGRectGetMidX(v46);
  v47.origin.x = v13;
  v47.origin.y = v15;
  v47.size.width = v17;
  v47.size.height = v19;
  [(CALayer *)self->_bottomGrabber setPosition:v37, CGRectGetMaxY(v47)];
  [(CALayer *)self->_leftGrabber setNeedsDisplay];
  [(CALayer *)self->_rightGrabber setNeedsDisplay];
  [(CALayer *)self->_topGrabber setNeedsDisplay];
  [(CALayer *)self->_bottomGrabber setNeedsDisplay];
}

- (CGRect)adjustRect:(CGRect)rect toPoint:(CGPoint)point
{
  x = point.x;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  v8 = rect.origin.x;
  selectedGrabber = self->_selectedGrabber;
  if (selectedGrabber == self->_leftGrabber)
  {
    width = rect.size.width + CGRectGetMinX(rect) - point.x;
    v8 = x;
  }

  else if (selectedGrabber == self->_rightGrabber)
  {
    width = rect.size.width + point.x - CGRectGetMaxX(rect);
  }

  else
  {
    v10 = point.y;
    if (selectedGrabber == self->_bottomGrabber)
    {
      height = rect.size.height + point.y - CGRectGetMaxY(rect);
    }

    else
    {
      height = rect.size.height + CGRectGetMinY(rect) - point.y;
      y = v10;
    }
  }

  v11 = v8;
  v12 = y;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setSelectedGrabberPosition:(CGRect)position
{
  height = position.size.height;
  width = position.size.width;
  y = position.origin.y;
  x = position.origin.x;
  MidX = CGRectGetMidX(position);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MinY = CGRectGetMinY(v14);
  selectedGrabber = self->_selectedGrabber;
  if (selectedGrabber == self->_leftGrabber)
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    MinX = CGRectGetMinX(v17);
LABEL_7:
    MidX = MinX;
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    MinY = CGRectGetMidY(v19);
    goto LABEL_8;
  }

  if (selectedGrabber == self->_rightGrabber)
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MinX = CGRectGetMaxX(v18);
    goto LABEL_7;
  }

  if (selectedGrabber == self->_bottomGrabber)
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    MidX = CGRectGetMidX(v15);
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    MinY = CGRectGetMaxY(v16);
  }

LABEL_8:
  v12 = self->_selectedGrabber;

  [(CALayer *)v12 setPosition:MidX, MinY];
}

- (void)track:(CGPoint)track
{
  y = track.y;
  x = track.x;
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CALayer *)[(UIPDFPageView *)self->_pageView effectsLayer] convertPoint:[(UIView *)self->_pageView layer] fromLayer:x, y];
  v7 = v6;
  v9 = v8;
  Mutable = CGPathCreateMutable();
  if (self->_tracking)
  {
    [(CALayer *)[(UIPDFPageView *)self->_pageView effectsLayer] convertPoint:[(UIView *)self->_pageView layer] fromLayer:x, y];
    [(UIPDFParagraphWidget *)self adjustRect:self->_initialRect.origin.x toPoint:self->_initialRect.origin.y, self->_initialRect.size.width, self->_initialRect.size.height, v11, v12];
    v14 = v13;
    v16 = v15;
    width = v17;
    height = v19;
    self->_currentTrackingRect.origin.x = v13;
    self->_currentTrackingRect.origin.y = v15;
    self->_currentTrackingRect.size.width = v17;
    self->_currentTrackingRect.size.height = v19;
    [(UIPDFParagraphWidget *)self setSelectedGrabberPosition:?];
  }

  else
  {
    p_leftGrabber = &self->_leftGrabber;
    [(CALayer *)self->_leftGrabber setOpacity:0.0];
    [(CALayer *)self->_rightGrabber setOpacity:0.0];
    [(CALayer *)self->_topGrabber setOpacity:0.0];
    [(CALayer *)self->_bottomGrabber setOpacity:0.0];
    selectedGrabber = self->_selectedGrabber;
    if (!selectedGrabber)
    {
      MinX = CGRectGetMinX(self->_initialRect);
      if (v7 >= MinX)
      {
        MinX = CGRectGetMaxX(self->_initialRect);
        p_leftGrabber = &self->_rightGrabber;
        if (v7 <= MinX)
        {
          MinX = CGRectGetMinY(self->_initialRect);
          if (v9 <= MinX)
          {
            p_leftGrabber = &self->_topGrabber;
          }

          else
          {
            p_leftGrabber = &self->_bottomGrabber;
          }
        }
      }

      selectedGrabber = *p_leftGrabber;
      self->_selectedGrabber = *p_leftGrabber;
    }

    LODWORD(MinX) = 1.0;
    [(CALayer *)selectedGrabber setOpacity:MinX];
    self->_trackingBorder = [MEMORY[0x1E69794A0] layer];
    -[CAShapeLayer setStrokeColor:](self->_trackingBorder, "setStrokeColor:", [+[UIColor blueColor](UIColor CGColor]);
    [(CAShapeLayer *)self->_trackingBorder setFillColor:0];
    [(CALayer *)[(UIPDFPageView *)self->_pageView effectsLayer] insertSublayer:self->_trackingBorder atIndex:0];
    self->_tracking = 1;
    [(UIPDFParagraphWidget *)self setSelectedGrabberPosition:self->_initialRect.origin.x, self->_initialRect.origin.y, self->_initialRect.size.width, self->_initialRect.size.height];
    size = self->_initialRect.size;
    self->_currentTrackingRect.origin = self->_initialRect.origin;
    self->_currentTrackingRect.size = size;
    v14 = self->_initialRect.origin.x;
    v16 = self->_initialRect.origin.y;
    width = self->_initialRect.size.width;
    height = self->_initialRect.size.height;
  }

  v26.origin.x = v14;
  v26.origin.y = v16;
  v26.size.width = width;
  v26.size.height = height;
  CGPathAddRect(Mutable, 0, v26);
  [(CAShapeLayer *)self->_trackingBorder setPath:Mutable];

  CGPathRelease(Mutable);
}

- (void)endTracking
{
  [(CAShapeLayer *)self->_trackingBorder removeFromSuperlayer];
  self->_trackingBorder = 0;
  self->_tracking = 0;
  LODWORD(v3) = 1.0;
  [(CALayer *)self->_leftGrabber setOpacity:v3];
  LODWORD(v4) = 1.0;
  [(CALayer *)self->_rightGrabber setOpacity:v4];
  LODWORD(v5) = 1.0;
  [(CALayer *)self->_topGrabber setOpacity:v5];
  LODWORD(v6) = 1.0;
  [(CALayer *)self->_bottomGrabber setOpacity:v6];
  self->_selectedGrabber = 0;
  [(UIPDFParagraphWidget *)self selectionBoundsInEffectsSpace];
  self->_initialRect.origin.x = v7;
  self->_initialRect.origin.y = v8;
  self->_initialRect.size.width = v9;
  self->_initialRect.size.height = v10;

  [(UIPDFParagraphWidget *)self layout];
}

- (CGRect)selectionRectangle
{
  p_currentTrackingRect = &self->_currentTrackingRect;
  if (CGRectIsNull(self->_currentTrackingRect))
  {
    size = self->_initialRect.size;
    p_currentTrackingRect->origin = self->_initialRect.origin;
    p_currentTrackingRect->size = size;
  }

  x = self->_currentTrackingRect.origin.x;
  y = self->_currentTrackingRect.origin.y;
  width = self->_currentTrackingRect.size.width;
  height = self->_currentTrackingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)currentSelectionPointOnPage
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)hide
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CALayer *)self->_leftGrabber setOpacity:0.0];
  [(CALayer *)self->_rightGrabber setOpacity:0.0];
  [(CALayer *)self->_topGrabber setOpacity:0.0];
  [(CALayer *)self->_bottomGrabber setOpacity:0.0];
  v3 = MEMORY[0x1E6979518];

  [v3 commit];
}

- (CGPoint)initialSelectionPointOnPage
{
  x = self->_initialSelectionPointOnPage.x;
  y = self->_initialSelectionPointOnPage.y;
  result.y = y;
  result.x = x;
  return result;
}

@end