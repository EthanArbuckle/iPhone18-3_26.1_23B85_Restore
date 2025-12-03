@interface UISelectionGrabberDot
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)_extendedHitTestingRectWithEvent:(id)event includingCalloutBarAdjustments:(BOOL)adjustments;
- (CGRect)_extendedHitTestingRectWithPrecision:(unint64_t)precision includingCalloutBarAdjustments:(BOOL)adjustments;
- (UISelectionGrabber)grabber;
- (UISelectionGrabberDot)initWithFrame:(CGRect)frame container:(id)container;
- (id)_rasterizedDotImageForScale:(double)scale;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)redrawRasterizedImageForScale:(double)scale;
- (void)setFrame:(CGRect)frame;
@end

@implementation UISelectionGrabberDot

- (UISelectionGrabberDot)initWithFrame:(CGRect)frame container:(id)container
{
  v8.receiver = self;
  v8.super_class = UISelectionGrabberDot;
  v4 = [(UIImageView *)&v8 initWithFrame:container, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(UIImageView *)v4 setContentMode:0];
    v6 = v5;
  }

  return v5;
}

- (id)_rasterizedDotImageForScale:(double)scale
{
  [(UIView *)self bounds];
  v6 = v5;
  [(UIView *)self bounds];
  v8 = v7;
  if (v6 == 0.0 && v7 == 0.0)
  {
    v9 = 0;
    goto LABEL_18;
  }

  _UIGraphicsBeginImageContextWithOptions(0, 0, v6, v7, scale);
  v10 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, v6, v8];
  grabber = [(UISelectionGrabberDot *)self grabber];
  hostView = [grabber hostView];
  container = [hostView container];

  if (objc_opt_respondsToSelector())
  {
    [container selectionBarColor];
  }

  else
  {
    +[UIColor selectionGrabberColor];
  }
  v14 = ;
  [v14 set];
  [v10 fill];
  grabber2 = [(UISelectionGrabberDot *)self grabber];
  customPath = [grabber2 customPath];

  if (!customPath)
  {
    grabber3 = [(UISelectionGrabberDot *)self grabber];
    window = [grabber3 window];
    window2 = [(UIView *)self window];

    grabber4 = [(UISelectionGrabberDot *)self grabber];
    [grabber4 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    grabber5 = [(UISelectionGrabberDot *)self grabber];
    superview = [grabber5 superview];
    if (window == window2)
    {
      [(UIView *)self convertRect:superview fromView:v22, v24, v26, v28];
    }

    else
    {
      [(UIView *)self convertRect:superview fromCoordinateSpace:v22, v24, v26, v28];
    }

    v35 = v31;
    v36 = v32;
    v37 = v33;
    v38 = v34;

    grabber6 = [(UISelectionGrabberDot *)self grabber];
    isPointedDown = [grabber6 isPointedDown];

    if (isPointedDown)
    {
      [(UIView *)self frame];
      v36 = v41 + -1.0;
    }

    else
    {
      grabber7 = [(UISelectionGrabberDot *)self grabber];
      isPointedUp = [grabber7 isPointedUp];

      if (!isPointedUp)
      {
        grabber8 = [(UISelectionGrabberDot *)self grabber];
        isPointedRight = [grabber8 isPointedRight];

        if (isPointedRight)
        {
          [(UIView *)self frame];
          v35 = v47 + -1.0;
        }

        else
        {
          grabber9 = [(UISelectionGrabberDot *)self grabber];
          isPointedLeft = [grabber9 isPointedLeft];

          if (!isPointedLeft)
          {
            v35 = *MEMORY[0x1E695F058];
            v36 = *(MEMORY[0x1E695F058] + 8);
            v37 = *(MEMORY[0x1E695F058] + 16);
            v38 = *(MEMORY[0x1E695F058] + 24);
            goto LABEL_16;
          }

          v35 = 0.0;
        }

        v37 = 1.0;
LABEL_16:
        UIRectFillUsingOperation(1, v35, v36, v37, v38);
        goto LABEL_17;
      }

      v36 = 0.0;
    }

    v38 = 1.0;
    goto LABEL_16;
  }

LABEL_17:
  v9 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();

LABEL_18:

  return v9;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(UISelectionGrabberDot *)self _extendedHitTestingRectWithEvent:event includingCalloutBarAdjustments:0];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (CGRect)_extendedHitTestingRectWithEvent:(id)event includingCalloutBarAdjustments:(BOOL)adjustments
{
  adjustmentsCopy = adjustments;
  _inputPrecision = [event _inputPrecision];

  [(UISelectionGrabberDot *)self _extendedHitTestingRectWithPrecision:_inputPrecision includingCalloutBarAdjustments:adjustmentsCopy];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)_extendedHitTestingRectWithPrecision:(unint64_t)precision includingCalloutBarAdjustments:(BOOL)adjustments
{
  adjustmentsCopy = adjustments;
  [(UIView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (precision == 2)
  {
    v15 = -6.0;
  }

  else
  {
    v15 = -15.0;
  }

  [(UIView *)self _scaleFromLayerTransforms];
  if (v16 < 1.0)
  {
    v16 = 1.0;
  }

  if (v17 < 1.0)
  {
    v17 = 1.0;
  }

  v18 = v15 / v16;
  v19 = v15 / v17;
  v34.origin.x = v8;
  v34.origin.y = v10;
  v34.size.width = v12;
  v34.size.height = v14;
  v35 = CGRectInset(v34, v18, v19);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  if (adjustmentsCopy)
  {
    grabber = [(UISelectionGrabberDot *)self grabber];
    isVertical = [grabber isVertical];

    grabber2 = [(UISelectionGrabberDot *)self grabber];
    v27 = grabber2;
    if (isVertical)
    {
      height = height + v19;
      isPointedDown = [grabber2 isPointedDown];

      if (isPointedDown)
      {
        y = y - v19;
      }
    }

    else
    {
      width = width + v18;
      isPointedLeft = [grabber2 isPointedLeft];

      if (isPointedLeft)
      {
        x = x - v18;
      }
    }
  }

  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  [(UISelectionGrabberDot *)self _extendedHitTestingRectWithEvent:event includingCalloutBarAdjustments:1];
  v12.x = x;
  v12.y = y;
  if (CGRectContainsPoint(v13, v12))
  {
    grabber = [(UISelectionGrabberDot *)self grabber];
    hostView = [grabber hostView];
  }

  else
  {
    hostView = 0;
  }

  if ([hostView isUserInteractionEnabled])
  {
    v9 = hostView;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  window = [(UIView *)self window];
  [window convertRect:self toView:{0.0, 0.0, 1.0, 1.0}];
  v14 = v13;

  if (v14 == 1.0)
  {
    window2 = [(UIView *)self window];
    x = pixelAlignedRectForRect(window2);
    y = v16;
    width = v17;
    height = v18;
  }

  v19.receiver = self;
  v19.super_class = UISelectionGrabberDot;
  [(UIImageView *)&v19 setFrame:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(UISelectionGrabberDot *)self redrawRasterizedImageForScale:1.0];
  }
}

- (void)redrawRasterizedImageForScale:(double)scale
{
  [(UIView *)self _currentScreenScale];
  scale = [(UISelectionGrabberDot *)self _rasterizedDotImageForScale:v5 * scale];
  [(UIImageView *)self setImage:scale];

  [(UIImageView *)self setContentScaleFactor:1.0];
}

- (UISelectionGrabber)grabber
{
  WeakRetained = objc_loadWeakRetained(&self->m_grabber);

  return WeakRetained;
}

@end