@interface CACZWLensChromeView
- (CACZWLensChromeView)initWithFrame:(CGRect)a3;
- (CGRect)previousResizeBounds;
- (void)layoutSubviews;
- (void)showLensResizingHandles:(BOOL)a3 animated:(BOOL)a4;
- (void)updateChromeVisibility:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation CACZWLensChromeView

- (CACZWLensChromeView)initWithFrame:(CGRect)a3
{
  v55.receiver = self;
  v55.super_class = CACZWLensChromeView;
  v3 = [(CACZWLensChromeView *)&v55 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CACZWLensChromeView *)v3 layer];
    v6 = objc_alloc_init(MEMORY[0x277CD9E08]);
    [v6 setEnabled:1];
    [v6 setAllowsHitTesting:0];
    [v6 setMarginWidth:12.0];
    [v6 setMasksToBounds:0];
    [(CACZWLensChromeView *)v4 setBackdropLayer:v6];
    v7 = [(CACZWLensChromeView *)v4 layer];
    [v7 addSublayer:v6];

    v8 = v6;
    v9 = [MEMORY[0x277CD9ED0] layer];
    v10 = [(CACZWLensChromeView *)v4 backdropLayer];
    [v10 setMask:v9];

    v11 = [MEMORY[0x277CD9F90] layer];
    [(CACZWLensChromeView *)v4 setBackdropMaskShapeLayer:v11];

    v12 = [MEMORY[0x277CD9F90] layer];
    [(CACZWLensChromeView *)v4 setBackdropResizingMaskLayer:v12];

    v13 = [MEMORY[0x277D75348] whiteColor];
    v14 = [v13 CGColor];
    v15 = [(CACZWLensChromeView *)v4 backdropResizingMaskLayer];
    [v15 setBackgroundColor:v14];

    v16 = [(CACZWLensChromeView *)v4 backdropResizingMaskLayer];
    [v16 setOpacity:0.0];

    v17 = [MEMORY[0x277CD9F90] layer];
    [(CACZWLensChromeView *)v4 setBackdropGrabberMaskLayer:v17];

    v18 = [MEMORY[0x277D75348] whiteColor];
    v19 = [v18 CGColor];
    v20 = [(CACZWLensChromeView *)v4 backdropGrabberMaskLayer];
    [v20 setBackgroundColor:v19];

    v21 = [(CACZWLensChromeView *)v4 backdropGrabberMaskLayer];
    [v21 setCornerRadius:5.0];

    v22 = [(CACZWLensChromeView *)v4 backdropLayer];
    v23 = [v22 mask];
    v24 = [(CACZWLensChromeView *)v4 backdropMaskShapeLayer];
    [v23 addSublayer:v24];

    v25 = [(CACZWLensChromeView *)v4 backdropLayer];
    v26 = [v25 mask];
    v27 = [(CACZWLensChromeView *)v4 backdropGrabberMaskLayer];
    [v26 addSublayer:v27];

    v28 = [(CACZWLensChromeView *)v4 backdropLayer];
    v29 = [v28 mask];
    v30 = [(CACZWLensChromeView *)v4 backdropResizingMaskLayer];
    [v29 addSublayer:v30];

    v31 = [MEMORY[0x277CD9F90] layer];
    [(CACZWLensChromeView *)v4 setChromeInnerBorderLayer:v31];
    [v8 addSublayer:v31];
    v32 = [MEMORY[0x277D75348] clearColor];
    [v31 setFillColor:{objc_msgSend(v32, "CGColor")}];

    v33 = CACZWLensInnerColor();
    [v31 setStrokeColor:{objc_msgSend(v33, "CGColor")}];

    [v31 setLineWidth:CACZWLensInnerBorderWidth()];
    v34 = *MEMORY[0x277CDA5E8];
    v35 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    [v31 setCompositingFilter:v35];

    v36 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    v37 = CACZWLensInnerColor();
    [v36 setBackgroundColor:{objc_msgSend(v37, "CGColor")}];

    [v36 setMasksToBounds:1];
    v38 = [MEMORY[0x277CD9EA0] filterWithType:v34];
    [v36 setCompositingFilter:v38];

    [(CACZWLensChromeView *)v4 setGrabberOverlayLayer:v36];
    v39 = [(CACZWLensChromeView *)v4 grabberOverlayLayer];
    [v39 setCornerRadius:5.0];

    [v8 addSublayer:v36];
    v40 = [MEMORY[0x277CD9F90] layer];
    [(CACZWLensChromeView *)v4 setChromeOuterBorderLayer:v40];
    [v8 addSublayer:v40];

    v41 = [MEMORY[0x277D75348] clearColor];
    [v40 setFillColor:{objc_msgSend(v41, "CGColor")}];

    v42 = CACZWLensOuterColor();
    [v40 setStrokeColor:{objc_msgSend(v42, "CGColor")}];

    [v40 setLineWidth:CACZWLensOuterBorderWidth()];
    v43 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
    [v40 setCompositingFilter:v43];

    [(CACZWLensChromeView *)v4 setLensCornerRadius:13.0];
    v44 = [MEMORY[0x277CD9F90] layer];
    [(CACZWLensChromeView *)v4 setLensResizingHandlesLayer:v44];
    [v44 setOpacity:0.0];
    v45 = CACZWLensInnerColor();
    [v44 setFillColor:{objc_msgSend(v45, "CGColor")}];

    v46 = [MEMORY[0x277CD9EA0] filterWithType:v34];
    [v44 setCompositingFilter:v46];

    v47 = [(CACZWLensChromeView *)v4 layer];
    [v47 addSublayer:v44];

    v48 = [MEMORY[0x277CD9F90] layer];

    [(CACZWLensChromeView *)v4 setTouchStealerShapeLayer:v48];
    LODWORD(v49) = 1.0;
    [v48 setOpacity:v49];
    v50 = [MEMORY[0x277D75348] blackColor];
    v51 = [v50 colorWithAlphaComponent:0.00392156863];
    [v48 setStrokeColor:{objc_msgSend(v51, "CGColor")}];

    v52 = [MEMORY[0x277D75348] clearColor];
    [v48 setFillColor:{objc_msgSend(v52, "CGColor")}];

    [v48 setLineWidth:CACZWZoomLensBorderThicknessForTouches()];
    v53 = [(CACZWLensChromeView *)v4 layer];
    [v53 addSublayer:v48];
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
  v11 = [(CACZWLensChromeView *)self chromeInnerBorderLayer];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(CACZWLensChromeView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(CACZWLensChromeView *)self chromeOuterBorderLayer];
  [v20 setFrame:{v13, v15, v17, v19}];

  [(CACZWLensChromeView *)self bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [(CACZWLensChromeView *)self lensResizingHandlesLayer];
  [v29 setFrame:{v22, v24, v26, v28}];

  [(CACZWLensChromeView *)self bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [(CACZWLensChromeView *)self backdropLayer];
  v39 = [v38 mask];
  [v39 setFrame:{v31, v33, v35, v37}];

  [(CACZWLensChromeView *)self bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = [(CACZWLensChromeView *)self backdropResizingMaskLayer];
  [v48 setFrame:{v41, v43, v45, v47}];

  [(CACZWLensChromeView *)self bounds];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = [(CACZWLensChromeView *)self backdropMaskShapeLayer];
  [v57 setFrame:{v50, v52, v54, v56}];

  [(CACZWLensChromeView *)self bounds];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = [(CACZWLensChromeView *)self touchStealerShapeLayer];
  [v66 setFrame:{v59, v61, v63, v65}];

  v67 = MEMORY[0x277D75208];
  [(CACZWLensChromeView *)self bounds];
  v68 = [v67 bezierPathWithRect:?];
  v69 = [v68 CGPath];
  v70 = [(CACZWLensChromeView *)self touchStealerShapeLayer];
  [v70 setPath:v69];

  [(CACZWLensChromeView *)self bounds];
  v75 = CACZWOuterLensBorderForBounds([(CACZWLensChromeView *)self showingResizeHandles], v71, v72, v73, v74);
  [(CACZWLensChromeView *)self bounds];
  v80 = CACZWInnerLensBorderForBounds([(CACZWLensChromeView *)self showingResizeHandles], v76, v77, v78, v79);
  v81 = [v75 CGPath];
  v82 = [(CACZWLensChromeView *)self chromeOuterBorderLayer];
  [v82 setPath:v81];

  v83 = [v80 CGPath];
  v84 = [(CACZWLensChromeView *)self chromeInnerBorderLayer];
  [v84 setPath:v83];

  [(CACZWLensChromeView *)self bounds];
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v93 = [(CACZWLensChromeView *)self backdropLayer];
  [v93 setFrame:{v86, v88, v90, v92}];

  [(CACZWLensChromeView *)self bounds];
  v98 = CACZWResizeGrabberPath(v94, v95, v96, v97);
  v99 = [v98 CGPath];
  v100 = [(CACZWLensChromeView *)self lensResizingHandlesLayer];
  [v100 setPath:v99];

  [(CACZWLensChromeView *)self bounds];
  v105 = CACZWResizeGrabberPath(v101, v102, v103, v104);
  v106 = [v105 CGPath];
  v107 = [(CACZWLensChromeView *)self backdropResizingMaskLayer];
  [v107 setPath:v106];

  v108 = [MEMORY[0x277D75348] whiteColor];
  v109 = [v108 CGColor];
  v110 = [(CACZWLensChromeView *)self backdropResizingMaskLayer];
  [v110 setFillColor:v109];

  v111 = [MEMORY[0x277D75348] clearColor];
  v112 = [v111 CGColor];
  v113 = [(CACZWLensChromeView *)self backdropResizingMaskLayer];
  [v113 setBackgroundColor:v112];

  v114 = [v80 copy];
  [v114 appendPath:v75];
  v115 = [v114 CGPath];
  v116 = [(CACZWLensChromeView *)self backdropMaskShapeLayer];
  [v116 setPath:v115];

  v117 = [MEMORY[0x277D75348] clearColor];
  v118 = [v117 CGColor];
  v119 = [(CACZWLensChromeView *)self backdropMaskShapeLayer];
  [v119 setFillColor:v118];

  v120 = [MEMORY[0x277D75348] whiteColor];
  v121 = [v120 CGColor];
  v122 = [(CACZWLensChromeView *)self backdropMaskShapeLayer];
  [v122 setStrokeColor:v121];

  v123 = CACZWLensInnerBorderWidth();
  v124 = CACZWLensOuterBorderWidth();
  if (v123 < v124)
  {
    v123 = v124;
  }

  v125 = [(CACZWLensChromeView *)self backdropMaskShapeLayer];
  [v125 setLineWidth:v123];

  v126 = [MEMORY[0x277D75348] clearColor];
  v127 = [v126 CGColor];
  v128 = [(CACZWLensChromeView *)self backdropMaskShapeLayer];
  [v128 setBackgroundColor:v127];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)updateChromeVisibility:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = MEMORY[0x277D75D18];
  v10 = 0.0;
  if (v5)
  {
    v10 = CACZWDefaultFadeAnimationDuration();
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__CACZWLensChromeView_updateChromeVisibility_animated_completion___block_invoke;
  v14[3] = &unk_279CEBF20;
  v14[4] = self;
  v15 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__CACZWLensChromeView_updateChromeVisibility_animated_completion___block_invoke_2;
  v12[3] = &unk_279CEC388;
  v13 = v8;
  v11 = v8;
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

- (void)showLensResizingHandles:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:!v4];
  v7 = [(CACZWLensChromeView *)self lensResizingHandlesLayer];
  v8 = v7;
  if (v5)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (v5)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  [v7 setOpacity:COERCE_DOUBLE(LODWORD(v9))];

  v11 = [(CACZWLensChromeView *)self grabberOverlayLayer];
  *&v12 = v10;
  [v11 setOpacity:v12];

  v13 = [(CACZWLensChromeView *)self backdropResizingMaskLayer];
  *&v14 = v9;
  [v13 setOpacity:v14];

  v15 = [(CACZWLensChromeView *)self backdropGrabberMaskLayer];
  *&v16 = v10;
  [v15 setOpacity:v16];

  [(CACZWLensChromeView *)self setShowingResizeHandles:v5];
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