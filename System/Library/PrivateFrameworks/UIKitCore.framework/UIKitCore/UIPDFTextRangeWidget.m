@interface UIPDFTextRangeWidget
- (BOOL)hitTest:(CGPoint)a3 fixedPoint:(CGPoint *)a4 preceeds:(BOOL *)a5;
- (CGPoint)currentSelectionPointOnPage;
- (CGPoint)initialSelectionPointOnPage;
- (CGPoint)selectedPointFor:(CGPoint)a3;
- (CGPoint)viewOffset;
- (CGRect)selectionRectangle;
- (NSString)description;
- (UIPDFTextRangeWidget)init;
- (void)dealloc;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)hide;
- (void)layoutEndSelectionGrabber:(CGRect)a3 transform:(CGAffineTransform *)a4 width:(double)a5 extraHeight:(double)a6 unitSize:(CGSize)a7;
- (void)layoutStartSelectionGrabber:(CGRect)a3 transform:(CGAffineTransform *)a4 width:(double)a5 extraHeight:(double)a6 unitSize:(CGSize)a7;
- (void)layoutWidget;
- (void)remove;
- (void)setSelectedGrabber:(unint64_t)a3;
- (void)setSelection:(id)a3;
@end

@implementation UIPDFTextRangeWidget

- (UIPDFTextRangeWidget)init
{
  v16 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = UIPDFTextRangeWidget;
  v2 = [(UIPDFTextRangeWidget *)&v13 init];
  if (v2)
  {
    *components = xmmword_18A681840;
    v15 = unk_18A681850;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v2->_grabberColor = CGColorCreate(DeviceRGB, components);
    CGColorSpaceRelease(DeviceRGB);
    v2->_startSelectionGrabber = [MEMORY[0x1E6979398] layer];
    v2->_startHandle = [MEMORY[0x1E6979398] layer];
    v4 = [+[UIImage kitImageNamed:](UIImage kitImageNamed:{@"kb-drag-dot.png", "CGImage"}];
    CGImageRetain(v4);
    v12 = 1.0;
    v5 = CPIsRetina(&v12);
    v6 = 14.0;
    if (v5)
    {
      v6 = fmax((1.0 / v12), 0.5) * 28.0;
    }

    v2->_handleHeight = v6;
    v2->_handleWidth = v6;
    [(CALayer *)v2->_startHandle setBounds:0.0, 0.0, v6, v6];
    [(CALayer *)v2->_startHandle setDelegate:v2];
    v7 = [MEMORY[0x1E69794A0] layer];
    v2->_startBar = v7;
    [(CALayer *)v7 setBackgroundColor:v2->_grabberColor];
    [(CALayer *)v2->_startSelectionGrabber addSublayer:v2->_startBar];
    [(CALayer *)v2->_startSelectionGrabber addSublayer:v2->_startHandle];
    v2->_endSelectionGrabber = [MEMORY[0x1E6979398] layer];
    v8 = [MEMORY[0x1E6979398] layer];
    v2->_endHandle = v8;
    [(CALayer *)v8 setBounds:0.0, 0.0, v2->_handleWidth, v2->_handleHeight];
    [(CALayer *)v2->_endHandle setDelegate:v2];
    if (v5)
    {
      v9 = v12;
      [(CALayer *)v2->_startHandle setContentsScale:v12];
      [(CALayer *)v2->_endHandle setContentsScale:v9];
    }

    v10 = [MEMORY[0x1E69794A0] layer];
    v2->_endBar = v10;
    [(CALayer *)v10 setBackgroundColor:v2->_grabberColor];
    [(CALayer *)v2->_endSelectionGrabber addSublayer:v2->_endBar];
    [(CALayer *)v2->_endSelectionGrabber addSublayer:v2->_endHandle];
    CGImageRelease(v4);
    v2->_fixedSelectionGrabber = 0;
  }

  return v2;
}

- (void)dealloc
{
  CGColorRelease(self->_grabberColor);
  [(UIPDFTextRangeWidget *)self remove];
  v3.receiver = self;
  v3.super_class = UIPDFTextRangeWidget;
  [(UIPDFTextRangeWidget *)&v3 dealloc];
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  [a3 bounds];
  grabberColor = self->_grabberColor;

  CPCGInsetFillEllipseInRect(a4, grabberColor, v6, v7, v8, v9);
}

- (void)layoutStartSelectionGrabber:(CGRect)a3 transform:(CGAffineTransform *)a4 width:(double)a5 extraHeight:(double)a6 unitSize:(CGSize)a7
{
  width = a7.width;
  height = a3.size.height;
  v12 = a3.size.width;
  x = a3.origin.x;
  y = a3.origin.y;
  v14 = [[(UIPDFPageView *)self->_pageView page:a3.origin.x] rotation];
  v15 = *&a4->c;
  *&v41.m11 = *&a4->a;
  *&v41.m13 = v15;
  *&v41.m21 = *&a4->tx;
  CPRotationDegreesFromTransform(&v41.m11);
  v17 = v16;
  [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:x, y, v12, height];
  [(CALayer *)[(UIPDFPageView *)self->_pageView effectsLayer] convertRect:[(UIView *)self->_pageView layer] fromLayer:v18, v19, v20, v21];
  if (v14 == 180 || v14 == 0)
  {
    v27 = CGRectGetHeight(*&v22);
  }

  else
  {
    v27 = CGRectGetWidth(*&v22);
  }

  v28 = v27;
  v29 = v17 - v14;
  [(UIPDFPageView *)self->_pageView convertPointFromPDFPageSpace:vaddq_f64(*&a4->tx, vaddq_f64(vmulq_n_f64(*&a4->a, x), vmulq_n_f64(*&a4->c, y)))];
  [(CALayer *)[(UIPDFPageView *)self->_pageView effectsLayer] convertPoint:[(UIView *)self->_pageView layer] fromLayer:v30, v31];
  v33 = v32;
  v35 = v34;
  [(CALayer *)self->_startSelectionGrabber setAnchorPoint:0.5, 1.0];
  [(CALayer *)self->_startSelectionGrabber setBounds:0.0, 0.0, a5, v28 + a6];
  [(CALayer *)self->_startSelectionGrabber setPosition:v33, v35];
  CATransform3DMakeRotation(&v42, v29 * -0.0174532925, 0.0, 0.0, 1.0);
  startSelectionGrabber = self->_startSelectionGrabber;
  v41 = v42;
  [(CALayer *)startSelectionGrabber setTransform:&v41];
  [(CALayer *)self->_startSelectionGrabber bounds];
  MidX = CGRectGetMidX(v43);
  [(CALayer *)self->_startSelectionGrabber bounds];
  [(CALayer *)self->_startHandle setPosition:MidX, a6 * 0.5 + CGRectGetMinY(v44)];
  [(CALayer *)self->_startBar setBounds:0.0, 0.0, width + width, v28];
  [(CALayer *)self->_startBar setAnchorPoint:0.5, 1.0];
  [(CALayer *)self->_startSelectionGrabber bounds];
  v38 = CGRectGetMidX(v45);
  [(CALayer *)self->_startSelectionGrabber bounds];
  [(CALayer *)self->_startBar setPosition:v38, CGRectGetMaxY(v46)];
  [(CALayer *)self->_startHandle setNeedsDisplay];
}

- (void)layoutEndSelectionGrabber:(CGRect)a3 transform:(CGAffineTransform *)a4 width:(double)a5 extraHeight:(double)a6 unitSize:(CGSize)a7
{
  width = a7.width;
  height = a3.size.height;
  v12 = a3.size.width;
  x = a3.origin.x;
  y = a3.origin.y;
  v14 = [[(UIPDFPageView *)self->_pageView page:a3.origin.x] rotation];
  v15 = *&a4->c;
  *&v41.m11 = *&a4->a;
  *&v41.m13 = v15;
  *&v41.m21 = *&a4->tx;
  CPRotationDegreesFromTransform(&v41.m11);
  v17 = v16;
  [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:x, y, v12, height];
  [(CALayer *)[(UIPDFPageView *)self->_pageView effectsLayer] convertRect:[(UIView *)self->_pageView layer] fromLayer:v18, v19, v20, v21];
  if (v14 == 180 || v14 == 0)
  {
    v27 = CGRectGetHeight(*&v22);
  }

  else
  {
    v27 = CGRectGetWidth(*&v22);
  }

  v28 = v27;
  v29 = v17 - v14;
  [(UIPDFPageView *)self->_pageView convertPointFromPDFPageSpace:vaddq_f64(*&a4->tx, vaddq_f64(vmulq_n_f64(*&a4->a, x), vmulq_n_f64(*&a4->c, y)))];
  [(CALayer *)[(UIPDFPageView *)self->_pageView effectsLayer] convertPoint:[(UIView *)self->_pageView layer] fromLayer:v30, v31];
  v33 = v32;
  v35 = v34;
  [(CALayer *)self->_endSelectionGrabber setAnchorPoint:0.5, 1.0];
  [(CALayer *)self->_endSelectionGrabber setBounds:0.0, 0.0, a5, v28 + a6];
  [(CALayer *)self->_endSelectionGrabber setPosition:v33, v35];
  CATransform3DMakeRotation(&v42, v29 * -0.0174532925, 0.0, 0.0, 1.0);
  endSelectionGrabber = self->_endSelectionGrabber;
  v41 = v42;
  [(CALayer *)endSelectionGrabber setTransform:&v41];
  [(CALayer *)self->_endSelectionGrabber bounds];
  MidX = CGRectGetMidX(v43);
  [(CALayer *)self->_endSelectionGrabber bounds];
  [(CALayer *)self->_endHandle setPosition:MidX, a6 * 0.5 + CGRectGetMaxY(v44)];
  [(CALayer *)self->_endBar setBounds:0.0, 0.0, width + width, v28];
  [(CALayer *)self->_endBar setAnchorPoint:0.5, 1.0];
  [(CALayer *)self->_endSelectionGrabber bounds];
  v38 = CGRectGetMidX(v45);
  [(CALayer *)self->_endSelectionGrabber bounds];
  [(CALayer *)self->_endBar setPosition:v38, CGRectGetMaxY(v46)];
  [(CALayer *)self->_endHandle setNeedsDisplay];
}

- (void)layoutWidget
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  LODWORD(v3) = 1.0;
  [(CALayer *)self->_startSelectionGrabber setOpacity:v3];
  LODWORD(v4) = 1.0;
  [(CALayer *)self->_endSelectionGrabber setOpacity:v4];
  v5 = [[(UIPDFPageView *)self->_pageView page] selection];
  if ([(UIPDFSelection *)v5 numberOfRectangles])
  {
    v6 = [(UIPDFPageView *)self->_pageView effectsLayer];
    [(CALayer *)v6 convertRect:0 fromLayer:0.0, 0.0, 1.0, 1.0];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    if ([(UIView *)self->_pageView window])
    {
      [(CALayer *)v6 convertRect:[(UIView *)self->_pageView layer] toLayer:v8, v10, v12, v14];
      [(UIWindow *)[(UIView *)self->_pageView window] convertRect:0 toWindow:v15, v16, v17, v18];
      v12 = v19;
      v14 = v20;
    }

    memset(&v24, 0, sizeof(v24));
    CATransform3DMakeScale(&v24, v12, v14, 1.0);
    memset(v23, 0, sizeof(v23));
    v21 = v24;
    memset(v22, 0, sizeof(v22));
    [(CALayer *)self->_startHandle setTransform:&v21];
    v21 = v24;
    [(CALayer *)self->_endHandle setTransform:&v21];
    [(UIPDFSelection *)v5 getBounds:v23 transform:v22 index:self->_startRectangle];
    *v23 = self->_startX;
    [UIPDFTextRangeWidget layoutStartSelectionGrabber:"layoutStartSelectionGrabber:transform:width:extraHeight:unitSize:" transform:v22 width:? extraHeight:? unitSize:?];
    [(UIPDFSelection *)v5 getBounds:v23 transform:v22 index:self->_endRectangle];
    *v23 = self->_endX;
    [UIPDFTextRangeWidget layoutEndSelectionGrabber:"layoutEndSelectionGrabber:transform:width:extraHeight:unitSize:" transform:v22 width:? extraHeight:? unitSize:?];
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)setSelectedGrabber:(unint64_t)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 24;
  }

  self->_fixedSelectionGrabber = *(&self->super.isa + v3);
}

- (void)setSelection:(id)a3
{
  if (a3)
  {
    if ([a3 CGSelection])
    {
      self->_startIndex = [a3 startIndex];
      self->_endIndex = [a3 endIndex];
      if (CGPDFSelectionGetNumberOfRectsAndTransforms())
      {
        NumberOfRectsAndTransforms = CGPDFSelectionGetNumberOfRectsAndTransforms();
        v6 = NumberOfRectsAndTransforms;
        if (NumberOfRectsAndTransforms < 1)
        {
          v11 = 0;
          if (NumberOfRectsAndTransforms)
          {
            v12 = 0;
          }

          else
          {
            v12 = -1;
          }
        }

        else
        {
          v7 = 0;
          startIndex = self->_startIndex;
          while (1)
          {
            RangeForRectIndex = CGPDFSelectionGetRangeForRectIndex();
            if (RangeForRectIndex <= startIndex && startIndex <= RangeForRectIndex + v10)
            {
              break;
            }

            if (v6 == ++v7)
            {
              v7 = v6;
              break;
            }
          }

          v11 = 0;
          v12 = v7 - (v7 == v6);
          endIndex = self->_endIndex;
          while (1)
          {
            v14 = CGPDFSelectionGetRangeForRectIndex();
            if (v14 <= endIndex && endIndex <= v14 + v15)
            {
              break;
            }

            if (v6 == ++v11)
            {
              v11 = v6;
              break;
            }
          }
        }

        CGPDFSelectionGetStartCursorXPosition();
        self->_startX = v16;
        CGPDFSelectionGetEndCursorXPosition();
        self->_endX = v17;
        self->_startRectangle = v12;
        self->_endRectangle = v11 - (v11 == v6);
        [(UIPDFTextRangeWidget *)self layoutWidget];
        v18 = [(UIPDFPageView *)self->_pageView effectsLayer];
        [(CALayer *)v18 addSublayer:self->_startSelectionGrabber];
        endSelectionGrabber = self->_endSelectionGrabber;

        [(CALayer *)v18 addSublayer:endSelectionGrabber];
      }
    }
  }
}

- (void)remove
{
  [(CALayer *)self->_startSelectionGrabber removeFromSuperlayer];
  self->_startSelectionGrabber = 0;
  [(CALayer *)self->_endSelectionGrabber removeFromSuperlayer];
  self->_endSelectionGrabber = 0;
}

- (CGPoint)selectedPointFor:(CGPoint)a3
{
  v3 = a3.x + self->_offsetX;
  v4 = a3.y + self->_offsetY;
  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)hitTest:(CGPoint)a3 fixedPoint:(CGPoint *)a4 preceeds:(BOOL *)a5
{
  y = a3.y;
  x = a3.x;
  [(CALayer *)[(UIPDFPageView *)self->_pageView effectsLayer] convertPoint:[(UIView *)self->_pageView layer] fromLayer:a3.x, a3.y];
  v11 = v10;
  v13 = v12;
  *a4 = *MEMORY[0x1E695EFF8];
  *a5 = 0;
  [(CALayer *)self->_startHandle position];
  [(CALayer *)[(UIPDFPageView *)self->_pageView effectsLayer] convertPoint:self->_startSelectionGrabber fromLayer:v14, v15];
  *&v16 = (v16 - v11) * (v16 - v11) + (v17 - v13) * (v17 - v13);
  v18 = sqrtf(*&v16);
  [(CALayer *)self->_endHandle position];
  [(CALayer *)[(UIPDFPageView *)self->_pageView effectsLayer] convertPoint:self->_endSelectionGrabber fromLayer:v19, v20];
  *&v21 = (v21 - v11) * (v21 - v11) + (v22 - v13) * (v22 - v13);
  v23 = sqrtf(*&v21);
  v24 = v23 > 20.0 && v18 > 20.0;
  if (!v24)
  {
    v25 = v23 > 20.0 && v18 <= 20.0;
    if (v18 > 20.0 || v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v18 < v23;
    }

    v28 = [[(UIPDFPageView *)self->_pageView page] selection];
    [(UIPDFSelection *)v28 numberOfRectangles];
    memset(&v57, 0, sizeof(v57));
    memset(&v56, 0, sizeof(v56));
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    [(UIPDFSelection *)v28 getBounds:&v57 transform:&v53 index:self->_startRectangle];
    [(UIPDFSelection *)v28 getBounds:&v56 transform:&v50 index:self->_endRectangle];
    if (v27)
    {
      v29 = v57;
      if (self->_startLeft)
      {
        MinX = CGRectGetMinX(v29);
      }

      else
      {
        MinX = CGRectGetMaxX(v29);
      }

      v33 = MinX;
      MidY = CGRectGetMidY(v57);
      v35 = v56;
      if (self->_endRight)
      {
        MaxX = CGRectGetMaxX(v35);
      }

      else
      {
        MaxX = CGRectGetMinX(v35);
      }

      v47 = MaxX;
      *&v39 = CGRectGetMidY(v56);
      a4->x = v47;
      *&a4->y = v39;
      v46 = v39;
      *&v49.a = v53;
      *&v49.c = v54;
      *&v49.tx = v55;
      if (!CGAffineTransformIsIdentity(&v49))
      {
        v40 = vmuld_lane_f64(v33, v53, 1);
        v33 = v55.f64[0] + v33 * v53.f64[0] + MidY * v54.f64[0];
        MidY = v55.f64[1] + v40 + vmuld_lane_f64(MidY, v54, 1);
        *a4 = vaddq_f64(v55, vaddq_f64(vmulq_n_f64(v53, v47), vmulq_n_f64(v54, *&v46)));
      }

      self->_fixedSelectionGrabber = self->_endSelectionGrabber;
      *a5 = 1;
    }

    else
    {
      v31 = v56;
      if (self->_endRight)
      {
        v32 = CGRectGetMaxX(v31);
      }

      else
      {
        v32 = CGRectGetMinX(v31);
      }

      v33 = v32;
      MidY = CGRectGetMidY(v56);
      v37 = v57;
      if (self->_startLeft)
      {
        v38 = CGRectGetMinX(v37);
      }

      else
      {
        v38 = CGRectGetMaxX(v37);
      }

      v48 = v38;
      *&v41 = CGRectGetMidY(v57);
      a4->x = v48;
      *&a4->y = v41;
      v46 = v41;
      *&v49.a = v50;
      *&v49.c = v51;
      *&v49.tx = v52;
      if (!CGAffineTransformIsIdentity(&v49))
      {
        v42 = vmuld_lane_f64(v33, v50, 1);
        v33 = v52.f64[0] + v33 * v50.f64[0] + MidY * v51.f64[0];
        MidY = v52.f64[1] + v42 + vmuld_lane_f64(MidY, v51, 1);
        *a4 = vaddq_f64(v52, vaddq_f64(vmulq_n_f64(v50, v48), vmulq_n_f64(v51, *&v46)));
      }

      *a5 = 0;
      self->_fixedSelectionGrabber = self->_startSelectionGrabber;
    }

    self->_initialSelectionPointOnPage.x = v33;
    self->_initialSelectionPointOnPage.y = MidY;
    [(UIPDFPageView *)self->_pageView convertPointFromPDFPageSpace:v33, MidY, v46];
    self->_offsetX = v43 - x;
    self->_offsetY = v44 - y;
  }

  return !v24;
}

- (CGPoint)viewOffset
{
  v3 = *MEMORY[0x1E695EFF8];
  if (self->_fixedSelectionGrabber == self->_endSelectionGrabber)
  {
    [(CALayer *)self->_startSelectionGrabber bounds];
    v4 = (CGRectGetHeight(v14) - self->_handleHeight) * 0.5;
  }

  else
  {
    v4 = *(MEMORY[0x1E695EFF8] + 8);
  }

  [(CALayer *)[(UIPDFPageView *)self->_pageView effectsLayer] convertPoint:[(UIView *)self->_pageView layer] toLayer:0.0, 0.0];
  v6 = v5;
  v8 = v7;
  [(CALayer *)[(UIPDFPageView *)self->_pageView effectsLayer] convertPoint:[(UIView *)self->_pageView layer] toLayer:v3, v4];
  v10 = v9 - v6;
  v12 = v11 - v8;
  result.y = v12;
  result.x = v10;
  return result;
}

- (CGRect)selectionRectangle
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)currentSelectionPointOnPage
{
  v3 = [[(UIPDFPageView *)self->_pageView page] selection];
  if ([(UIPDFSelection *)v3 numberOfRectangles])
  {
    memset(&v19, 0, sizeof(v19));
    memset(&v18, 0, sizeof(v18));
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    [(UIPDFSelection *)v3 getBounds:&v19 transform:&v15 index:self->_startRectangle];
    [(UIPDFSelection *)v3 getBounds:&v18 transform:&v15 index:self->_endRectangle];
    if (self->_fixedSelectionGrabber == self->_endSelectionGrabber)
    {
      v7 = v19;
      if (self->_startLeft)
      {
        MinX = CGRectGetMinX(v7);
      }

      else
      {
        MinX = CGRectGetMaxX(v7);
      }

      v13 = MinX;
      v9 = &v19;
    }

    else
    {
      v4 = v18;
      if (self->_endRight)
      {
        MaxX = CGRectGetMaxX(v4);
      }

      else
      {
        MaxX = CGRectGetMinX(v4);
      }

      v13 = MaxX;
      v9 = &v18;
    }

    MidY = CGRectGetMidY(*v9);
    *&v14.a = v15;
    *&v14.c = v16;
    *&v14.tx = v17;
    IsIdentity = CGAffineTransformIsIdentity(&v14);
    v6.f64[0] = v13;
    v6.f64[1] = MidY;
    if (!IsIdentity)
    {
      v6 = vaddq_f64(v17, vaddq_f64(vmulq_n_f64(v15, v13), vmulq_laneq_f64(v16, v6, 1)));
    }
  }

  else
  {
    v6 = *MEMORY[0x1E695EFF8];
  }

  v11 = v6.f64[1];
  result.x = v6.f64[0];
  result.y = v11;
  return result;
}

- (void)hide
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CALayer *)self->_startSelectionGrabber setOpacity:0.0];
  [(CALayer *)self->_endSelectionGrabber setOpacity:0.0];
  v3 = MEMORY[0x1E6979518];

  [v3 commit];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  startIndex = self->_startIndex;
  endIndex = self->_endIndex;
  [(CALayer *)self->_startSelectionGrabber position];
  v6 = NSStringFromCGPoint(v8);
  [(CALayer *)self->_endSelectionGrabber position];
  return [v3 stringWithFormat:@"TextRangeWidget %lu - %lu, %@ %@", startIndex, endIndex, v6, NSStringFromCGPoint(v9)];
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