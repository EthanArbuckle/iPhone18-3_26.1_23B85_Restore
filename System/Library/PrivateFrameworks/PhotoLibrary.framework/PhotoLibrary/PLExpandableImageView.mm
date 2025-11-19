@interface PLExpandableImageView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_snappedExpandedFrame;
- (CGRect)frameOfImage;
- (CGSize)_newSizeFromSize:(CGSize)a3;
- (CGSize)imageSize;
- (PLExpandableImageView)initWithFrame:(CGRect)a3 frameStyle:(int)a4 withBorder:(BOOL)a5;
- (float)_borderAlphaForExpansionFraction:(float)a3;
- (float)_currentScale;
- (float)_expandedScale;
- (float)_expansionFraction;
- (float)completeTrackingPinch:(id)a3 toState:(int)a4 duration:(double)a5;
- (float)continueTrackingPinch:(id)a3;
- (id)_contentView;
- (void)_bounceBack:(id)a3 finished:(id)a4 context:(void *)a5;
- (void)_bounceToPlace:(id)a3 finished:(id)a4 context:(void *)a5;
- (void)_updateBorderAndAccessoriesAlpha;
- (void)_updatePinchWidthAndScaleWithLeftPoint:(CGPoint)a3 rightPoint:(CGPoint)a4;
- (void)beginTrackingPinch:(id)a3;
- (void)dealloc;
- (void)finishTransition;
- (void)layoutSubviews;
- (void)setCenter:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
- (void)setImage:(id)a3 isFullscreen:(BOOL)a4;
- (void)setSize:(CGSize)a3 angle:(float)a4;
- (void)setTransformAndCenterForFrame:(CGRect)a3;
- (void)stateDidChangeFrom:(int)a3;
@end

@implementation PLExpandableImageView

- (CGRect)frameOfImage
{
  *&self->_exImageFlags &= ~8u;
  [(PLExpandableImageView *)self layoutIfNeeded];
  v3 = [(PLExpandableImageView *)self superview];
  [-[PLExpandableImageView imageView](self "imageView")];

  [v3 convertRect:self fromView:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGSize)imageSize
{
  v2 = [(PLImageView *)self->_imageView image];

  [v2 size];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setImage:(id)a3 isFullscreen:(BOOL)a4
{
  v4 = a4;
  if ([(PLExpandableView *)self allowsExpansion]|| [(PLExpandableView *)self state]!= 1)
  {
    v7 = v4 ? 64 : 0;
    *&self->_exImageFlags = *&self->_exImageFlags & 0xBF | v7;
    [(PLImageView *)self->_imageView setImage:a3];
    [(PLImageView *)self->_imageView setOpaque:1];
    if (a3)
    {
      *&self->_exImageFlags &= ~8u;

      [(PLExpandableImageView *)self layoutSubviews];
    }
  }
}

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PLExpandableImageView *)self center];
  if (x != v7 || y != v6)
  {
    v9.receiver = self;
    v9.super_class = PLExpandableImageView;
    [(PLExpandableImageView *)&v9 setCenter:x, y];
  }
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = PLExpandableImageView;
  [(PLExpandableImageView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  *&self->_exImageFlags &= ~8u;
  [(PLExpandableImageView *)self layoutBelowIfNeeded];
  [(PLImageView *)self->_imageView updateFullSizeImageVisibleArea];
}

- (id)_contentView
{
  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) != 1 || self == 0)
  {
    return 0;
  }

  do
  {
    [(PLExpandableImageView *)self superview];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    self = [(PLExpandableImageView *)self superview];
  }

  while (self);
  return self;
}

- (void)finishTransition
{
  [(PLImageView *)self->_imageView setEdgeAntialiasingEnabled:0];
  v3.receiver = self;
  v3.super_class = PLExpandableImageView;
  [(PLExpandableView *)&v3 finishTransition];
}

- (void)_bounceToPlace:(id)a3 finished:(id)a4 context:(void *)a5
{
  if (([(PLExpandableView *)self state:a3]& 0xFFFFFFFB) == 2)
  {
    if ([a4 BOOLValue])
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __57__PLExpandableImageView__bounceToPlace_finished_context___block_invoke;
      v8[3] = &unk_2782A2020;
      v8[4] = self;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __57__PLExpandableImageView__bounceToPlace_finished_context___block_invoke_2;
      v7[3] = &unk_2782A2048;
      v7[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v8 animations:v7 completion:0.1];
    }

    else
    {

      [(PLExpandableImageView *)self finishTransition];
    }
  }
}

uint64_t __57__PLExpandableImageView__bounceToPlace_finished_context___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 _snappedExpandedFrame];

  return [v1 setTransformAndCenterForFrame:?];
}

- (void)_bounceBack:(id)a3 finished:(id)a4 context:(void *)a5
{
  if (([(PLExpandableView *)self state:a3]& 0xFFFFFFFB) == 2)
  {
    if ([a4 BOOLValue])
    {
      [MEMORY[0x277D75D18] beginAnimations:0 context:0];
      [MEMORY[0x277D75D18] setAnimationDuration:0.15];
      [MEMORY[0x277D75D18] setAnimationCurve:2];
      [MEMORY[0x277D75D18] setAnimationDelegate:self];
      [MEMORY[0x277D75D18] setAnimationDidStopSelector:sel__bounceToPlace_finished_context_];
      [(PLExpandableImageView *)self _snappedExpandedFrame];
      v8 = v7;
      v10 = v9;
      UIRectGetCenter();
      v15.size.width = v8 * 0.995000005;
      v15.size.height = v10 * 0.995000005;
      v15.origin.x = v11 - v8 * 0.995000005 * 0.5;
      v15.origin.y = v12 - v10 * 0.995000005 * 0.5;
      v16 = CGRectIntegral(v15);
      [(PLExpandableImageView *)self setTransformAndCenterForFrame:v16.origin.x, v16.origin.y, v16.size.width, v16.size.height];
      v13 = MEMORY[0x277D75D18];

      [v13 commitAnimations];
    }

    else
    {

      [(PLExpandableImageView *)self finishTransition];
    }
  }
}

- (float)completeTrackingPinch:(id)a3 toState:(int)a4 duration:(double)a5
{
  v9 = [(PLExpandableView *)self state];
  [(PLExpandableImageView *)self _currentScale];
  v11 = v10;
  if ((*&self->_exImageFlags & 2) == 0)
  {
    self->super._pinchVelocity = 0.0;
  }

  [(PLExpandableImageView *)self bounds];
  UIRectGetCenter();
  [(PLExpandableImageView *)self convertPoint:[(PLExpandableImageView *)self superview] toView:v12, v13];
  v15 = v14;
  v17 = v16;
  __asm { FMOV            V0.2D, #0.5 }

  self->_anchorPoint = _Q0;
  [-[PLExpandableImageView layer](self "layer")];
  [(PLExpandableImageView *)self setCenter:v15, v17];
  v22 = 0.0;
  if (a4)
  {
    if (a4 == 4)
    {
      if (v9 == 6 && (v22 = self->super._pinchVelocity, v22 > 0.0))
      {
        v23 = 1;
        v24 = 0.2;
      }

      else
      {
        [(PLExpandableImageView *)self _expandedScale];
        v41 = v40;
        [(PLExpandableImageView *)self _expansionFraction];
        pinchVelocity = self->super._pinchVelocity;
        if (pinchVelocity <= 0.0)
        {
          v23 = 0;
          v24 = 0.3;
        }

        else
        {
          v44 = v41 + (1.0 - v42 * 0.5) * 0.5;
          v24 = (self->_pinchWidth * v44 / v11 - self->_pinchWidth) / pinchVelocity;
          v23 = 0;
          if (v24 > 0.3)
          {
            v24 = 0.3;
          }
        }
      }

      [(PLExpandableImageView *)self _snappedExpandedFrame];
      v56 = v55;
      v58 = v57;
      width = v59;
      height = v61;
      UIRectGetCenter();
      if (v24 <= 0.0 || (*(&self->super._expandFlags + 1) & 1) != 0)
      {
        [(PLExpandableImageView *)self performSelector:sel_finishTransition withObject:0 afterDelay:0.0];
      }

      else
      {
        v65 = v63;
        v66 = v64;
        if (a3)
        {
          [(PLExpandableImageView *)self _expansionFraction];
          v68 = (1.0 - v67) * 0.05 + 1.0;
          if (v24 >= 0.1 && ([(PLExpandableImageView *)self center], UIDistanceBetweenPoints(), v69 >= 50.0))
          {
            [(PLExpandableImageView *)self center];
            width = operator||(v56, v58, width, height, v68, v72, v73);
            height = v74;
            v70 = 1;
          }

          else
          {
            v79.size.width = width * v68;
            v79.size.height = height * v68;
            v79.origin.x = v65 - v79.size.width * 0.5;
            v79.origin.y = v66 - v79.size.height * 0.5;
            v80 = CGRectIntegral(v79);
            width = v80.size.width;
            height = v80.size.height;
            v70 = 0;
          }

          v75 = &selRef__bounceToPlace_finished_context_;
          if (!v23)
          {
            v75 = &selRef__bounceBack_finished_context_;
          }

          v71 = *v75;
        }

        else
        {
          v70 = 0;
          v71 = sel_finishTransition;
        }

        [MEMORY[0x277D75D18] beginAnimations:0 context:0];
        [MEMORY[0x277D75D18] setAnimationDuration:v24];
        [MEMORY[0x277D75D18] setAnimationCurve:2];
        if ((v70 & 1) == 0)
        {
          [MEMORY[0x277D75D18] setAnimationDelegate:self];
          [MEMORY[0x277D75D18] setAnimationDidStopSelector:v71];
        }

        [(PLExpandableImageView *)self _newSizeFromSize:width, height];
        [PLExpandableImageView setSize:"setSize:angle:" angle:?];
        imageView = self->_imageView;
        LODWORD(v77) = 1.0;
        [(PLExpandableImageView *)self _borderAlphaForExpansionFraction:v77];
        [(PLImageView *)imageView setBorderAndAccessoriesAlpha:?];
        if (v70)
        {
          [MEMORY[0x277D75D18] beginAnimations:0 context:0];
          [MEMORY[0x277D75D18] setAnimationDuration:v24 * 1.25];
          [MEMORY[0x277D75D18] setAnimationDelay:v24 * 0.1];
          [MEMORY[0x277D75D18] setAnimationDelegate:self];
          [MEMORY[0x277D75D18] setAnimationDidStopSelector:v71];
          [(PLExpandableImageView *)self setCenter:v65, v66];
          [MEMORY[0x277D75D18] commitAnimations];
        }

        else
        {
          [(PLExpandableImageView *)self setCenter:v65, v66];
        }

        [MEMORY[0x277D75D18] commitAnimations];
      }

      LODWORD(v22) = 1.0;
    }
  }

  else
  {
    [(PLExpandableView *)self contractedFrame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = self->_originalAngle - self->_pinchAngle;
    if (v33 < 0.0)
    {
      v33 = -v33;
    }

    v34 = v33 / 3.14159265 * 0.7;
    [(PLExpandableImageView *)self center];
    UIRectGetCenter();
    UIDistanceBetweenPoints();
    v36 = v35 * 0.0009765625;
    if (self->super._pinchVelocity >= 0.0)
    {
      v39 = 0.2;
      if (v9 != 3 || a5 >= 0.2)
      {
        v39 = a5;
      }
    }

    else
    {
      pinchWidth = self->_pinchWidth;
      [(PLExpandableImageView *)self _currentScale];
      v39 = (pinchWidth / v38 - self->_pinchWidth) / self->super._pinchVelocity;
    }

    if (v39 < v34)
    {
      v39 = v34;
    }

    if (v39 < v36)
    {
      v39 = v36;
    }

    if (v39 <= 0.3)
    {
      v46 = v39;
    }

    else
    {
      v46 = 0.3;
    }

    [(PLExpandableImageView *)self _expansionFraction];
    v48 = v47;
    [(PLImageView *)self->_imageView setBorderAndAccessoriesVisible:1];
    v49 = self->_imageView;
    *&v50 = v48;
    [(PLExpandableImageView *)self _borderAlphaForExpansionFraction:v50];
    [(PLImageView *)v49 setBorderAndAccessoriesAlpha:?];
    if ((*(&self->super._expandFlags + 1) & 1) == 0)
    {
      [MEMORY[0x277D75D18] beginAnimations:@"collapseSingleImage" context:0];
      [MEMORY[0x277D75D18] setAnimationDuration:v46];
      [MEMORY[0x277D75D18] setAnimationDelegate:self];
      [MEMORY[0x277D75D18] setAnimationDidStopSelector:sel_finishTransition];
    }

    [(PLExpandableImageView *)self setTransformAndCenterForFrame:v26, v28, v30, v32];
    if (v48 >= 0.5)
    {
      if ((*(&self->super._expandFlags + 1) & 1) == 0)
      {
        v52 = ((v48 + -0.5) / v48);
        v53 = (1.0 - v52) * v46;
        v54 = v46 * v52;
        [MEMORY[0x277D75D18] beginAnimations:@"fadeInBorderForCollapse" context:0];
        [MEMORY[0x277D75D18] setAnimationDuration:v53];
        [MEMORY[0x277D75D18] setAnimationDelay:v54];
      }

      LODWORD(v51) = 1.0;
      [(PLImageView *)self->_imageView setBorderAndAccessoriesAlpha:1 forced:v51];
      [(PLVideoView *)[(PLImageView *)self->_imageView videoView] setAlpha:0.0];
      if ((*(&self->super._expandFlags + 1) & 1) == 0)
      {
        [MEMORY[0x277D75D18] commitAnimations];
      }
    }

    else
    {
      LODWORD(v51) = 1.0;
      [(PLImageView *)self->_imageView setBorderAndAccessoriesAlpha:1 forced:v51];
      [(PLVideoView *)[(PLImageView *)self->_imageView videoView] setAlpha:0.0];
    }

    if (*(&self->super._expandFlags + 1))
    {
      [(PLExpandableImageView *)self finishTransition];
    }

    else
    {
      [MEMORY[0x277D75D18] commitAnimations];
    }

    LODWORD(v22) = 0;
  }

  *&self->_exImageFlags &= ~2u;
  return *&v22;
}

- (void)setTransformAndCenterForFrame:(CGRect)a3
{
  [(PLExpandableImageView *)self _newSizeFromSize:a3.size.width, a3.size.height];
  [PLExpandableImageView setSize:"setSize:angle:" angle:?];
  UIRectGetCenter();

  [(PLExpandableImageView *)self setCenter:?];
}

- (CGSize)_newSizeFromSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(PLExpandableImageView *)self image];
  if (v5)
  {
    [v5 size];
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A8];
    v7 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v8 = v6 / v7;
  v9 = width / height;
  v10 = v8;
  if (v8 <= v9)
  {
    width = rint(height * v10);
  }

  else
  {
    height = rint(width / v10);
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

- (float)continueTrackingPinch:(id)a3
{
  v5 = [(PLExpandableImageView *)self _contentView];
  [(PLExpandableImageView *)self convertPoint:v5 toView:self->super._leftTouchLocation.x, self->super._leftTouchLocation.y];
  v7 = v6;
  v9 = v8;
  [(PLExpandableImageView *)self convertPoint:v5 toView:self->super._rightTouchLocation.x, self->super._rightTouchLocation.y];
  v11 = v10;
  v12 = (v7 + v10) * 0.5;
  v14 = (v9 + v13) * 0.5;
  v50 = v13;
  [(PLExpandableImageView *)self _updatePinchWidthAndScaleWithLeftPoint:v7 rightPoint:v9, v10];
  exImageFlags = self->_exImageFlags;
  if ((exImageFlags & 0x20) == 0)
  {
    *&self->_exImageFlags = exImageFlags | 0x20;
    [(PLExpandableImageView *)self center];
    self->_centerOffset.width = v16 - v12;
    self->_centerOffset.height = v17 - v14;
    exImageFlags = self->_exImageFlags;
  }

  if ((exImageFlags & 4) != 0)
  {
    v51 = v9;
    [(PLImageView *)self->_imageView bounds];
    v19 = v18;
    v21 = v20;
    [-[PLExpandableImageView superview](self "superview")];
    PLIntegralRect(v22, v23, v24, v25);
    v28 = v26;
    v29 = v27;
    v49 = v21;
    v30 = v27 / v21;
    v31 = v19;
    if (v26 >= v27)
    {
      v30 = v26 / v19;
    }

    v32 = v30;
    [(PLExpandableImageView *)self _setOriginalSize:v26, v27];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __47__PLExpandableImageView_continueTrackingPinch___block_invoke;
    v53[3] = &unk_2782A19A8;
    v53[4] = self;
    v54 = v32;
    [MEMORY[0x277D75D18] animateWithDuration:v53 animations:0.2];
    p_centerOffset = &self->_centerOffset;
    if (v31 + fabs(p_centerOffset->width + p_centerOffset->width) < v28 && v49 + fabs(self->_centerOffset.height + self->_centerOffset.height) < v29)
    {
      *p_centerOffset = *MEMORY[0x277CBF3A8];
    }

    *&self->_exImageFlags &= ~4u;
    v9 = v51;
  }

  v52 = v12 + self->_centerOffset.width;
  v34 = v14 + self->_centerOffset.height;
  [(PLExpandableImageView *)self convertPoint:v5 toView:self->super._previousLeftLocation.x, self->super._previousLeftLocation.y];
  [(PLExpandableImageView *)self convertPoint:v5 toView:self->super._previousRightLocation.x, self->super._previousRightLocation.y];
  UIDistanceBetweenPoints();
  *&v35 = v35;
  if (*&v35 < 1.0 && ([a3 velocity], fabs(v36) <= 0.05))
  {
    if ([(PLExpandableView *)self state]== 1)
    {
      [(PLExpandableImageView *)self setCenter:v52, v34];
    }
  }

  else
  {
    v37 = atan((v9 - v50) / (v11 - v7));
    if (v7 <= v11)
    {
      v38 = v37;
    }

    else
    {
      v38 = v37 + 3.14159265;
    }

    if (*&self->_exImageFlags)
    {
      originalAngle = v38;
      v40 = v52;
    }

    else
    {
      originalAngle = self->_originalAngle;
      v40 = v52;
      if (vabdd_f64(v38, originalAngle) > 0.261799388)
      {
        self->_originalAngle = v38;
        [(PLExpandableImageView *)self frame];
        self->_anchorPoint.x = (v52 - v41) / v42;
        self->_anchorPoint.y = (v34 - v43) / v44;
        *&self->_exImageFlags |= 1u;
        originalAngle = v38;
      }
    }

    [-[PLExpandableImageView layer](self "layer")];
    [(PLExpandableImageView *)self setCenter:v40, v34];
    [(PLImageView *)self->_imageView setEdgeAntialiasingEnabled:1];
    pinchScale = self->_pinchScale;
    v46 = self->_originalSize.width * pinchScale;
    v47 = self->_originalAngle - originalAngle;
    *&v47 = v47;
    [(PLExpandableImageView *)self setSize:rintf(v46) angle:rint(pinchScale * self->_originalSize.height), v47];
    self->_pinchAngle = originalAngle;
    [(PLExpandableImageView *)self _updateBorderAndAccessoriesAlpha];
  }

  [(PLExpandableImageView *)self _expansionFraction];
  return result;
}

uint64_t __47__PLExpandableImageView_continueTrackingPinch___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, *(a1 + 40), *(a1 + 40));
  [v2 setTransform:&v4];
  return [*(a1 + 32) _updateBorderAndAccessoriesAlpha];
}

- (void)_updatePinchWidthAndScaleWithLeftPoint:(CGPoint)a3 rightPoint:(CGPoint)a4
{
  UIDistanceBetweenPoints();
  self->_pinchWidth = v5;
  self->_pinchScale = v5 / self->_originalWidth;
  if (![(PLExpandableView *)self allowsExpansion])
  {
    pinchScale = self->_pinchScale;
    if (pinchScale > 1.0)
    {
      self->_pinchScale = (1.0 - 1.0 / pinchScale) * 0.2 + 1.0;
    }
  }
}

- (void)_updateBorderAndAccessoriesAlpha
{
  [(PLExpandableImageView *)self _expansionFraction];
  imageView = self->_imageView;
  [(PLExpandableImageView *)self _borderAlphaForExpansionFraction:?];

  [(PLImageView *)imageView setBorderAndAccessoriesAlpha:?];
}

- (float)_borderAlphaForExpansionFraction:(float)a3
{
  v3 = fmax(a3 * -2.0 + 1.0, 0.0);
  if (v3 > 1.0)
  {
    return 1.0;
  }

  return v3;
}

- (void)setSize:(CGSize)a3 angle:(float)a4
{
  height = a3.height;
  width = a3.width;
  [(PLExpandableImageView *)self frame];
  v9 = v8;
  v11 = v10;
  [(PLExpandableImageView *)self bounds];
  v14 = width == height;
  if (width >= height)
  {
    v15 = width;
  }

  else
  {
    v15 = height;
  }

  if (v12 != v13)
  {
    v14 = 1;
  }

  v16 = v15;
  v17 = v16;
  if (v14)
  {
    v18 = width;
  }

  else
  {
    v18 = v16;
  }

  if (v14)
  {
    v17 = height;
  }

  v19 = self->_imageRotationAngle + a4;
  currentAngle = self->_currentAngle;
  v21 = vabdd_f64(v18, v9);
  v22 = vabds_f32(v19, currentAngle) < 1.0 && v21 < 1.0;
  v23 = vabdd_f64(v17, v11);
  v24 = v22 && v23 < 1.0;
  if (!v24 || currentAngle != 0.0 && v19 == 0.0 || currentAngle == 0.0 && v19 != 0.0)
  {
    v25 = *(MEMORY[0x277CBF2C0] + 16);
    *&v31.a = *MEMORY[0x277CBF2C0];
    *&v31.c = v25;
    *&v31.tx = *(MEMORY[0x277CBF2C0] + 32);
    v26 = v17 / v13;
    v27 = v18 / v12;
    if (v12 < v13)
    {
      v27 = v26;
    }

    v28 = v27;
    CGAffineTransformMakeRotation(&v31, v19);
    v29 = v31;
    CGAffineTransformScale(&v30, &v29, v28, v28);
    v31 = v30;
    [(PLExpandableImageView *)self setTransform:&v30];
    [(PLImageView *)self->_imageView setNeedsLayout];
    self->_currentAngle = v19;
  }
}

- (void)beginTrackingPinch:(id)a3
{
  v5 = [(PLExpandableView *)self state];
  if (v5 == 1)
  {
    [(PLImageView *)self->_imageView bounds];
    [(PLExpandableView *)self pinchRect:self->_imageView inView:1 insetTouches:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(PLImageView *)self->_imageView convertRect:[(PLExpandableImageView *)self superview] toView:v6, v8, v10, v12];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [(PLImageView *)self->_imageView convertRect:0 toView:v7, v9, v11, v13];
    self->_initialExpandingFrame.origin.x = v22;
    self->_initialExpandingFrame.origin.y = v23;
    self->_initialExpandingFrame.size.width = v24;
    self->_initialExpandingFrame.size.height = v25;
    v26 = *&self->_exImageFlags | 4;
  }

  else
  {
    [(PLExpandableImageView *)self frame];
    v15 = v27;
    v17 = v28;
    v19 = v29;
    v21 = v30;
    [(PLExpandableView *)self contractedFrame];
    self->_initialExpandingFrame.origin.x = v31;
    self->_initialExpandingFrame.origin.y = v32;
    self->_initialExpandingFrame.size.width = v33;
    self->_initialExpandingFrame.size.height = v34;
    v26 = *&self->_exImageFlags & 0xFB;
  }

  *&self->_exImageFlags = v26;
  v35 = [(PLExpandableImageView *)self superview];
  [a3 locationOfTouch:self->super._leftTouchIndex inView:v35];
  v37 = v36;
  v39 = v38;
  [a3 locationOfTouch:self->super._rightTouchIndex inView:v35];
  v41 = v40;
  self->_anchorPoint.x = ((v37 + v40) * 0.5 - v15) / v19;
  self->_anchorPoint.y = ((v39 + v42) * 0.5 - v17) / v21;
  self->_originalAngle = atan((v39 - v42) / (v40 - v37));
  v43 = [(PLExpandableImageView *)self _contentView];
  [a3 locationOfTouch:self->super._leftTouchIndex inView:v43];
  [a3 locationOfTouch:self->super._rightTouchIndex inView:v43];
  UIDistanceBetweenPoints();
  self->_originalWidth = originalWidth;
  if (v37 > v41)
  {
    self->_originalAngle = self->_originalAngle + 3.14159265;
    originalWidth = self->_originalWidth;
  }

  self->_pinchWidth = originalWidth;
  self->_pinchAngle = self->_originalAngle;
  self->_pinchScale = 1.0;
  v45 = *&self->_exImageFlags & 0xDC;
  if (v5 == 1)
  {
    *&self->_exImageFlags = v45 | 2;
  }

  else
  {
    *&self->_exImageFlags = v45 | 0x22;
    self->_centerOffset = *MEMORY[0x277CBF3A8];
  }

  [(PLExpandableImageView *)self bounds];
  self->_originalBounds.origin.x = v46;
  self->_originalBounds.origin.y = v47;
  self->_originalBounds.size.width = v48;
  self->_originalBounds.size.height = v49;
  [(PLExpandableImageView *)self frame];

  [(PLExpandableImageView *)self _setOriginalSize:v50, v51];
}

- (void)stateDidChangeFrom:(int)a3
{
  if ([(PLExpandableView *)self state]== 1)
  {
    [(PLExpandableView *)self contractedFrame];
    v5 = v4;
    v7 = v6;
    [(PLExpandableView *)self expandedFrame];
    v10 = v7 / v9;
    if (v9 > v8)
    {
      v10 = v5 / v8;
    }

    imageView = self->_imageView;

    [(PLImageView *)imageView setPlaceholderScale:v10];
  }
}

- (CGRect)_snappedExpandedFrame
{
  [(PLExpandableView *)self expandedFrame];

  v6 = PLIntegralRect(v2, v3, v4, v5);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (float)_expansionFraction
{
  [(PLExpandableView *)self contractedFrame];
  v4 = v3;
  v6 = v5;
  [(PLExpandableImageView *)self imageSize];
  v8 = v7;
  v10 = v9;
  *&v7 = v7 / v9;
  v11 = *&v7;
  v12 = *&v7 < 1.0;
  v13 = rint(v6 * *&v7);
  v14 = rint(v4 / v11);
  if (v12)
  {
    v4 = v13;
  }

  else
  {
    v6 = v14;
  }

  v15 = [(PLExpandableView *)self isTracking];
  if (v8 <= v10)
  {
    if (v15)
    {
      v17 = self->_pinchScale * self->_originalSize.height;
    }

    else
    {
      [(PLExpandableImageView *)self frame];
    }

    v21 = v17 - v6;
    [(PLExpandableView *)self expandedFrame];
    return v21 / (v22 - v6);
  }

  else
  {
    if (v15)
    {
      v16 = self->_pinchScale * self->_originalSize.width;
    }

    else
    {
      [(PLExpandableImageView *)self frame];
    }

    v18 = v16 - v4;
    [(PLExpandableView *)self expandedFrame];
    return v18 / (v19 - v4);
  }
}

- (float)_expandedScale
{
  [(PLExpandableView *)self expandedFrame];
  v4 = v3;
  v6 = v5;
  [(PLExpandableView *)self contractedFrame];
  v9 = v6 / v8;
  if (v4 > v6)
  {
    return v4 / v7;
  }

  return v9;
}

- (float)_currentScale
{
  [(PLExpandableImageView *)self frame];
  v4 = v3;
  [(PLExpandableView *)self contractedFrame];
  return v4 / v5;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  imageView = self->_imageView;
  [(PLImageView *)imageView bounds];
  [(PLImageView *)imageView convertRect:self toView:?];
  v12 = (20.0 - v10) * 0.5;
  v13 = (20.0 - v11) * 0.5;
  if (v12 > 0.0 || v13 > 0.0)
  {
    *&v8 = CGRectInset(*&v8, -v12, -v13);
  }

  v14 = x;
  v15 = y;

  return CGRectContainsPoint(*&v8, *&v14);
}

- (void)layoutSubviews
{
  exImageFlags = self->_exImageFlags;
  if ((exImageFlags & 0x18) != 8)
  {
    *&self->_exImageFlags = exImageFlags | 8;
    v4 = [(PLExpandableImageView *)self image];
    v5 = [(PLExpandableImageView *)self videoView];
    if (v4 | v5)
    {
      v6 = v5;
      [(PLExpandableImageView *)self bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      *&v7 = v11;
      v15 = rintf(*&v7);
      v16 = rint(v13);
      if (v16 <= v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v16;
      }

      v18 = (*&self->_exImageFlags & 0x40) == 0 || ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) != 1;
      if (v4)
      {
        [(PLImageView *)self->_imageView sizeThatFits:v18 allowRounding:v17, v17];
        v20 = v19;
        v22 = v21;
      }

      else
      {
        v22 = v14;
        v20 = v12;
      }

      v23 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
      if (v4 && (v23 & 0xFFFFFFFFFFFFFFFBLL) == 1 && (v20 > v12 || v22 > v14))
      {
        v24 = v20;
        v12 = rintf(v24);
        v14 = rint(v22);
        [(PLExpandableImageView *)self setBounds:v8, v10, v12, v14];
      }

      if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1 && (!v4 ? (v25 = v6 == 0) : (v25 = 1), v25 ? (v26 = 0) : (v26 = 1), (*&self->_exImageFlags & 0x40) != 0 || v26))
      {
        v27 = v8 + (v12 - v20) * 0.5;
        v28 = v10 + (v14 - v22) * 0.5;
      }

      else
      {
        v27 = round(v8 + (v12 - v20) * 0.5);
        v28 = round(v10 + (v14 - v22) * 0.5);
      }

      imageView = self->_imageView;

      [(PLImageView *)imageView setFrame:v27, v28, v20, v22];
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLExpandableImageView;
  [(PLExpandableView *)&v3 dealloc];
}

- (PLExpandableImageView)initWithFrame:(CGRect)a3 frameStyle:(int)a4 withBorder:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  v10.receiver = self;
  v10.super_class = PLExpandableImageView;
  v8 = [(PLExpandableView *)&v10 initWithFrame:*&a4, a3.origin.x, a3.origin.y];
  if (v8)
  {
    v8->_imageView = [[PLImageView alloc] initWithFrame:0.0, 0.0, width, height];
    [-[PLExpandableImageView layer](v8 "layer")];
    [(PLImageView *)v8->_imageView setOpaque:1];
    [(PLExpandableImageView *)v8 setBorderAndAccessoriesVisible:v5];
    [(PLExpandableImageView *)v8 addSubview:v8->_imageView];
  }

  return v8;
}

@end