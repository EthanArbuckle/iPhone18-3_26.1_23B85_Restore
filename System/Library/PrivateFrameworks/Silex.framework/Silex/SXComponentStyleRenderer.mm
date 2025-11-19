@interface SXComponentStyleRenderer
- (SXComponentStyleRenderer)initWithComponentStyle:(id)a3 viewport:(id)a4 imageFillViewFactory:(id)a5 videoFillViewFactory:(id)a6 gradientViewFactory:(id)a7 repeatableImageFillViewFactory:(id)a8;
- (SXComponentView)componentView;
- (id)gradientViewForFill:(id)a3;
- (id)imageViewForFill:(id)a3;
- (id)repeatableImageFillViewForFill:(id)a3;
- (id)videoPlayerViewForFill:(id)a3;
- (id)viewForFill:(id)a3;
- (void)applyBackgroundColor:(id)a3;
- (void)applyBorder:(id)a3;
- (void)applyComponentStyle;
- (void)applyCornerRadius:(double)a3 cornerMask:(unint64_t)a4 curve:(id)a5 onView:(id)a6;
- (void)applyFill:(id)a3;
- (void)applyMask:(id)a3;
- (void)applyOpacity:(double)a3;
- (void)applyShadow:(id)a3;
- (void)applyStrokeStyle:(id)a3 borderLayer:(id)a4 path:(id)a5 lineWidth:(double)a6;
- (void)componentVisiblityStateDidChange:(int64_t)a3;
- (void)dealloc;
- (void)prepareBorder:(id)a3;
- (void)prepareFill:(id)a3;
- (void)prepareForComponentView:(id)a3;
- (void)prepareShadow:(id)a3;
- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4;
- (void)viewport:(id)a3 dynamicBoundsDidChangeFromBounds:(CGRect)a4;
@end

@implementation SXComponentStyleRenderer

- (SXComponentStyleRenderer)initWithComponentStyle:(id)a3 viewport:(id)a4 imageFillViewFactory:(id)a5 videoFillViewFactory:(id)a6 gradientViewFactory:(id)a7 repeatableImageFillViewFactory:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = SXComponentStyleRenderer;
  v18 = [(SXComponentStyleRenderer *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_componentStyle, a3);
    objc_storeStrong(&v19->_viewport, a4);
    objc_storeStrong(&v19->_videoFillViewFactory, a6);
    objc_storeStrong(&v19->_imageFillViewFactory, a5);
    objc_storeStrong(&v19->_gradientFactory, a7);
    objc_storeStrong(&v19->_repeatableImageFillViewFactory, a8);
  }

  return v19;
}

- (void)dealloc
{
  v3 = [(SXComponentStyleRenderer *)self gradientFillView];
  [v3 removeFromSuperview];

  v4 = [(SXComponentStyleRenderer *)self imageFillView];
  [v4 removeFromSuperview];

  v5 = [(SXComponentStyleRenderer *)self videoFillView];
  [v5 removeFromSuperview];

  v6 = [(SXComponentStyleRenderer *)self repeatableImageFillView];
  [v6 removeFromSuperview];

  v7 = [(SXComponentStyleRenderer *)self shadowLayer];
  [v7 removeFromSuperlayer];

  v8 = [(SXComponentStyleRenderer *)self borderLayer];
  [v8 removeFromSuperlayer];

  v9 = [(SXComponentStyleRenderer *)self topBorderLayer];
  [v9 removeFromSuperlayer];

  v10 = [(SXComponentStyleRenderer *)self rightBorderLayer];
  [v10 removeFromSuperlayer];

  v11 = [(SXComponentStyleRenderer *)self bottomBorderLayer];
  [v11 removeFromSuperlayer];

  v12 = [(SXComponentStyleRenderer *)self leftBorderLayer];
  [v12 removeFromSuperlayer];

  v13 = [(SXComponentStyleRenderer *)self componentView];
  [v13 setAlpha:1.0];

  v14 = [(SXComponentStyleRenderer *)self componentView];
  v15 = [v14 backgroundView];
  v16 = [MEMORY[0x1E69DC888] clearColor];
  [v15 setBackgroundColor:v16];

  v17 = *MEMORY[0x1E69796E0];
  v18 = [(SXComponentStyleRenderer *)self componentView];
  v19 = [v18 backgroundView];
  [(SXComponentStyleRenderer *)self applyCornerRadius:11 cornerMask:v17 curve:v19 onView:0.0];

  v20.receiver = self;
  v20.super_class = SXComponentStyleRenderer;
  [(SXComponentStyleRenderer *)&v20 dealloc];
}

- (void)prepareForComponentView:(id)a3
{
  objc_storeWeak(&self->_componentView, a3);
  v4 = [(SXComponentStyleRenderer *)self componentStyle];
  v5 = [v4 shadow];

  if (v5)
  {
    v6 = [(SXComponentStyleRenderer *)self componentStyle];
    v7 = [v6 shadow];
    [(SXComponentStyleRenderer *)self prepareShadow:v7];
  }

  v8 = [(SXComponentStyleRenderer *)self componentStyle];
  v9 = [v8 fill];

  if (v9)
  {
    v10 = [(SXComponentStyleRenderer *)self componentStyle];
    v11 = [v10 fill];
    [(SXComponentStyleRenderer *)self prepareFill:v11];
  }

  v12 = [(SXComponentStyleRenderer *)self componentStyle];
  v13 = [v12 border];
  v14 = [v13 defaultStrokeStyle];

  if (v14)
  {
    v16 = [(SXComponentStyleRenderer *)self componentStyle];
    v15 = [v16 border];
    [(SXComponentStyleRenderer *)self prepareBorder:v15];
  }
}

- (void)applyComponentStyle
{
  v15 = [(SXComponentStyleRenderer *)self componentStyle];
  if (v15)
  {
    v3 = [v15 mask];

    if (v3)
    {
      v4 = [v15 mask];
      [(SXComponentStyleRenderer *)self applyMask:v4];
    }

    v5 = [v15 border];
    v6 = [v5 defaultStrokeStyle];

    if (v6)
    {
      v7 = [v15 border];
      [(SXComponentStyleRenderer *)self applyBorder:v7];
    }

    v8 = [v15 backgroundColor];

    if (v8)
    {
      v9 = [v15 backgroundColor];
      [(SXComponentStyleRenderer *)self applyBackgroundColor:v9];
    }

    [v15 opacity];
    if (v10 != 1.79769313e308)
    {
      [v15 opacity];
      [(SXComponentStyleRenderer *)self applyOpacity:?];
    }

    v11 = [v15 fill];

    if (v11)
    {
      v12 = [v15 fill];
      [(SXComponentStyleRenderer *)self applyFill:v12];
    }

    v13 = [v15 shadow];

    if (v13)
    {
      v14 = [v15 shadow];
      [(SXComponentStyleRenderer *)self applyShadow:v14];
    }
  }
}

- (void)prepareFill:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentStyleRenderer *)self viewForFill:v4];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v73[0] = *MEMORY[0x1E695EFD0];
  v73[1] = v6;
  v73[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v5 setTransform:v73];
  v7 = [(SXComponentStyleRenderer *)self componentStyle];
  v8 = [v7 fill];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = v4;
    v11 = [(SXComponentStyleRenderer *)self componentView];
    v12 = [v11 unitConverter];

    v13 = [v10 width];
    [v12 convertValueToPoints:{v13, v14}];
    v16 = v15;
    v17 = [v10 height];
    v19 = v18;

    [v12 convertValueToPoints:{v17, v19}];
    v21 = v20;
    v22 = [(SXComponentStyleRenderer *)self repeatableImageFillView];
    [v22 setPatternSize:{v16, v21}];
  }

  v23 = [(SXComponentStyleRenderer *)self componentView];
  v24 = [v23 backgroundView];
  [v24 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [(SXComponentStyleRenderer *)self componentView];
  [v33 borderInsets];
  v35 = v34;
  v37 = v36;
  v39 = v30 - (v36 + v38);
  v41 = v32 - (v34 + v40);

  v71 = v41;
  v72 = v39;
  if ([v4 attachment] == 1)
  {
    v42 = [(SXComponentStyleRenderer *)self viewport];
    [v42 bounds];
    v39 = v43;
    v41 = v44;
  }

  v45 = v26 + v37;
  v46 = v28 + v35;
  [v5 fillFrameWithBoundingSize:{v39, v41}];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  if ([v4 attachment] == 1)
  {
    v55 = [(SXComponentStyleRenderer *)self viewport];
    v56 = [(SXComponentStyleRenderer *)self componentView];
    [v55 convertPointToViewportCoordinateSpace:v56 fromView:{v45, v46}];
    v58 = v57;
    v70 = v59;

    v48 = v48 - v58;
    v60 = [v4 verticalAlignment];
    switch(v60)
    {
      case 2:
        v50 = v41 - v70 - v54;
        break;
      case 1:
        v50 = (v41 - v54) * 0.5 - v70;
        break;
      case 0:
        v50 = -v70;
        break;
    }
  }

  [v5 setFrame:{v45, v46, v72, v71}];
  [v5 setContentFrame:{v48, v50, v52, v54}];
  [v5 setOriginalFrame:{v48, v50, v52, v54}];
  v61 = [(SXComponentStyleRenderer *)self componentView];
  [v61 setFillView:v5];

  v62 = [(SXComponentStyleRenderer *)self componentView];
  v63 = [v62 backgroundView];
  v64 = [(SXComponentStyleRenderer *)self componentView];
  v65 = [v64 contentView];
  [v63 insertSubview:v5 belowSubview:v65];

  v66 = [(SXComponentStyleRenderer *)self componentStyle];
  v67 = [v66 fill];
  if ([v67 attachment] == 1)
  {
    v68 = [(SXComponentStyleRenderer *)self didRegisterForDynamicBounds];

    if (!v68)
    {
      v69 = [(SXComponentStyleRenderer *)self viewport];
      [v69 addViewportChangeListener:self forOptions:2];

      [(SXComponentStyleRenderer *)self setDidRegisterForDynamicBounds:1];
    }
  }

  else
  {
  }
}

- (void)prepareBorder:(id)a3
{
  v57 = a3;
  v4 = [v57 defaultStrokeStyle];
  if (v4)
  {
    v5 = v4;
    v6 = [(SXComponentStyleRenderer *)self borderLayer];

    if (!v6)
    {
      v7 = +[SXShapeLayer layer];
      [(SXComponentStyleRenderer *)self setBorderLayer:v7];

      v8 = [(SXComponentStyleRenderer *)self borderLayer];
      v9 = [MEMORY[0x1E69DC888] clearColor];
      [v8 setFillColor:{objc_msgSend(v9, "CGColor")}];

      v10 = [(SXComponentStyleRenderer *)self borderLayer];
      [v10 setMasksToBounds:1];
    }
  }

  v11 = [v57 top];
  if (v11)
  {
    v12 = v11;
    v13 = [(SXComponentStyleRenderer *)self topBorderLayer];

    if (!v13)
    {
      v14 = +[SXShapeLayer layer];
      [(SXComponentStyleRenderer *)self setTopBorderLayer:v14];

      v15 = [(SXComponentStyleRenderer *)self topBorderLayer];
      v16 = [MEMORY[0x1E69DC888] clearColor];
      [v15 setFillColor:{objc_msgSend(v16, "CGColor")}];

      v17 = [(SXComponentStyleRenderer *)self topBorderLayer];
      [v17 setMasksToBounds:1];
    }
  }

  v18 = [v57 right];
  if (v18)
  {
    v19 = v18;
    v20 = [(SXComponentStyleRenderer *)self rightBorderLayer];

    if (!v20)
    {
      v21 = +[SXShapeLayer layer];
      [(SXComponentStyleRenderer *)self setRightBorderLayer:v21];

      v22 = [(SXComponentStyleRenderer *)self rightBorderLayer];
      v23 = [MEMORY[0x1E69DC888] clearColor];
      [v22 setFillColor:{objc_msgSend(v23, "CGColor")}];

      v24 = [(SXComponentStyleRenderer *)self rightBorderLayer];
      [v24 setMasksToBounds:1];
    }
  }

  v25 = [v57 bottom];
  if (v25)
  {
    v26 = v25;
    v27 = [(SXComponentStyleRenderer *)self bottomBorderLayer];

    if (!v27)
    {
      v28 = +[SXShapeLayer layer];
      [(SXComponentStyleRenderer *)self setBottomBorderLayer:v28];

      v29 = [(SXComponentStyleRenderer *)self bottomBorderLayer];
      v30 = [MEMORY[0x1E69DC888] clearColor];
      [v29 setFillColor:{objc_msgSend(v30, "CGColor")}];

      v31 = [(SXComponentStyleRenderer *)self bottomBorderLayer];
      [v31 setMasksToBounds:1];
    }
  }

  v32 = [v57 left];
  if (v32)
  {
    v33 = v32;
    v34 = [(SXComponentStyleRenderer *)self leftBorderLayer];

    if (!v34)
    {
      v35 = +[SXShapeLayer layer];
      [(SXComponentStyleRenderer *)self setLeftBorderLayer:v35];

      v36 = [(SXComponentStyleRenderer *)self leftBorderLayer];
      v37 = [MEMORY[0x1E69DC888] clearColor];
      [v36 setFillColor:{objc_msgSend(v37, "CGColor")}];

      v38 = [(SXComponentStyleRenderer *)self leftBorderLayer];
      [v38 setMasksToBounds:1];
    }
  }

  v39 = [(SXComponentStyleRenderer *)self borderLayer];
  v40 = [(SXComponentStyleRenderer *)self componentView];
  v41 = [v40 backgroundView];
  [v41 bounds];
  [v39 setFrame:?];

  v42 = [(SXComponentStyleRenderer *)self componentView];
  v43 = [v42 backgroundView];
  v44 = [v43 layer];
  v45 = [(SXComponentStyleRenderer *)self borderLayer];
  v46 = [(SXComponentStyleRenderer *)self componentView];
  v47 = [v46 contentView];
  v48 = [v47 layer];
  [v44 insertSublayer:v45 above:v48];

  v49 = [(SXComponentStyleRenderer *)self borderLayer];
  v50 = [(SXComponentStyleRenderer *)self topBorderLayer];
  [v49 addSublayer:v50];

  v51 = [(SXComponentStyleRenderer *)self borderLayer];
  v52 = [(SXComponentStyleRenderer *)self rightBorderLayer];
  [v51 addSublayer:v52];

  v53 = [(SXComponentStyleRenderer *)self borderLayer];
  v54 = [(SXComponentStyleRenderer *)self bottomBorderLayer];
  [v53 addSublayer:v54];

  v55 = [(SXComponentStyleRenderer *)self borderLayer];
  v56 = [(SXComponentStyleRenderer *)self leftBorderLayer];
  [v55 addSublayer:v56];
}

- (void)prepareShadow:(id)a3
{
  v4 = [(SXComponentStyleRenderer *)self shadowLayer];

  if (!v4)
  {
    v5 = +[SXLayer layer];
    [(SXComponentStyleRenderer *)self setShadowLayer:v5];
  }

  v6 = [(SXComponentStyleRenderer *)self shadowLayer];
  v7 = [(SXComponentStyleRenderer *)self componentView];
  v8 = [v7 backgroundView];
  [v8 frame];
  [v6 setFrame:?];

  v14 = [(SXComponentStyleRenderer *)self componentView];
  v9 = [v14 layer];
  v10 = [(SXComponentStyleRenderer *)self shadowLayer];
  v11 = [(SXComponentStyleRenderer *)self componentView];
  v12 = [v11 backgroundView];
  v13 = [v12 layer];
  [v9 insertSublayer:v10 below:v13];
}

- (void)applyBackgroundColor:(id)a3
{
  v4 = a3;
  v6 = [(SXComponentStyleRenderer *)self componentView];
  v5 = [v6 backgroundView];
  [v5 setBackgroundColor:v4];
}

- (void)applyFill:(id)a3
{
  v4 = a3;
  v9 = [(SXComponentStyleRenderer *)self viewForFill:v4];
  [v9 load];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(SXComponentStyleRenderer *)self componentView];
    v7 = [v6 visibilityState];

    if (v7 == 1)
    {
      v8 = [(SXComponentStyleRenderer *)self videoFillView];
      [v8 play];
    }
  }
}

- (void)applyOpacity:(double)a3
{
  v4 = [(SXComponentStyleRenderer *)self componentView];
  [v4 setAlpha:a3];
}

- (void)applyBorder:(id)a3
{
  v131 = a3;
  v4 = [(SXComponentStyleRenderer *)self componentView];
  v5 = [v4 backgroundView];
  [v5 bounds];
  v127 = v7;
  v128 = v6;
  v129 = v8;
  v130 = v9;

  v10 = [(SXComponentStyleRenderer *)self componentView];
  v11 = [v10 backgroundView];
  v12 = [v11 layer];
  [v12 cornerRadius];
  v14 = v13;

  v15 = [(SXComponentStyleRenderer *)self componentView];
  v16 = [v15 backgroundView];
  v17 = [v16 layer];
  v18 = [v17 maskedCorners];

  v19 = [(SXComponentStyleRenderer *)self componentView];
  v20 = [v19 backgroundView];
  v21 = [v20 layer];
  v22 = [v21 cornerCurve];
  v23 = *MEMORY[0x1E69796E8];

  v24 = 0.0;
  if (v18)
  {
    v25 = v14;
  }

  else
  {
    v25 = 0.0;
  }

  if ((v18 & 2) != 0)
  {
    v26 = v14;
  }

  else
  {
    v26 = 0.0;
  }

  if ((v18 & 8) != 0)
  {
    v27 = v14;
  }

  else
  {
    v27 = 0.0;
  }

  if ((v18 & 4) != 0)
  {
    v24 = v14;
  }

  v122 = v24;
  v123 = v25;
  v28 = [(SXComponentStyleRenderer *)self componentView];
  v29 = [v28 unitConverter];

  v30 = [v131 all];
  v31 = [v131 top];
  v32 = [v131 right];
  v33 = [v131 bottom];
  v34 = [v131 left];
  v124 = v23;
  if (v30)
  {
    v35 = [v30 width];
    [v29 convertValueToPoints:{v35, v36}];
    if (v37 > 0.0)
    {
      v38 = v37;
      v39 = v22 == v23;
      v116 = v26;
      v40 = v37 * 0.5;
      v112 = fmax(v14 - v37 * 0.5, 0.0);
      [v131 left];
      v41 = v118 = v22;

      if (v41)
      {
        v42 = -(v38 * 0.5);
      }

      else
      {
        v42 = v40;
      }

      v43 = [v131 top];

      if (v43)
      {
        v44 = -(v38 * 0.5);
      }

      else
      {
        v44 = v40;
      }

      v45 = [v131 right];

      if (v45)
      {
        v46 = -(v38 * 0.5);
      }

      else
      {
        v46 = v40;
      }

      v47 = [v131 bottom];

      if (v47)
      {
        v48 = -(v38 * 0.5);
      }

      else
      {
        v48 = v40;
      }

      v26 = v116;
      v49 = [MEMORY[0x1E69DC728] sx_bezierPathWithRect:v18 & 0xF byRoundingCorners:v39 cornerRadius:v128 + v42 continuousCorners:{v127 + v44, v129 - (v42 + v46), v130 - (v44 + v48), v112}];
      v50 = [(SXComponentStyleRenderer *)self borderLayer];
      [(SXComponentStyleRenderer *)self applyStrokeStyle:v30 borderLayer:v50 path:v49 lineWidth:v38];

      v23 = v124;
      v22 = v118;
    }
  }

  if (v31)
  {
    v51 = [v31 width];
    [v29 convertValueToPoints:{v51, v52}];
    if (v53 > 0.0)
    {
      v54 = v53;
      v119 = v22;
      v55 = v22 == v23;
      v56 = v53 * 0.5;
      v107 = -(v53 * 0.5);
      v109 = fmax(v14 - v53 * 0.5, 0.0);
      v57 = v123;
      if (v123 < v26)
      {
        v57 = v26;
      }

      if (v54 >= v57)
      {
        v57 = v54;
      }

      v106 = v57;
      v133.origin.x = v128;
      v133.origin.y = v127;
      v133.size.width = v129;
      v133.size.height = v130;
      Width = CGRectGetWidth(v133);
      [(SXComponentStyleRenderer *)self topBorderLayer];
      v113 = v29;
      v60 = v59 = v23;
      [v60 setFrame:{0.0, 0.0, Width, v106}];

      v61 = [MEMORY[0x1E69DC728] sx_bezierPathWithRect:v18 & 0xF byRoundingCorners:v55 cornerRadius:v128 - v56 continuousCorners:{v127 + v56, v129 - (v107 - v56), v130 - (v56 - v56), v109}];
      v62 = [(SXComponentStyleRenderer *)self topBorderLayer];
      [(SXComponentStyleRenderer *)self applyStrokeStyle:v31 borderLayer:v62 path:v61 lineWidth:v54];

      v23 = v59;
      v29 = v113;

      v22 = v119;
    }
  }

  if (v32)
  {
    v63 = [v32 width];
    [v29 convertValueToPoints:{v63, v64}];
    if (v65 > 0.0)
    {
      v66 = v65;
      v67 = v22 == v23;
      v68 = v65 * 0.5;
      v110 = -(v65 * 0.5);
      v114 = fmax(v14 - v65 * 0.5, 0.0);
      if (v26 >= v27)
      {
        v69 = v26;
      }

      else
      {
        v69 = v27;
      }

      if (v66 >= v69)
      {
        v70 = v66;
      }

      else
      {
        v70 = v69;
      }

      v134.origin.x = v128;
      v134.origin.y = v127;
      v134.size.width = v129;
      v134.size.height = v130;
      v108 = CGRectGetWidth(v134) - v70;
      v135.origin.x = v128;
      v135.origin.y = v127;
      v135.size.width = v129;
      v135.size.height = v130;
      Height = CGRectGetHeight(v135);
      [(SXComponentStyleRenderer *)self rightBorderLayer];
      v120 = v34;
      v72 = v33;
      v73 = v31;
      v74 = v30;
      v76 = v75 = v22;
      [v76 setFrame:{v108, 0.0, v70, Height}];

      v136.origin.x = v128;
      v136.origin.y = v127;
      v136.size.width = v129;
      v136.size.height = v130;
      v77 = [MEMORY[0x1E69DC728] sx_bezierPathWithRect:v18 & 0xF byRoundingCorners:v67 cornerRadius:v70 - CGRectGetWidth(v136) - v68 continuousCorners:{v127 - v68, v129 - (v68 - v68), v130 - (v110 - v68), v114}];
      v78 = [(SXComponentStyleRenderer *)self rightBorderLayer];
      [(SXComponentStyleRenderer *)self applyStrokeStyle:v32 borderLayer:v78 path:v77 lineWidth:v66];

      v23 = v124;
      v22 = v75;
      v30 = v74;
      v31 = v73;
      v33 = v72;
      v34 = v120;
    }
  }

  if (v33)
  {
    v79 = [v33 width];
    [v29 convertValueToPoints:{v79, v80}];
    if (v81 > 0.0)
    {
      v82 = v81;
      v83 = v22 == v23;
      v84 = v81 * 0.5;
      v115 = -(v81 * 0.5);
      v117 = fmax(v14 - v81 * 0.5, 0.0);
      v85 = v122;
      if (v122 < v27)
      {
        v85 = v27;
      }

      if (v82 >= v85)
      {
        v86 = v82;
      }

      else
      {
        v86 = v85;
      }

      v137.origin.x = v128;
      v137.origin.y = v127;
      v137.size.width = v129;
      v137.size.height = v130;
      v111 = CGRectGetHeight(v137) - v86;
      v138.origin.x = v128;
      v138.origin.y = v127;
      v138.size.width = v129;
      v138.size.height = v130;
      v87 = CGRectGetWidth(v138);
      [(SXComponentStyleRenderer *)self bottomBorderLayer];
      v121 = v32;
      v88 = v31;
      v89 = v30;
      v91 = v90 = v22;
      [v91 setFrame:{0.0, v111, v87, v86}];

      v139.origin.x = v128;
      v139.origin.y = v127;
      v139.size.width = v129;
      v139.size.height = v130;
      v92 = [MEMORY[0x1E69DC728] sx_bezierPathWithRect:v18 & 0xF byRoundingCorners:v83 cornerRadius:v128 - v84 continuousCorners:{v86 - CGRectGetHeight(v139) - v84, v129 - (v115 - v84), v130 - (v84 - v84), v117}];
      v93 = [(SXComponentStyleRenderer *)self bottomBorderLayer];
      [(SXComponentStyleRenderer *)self applyStrokeStyle:v33 borderLayer:v93 path:v92 lineWidth:v82];

      v23 = v124;
      v22 = v90;
      v30 = v89;
      v31 = v88;
      v32 = v121;
    }
  }

  if (v34)
  {
    v94 = [v34 width];
    [v29 convertValueToPoints:{v94, v95}];
    if (v96 > 0.0)
    {
      v97 = v96;
      v98 = v22 == v23;
      v99 = v96 * 0.5;
      v125 = -(v96 * 0.5);
      v126 = fmax(v14 - v96 * 0.5, 0.0);
      v100 = v123;
      if (v123 < v122)
      {
        v100 = v122;
      }

      if (v97 >= v100)
      {
        v101 = v97;
      }

      else
      {
        v101 = v100;
      }

      v140.origin.x = v128;
      v140.origin.y = v127;
      v140.size.width = v129;
      v140.size.height = v130;
      v102 = CGRectGetHeight(v140);
      v103 = [(SXComponentStyleRenderer *)self leftBorderLayer];
      [v103 setFrame:{0.0, 0.0, v101, v102}];

      v104 = [MEMORY[0x1E69DC728] sx_bezierPathWithRect:v18 & 0xF byRoundingCorners:v98 cornerRadius:v128 + v99 continuousCorners:{v127 - v99, v129 - (v99 - v99), v130 - (v125 - v99), v126}];
      v105 = [(SXComponentStyleRenderer *)self leftBorderLayer];
      [(SXComponentStyleRenderer *)self applyStrokeStyle:v34 borderLayer:v105 path:v104 lineWidth:v97];
    }
  }
}

- (void)applyStrokeStyle:(id)a3 borderLayer:(id)a4 path:(id)a5 lineWidth:(double)a6
{
  v25[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 color];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x1E69DC888] blackColor];
  }

  v15 = v14;

  [v10 setLineWidth:a6];
  [v10 setStrokeColor:{objc_msgSend(v15, "CGColor")}];
  v16 = [v11 CGPath];

  [v10 setPath:v16];
  v17 = *MEMORY[0x1E6979E80];
  [v10 setLineCap:*MEMORY[0x1E6979E80]];
  if ([v9 style] == 2)
  {
    v18 = a6 + a6;
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
    v25[0] = v19;
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
    v25[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    [v10 setLineDashPattern:v21];

LABEL_8:
    [v10 setLineCap:v17];
    goto LABEL_9;
  }

  if ([v9 style] == 3)
  {
    v24[0] = &unk_1F538A280;
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:a6 + a6];
    v24[1] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    [v10 setLineDashPattern:v23];

    v17 = *MEMORY[0x1E6979E78];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)applyMask:(id)a3
{
  v25 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = COERCE_DOUBLE([v25 radius]);
    if (v4 > 0.0 && (([v25 topLeft] & 1) != 0 || (objc_msgSend(v25, "topRight") & 1) != 0 || (objc_msgSend(v25, "bottomRight") & 1) != 0 || objc_msgSend(v25, "bottomLeft")))
    {
      v5 = [(SXComponentStyleRenderer *)self componentView];
      v6 = [v5 unitConverter];
      v7 = [v25 radius];
      [v6 convertValueToPoints:{v7, v8}];
      v10 = v9;

      v11 = [(SXComponentStyleRenderer *)self componentView];
      v12 = [v11 contentView];
      [v12 frame];
      v14 = v13;

      v15 = [(SXComponentStyleRenderer *)self componentView];
      v16 = [v15 contentView];
      [v16 frame];
      v18 = v17;

      if (v14 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v14;
      }

      v20 = v19 * 0.5;
      if (v10 >= v20)
      {
        v10 = v20;
      }

      v21 = [v25 cornerMask];
      v22 = [v25 curve];
      v23 = [(SXComponentStyleRenderer *)self componentView];
      v24 = [v23 backgroundView];
      [(SXComponentStyleRenderer *)self applyCornerRadius:v21 cornerMask:v22 curve:v24 onView:v10];
    }
  }
}

- (void)applyShadow:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentStyleRenderer *)self componentView];
  v54 = [v5 unitConverter];

  v6 = [v4 radius];
  [v54 convertValueToPoints:{v6, v7}];
  v9 = v8;
  v10 = [v4 offset];
  v11 = [v10 x];
  [v54 convertValueToPoints:v11 allowNegativeValues:{v12, 1}];
  v14 = v13;

  v15 = [v4 offset];
  v16 = [v15 y];
  [v54 convertValueToPoints:v16 allowNegativeValues:{v17, 1}];
  v19 = v18;

  v20 = [(SXComponentStyleRenderer *)self shadowLayer];
  [v20 setShadowRadius:v9];

  v21 = [(SXComponentStyleRenderer *)self shadowLayer];
  v22 = [v4 color];
  [v21 setShadowColor:{objc_msgSend(v22, "CGColor")}];

  v23 = [(SXComponentStyleRenderer *)self shadowLayer];
  [v4 opacity];
  v25 = v24;

  *&v26 = v25;
  [v23 setShadowOpacity:v26];

  v27 = [(SXComponentStyleRenderer *)self shadowLayer];
  [v27 setShadowOffset:{v14, v19}];

  v28 = [(SXComponentStyleRenderer *)self componentView];
  v29 = [v28 backgroundView];
  v30 = [v29 layer];
  [v30 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = [(SXComponentStyleRenderer *)self componentView];
  v40 = [v39 backgroundView];
  v41 = [v40 layer];
  LOBYTE(v28) = [v41 maskedCorners];

  v42 = [(SXComponentStyleRenderer *)self componentView];
  v43 = [v42 backgroundView];
  v44 = [v43 layer];
  [v44 cornerRadius];
  v46 = v45;

  v47 = [(SXComponentStyleRenderer *)self componentView];
  v48 = [v47 backgroundView];
  v49 = [v48 layer];
  v50 = [v49 cornerCurve];
  v51 = v50 == *MEMORY[0x1E69796E8];

  v52 = [MEMORY[0x1E69DC728] sx_bezierPathWithRect:v28 & 0xF byRoundingCorners:v51 cornerRadius:v32 continuousCorners:{v34, v36, v38, v46}];
  v53 = [(SXComponentStyleRenderer *)self shadowLayer];
  [v53 setShadowPath:{objc_msgSend(v52, "CGPath")}];
}

- (void)componentVisiblityStateDidChange:(int64_t)a3
{
  v5 = [(SXComponentStyleRenderer *)self videoFillView];
  if (v5 || ([(SXComponentStyleRenderer *)self imageFillView], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || ([(SXComponentStyleRenderer *)self gradientFillView], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v21 = [(SXComponentStyleRenderer *)self repeatableImageFillView];

    if (!v21)
    {
      return;
    }
  }

  v6 = [(SXComponentStyleRenderer *)self componentView];
  v7 = [v6 visibilityState];

  if (a3 == 1 || v7 != 1)
  {
    v10 = [(SXComponentStyleRenderer *)self componentView];
    if ([v10 visibilityState] == 2)
    {
    }

    else
    {
      v11 = [(SXComponentStyleRenderer *)self componentView];
      v12 = [v11 visibilityState];

      if (v12)
      {
        return;
      }
    }

    v13 = [(SXComponentStyleRenderer *)self videoFillView];

    if (v13)
    {
      v14 = [(SXComponentStyleRenderer *)self componentStyle];
      v23 = [v14 fill];

      if (([v23 loop] & 1) == 0)
      {
        v15 = [(SXComponentStyleRenderer *)self videoFillView];
        [v15 reset];
      }

      v16 = [(SXComponentStyleRenderer *)self videoFillView];
      [v16 pause];
    }

    else
    {
      v18 = [(SXComponentStyleRenderer *)self imageFillView];

      if (v18)
      {
        v19 = [(SXComponentStyleRenderer *)self imageFillView];
      }

      else
      {
        v22 = [(SXComponentStyleRenderer *)self repeatableImageFillView];

        if (!v22)
        {
          return;
        }

        v19 = [(SXComponentStyleRenderer *)self repeatableImageFillView];
      }

      v23 = v19;
      [v19 pause];
    }
  }

  else
  {
    v8 = [(SXComponentStyleRenderer *)self videoFillView];

    if (v8)
    {
      v9 = [(SXComponentStyleRenderer *)self videoFillView];
    }

    else
    {
      v17 = [(SXComponentStyleRenderer *)self imageFillView];

      if (v17)
      {
        v9 = [(SXComponentStyleRenderer *)self imageFillView];
      }

      else
      {
        v20 = [(SXComponentStyleRenderer *)self repeatableImageFillView];

        if (!v20)
        {
          return;
        }

        v9 = [(SXComponentStyleRenderer *)self repeatableImageFillView];
      }
    }

    v23 = v9;
    [v9 play];
  }
}

- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4
{
  v10 = a3;
  v6 = [v10 appearState];
  if (a4 == 2 && v6 != 2)
  {
    v7 = [(SXComponentStyleRenderer *)self videoFillView];
    [v7 pause];
LABEL_4:

    goto LABEL_8;
  }

  if ([v10 appearState] == 2)
  {
    v8 = [(SXComponentStyleRenderer *)self componentView];
    v9 = [v8 visibilityState];

    if (v9 == 1)
    {
      v7 = [(SXComponentStyleRenderer *)self videoFillView];
      [v7 play];
      goto LABEL_4;
    }
  }

LABEL_8:
}

- (void)viewport:(id)a3 dynamicBoundsDidChangeFromBounds:(CGRect)a4
{
  v31 = a3;
  v5 = [(SXComponentStyleRenderer *)self componentView];
  v6 = [v5 fillView];
  [v6 contentFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(SXComponentStyleRenderer *)self componentView];
  v16 = [v15 fillView];
  [v16 frame];
  v18 = v17;
  v20 = v19;
  v21 = [(SXComponentStyleRenderer *)self componentView];
  [v31 convertPointToViewportCoordinateSpace:v21 fromView:{v18, v20}];
  v23 = v22;

  v24 = [(SXComponentStyleRenderer *)self componentStyle];
  v25 = [v24 fill];
  v26 = [v25 verticalAlignment];

  switch(v26)
  {
    case 2:
      [v31 bounds];
      v10 = v28 - v23 - v14;
      break;
    case 1:
      [v31 bounds];
      v10 = (v27 - v14) * 0.5 - v23;
      break;
    case 0:
      v10 = -v23;
      break;
  }

  v29 = [(SXComponentStyleRenderer *)self componentView];
  v30 = [v29 fillView];
  [v30 setContentFrame:{v8, v10, v12, v14}];
}

- (void)applyCornerRadius:(double)a3 cornerMask:(unint64_t)a4 curve:(id)a5 onView:(id)a6
{
  v9 = a3 > 0.0;
  v10 = a6;
  v11 = a5;
  [v10 setClipsToBounds:v9];
  v12 = [v10 layer];
  [v12 setMaskedCorners:a4];

  v13 = [v10 layer];
  [v13 setCornerRadius:a3];

  v14 = [v10 layer];

  [v14 setCornerCurve:v11];
}

- (id)viewForFill:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXComponentStyleRenderer *)self videoPlayerViewForFill:v4];
LABEL_9:
    v6 = v5;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXComponentStyleRenderer *)self imageViewForFill:v4];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXComponentStyleRenderer *)self gradientViewForFill:v4];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXComponentStyleRenderer *)self repeatableImageFillViewForFill:v4];
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (id)gradientViewForFill:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentStyleRenderer *)self gradientFillView];
  if (!v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    v6 = v4;
    v7 = [SXGradientFillView alloc];
    v8 = [(SXComponentStyleRenderer *)self gradientFactory];
    v5 = [(SXGradientFillView *)v7 initWithGradientFill:v6 gradientFactory:v8];

    [(SXComponentStyleRenderer *)self setGradientFillView:v5];
  }

LABEL_5:
  v9 = [(SXComponentStyleRenderer *)self gradientFillView];

  return v9;
}

- (id)imageViewForFill:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentStyleRenderer *)self imageFillView];

  if (!v5)
  {
    v6 = [(SXComponentStyleRenderer *)self imageFillViewFactory];
    v7 = [v6 createImageFillViewForImageFill:v4];
    [(SXComponentStyleRenderer *)self setImageFillView:v7];
  }

  v8 = [(SXComponentStyleRenderer *)self imageFillView];

  return v8;
}

- (id)videoPlayerViewForFill:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentStyleRenderer *)self videoFillView];

  if (!v5)
  {
    v6 = [(SXComponentStyleRenderer *)self videoFillViewFactory];
    v7 = [v6 createVideoFillViewForVideoFill:v4];
    [(SXComponentStyleRenderer *)self setVideoFillView:v7];

    v8 = [(SXComponentStyleRenderer *)self viewport];
    [v8 addViewportChangeListener:self forOptions:8];
  }

  v9 = [(SXComponentStyleRenderer *)self videoFillView];

  return v9;
}

- (id)repeatableImageFillViewForFill:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentStyleRenderer *)self repeatableImageFillView];

  if (!v5)
  {
    v6 = [(SXComponentStyleRenderer *)self repeatableImageFillViewFactory];
    v7 = [v6 createRepeatableImageFillViewForRepeatableImageFill:v4];
    [(SXComponentStyleRenderer *)self setRepeatableImageFillView:v7];
  }

  v8 = [(SXComponentStyleRenderer *)self repeatableImageFillView];

  return v8;
}

- (SXComponentView)componentView
{
  WeakRetained = objc_loadWeakRetained(&self->_componentView);

  return WeakRetained;
}

@end