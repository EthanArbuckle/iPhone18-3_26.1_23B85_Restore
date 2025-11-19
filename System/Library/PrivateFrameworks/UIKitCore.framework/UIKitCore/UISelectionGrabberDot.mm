@interface UISelectionGrabberDot
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_extendedHitTestingRectWithEvent:(id)a3 includingCalloutBarAdjustments:(BOOL)a4;
- (CGRect)_extendedHitTestingRectWithPrecision:(unint64_t)a3 includingCalloutBarAdjustments:(BOOL)a4;
- (UISelectionGrabber)grabber;
- (UISelectionGrabberDot)initWithFrame:(CGRect)a3 container:(id)a4;
- (id)_rasterizedDotImageForScale:(double)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)redrawRasterizedImageForScale:(double)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation UISelectionGrabberDot

- (UISelectionGrabberDot)initWithFrame:(CGRect)a3 container:(id)a4
{
  v8.receiver = self;
  v8.super_class = UISelectionGrabberDot;
  v4 = [(UIImageView *)&v8 initWithFrame:a4, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(UIImageView *)v4 setContentMode:0];
    v6 = v5;
  }

  return v5;
}

- (id)_rasterizedDotImageForScale:(double)a3
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

  _UIGraphicsBeginImageContextWithOptions(0, 0, v6, v7, a3);
  v10 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, v6, v8];
  v11 = [(UISelectionGrabberDot *)self grabber];
  v12 = [v11 hostView];
  v13 = [v12 container];

  if (objc_opt_respondsToSelector())
  {
    [v13 selectionBarColor];
  }

  else
  {
    +[UIColor selectionGrabberColor];
  }
  v14 = ;
  [v14 set];
  [v10 fill];
  v15 = [(UISelectionGrabberDot *)self grabber];
  v16 = [v15 customPath];

  if (!v16)
  {
    v17 = [(UISelectionGrabberDot *)self grabber];
    v18 = [v17 window];
    v19 = [(UIView *)self window];

    v20 = [(UISelectionGrabberDot *)self grabber];
    [v20 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [(UISelectionGrabberDot *)self grabber];
    v30 = [v29 superview];
    if (v18 == v19)
    {
      [(UIView *)self convertRect:v30 fromView:v22, v24, v26, v28];
    }

    else
    {
      [(UIView *)self convertRect:v30 fromCoordinateSpace:v22, v24, v26, v28];
    }

    v35 = v31;
    v36 = v32;
    v37 = v33;
    v38 = v34;

    v39 = [(UISelectionGrabberDot *)self grabber];
    v40 = [v39 isPointedDown];

    if (v40)
    {
      [(UIView *)self frame];
      v36 = v41 + -1.0;
    }

    else
    {
      v42 = [(UISelectionGrabberDot *)self grabber];
      v43 = [v42 isPointedUp];

      if (!v43)
      {
        v45 = [(UISelectionGrabberDot *)self grabber];
        v46 = [v45 isPointedRight];

        if (v46)
        {
          [(UIView *)self frame];
          v35 = v47 + -1.0;
        }

        else
        {
          v48 = [(UISelectionGrabberDot *)self grabber];
          v49 = [v48 isPointedLeft];

          if (!v49)
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(UISelectionGrabberDot *)self _extendedHitTestingRectWithEvent:a4 includingCalloutBarAdjustments:0];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (CGRect)_extendedHitTestingRectWithEvent:(id)a3 includingCalloutBarAdjustments:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 _inputPrecision];

  [(UISelectionGrabberDot *)self _extendedHitTestingRectWithPrecision:v6 includingCalloutBarAdjustments:v4];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)_extendedHitTestingRectWithPrecision:(unint64_t)a3 includingCalloutBarAdjustments:(BOOL)a4
{
  v4 = a4;
  [(UIView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (a3 == 2)
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
  if (v4)
  {
    v24 = [(UISelectionGrabberDot *)self grabber];
    v25 = [v24 isVertical];

    v26 = [(UISelectionGrabberDot *)self grabber];
    v27 = v26;
    if (v25)
    {
      height = height + v19;
      v28 = [v26 isPointedDown];

      if (v28)
      {
        y = y - v19;
      }
    }

    else
    {
      width = width + v18;
      v29 = [v26 isPointedLeft];

      if (v29)
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(UISelectionGrabberDot *)self _extendedHitTestingRectWithEvent:a4 includingCalloutBarAdjustments:1];
  v12.x = x;
  v12.y = y;
  if (CGRectContainsPoint(v13, v12))
  {
    v7 = [(UISelectionGrabberDot *)self grabber];
    v8 = [v7 hostView];
  }

  else
  {
    v8 = 0;
  }

  if ([v8 isUserInteractionEnabled])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v12 = [(UIView *)self window];
  [v12 convertRect:self toView:{0.0, 0.0, 1.0, 1.0}];
  v14 = v13;

  if (v14 == 1.0)
  {
    v15 = [(UIView *)self window];
    x = pixelAlignedRectForRect(v15);
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

- (void)redrawRasterizedImageForScale:(double)a3
{
  [(UIView *)self _currentScreenScale];
  v6 = [(UISelectionGrabberDot *)self _rasterizedDotImageForScale:v5 * a3];
  [(UIImageView *)self setImage:v6];

  [(UIImageView *)self setContentScaleFactor:1.0];
}

- (UISelectionGrabber)grabber
{
  WeakRetained = objc_loadWeakRetained(&self->m_grabber);

  return WeakRetained;
}

@end