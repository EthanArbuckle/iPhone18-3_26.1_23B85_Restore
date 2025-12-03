@interface SXComponentStyleRenderer
- (SXComponentStyleRenderer)initWithComponentStyle:(id)style viewport:(id)viewport imageFillViewFactory:(id)factory videoFillViewFactory:(id)viewFactory gradientViewFactory:(id)gradientViewFactory repeatableImageFillViewFactory:(id)fillViewFactory;
- (SXComponentView)componentView;
- (id)gradientViewForFill:(id)fill;
- (id)imageViewForFill:(id)fill;
- (id)repeatableImageFillViewForFill:(id)fill;
- (id)videoPlayerViewForFill:(id)fill;
- (id)viewForFill:(id)fill;
- (void)applyBackgroundColor:(id)color;
- (void)applyBorder:(id)border;
- (void)applyComponentStyle;
- (void)applyCornerRadius:(double)radius cornerMask:(unint64_t)mask curve:(id)curve onView:(id)view;
- (void)applyFill:(id)fill;
- (void)applyMask:(id)mask;
- (void)applyOpacity:(double)opacity;
- (void)applyShadow:(id)shadow;
- (void)applyStrokeStyle:(id)style borderLayer:(id)layer path:(id)path lineWidth:(double)width;
- (void)componentVisiblityStateDidChange:(int64_t)change;
- (void)dealloc;
- (void)prepareBorder:(id)border;
- (void)prepareFill:(id)fill;
- (void)prepareForComponentView:(id)view;
- (void)prepareShadow:(id)shadow;
- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state;
- (void)viewport:(id)viewport dynamicBoundsDidChangeFromBounds:(CGRect)bounds;
@end

@implementation SXComponentStyleRenderer

- (SXComponentStyleRenderer)initWithComponentStyle:(id)style viewport:(id)viewport imageFillViewFactory:(id)factory videoFillViewFactory:(id)viewFactory gradientViewFactory:(id)gradientViewFactory repeatableImageFillViewFactory:(id)fillViewFactory
{
  styleCopy = style;
  viewportCopy = viewport;
  factoryCopy = factory;
  viewFactoryCopy = viewFactory;
  gradientViewFactoryCopy = gradientViewFactory;
  fillViewFactoryCopy = fillViewFactory;
  v24.receiver = self;
  v24.super_class = SXComponentStyleRenderer;
  v18 = [(SXComponentStyleRenderer *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_componentStyle, style);
    objc_storeStrong(&v19->_viewport, viewport);
    objc_storeStrong(&v19->_videoFillViewFactory, viewFactory);
    objc_storeStrong(&v19->_imageFillViewFactory, factory);
    objc_storeStrong(&v19->_gradientFactory, gradientViewFactory);
    objc_storeStrong(&v19->_repeatableImageFillViewFactory, fillViewFactory);
  }

  return v19;
}

- (void)dealloc
{
  gradientFillView = [(SXComponentStyleRenderer *)self gradientFillView];
  [gradientFillView removeFromSuperview];

  imageFillView = [(SXComponentStyleRenderer *)self imageFillView];
  [imageFillView removeFromSuperview];

  videoFillView = [(SXComponentStyleRenderer *)self videoFillView];
  [videoFillView removeFromSuperview];

  repeatableImageFillView = [(SXComponentStyleRenderer *)self repeatableImageFillView];
  [repeatableImageFillView removeFromSuperview];

  shadowLayer = [(SXComponentStyleRenderer *)self shadowLayer];
  [shadowLayer removeFromSuperlayer];

  borderLayer = [(SXComponentStyleRenderer *)self borderLayer];
  [borderLayer removeFromSuperlayer];

  topBorderLayer = [(SXComponentStyleRenderer *)self topBorderLayer];
  [topBorderLayer removeFromSuperlayer];

  rightBorderLayer = [(SXComponentStyleRenderer *)self rightBorderLayer];
  [rightBorderLayer removeFromSuperlayer];

  bottomBorderLayer = [(SXComponentStyleRenderer *)self bottomBorderLayer];
  [bottomBorderLayer removeFromSuperlayer];

  leftBorderLayer = [(SXComponentStyleRenderer *)self leftBorderLayer];
  [leftBorderLayer removeFromSuperlayer];

  componentView = [(SXComponentStyleRenderer *)self componentView];
  [componentView setAlpha:1.0];

  componentView2 = [(SXComponentStyleRenderer *)self componentView];
  backgroundView = [componentView2 backgroundView];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [backgroundView setBackgroundColor:clearColor];

  v17 = *MEMORY[0x1E69796E0];
  componentView3 = [(SXComponentStyleRenderer *)self componentView];
  backgroundView2 = [componentView3 backgroundView];
  [(SXComponentStyleRenderer *)self applyCornerRadius:11 cornerMask:v17 curve:backgroundView2 onView:0.0];

  v20.receiver = self;
  v20.super_class = SXComponentStyleRenderer;
  [(SXComponentStyleRenderer *)&v20 dealloc];
}

- (void)prepareForComponentView:(id)view
{
  objc_storeWeak(&self->_componentView, view);
  componentStyle = [(SXComponentStyleRenderer *)self componentStyle];
  shadow = [componentStyle shadow];

  if (shadow)
  {
    componentStyle2 = [(SXComponentStyleRenderer *)self componentStyle];
    shadow2 = [componentStyle2 shadow];
    [(SXComponentStyleRenderer *)self prepareShadow:shadow2];
  }

  componentStyle3 = [(SXComponentStyleRenderer *)self componentStyle];
  fill = [componentStyle3 fill];

  if (fill)
  {
    componentStyle4 = [(SXComponentStyleRenderer *)self componentStyle];
    fill2 = [componentStyle4 fill];
    [(SXComponentStyleRenderer *)self prepareFill:fill2];
  }

  componentStyle5 = [(SXComponentStyleRenderer *)self componentStyle];
  border = [componentStyle5 border];
  defaultStrokeStyle = [border defaultStrokeStyle];

  if (defaultStrokeStyle)
  {
    componentStyle6 = [(SXComponentStyleRenderer *)self componentStyle];
    border2 = [componentStyle6 border];
    [(SXComponentStyleRenderer *)self prepareBorder:border2];
  }
}

- (void)applyComponentStyle
{
  componentStyle = [(SXComponentStyleRenderer *)self componentStyle];
  if (componentStyle)
  {
    mask = [componentStyle mask];

    if (mask)
    {
      mask2 = [componentStyle mask];
      [(SXComponentStyleRenderer *)self applyMask:mask2];
    }

    border = [componentStyle border];
    defaultStrokeStyle = [border defaultStrokeStyle];

    if (defaultStrokeStyle)
    {
      border2 = [componentStyle border];
      [(SXComponentStyleRenderer *)self applyBorder:border2];
    }

    backgroundColor = [componentStyle backgroundColor];

    if (backgroundColor)
    {
      backgroundColor2 = [componentStyle backgroundColor];
      [(SXComponentStyleRenderer *)self applyBackgroundColor:backgroundColor2];
    }

    [componentStyle opacity];
    if (v10 != 1.79769313e308)
    {
      [componentStyle opacity];
      [(SXComponentStyleRenderer *)self applyOpacity:?];
    }

    fill = [componentStyle fill];

    if (fill)
    {
      fill2 = [componentStyle fill];
      [(SXComponentStyleRenderer *)self applyFill:fill2];
    }

    shadow = [componentStyle shadow];

    if (shadow)
    {
      shadow2 = [componentStyle shadow];
      [(SXComponentStyleRenderer *)self applyShadow:shadow2];
    }
  }
}

- (void)prepareFill:(id)fill
{
  fillCopy = fill;
  v5 = [(SXComponentStyleRenderer *)self viewForFill:fillCopy];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v73[0] = *MEMORY[0x1E695EFD0];
  v73[1] = v6;
  v73[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v5 setTransform:v73];
  componentStyle = [(SXComponentStyleRenderer *)self componentStyle];
  fill = [componentStyle fill];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = fillCopy;
    componentView = [(SXComponentStyleRenderer *)self componentView];
    unitConverter = [componentView unitConverter];

    width = [v10 width];
    [unitConverter convertValueToPoints:{width, v14}];
    v16 = v15;
    height = [v10 height];
    v19 = v18;

    [unitConverter convertValueToPoints:{height, v19}];
    v21 = v20;
    repeatableImageFillView = [(SXComponentStyleRenderer *)self repeatableImageFillView];
    [repeatableImageFillView setPatternSize:{v16, v21}];
  }

  componentView2 = [(SXComponentStyleRenderer *)self componentView];
  backgroundView = [componentView2 backgroundView];
  [backgroundView bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  componentView3 = [(SXComponentStyleRenderer *)self componentView];
  [componentView3 borderInsets];
  v35 = v34;
  v37 = v36;
  v39 = v30 - (v36 + v38);
  v41 = v32 - (v34 + v40);

  v71 = v41;
  v72 = v39;
  if ([fillCopy attachment] == 1)
  {
    viewport = [(SXComponentStyleRenderer *)self viewport];
    [viewport bounds];
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
  if ([fillCopy attachment] == 1)
  {
    viewport2 = [(SXComponentStyleRenderer *)self viewport];
    componentView4 = [(SXComponentStyleRenderer *)self componentView];
    [viewport2 convertPointToViewportCoordinateSpace:componentView4 fromView:{v45, v46}];
    v58 = v57;
    v70 = v59;

    v48 = v48 - v58;
    verticalAlignment = [fillCopy verticalAlignment];
    switch(verticalAlignment)
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
  componentView5 = [(SXComponentStyleRenderer *)self componentView];
  [componentView5 setFillView:v5];

  componentView6 = [(SXComponentStyleRenderer *)self componentView];
  backgroundView2 = [componentView6 backgroundView];
  componentView7 = [(SXComponentStyleRenderer *)self componentView];
  contentView = [componentView7 contentView];
  [backgroundView2 insertSubview:v5 belowSubview:contentView];

  componentStyle2 = [(SXComponentStyleRenderer *)self componentStyle];
  fill2 = [componentStyle2 fill];
  if ([fill2 attachment] == 1)
  {
    didRegisterForDynamicBounds = [(SXComponentStyleRenderer *)self didRegisterForDynamicBounds];

    if (!didRegisterForDynamicBounds)
    {
      viewport3 = [(SXComponentStyleRenderer *)self viewport];
      [viewport3 addViewportChangeListener:self forOptions:2];

      [(SXComponentStyleRenderer *)self setDidRegisterForDynamicBounds:1];
    }
  }

  else
  {
  }
}

- (void)prepareBorder:(id)border
{
  borderCopy = border;
  defaultStrokeStyle = [borderCopy defaultStrokeStyle];
  if (defaultStrokeStyle)
  {
    v5 = defaultStrokeStyle;
    borderLayer = [(SXComponentStyleRenderer *)self borderLayer];

    if (!borderLayer)
    {
      v7 = +[SXShapeLayer layer];
      [(SXComponentStyleRenderer *)self setBorderLayer:v7];

      borderLayer2 = [(SXComponentStyleRenderer *)self borderLayer];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [borderLayer2 setFillColor:{objc_msgSend(clearColor, "CGColor")}];

      borderLayer3 = [(SXComponentStyleRenderer *)self borderLayer];
      [borderLayer3 setMasksToBounds:1];
    }
  }

  v11 = [borderCopy top];
  if (v11)
  {
    v12 = v11;
    topBorderLayer = [(SXComponentStyleRenderer *)self topBorderLayer];

    if (!topBorderLayer)
    {
      v14 = +[SXShapeLayer layer];
      [(SXComponentStyleRenderer *)self setTopBorderLayer:v14];

      topBorderLayer2 = [(SXComponentStyleRenderer *)self topBorderLayer];
      clearColor2 = [MEMORY[0x1E69DC888] clearColor];
      [topBorderLayer2 setFillColor:{objc_msgSend(clearColor2, "CGColor")}];

      topBorderLayer3 = [(SXComponentStyleRenderer *)self topBorderLayer];
      [topBorderLayer3 setMasksToBounds:1];
    }
  }

  right = [borderCopy right];
  if (right)
  {
    v19 = right;
    rightBorderLayer = [(SXComponentStyleRenderer *)self rightBorderLayer];

    if (!rightBorderLayer)
    {
      v21 = +[SXShapeLayer layer];
      [(SXComponentStyleRenderer *)self setRightBorderLayer:v21];

      rightBorderLayer2 = [(SXComponentStyleRenderer *)self rightBorderLayer];
      clearColor3 = [MEMORY[0x1E69DC888] clearColor];
      [rightBorderLayer2 setFillColor:{objc_msgSend(clearColor3, "CGColor")}];

      rightBorderLayer3 = [(SXComponentStyleRenderer *)self rightBorderLayer];
      [rightBorderLayer3 setMasksToBounds:1];
    }
  }

  bottom = [borderCopy bottom];
  if (bottom)
  {
    v26 = bottom;
    bottomBorderLayer = [(SXComponentStyleRenderer *)self bottomBorderLayer];

    if (!bottomBorderLayer)
    {
      v28 = +[SXShapeLayer layer];
      [(SXComponentStyleRenderer *)self setBottomBorderLayer:v28];

      bottomBorderLayer2 = [(SXComponentStyleRenderer *)self bottomBorderLayer];
      clearColor4 = [MEMORY[0x1E69DC888] clearColor];
      [bottomBorderLayer2 setFillColor:{objc_msgSend(clearColor4, "CGColor")}];

      bottomBorderLayer3 = [(SXComponentStyleRenderer *)self bottomBorderLayer];
      [bottomBorderLayer3 setMasksToBounds:1];
    }
  }

  left = [borderCopy left];
  if (left)
  {
    v33 = left;
    leftBorderLayer = [(SXComponentStyleRenderer *)self leftBorderLayer];

    if (!leftBorderLayer)
    {
      v35 = +[SXShapeLayer layer];
      [(SXComponentStyleRenderer *)self setLeftBorderLayer:v35];

      leftBorderLayer2 = [(SXComponentStyleRenderer *)self leftBorderLayer];
      clearColor5 = [MEMORY[0x1E69DC888] clearColor];
      [leftBorderLayer2 setFillColor:{objc_msgSend(clearColor5, "CGColor")}];

      leftBorderLayer3 = [(SXComponentStyleRenderer *)self leftBorderLayer];
      [leftBorderLayer3 setMasksToBounds:1];
    }
  }

  borderLayer4 = [(SXComponentStyleRenderer *)self borderLayer];
  componentView = [(SXComponentStyleRenderer *)self componentView];
  backgroundView = [componentView backgroundView];
  [backgroundView bounds];
  [borderLayer4 setFrame:?];

  componentView2 = [(SXComponentStyleRenderer *)self componentView];
  backgroundView2 = [componentView2 backgroundView];
  layer = [backgroundView2 layer];
  borderLayer5 = [(SXComponentStyleRenderer *)self borderLayer];
  componentView3 = [(SXComponentStyleRenderer *)self componentView];
  contentView = [componentView3 contentView];
  layer2 = [contentView layer];
  [layer insertSublayer:borderLayer5 above:layer2];

  borderLayer6 = [(SXComponentStyleRenderer *)self borderLayer];
  topBorderLayer4 = [(SXComponentStyleRenderer *)self topBorderLayer];
  [borderLayer6 addSublayer:topBorderLayer4];

  borderLayer7 = [(SXComponentStyleRenderer *)self borderLayer];
  rightBorderLayer4 = [(SXComponentStyleRenderer *)self rightBorderLayer];
  [borderLayer7 addSublayer:rightBorderLayer4];

  borderLayer8 = [(SXComponentStyleRenderer *)self borderLayer];
  bottomBorderLayer4 = [(SXComponentStyleRenderer *)self bottomBorderLayer];
  [borderLayer8 addSublayer:bottomBorderLayer4];

  borderLayer9 = [(SXComponentStyleRenderer *)self borderLayer];
  leftBorderLayer4 = [(SXComponentStyleRenderer *)self leftBorderLayer];
  [borderLayer9 addSublayer:leftBorderLayer4];
}

- (void)prepareShadow:(id)shadow
{
  shadowLayer = [(SXComponentStyleRenderer *)self shadowLayer];

  if (!shadowLayer)
  {
    v5 = +[SXLayer layer];
    [(SXComponentStyleRenderer *)self setShadowLayer:v5];
  }

  shadowLayer2 = [(SXComponentStyleRenderer *)self shadowLayer];
  componentView = [(SXComponentStyleRenderer *)self componentView];
  backgroundView = [componentView backgroundView];
  [backgroundView frame];
  [shadowLayer2 setFrame:?];

  componentView2 = [(SXComponentStyleRenderer *)self componentView];
  layer = [componentView2 layer];
  shadowLayer3 = [(SXComponentStyleRenderer *)self shadowLayer];
  componentView3 = [(SXComponentStyleRenderer *)self componentView];
  backgroundView2 = [componentView3 backgroundView];
  layer2 = [backgroundView2 layer];
  [layer insertSublayer:shadowLayer3 below:layer2];
}

- (void)applyBackgroundColor:(id)color
{
  colorCopy = color;
  componentView = [(SXComponentStyleRenderer *)self componentView];
  backgroundView = [componentView backgroundView];
  [backgroundView setBackgroundColor:colorCopy];
}

- (void)applyFill:(id)fill
{
  fillCopy = fill;
  v9 = [(SXComponentStyleRenderer *)self viewForFill:fillCopy];
  [v9 load];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    componentView = [(SXComponentStyleRenderer *)self componentView];
    visibilityState = [componentView visibilityState];

    if (visibilityState == 1)
    {
      videoFillView = [(SXComponentStyleRenderer *)self videoFillView];
      [videoFillView play];
    }
  }
}

- (void)applyOpacity:(double)opacity
{
  componentView = [(SXComponentStyleRenderer *)self componentView];
  [componentView setAlpha:opacity];
}

- (void)applyBorder:(id)border
{
  borderCopy = border;
  componentView = [(SXComponentStyleRenderer *)self componentView];
  backgroundView = [componentView backgroundView];
  [backgroundView bounds];
  v127 = v7;
  v128 = v6;
  v129 = v8;
  v130 = v9;

  componentView2 = [(SXComponentStyleRenderer *)self componentView];
  backgroundView2 = [componentView2 backgroundView];
  layer = [backgroundView2 layer];
  [layer cornerRadius];
  v14 = v13;

  componentView3 = [(SXComponentStyleRenderer *)self componentView];
  backgroundView3 = [componentView3 backgroundView];
  layer2 = [backgroundView3 layer];
  maskedCorners = [layer2 maskedCorners];

  componentView4 = [(SXComponentStyleRenderer *)self componentView];
  backgroundView4 = [componentView4 backgroundView];
  layer3 = [backgroundView4 layer];
  cornerCurve = [layer3 cornerCurve];
  v23 = *MEMORY[0x1E69796E8];

  v24 = 0.0;
  if (maskedCorners)
  {
    v25 = v14;
  }

  else
  {
    v25 = 0.0;
  }

  if ((maskedCorners & 2) != 0)
  {
    v26 = v14;
  }

  else
  {
    v26 = 0.0;
  }

  if ((maskedCorners & 8) != 0)
  {
    v27 = v14;
  }

  else
  {
    v27 = 0.0;
  }

  if ((maskedCorners & 4) != 0)
  {
    v24 = v14;
  }

  v122 = v24;
  v123 = v25;
  componentView5 = [(SXComponentStyleRenderer *)self componentView];
  unitConverter = [componentView5 unitConverter];

  v30 = [borderCopy all];
  v31 = [borderCopy top];
  right = [borderCopy right];
  bottom = [borderCopy bottom];
  left = [borderCopy left];
  v124 = v23;
  if (v30)
  {
    width = [v30 width];
    [unitConverter convertValueToPoints:{width, v36}];
    if (v37 > 0.0)
    {
      v38 = v37;
      v39 = cornerCurve == v23;
      v116 = v26;
      v40 = v37 * 0.5;
      v112 = fmax(v14 - v37 * 0.5, 0.0);
      [borderCopy left];
      v41 = v118 = cornerCurve;

      if (v41)
      {
        v42 = -(v38 * 0.5);
      }

      else
      {
        v42 = v40;
      }

      v43 = [borderCopy top];

      if (v43)
      {
        v44 = -(v38 * 0.5);
      }

      else
      {
        v44 = v40;
      }

      right2 = [borderCopy right];

      if (right2)
      {
        v46 = -(v38 * 0.5);
      }

      else
      {
        v46 = v40;
      }

      bottom2 = [borderCopy bottom];

      if (bottom2)
      {
        v48 = -(v38 * 0.5);
      }

      else
      {
        v48 = v40;
      }

      v26 = v116;
      v49 = [MEMORY[0x1E69DC728] sx_bezierPathWithRect:maskedCorners & 0xF byRoundingCorners:v39 cornerRadius:v128 + v42 continuousCorners:{v127 + v44, v129 - (v42 + v46), v130 - (v44 + v48), v112}];
      borderLayer = [(SXComponentStyleRenderer *)self borderLayer];
      [(SXComponentStyleRenderer *)self applyStrokeStyle:v30 borderLayer:borderLayer path:v49 lineWidth:v38];

      v23 = v124;
      cornerCurve = v118;
    }
  }

  if (v31)
  {
    width2 = [v31 width];
    [unitConverter convertValueToPoints:{width2, v52}];
    if (v53 > 0.0)
    {
      v54 = v53;
      v119 = cornerCurve;
      v55 = cornerCurve == v23;
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
      v113 = unitConverter;
      v60 = v59 = v23;
      [v60 setFrame:{0.0, 0.0, Width, v106}];

      v61 = [MEMORY[0x1E69DC728] sx_bezierPathWithRect:maskedCorners & 0xF byRoundingCorners:v55 cornerRadius:v128 - v56 continuousCorners:{v127 + v56, v129 - (v107 - v56), v130 - (v56 - v56), v109}];
      topBorderLayer = [(SXComponentStyleRenderer *)self topBorderLayer];
      [(SXComponentStyleRenderer *)self applyStrokeStyle:v31 borderLayer:topBorderLayer path:v61 lineWidth:v54];

      v23 = v59;
      unitConverter = v113;

      cornerCurve = v119;
    }
  }

  if (right)
  {
    width3 = [right width];
    [unitConverter convertValueToPoints:{width3, v64}];
    if (v65 > 0.0)
    {
      v66 = v65;
      v67 = cornerCurve == v23;
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
      v120 = left;
      v72 = bottom;
      v73 = v31;
      v74 = v30;
      v76 = v75 = cornerCurve;
      [v76 setFrame:{v108, 0.0, v70, Height}];

      v136.origin.x = v128;
      v136.origin.y = v127;
      v136.size.width = v129;
      v136.size.height = v130;
      v77 = [MEMORY[0x1E69DC728] sx_bezierPathWithRect:maskedCorners & 0xF byRoundingCorners:v67 cornerRadius:v70 - CGRectGetWidth(v136) - v68 continuousCorners:{v127 - v68, v129 - (v68 - v68), v130 - (v110 - v68), v114}];
      rightBorderLayer = [(SXComponentStyleRenderer *)self rightBorderLayer];
      [(SXComponentStyleRenderer *)self applyStrokeStyle:right borderLayer:rightBorderLayer path:v77 lineWidth:v66];

      v23 = v124;
      cornerCurve = v75;
      v30 = v74;
      v31 = v73;
      bottom = v72;
      left = v120;
    }
  }

  if (bottom)
  {
    width4 = [bottom width];
    [unitConverter convertValueToPoints:{width4, v80}];
    if (v81 > 0.0)
    {
      v82 = v81;
      v83 = cornerCurve == v23;
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
      v121 = right;
      v88 = v31;
      v89 = v30;
      v91 = v90 = cornerCurve;
      [v91 setFrame:{0.0, v111, v87, v86}];

      v139.origin.x = v128;
      v139.origin.y = v127;
      v139.size.width = v129;
      v139.size.height = v130;
      v92 = [MEMORY[0x1E69DC728] sx_bezierPathWithRect:maskedCorners & 0xF byRoundingCorners:v83 cornerRadius:v128 - v84 continuousCorners:{v86 - CGRectGetHeight(v139) - v84, v129 - (v115 - v84), v130 - (v84 - v84), v117}];
      bottomBorderLayer = [(SXComponentStyleRenderer *)self bottomBorderLayer];
      [(SXComponentStyleRenderer *)self applyStrokeStyle:bottom borderLayer:bottomBorderLayer path:v92 lineWidth:v82];

      v23 = v124;
      cornerCurve = v90;
      v30 = v89;
      v31 = v88;
      right = v121;
    }
  }

  if (left)
  {
    width5 = [left width];
    [unitConverter convertValueToPoints:{width5, v95}];
    if (v96 > 0.0)
    {
      v97 = v96;
      v98 = cornerCurve == v23;
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
      leftBorderLayer = [(SXComponentStyleRenderer *)self leftBorderLayer];
      [leftBorderLayer setFrame:{0.0, 0.0, v101, v102}];

      v104 = [MEMORY[0x1E69DC728] sx_bezierPathWithRect:maskedCorners & 0xF byRoundingCorners:v98 cornerRadius:v128 + v99 continuousCorners:{v127 - v99, v129 - (v99 - v99), v130 - (v125 - v99), v126}];
      leftBorderLayer2 = [(SXComponentStyleRenderer *)self leftBorderLayer];
      [(SXComponentStyleRenderer *)self applyStrokeStyle:left borderLayer:leftBorderLayer2 path:v104 lineWidth:v97];
    }
  }
}

- (void)applyStrokeStyle:(id)style borderLayer:(id)layer path:(id)path lineWidth:(double)width
{
  v25[2] = *MEMORY[0x1E69E9840];
  styleCopy = style;
  layerCopy = layer;
  pathCopy = path;
  color = [styleCopy color];
  v13 = color;
  if (color)
  {
    blackColor = color;
  }

  else
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
  }

  v15 = blackColor;

  [layerCopy setLineWidth:width];
  [layerCopy setStrokeColor:{objc_msgSend(v15, "CGColor")}];
  cGPath = [pathCopy CGPath];

  [layerCopy setPath:cGPath];
  v17 = *MEMORY[0x1E6979E80];
  [layerCopy setLineCap:*MEMORY[0x1E6979E80]];
  if ([styleCopy style] == 2)
  {
    v18 = width + width;
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
    v25[0] = v19;
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
    v25[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    [layerCopy setLineDashPattern:v21];

LABEL_8:
    [layerCopy setLineCap:v17];
    goto LABEL_9;
  }

  if ([styleCopy style] == 3)
  {
    v24[0] = &unk_1F538A280;
    width = [MEMORY[0x1E696AD98] numberWithDouble:width + width];
    v24[1] = width;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    [layerCopy setLineDashPattern:v23];

    v17 = *MEMORY[0x1E6979E78];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)applyMask:(id)mask
{
  maskCopy = mask;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = COERCE_DOUBLE([maskCopy radius]);
    if (v4 > 0.0 && (([maskCopy topLeft] & 1) != 0 || (objc_msgSend(maskCopy, "topRight") & 1) != 0 || (objc_msgSend(maskCopy, "bottomRight") & 1) != 0 || objc_msgSend(maskCopy, "bottomLeft")))
    {
      componentView = [(SXComponentStyleRenderer *)self componentView];
      unitConverter = [componentView unitConverter];
      radius = [maskCopy radius];
      [unitConverter convertValueToPoints:{radius, v8}];
      v10 = v9;

      componentView2 = [(SXComponentStyleRenderer *)self componentView];
      contentView = [componentView2 contentView];
      [contentView frame];
      v14 = v13;

      componentView3 = [(SXComponentStyleRenderer *)self componentView];
      contentView2 = [componentView3 contentView];
      [contentView2 frame];
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

      cornerMask = [maskCopy cornerMask];
      curve = [maskCopy curve];
      componentView4 = [(SXComponentStyleRenderer *)self componentView];
      backgroundView = [componentView4 backgroundView];
      [(SXComponentStyleRenderer *)self applyCornerRadius:cornerMask cornerMask:curve curve:backgroundView onView:v10];
    }
  }
}

- (void)applyShadow:(id)shadow
{
  shadowCopy = shadow;
  componentView = [(SXComponentStyleRenderer *)self componentView];
  unitConverter = [componentView unitConverter];

  radius = [shadowCopy radius];
  [unitConverter convertValueToPoints:{radius, v7}];
  v9 = v8;
  offset = [shadowCopy offset];
  v11 = [offset x];
  [unitConverter convertValueToPoints:v11 allowNegativeValues:{v12, 1}];
  v14 = v13;

  offset2 = [shadowCopy offset];
  v16 = [offset2 y];
  [unitConverter convertValueToPoints:v16 allowNegativeValues:{v17, 1}];
  v19 = v18;

  shadowLayer = [(SXComponentStyleRenderer *)self shadowLayer];
  [shadowLayer setShadowRadius:v9];

  shadowLayer2 = [(SXComponentStyleRenderer *)self shadowLayer];
  color = [shadowCopy color];
  [shadowLayer2 setShadowColor:{objc_msgSend(color, "CGColor")}];

  shadowLayer3 = [(SXComponentStyleRenderer *)self shadowLayer];
  [shadowCopy opacity];
  v25 = v24;

  *&v26 = v25;
  [shadowLayer3 setShadowOpacity:v26];

  shadowLayer4 = [(SXComponentStyleRenderer *)self shadowLayer];
  [shadowLayer4 setShadowOffset:{v14, v19}];

  componentView2 = [(SXComponentStyleRenderer *)self componentView];
  backgroundView = [componentView2 backgroundView];
  layer = [backgroundView layer];
  [layer bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  componentView3 = [(SXComponentStyleRenderer *)self componentView];
  backgroundView2 = [componentView3 backgroundView];
  layer2 = [backgroundView2 layer];
  LOBYTE(componentView2) = [layer2 maskedCorners];

  componentView4 = [(SXComponentStyleRenderer *)self componentView];
  backgroundView3 = [componentView4 backgroundView];
  layer3 = [backgroundView3 layer];
  [layer3 cornerRadius];
  v46 = v45;

  componentView5 = [(SXComponentStyleRenderer *)self componentView];
  backgroundView4 = [componentView5 backgroundView];
  layer4 = [backgroundView4 layer];
  cornerCurve = [layer4 cornerCurve];
  v51 = cornerCurve == *MEMORY[0x1E69796E8];

  v52 = [MEMORY[0x1E69DC728] sx_bezierPathWithRect:componentView2 & 0xF byRoundingCorners:v51 cornerRadius:v32 continuousCorners:{v34, v36, v38, v46}];
  shadowLayer5 = [(SXComponentStyleRenderer *)self shadowLayer];
  [shadowLayer5 setShadowPath:{objc_msgSend(v52, "CGPath")}];
}

- (void)componentVisiblityStateDidChange:(int64_t)change
{
  videoFillView = [(SXComponentStyleRenderer *)self videoFillView];
  if (videoFillView || ([(SXComponentStyleRenderer *)self imageFillView], (videoFillView = objc_claimAutoreleasedReturnValue()) != 0) || ([(SXComponentStyleRenderer *)self gradientFillView], (videoFillView = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    repeatableImageFillView = [(SXComponentStyleRenderer *)self repeatableImageFillView];

    if (!repeatableImageFillView)
    {
      return;
    }
  }

  componentView = [(SXComponentStyleRenderer *)self componentView];
  visibilityState = [componentView visibilityState];

  if (change == 1 || visibilityState != 1)
  {
    componentView2 = [(SXComponentStyleRenderer *)self componentView];
    if ([componentView2 visibilityState] == 2)
    {
    }

    else
    {
      componentView3 = [(SXComponentStyleRenderer *)self componentView];
      visibilityState2 = [componentView3 visibilityState];

      if (visibilityState2)
      {
        return;
      }
    }

    videoFillView2 = [(SXComponentStyleRenderer *)self videoFillView];

    if (videoFillView2)
    {
      componentStyle = [(SXComponentStyleRenderer *)self componentStyle];
      fill = [componentStyle fill];

      if (([fill loop] & 1) == 0)
      {
        videoFillView3 = [(SXComponentStyleRenderer *)self videoFillView];
        [videoFillView3 reset];
      }

      videoFillView4 = [(SXComponentStyleRenderer *)self videoFillView];
      [videoFillView4 pause];
    }

    else
    {
      imageFillView = [(SXComponentStyleRenderer *)self imageFillView];

      if (imageFillView)
      {
        imageFillView2 = [(SXComponentStyleRenderer *)self imageFillView];
      }

      else
      {
        repeatableImageFillView2 = [(SXComponentStyleRenderer *)self repeatableImageFillView];

        if (!repeatableImageFillView2)
        {
          return;
        }

        imageFillView2 = [(SXComponentStyleRenderer *)self repeatableImageFillView];
      }

      fill = imageFillView2;
      [imageFillView2 pause];
    }
  }

  else
  {
    videoFillView5 = [(SXComponentStyleRenderer *)self videoFillView];

    if (videoFillView5)
    {
      videoFillView6 = [(SXComponentStyleRenderer *)self videoFillView];
    }

    else
    {
      imageFillView3 = [(SXComponentStyleRenderer *)self imageFillView];

      if (imageFillView3)
      {
        videoFillView6 = [(SXComponentStyleRenderer *)self imageFillView];
      }

      else
      {
        repeatableImageFillView3 = [(SXComponentStyleRenderer *)self repeatableImageFillView];

        if (!repeatableImageFillView3)
        {
          return;
        }

        videoFillView6 = [(SXComponentStyleRenderer *)self repeatableImageFillView];
      }
    }

    fill = videoFillView6;
    [videoFillView6 play];
  }
}

- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state
{
  viewportCopy = viewport;
  appearState = [viewportCopy appearState];
  if (state == 2 && appearState != 2)
  {
    videoFillView = [(SXComponentStyleRenderer *)self videoFillView];
    [videoFillView pause];
LABEL_4:

    goto LABEL_8;
  }

  if ([viewportCopy appearState] == 2)
  {
    componentView = [(SXComponentStyleRenderer *)self componentView];
    visibilityState = [componentView visibilityState];

    if (visibilityState == 1)
    {
      videoFillView = [(SXComponentStyleRenderer *)self videoFillView];
      [videoFillView play];
      goto LABEL_4;
    }
  }

LABEL_8:
}

- (void)viewport:(id)viewport dynamicBoundsDidChangeFromBounds:(CGRect)bounds
{
  viewportCopy = viewport;
  componentView = [(SXComponentStyleRenderer *)self componentView];
  fillView = [componentView fillView];
  [fillView contentFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  componentView2 = [(SXComponentStyleRenderer *)self componentView];
  fillView2 = [componentView2 fillView];
  [fillView2 frame];
  v18 = v17;
  v20 = v19;
  componentView3 = [(SXComponentStyleRenderer *)self componentView];
  [viewportCopy convertPointToViewportCoordinateSpace:componentView3 fromView:{v18, v20}];
  v23 = v22;

  componentStyle = [(SXComponentStyleRenderer *)self componentStyle];
  fill = [componentStyle fill];
  verticalAlignment = [fill verticalAlignment];

  switch(verticalAlignment)
  {
    case 2:
      [viewportCopy bounds];
      v10 = v28 - v23 - v14;
      break;
    case 1:
      [viewportCopy bounds];
      v10 = (v27 - v14) * 0.5 - v23;
      break;
    case 0:
      v10 = -v23;
      break;
  }

  componentView4 = [(SXComponentStyleRenderer *)self componentView];
  fillView3 = [componentView4 fillView];
  [fillView3 setContentFrame:{v8, v10, v12, v14}];
}

- (void)applyCornerRadius:(double)radius cornerMask:(unint64_t)mask curve:(id)curve onView:(id)view
{
  v9 = radius > 0.0;
  viewCopy = view;
  curveCopy = curve;
  [viewCopy setClipsToBounds:v9];
  layer = [viewCopy layer];
  [layer setMaskedCorners:mask];

  layer2 = [viewCopy layer];
  [layer2 setCornerRadius:radius];

  layer3 = [viewCopy layer];

  [layer3 setCornerCurve:curveCopy];
}

- (id)viewForFill:(id)fill
{
  fillCopy = fill;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXComponentStyleRenderer *)self videoPlayerViewForFill:fillCopy];
LABEL_9:
    v6 = v5;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXComponentStyleRenderer *)self imageViewForFill:fillCopy];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXComponentStyleRenderer *)self gradientViewForFill:fillCopy];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXComponentStyleRenderer *)self repeatableImageFillViewForFill:fillCopy];
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (id)gradientViewForFill:(id)fill
{
  fillCopy = fill;
  gradientFillView = [(SXComponentStyleRenderer *)self gradientFillView];
  if (!gradientFillView)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    v6 = fillCopy;
    v7 = [SXGradientFillView alloc];
    gradientFactory = [(SXComponentStyleRenderer *)self gradientFactory];
    gradientFillView = [(SXGradientFillView *)v7 initWithGradientFill:v6 gradientFactory:gradientFactory];

    [(SXComponentStyleRenderer *)self setGradientFillView:gradientFillView];
  }

LABEL_5:
  gradientFillView2 = [(SXComponentStyleRenderer *)self gradientFillView];

  return gradientFillView2;
}

- (id)imageViewForFill:(id)fill
{
  fillCopy = fill;
  imageFillView = [(SXComponentStyleRenderer *)self imageFillView];

  if (!imageFillView)
  {
    imageFillViewFactory = [(SXComponentStyleRenderer *)self imageFillViewFactory];
    v7 = [imageFillViewFactory createImageFillViewForImageFill:fillCopy];
    [(SXComponentStyleRenderer *)self setImageFillView:v7];
  }

  imageFillView2 = [(SXComponentStyleRenderer *)self imageFillView];

  return imageFillView2;
}

- (id)videoPlayerViewForFill:(id)fill
{
  fillCopy = fill;
  videoFillView = [(SXComponentStyleRenderer *)self videoFillView];

  if (!videoFillView)
  {
    videoFillViewFactory = [(SXComponentStyleRenderer *)self videoFillViewFactory];
    v7 = [videoFillViewFactory createVideoFillViewForVideoFill:fillCopy];
    [(SXComponentStyleRenderer *)self setVideoFillView:v7];

    viewport = [(SXComponentStyleRenderer *)self viewport];
    [viewport addViewportChangeListener:self forOptions:8];
  }

  videoFillView2 = [(SXComponentStyleRenderer *)self videoFillView];

  return videoFillView2;
}

- (id)repeatableImageFillViewForFill:(id)fill
{
  fillCopy = fill;
  repeatableImageFillView = [(SXComponentStyleRenderer *)self repeatableImageFillView];

  if (!repeatableImageFillView)
  {
    repeatableImageFillViewFactory = [(SXComponentStyleRenderer *)self repeatableImageFillViewFactory];
    v7 = [repeatableImageFillViewFactory createRepeatableImageFillViewForRepeatableImageFill:fillCopy];
    [(SXComponentStyleRenderer *)self setRepeatableImageFillView:v7];
  }

  repeatableImageFillView2 = [(SXComponentStyleRenderer *)self repeatableImageFillView];

  return repeatableImageFillView2;
}

- (SXComponentView)componentView
{
  WeakRetained = objc_loadWeakRetained(&self->_componentView);

  return WeakRetained;
}

@end