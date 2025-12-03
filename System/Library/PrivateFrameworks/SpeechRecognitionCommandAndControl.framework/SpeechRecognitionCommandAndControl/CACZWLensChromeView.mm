@interface CACZWLensChromeView
- (CACZWLensChromeView)initWithFrame:(CGRect)frame;
- (CGRect)previousResizeBounds;
- (void)layoutSubviews;
- (void)showLensResizingHandles:(BOOL)handles animated:(BOOL)animated;
- (void)updateChromeVisibility:(BOOL)visibility animated:(BOOL)animated completion:(id)completion;
@end

@implementation CACZWLensChromeView

- (CACZWLensChromeView)initWithFrame:(CGRect)frame
{
  v55.receiver = self;
  v55.super_class = CACZWLensChromeView;
  v3 = [(CACZWLensChromeView *)&v55 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(CACZWLensChromeView *)v3 layer];
    v6 = objc_alloc_init(MEMORY[0x277CD9E08]);
    [v6 setEnabled:1];
    [v6 setAllowsHitTesting:0];
    [v6 setMarginWidth:12.0];
    [v6 setMasksToBounds:0];
    [(CACZWLensChromeView *)v4 setBackdropLayer:v6];
    layer2 = [(CACZWLensChromeView *)v4 layer];
    [layer2 addSublayer:v6];

    v8 = v6;
    layer3 = [MEMORY[0x277CD9ED0] layer];
    backdropLayer = [(CACZWLensChromeView *)v4 backdropLayer];
    [backdropLayer setMask:layer3];

    layer4 = [MEMORY[0x277CD9F90] layer];
    [(CACZWLensChromeView *)v4 setBackdropMaskShapeLayer:layer4];

    layer5 = [MEMORY[0x277CD9F90] layer];
    [(CACZWLensChromeView *)v4 setBackdropResizingMaskLayer:layer5];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    cGColor = [whiteColor CGColor];
    backdropResizingMaskLayer = [(CACZWLensChromeView *)v4 backdropResizingMaskLayer];
    [backdropResizingMaskLayer setBackgroundColor:cGColor];

    backdropResizingMaskLayer2 = [(CACZWLensChromeView *)v4 backdropResizingMaskLayer];
    [backdropResizingMaskLayer2 setOpacity:0.0];

    layer6 = [MEMORY[0x277CD9F90] layer];
    [(CACZWLensChromeView *)v4 setBackdropGrabberMaskLayer:layer6];

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    cGColor2 = [whiteColor2 CGColor];
    backdropGrabberMaskLayer = [(CACZWLensChromeView *)v4 backdropGrabberMaskLayer];
    [backdropGrabberMaskLayer setBackgroundColor:cGColor2];

    backdropGrabberMaskLayer2 = [(CACZWLensChromeView *)v4 backdropGrabberMaskLayer];
    [backdropGrabberMaskLayer2 setCornerRadius:5.0];

    backdropLayer2 = [(CACZWLensChromeView *)v4 backdropLayer];
    mask = [backdropLayer2 mask];
    backdropMaskShapeLayer = [(CACZWLensChromeView *)v4 backdropMaskShapeLayer];
    [mask addSublayer:backdropMaskShapeLayer];

    backdropLayer3 = [(CACZWLensChromeView *)v4 backdropLayer];
    mask2 = [backdropLayer3 mask];
    backdropGrabberMaskLayer3 = [(CACZWLensChromeView *)v4 backdropGrabberMaskLayer];
    [mask2 addSublayer:backdropGrabberMaskLayer3];

    backdropLayer4 = [(CACZWLensChromeView *)v4 backdropLayer];
    mask3 = [backdropLayer4 mask];
    backdropResizingMaskLayer3 = [(CACZWLensChromeView *)v4 backdropResizingMaskLayer];
    [mask3 addSublayer:backdropResizingMaskLayer3];

    layer7 = [MEMORY[0x277CD9F90] layer];
    [(CACZWLensChromeView *)v4 setChromeInnerBorderLayer:layer7];
    [v8 addSublayer:layer7];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [layer7 setFillColor:{objc_msgSend(clearColor, "CGColor")}];

    v33 = CACZWLensInnerColor();
    [layer7 setStrokeColor:{objc_msgSend(v33, "CGColor")}];

    [layer7 setLineWidth:CACZWLensInnerBorderWidth()];
    v34 = *MEMORY[0x277CDA5E8];
    v35 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    [layer7 setCompositingFilter:v35];

    v36 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    v37 = CACZWLensInnerColor();
    [v36 setBackgroundColor:{objc_msgSend(v37, "CGColor")}];

    [v36 setMasksToBounds:1];
    v38 = [MEMORY[0x277CD9EA0] filterWithType:v34];
    [v36 setCompositingFilter:v38];

    [(CACZWLensChromeView *)v4 setGrabberOverlayLayer:v36];
    grabberOverlayLayer = [(CACZWLensChromeView *)v4 grabberOverlayLayer];
    [grabberOverlayLayer setCornerRadius:5.0];

    [v8 addSublayer:v36];
    layer8 = [MEMORY[0x277CD9F90] layer];
    [(CACZWLensChromeView *)v4 setChromeOuterBorderLayer:layer8];
    [v8 addSublayer:layer8];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [layer8 setFillColor:{objc_msgSend(clearColor2, "CGColor")}];

    v42 = CACZWLensOuterColor();
    [layer8 setStrokeColor:{objc_msgSend(v42, "CGColor")}];

    [layer8 setLineWidth:CACZWLensOuterBorderWidth()];
    v43 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
    [layer8 setCompositingFilter:v43];

    [(CACZWLensChromeView *)v4 setLensCornerRadius:13.0];
    layer9 = [MEMORY[0x277CD9F90] layer];
    [(CACZWLensChromeView *)v4 setLensResizingHandlesLayer:layer9];
    [layer9 setOpacity:0.0];
    v45 = CACZWLensInnerColor();
    [layer9 setFillColor:{objc_msgSend(v45, "CGColor")}];

    v46 = [MEMORY[0x277CD9EA0] filterWithType:v34];
    [layer9 setCompositingFilter:v46];

    layer10 = [(CACZWLensChromeView *)v4 layer];
    [layer10 addSublayer:layer9];

    layer11 = [MEMORY[0x277CD9F90] layer];

    [(CACZWLensChromeView *)v4 setTouchStealerShapeLayer:layer11];
    LODWORD(v49) = 1.0;
    [layer11 setOpacity:v49];
    blackColor = [MEMORY[0x277D75348] blackColor];
    v51 = [blackColor colorWithAlphaComponent:0.00392156863];
    [layer11 setStrokeColor:{objc_msgSend(v51, "CGColor")}];

    clearColor3 = [MEMORY[0x277D75348] clearColor];
    [layer11 setFillColor:{objc_msgSend(clearColor3, "CGColor")}];

    [layer11 setLineWidth:CACZWZoomLensBorderThicknessForTouches()];
    layer12 = [(CACZWLensChromeView *)v4 layer];
    [layer12 addSublayer:layer11];
  }

  return v4;
}

- (void)layoutSubviews
{
  v129.receiver = self;
  v129.super_class = CACZWLensChromeView;
  [(CACZWLensChromeView *)&v129 layoutSubviews];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(CACZWLensChromeView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  chromeInnerBorderLayer = [(CACZWLensChromeView *)self chromeInnerBorderLayer];
  [chromeInnerBorderLayer setFrame:{v4, v6, v8, v10}];

  [(CACZWLensChromeView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  chromeOuterBorderLayer = [(CACZWLensChromeView *)self chromeOuterBorderLayer];
  [chromeOuterBorderLayer setFrame:{v13, v15, v17, v19}];

  [(CACZWLensChromeView *)self bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  lensResizingHandlesLayer = [(CACZWLensChromeView *)self lensResizingHandlesLayer];
  [lensResizingHandlesLayer setFrame:{v22, v24, v26, v28}];

  [(CACZWLensChromeView *)self bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  backdropLayer = [(CACZWLensChromeView *)self backdropLayer];
  mask = [backdropLayer mask];
  [mask setFrame:{v31, v33, v35, v37}];

  [(CACZWLensChromeView *)self bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  backdropResizingMaskLayer = [(CACZWLensChromeView *)self backdropResizingMaskLayer];
  [backdropResizingMaskLayer setFrame:{v41, v43, v45, v47}];

  [(CACZWLensChromeView *)self bounds];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  backdropMaskShapeLayer = [(CACZWLensChromeView *)self backdropMaskShapeLayer];
  [backdropMaskShapeLayer setFrame:{v50, v52, v54, v56}];

  [(CACZWLensChromeView *)self bounds];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  touchStealerShapeLayer = [(CACZWLensChromeView *)self touchStealerShapeLayer];
  [touchStealerShapeLayer setFrame:{v59, v61, v63, v65}];

  v67 = MEMORY[0x277D75208];
  [(CACZWLensChromeView *)self bounds];
  v68 = [v67 bezierPathWithRect:?];
  cGPath = [v68 CGPath];
  touchStealerShapeLayer2 = [(CACZWLensChromeView *)self touchStealerShapeLayer];
  [touchStealerShapeLayer2 setPath:cGPath];

  [(CACZWLensChromeView *)self bounds];
  v75 = CACZWOuterLensBorderForBounds([(CACZWLensChromeView *)self showingResizeHandles], v71, v72, v73, v74);
  [(CACZWLensChromeView *)self bounds];
  v80 = CACZWInnerLensBorderForBounds([(CACZWLensChromeView *)self showingResizeHandles], v76, v77, v78, v79);
  cGPath2 = [v75 CGPath];
  chromeOuterBorderLayer2 = [(CACZWLensChromeView *)self chromeOuterBorderLayer];
  [chromeOuterBorderLayer2 setPath:cGPath2];

  cGPath3 = [v80 CGPath];
  chromeInnerBorderLayer2 = [(CACZWLensChromeView *)self chromeInnerBorderLayer];
  [chromeInnerBorderLayer2 setPath:cGPath3];

  [(CACZWLensChromeView *)self bounds];
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  backdropLayer2 = [(CACZWLensChromeView *)self backdropLayer];
  [backdropLayer2 setFrame:{v86, v88, v90, v92}];

  [(CACZWLensChromeView *)self bounds];
  v98 = CACZWResizeGrabberPath(v94, v95, v96, v97);
  cGPath4 = [v98 CGPath];
  lensResizingHandlesLayer2 = [(CACZWLensChromeView *)self lensResizingHandlesLayer];
  [lensResizingHandlesLayer2 setPath:cGPath4];

  [(CACZWLensChromeView *)self bounds];
  v105 = CACZWResizeGrabberPath(v101, v102, v103, v104);
  cGPath5 = [v105 CGPath];
  backdropResizingMaskLayer2 = [(CACZWLensChromeView *)self backdropResizingMaskLayer];
  [backdropResizingMaskLayer2 setPath:cGPath5];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  cGColor = [whiteColor CGColor];
  backdropResizingMaskLayer3 = [(CACZWLensChromeView *)self backdropResizingMaskLayer];
  [backdropResizingMaskLayer3 setFillColor:cGColor];

  clearColor = [MEMORY[0x277D75348] clearColor];
  cGColor2 = [clearColor CGColor];
  backdropResizingMaskLayer4 = [(CACZWLensChromeView *)self backdropResizingMaskLayer];
  [backdropResizingMaskLayer4 setBackgroundColor:cGColor2];

  v114 = [v80 copy];
  [v114 appendPath:v75];
  cGPath6 = [v114 CGPath];
  backdropMaskShapeLayer2 = [(CACZWLensChromeView *)self backdropMaskShapeLayer];
  [backdropMaskShapeLayer2 setPath:cGPath6];

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  cGColor3 = [clearColor2 CGColor];
  backdropMaskShapeLayer3 = [(CACZWLensChromeView *)self backdropMaskShapeLayer];
  [backdropMaskShapeLayer3 setFillColor:cGColor3];

  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  cGColor4 = [whiteColor2 CGColor];
  backdropMaskShapeLayer4 = [(CACZWLensChromeView *)self backdropMaskShapeLayer];
  [backdropMaskShapeLayer4 setStrokeColor:cGColor4];

  v123 = CACZWLensInnerBorderWidth();
  v124 = CACZWLensOuterBorderWidth();
  if (v123 < v124)
  {
    v123 = v124;
  }

  backdropMaskShapeLayer5 = [(CACZWLensChromeView *)self backdropMaskShapeLayer];
  [backdropMaskShapeLayer5 setLineWidth:v123];

  clearColor3 = [MEMORY[0x277D75348] clearColor];
  cGColor5 = [clearColor3 CGColor];
  backdropMaskShapeLayer6 = [(CACZWLensChromeView *)self backdropMaskShapeLayer];
  [backdropMaskShapeLayer6 setBackgroundColor:cGColor5];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)updateChromeVisibility:(BOOL)visibility animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v9 = MEMORY[0x277D75D18];
  v10 = 0.0;
  if (animatedCopy)
  {
    v10 = CACZWDefaultFadeAnimationDuration();
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__CACZWLensChromeView_updateChromeVisibility_animated_completion___block_invoke;
  v14[3] = &unk_279CEBF20;
  v14[4] = self;
  visibilityCopy = visibility;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__CACZWLensChromeView_updateChromeVisibility_animated_completion___block_invoke_2;
  v12[3] = &unk_279CEC388;
  v13 = completionCopy;
  v11 = completionCopy;
  [v9 animateWithDuration:v14 animations:v12 completion:v10];
}

uint64_t __66__CACZWLensChromeView_updateChromeVisibility_animated_completion___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

uint64_t __66__CACZWLensChromeView_updateChromeVisibility_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)showLensResizingHandles:(BOOL)handles animated:(BOOL)animated
{
  animatedCopy = animated;
  handlesCopy = handles;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:!animatedCopy];
  lensResizingHandlesLayer = [(CACZWLensChromeView *)self lensResizingHandlesLayer];
  v8 = lensResizingHandlesLayer;
  if (handlesCopy)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (handlesCopy)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  [lensResizingHandlesLayer setOpacity:COERCE_DOUBLE(LODWORD(v9))];

  grabberOverlayLayer = [(CACZWLensChromeView *)self grabberOverlayLayer];
  *&v12 = v10;
  [grabberOverlayLayer setOpacity:v12];

  backdropResizingMaskLayer = [(CACZWLensChromeView *)self backdropResizingMaskLayer];
  *&v14 = v9;
  [backdropResizingMaskLayer setOpacity:v14];

  backdropGrabberMaskLayer = [(CACZWLensChromeView *)self backdropGrabberMaskLayer];
  *&v16 = v10;
  [backdropGrabberMaskLayer setOpacity:v16];

  [(CACZWLensChromeView *)self setShowingResizeHandles:handlesCopy];
  [(CACZWLensChromeView *)self layoutSubviews];
  v17 = MEMORY[0x277CD9FF0];

  [v17 commit];
}

- (CGRect)previousResizeBounds
{
  x = self->_previousResizeBounds.origin.x;
  y = self->_previousResizeBounds.origin.y;
  width = self->_previousResizeBounds.size.width;
  height = self->_previousResizeBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end