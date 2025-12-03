@interface SBCoverSheetPositionView
- (CGPoint)_simulatedTouchLocationForProgress;
- (CGRect)boundsForPositioning;
- (CGRect)boundsForPositioningWithTransformMode:(int64_t)mode;
- (CGRect)frameForPositioning;
- (CGRect)positionContentForTouchAtLocation:(CGPoint)location;
- (CGRect)positionContentForTouchAtLocation:(CGPoint)location withVelocity:(CGPoint)velocity transformMode:(int64_t)mode forPresentationValue:(BOOL)value;
- (SBCoverSheetPositionView)initWithFrame:(CGRect)frame;
- (SBCoverSheetPositionViewDelegate)delegate;
- (void)_createContentView;
- (void)resetContentScalingAnimated:(BOOL)animated;
- (void)resumePositionBasedScaling;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)frame;
@end

@implementation SBCoverSheetPositionView

- (CGRect)frameForPositioning
{
  v3 = CSFeatureEnabled();
  [(UIView *)self->_contentView frame];
  if (v3)
  {
    v7 = v7 * 0.5;
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)boundsForPositioning
{
  v3 = CSFeatureEnabled();
  [(UIView *)self->_contentView bounds];
  v8 = v7;
  if (v3)
  {
    [(UIView *)self->_contentView bounds];
    v6 = v9 * 0.5;
    v4 = 0.0;
    v5 = 0.0;
  }

  v10 = v8;
  result.size.height = v6;
  result.size.width = v10;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (SBCoverSheetPositionView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBCoverSheetPositionView;
  v3 = [(SBCoverSheetPositionView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBCoverSheetPositionView *)v3 _createContentView];
  }

  return v4;
}

- (void)_createContentView
{
  v3 = CSFeatureEnabled();
  if (!self->_contentView)
  {
    v4 = v3;
    [(SBCoverSheetPositionView *)self bounds];
    if (v4)
    {
      [(SBCoverSheetPositionView *)self bounds];
      v10 = v9;
      [(SBCoverSheetPositionView *)self bounds];
      v12 = v11 + v11;
      v13 = 0.0;
      v14 = 0.0;
    }

    else
    {
      v13 = v5;
      v14 = v6;
      v10 = v7;
      v12 = v8;
    }

    v15 = [objc_alloc(MEMORY[0x277D65F80]) initWithFrame:{v13, v14, v10, v12}];
    contentView = self->_contentView;
    self->_contentView = v15;

    [(SBCoverSheetPositionView *)self addSubview:self->_contentView];
    [(UIView *)self->_contentView setOpaque:0];
    if ((v4 & 1) == 0)
    {
      [(UIView *)self->_contentView setAutoresizingMask:18];
    }

    v17 = self->_contentView;

    [(UIView *)v17 setClipsToBounds:1];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateRespondsToUpdateContentPosition = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SBCoverSheetPositionView *)self frame];
  v9 = v8;
  v11 = v10;
  [(SBCoverSheetPositionView *)self frameForPositioning];
  [(SBCoverSheetPositionView *)self _progressFromContentViewFrame:?];
  [(SBCoverSheetPositionView *)self setProgress:?];
  v19.receiver = self;
  v19.super_class = SBCoverSheetPositionView;
  [(SBCoverSheetPositionView *)&v19 setFrame:x, y, width, height];
  if (CSFeatureEnabled())
  {
    [(SBCoverSheetPositionView *)self bounds];
    v13 = v12;
    v15 = v14 + v14;
    [(UIView *)self->_contentView bounds];
    if (v13 != v17 || v15 != v16)
    {
      [(UIView *)self->_contentView frame];
      [(UIView *)self->_contentView setFrame:?];
    }
  }

  if (v9 != width || v11 != height)
  {
    [(SBCoverSheetPositionView *)self _simulatedTouchLocationForProgress];
    [(SBCoverSheetPositionView *)self positionContentForTouchAtLocation:?];
  }
}

- (CGRect)boundsForPositioningWithTransformMode:(int64_t)mode
{
  v5 = CSFeatureEnabled();
  [(UIView *)self->_contentView bounds];
  v10 = v9;
  if (mode != 2 && v5)
  {
    [(UIView *)self->_contentView bounds];
    v8 = v11 * 0.5;
    v6 = 0.0;
    v7 = 0.0;
  }

  v12 = v10;
  result.size.height = v8;
  result.size.width = v12;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)positionContentForTouchAtLocation:(CGPoint)location
{
  [(SBCoverSheetPositionView *)self positionContentForTouchAtLocation:1 withVelocity:0 transformMode:location.x forPresentationValue:location.y, 0.0, 0.0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)positionContentForTouchAtLocation:(CGPoint)location withVelocity:(CGPoint)velocity transformMode:(int64_t)mode forPresentationValue:(BOOL)value
{
  valueCopy = value;
  y = velocity.y;
  v9 = location.y;
  if (mode == 2 && self->_ignoringPositionChanges)
  {
    [(SBCoverSheetPositionView *)self boundsForPositioningWithTransformMode:2, location.x, location.y, velocity.x];
    x = v11;
    v14 = v13;
    width = v15;
    v18 = v17;
  }

  else
  {
    [(SBCoverSheetPositionView *)self boundsForPositioning:location.x];
    v20 = v19;
    v66 = *(MEMORY[0x277CBF2C0] + 16);
    v67 = *MEMORY[0x277CBF2C0];
    *&v79.a = *MEMORY[0x277CBF2C0];
    *&v79.c = v66;
    v65 = *(MEMORY[0x277CBF2C0] + 32);
    *&v79.tx = v65;
    v21 = MEMORY[0x277CBF348];
    if (mode == 2)
    {
      v64 = *(MEMORY[0x277CBF348] + 8);
      v22 = v19 - v9;
      v23 = CSFeatureEnabled();
      v24 = v20 - v22;
      if (!v23)
      {
        v24 = v20 + v22 * -2.0;
      }

      v63 = v24 / v20;
      CGAffineTransformMakeScale(&v79, v63, v63);
      [(SBCoverSheetPositionView *)self boundsForPositioningWithTransformMode:2];
      v73 = v79;
      v81 = CGRectApplyAffineTransform(v80, &v73);
      x = v81.origin.x;
      v68 = v81.origin.y;
      height = v81.size.height;
      width = v81.size.width;
    }

    else
    {
      SBScreenScale();
      BSFloatRoundForScale();
      v27 = v26;
      [(SBCoverSheetPositionView *)self boundsForPositioningWithTransformMode:mode];
      v64 = y;
      v63 = 1.0;
      height = v28;
      width = v29;
      v68 = v27;
      x = v30;
    }

    UIRectGetCenter();
    v32 = v31;
    v34 = v33;
    v18 = height;
    if (CSFeatureEnabled())
    {
      if (mode == 2)
      {
        [(SBCoverSheetPositionView *)self boundsForPositioningWithTransformMode:2];
        v34 = v34 + v35 * -0.25 * (1.0 - fmin(fmax(v63, 0.0), 1.0));
      }

      else
      {
        [(SBCoverSheetPositionView *)self boundsForPositioning];
        v34 = v34 + v36 * 0.5;
      }
    }

    v73 = v79;
    IsIdentity = CGAffineTransformIsIdentity(&v73);
    [(UIView *)self->_contentView center];
    v40 = v34 == v39 && v32 == v38;
    if (valueCopy)
    {
      if (!IsIdentity)
      {
        contentView = self->_contentView;
        v42 = *(MEMORY[0x277CD9DE8] + 80);
        v75 = *(MEMORY[0x277CD9DE8] + 64);
        v76 = v42;
        v43 = *(MEMORY[0x277CD9DE8] + 112);
        v77 = *(MEMORY[0x277CD9DE8] + 96);
        v78 = v43;
        v44 = *(MEMORY[0x277CD9DE8] + 16);
        *&v73.a = *MEMORY[0x277CD9DE8];
        *&v73.c = v44;
        v45 = *(MEMORY[0x277CD9DE8] + 48);
        *&v73.tx = *(MEMORY[0x277CD9DE8] + 32);
        v74 = v45;
        v46 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v73];
        [(UIView *)contentView _setPresentationValue:v46 forKey:@"transform"];
      }

      if (!v40)
      {
        v47 = width;
        v48 = *v21;
        v49 = self->_contentView;
        *v72 = v32;
        *&v72[1] = v34;
        v50 = [MEMORY[0x277CCAE60] valueWithBytes:v72 objCType:"{CGPoint=dd}"];
        v71[0] = v48;
        width = v47;
        *&v71[1] = v64;
        v51 = [MEMORY[0x277CCAE60] valueWithBytes:v71 objCType:"{CGPoint=dd}"];
        [(UIView *)v49 _setPresentationValue:v50 velocity:v51 preferredFrameRateRangeMaximum:120 forKey:@"position"];
      }

      v14 = v68;
      if (!IsIdentity)
      {
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        memset(&v73, 0, sizeof(v73));
        SBVelocityMatrixForUniform2DScaling();
        v52 = self->_contentView;
        v53 = MEMORY[0x277CCAE60];
        m = v79;
        CATransform3DMakeAffineTransform(&v70, &m);
        v54 = [v53 valueWithCATransform3D:&v70];
        *&v70.m31 = v75;
        *&v70.m33 = v76;
        *&v70.m41 = v77;
        *&v70.m43 = v78;
        *&v70.m11 = *&v73.a;
        *&v70.m13 = *&v73.c;
        *&v70.m21 = *&v73.tx;
        *&v70.m23 = v74;
        v55 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v70];
        [(UIView *)v52 _setPresentationValue:v54 velocity:v55 preferredFrameRateRangeMaximum:120 forKey:@"transform"];
      }
    }

    else
    {
      v56 = self->_contentView;
      *&v73.a = v67;
      *&v73.c = v66;
      *&v73.tx = v65;
      [(UIView *)v56 setTransform:&v73];
      [(UIView *)self->_contentView setCenter:v32, v34];
      v57 = self->_contentView;
      v73 = v79;
      [(UIView *)v57 setTransform:&v73];
      v14 = v68;
      [(SBCoverSheetPositionView *)self _progressFromContentViewFrame:x, v68, width, height];
      [(SBCoverSheetPositionView *)self setProgress:?];
    }

    if (self->_delegateRespondsToUpdateContentPosition)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained positionViewDidUpdateContentViewPosition:self];
    }
  }

  v59 = x;
  v60 = v14;
  v61 = width;
  v62 = v18;
  result.size.height = v62;
  result.size.width = v61;
  result.origin.y = v60;
  result.origin.x = v59;
  return result;
}

- (void)resetContentScalingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (CSFeatureEnabled())
  {
    contentView = self->_contentView;
    if (contentView)
    {
      [(UIView *)contentView transform];
    }

    else
    {
      memset(&v11, 0, sizeof(v11));
    }

    if (!CGAffineTransformIsIdentity(&v11))
    {
      self->_ignoringPositionChanges = 1;
      [(SBCoverSheetPositionView *)self boundsForPositioningWithTransformMode:2];
      UIRectGetCenter();
      if (animatedCopy)
      {
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __56__SBCoverSheetPositionView_resetContentScalingAnimated___block_invoke;
        v10[3] = &unk_2783A8C40;
        v10[4] = self;
        v10[5] = v6;
        v10[6] = v7;
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __56__SBCoverSheetPositionView_resetContentScalingAnimated___block_invoke_2;
        v9[3] = &unk_2783A9398;
        v9[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v10 animations:v9 completion:0.2];
      }

      else
      {
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __56__SBCoverSheetPositionView_resetContentScalingAnimated___block_invoke_3;
        v8[3] = &unk_2783A8C40;
        v8[4] = self;
        v8[5] = v6;
        v8[6] = v7;
        [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v8];
        [(SBCoverSheetPositionView *)self resumePositionBasedScaling];
      }
    }
  }
}

uint64_t __56__SBCoverSheetPositionView_resetContentScalingAnimated___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 416);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  return [*(*(a1 + 32) + 416) setCenter:{*(a1 + 40), *(a1 + 48)}];
}

uint64_t __56__SBCoverSheetPositionView_resetContentScalingAnimated___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 416);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  return [*(*(a1 + 32) + 416) setCenter:{*(a1 + 40), *(a1 + 48)}];
}

- (void)resumePositionBasedScaling
{
  if (CSFeatureEnabled())
  {
    self->_ignoringPositionChanges = 0;
  }
}

- (CGPoint)_simulatedTouchLocationForProgress
{
  [(SBCoverSheetPositionView *)self frameForPositioning];
  Height = CGRectGetHeight(v8);
  [(SBCoverSheetPositionView *)self progress];
  v5 = Height * (1.0 - v4);
  v6 = 0.0;
  result.y = v5;
  result.x = v6;
  return result;
}

- (SBCoverSheetPositionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end