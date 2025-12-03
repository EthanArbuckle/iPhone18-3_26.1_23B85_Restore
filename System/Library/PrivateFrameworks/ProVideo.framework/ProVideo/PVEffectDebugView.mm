@interface PVEffectDebugView
+ (id)documentBoundsLayerWithFrame:(CGRect)frame options:(id)options;
+ (id)hitAreaShapeLayerWithFrame:(CGRect)frame options:(id)options;
+ (id)objectBoundsLayerWithFrame:(CGRect)frame options:(id)options;
+ (id)outputROILayerWithFrame:(CGRect)frame options:(id)options;
+ (id)textBoundsLayerWithFrame:(CGRect)frame options:(id)options;
- (PVEffectDebugView)initWithCoder:(id)coder;
- (PVEffectDebugView)initWithFrame:(CGRect)frame;
- (PVEffectDebugView)initWithFrame:(CGRect)frame delegate:(id)delegate;
- (PVEffectDebugViewDelegate)delegate;
- (id)userPointsToDraw;
- (id)userRectsToDraw;
- (void)setupViews;
- (void)updateBorderedLayer:(id)layer borderRect:(CGRect)rect borderWidth:(double)width borderColor:(id)color;
- (void)updateCrosshairLayer:(id)layer center:(CGPoint)center color:(id)color size:(CGSize)size thickness:(CGSize)thickness;
- (void)updateDottedBorderedLayer:(id)layer borderRect:(CGRect)rect borderWidth:(double)width borderColor:(id)color borderPhase:(double)phase borderDashPattern:(id)pattern;
- (void)updateFilledCircleLayer:(id)layer center:(CGPoint)center radius:(double)radius fillColor:(id)color;
- (void)updateFilledCircleLayer:(id)layer center:(CGPoint)center radius:(double)radius fillColor:(id)color borderWidth:(double)width borderColor:(id)borderColor borderPhase:(double)phase borderDashPattern:(id)self0;
- (void)updateFilledPolygonLayer:(id)layer path:(CGPath *)path fillColor:(id)color;
- (void)updatePointsLayers:(id)layers points:(id)points colors:(id)colors size:(double)size;
- (void)updatePolygonLayer:(id)layer points:(id)points borderWidth:(double)width borderColor:(id)color borderPhase:(double)phase borderDashPattern:(id)pattern;
- (void)updateUserPoints:(id)points transformedLayer:(id)layer effectScale:(double)scale points:(id)a6;
- (void)updateUserRects:(id)rects transformedLayer:(id)layer effectScale:(double)scale rects:(id)a6;
- (void)updateWithEffectFrame:(id)frame;
@end

@implementation PVEffectDebugView

- (PVEffectDebugView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PVEffectDebugView;
  v3 = [(PVEffectDebugView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PVEffectDebugView *)v3 setupViews];
  }

  return v4;
}

- (PVEffectDebugView)initWithFrame:(CGRect)frame delegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = PVEffectDebugView;
  height = [(PVEffectDebugView *)&v13 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(PVEffectDebugView *)height setDelegate:delegateCopy];
    [(PVEffectDebugView *)v11 setupViews];
  }

  return v11;
}

- (PVEffectDebugView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PVEffectDebugView;
  v3 = [(PVEffectDebugView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PVEffectDebugView *)v3 setupViews];
  }

  return v4;
}

- (void)setupViews
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(PVEffectDebugView *)self setRootContainerView:v4];

  rootContainerView = [(PVEffectDebugView *)self rootContainerView];
  [rootContainerView setUserInteractionEnabled:0];

  rootContainerView2 = [(PVEffectDebugView *)self rootContainerView];
  [rootContainerView2 setHidden:1];

  rootContainerView3 = [(PVEffectDebugView *)self rootContainerView];
  [(PVEffectDebugView *)self addSubview:rootContainerView3];

  rootContainerView4 = [(PVEffectDebugView *)self rootContainerView];
  layer = [rootContainerView4 layer];
  [(PVEffectDebugView *)self setRootLayer:layer];

  layer2 = [MEMORY[0x277CD9FF8] layer];
  [(PVEffectDebugView *)self setRootTransformLayer:layer2];

  v11 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  rootTransformLayer = [(PVEffectDebugView *)self rootTransformLayer];
  [rootTransformLayer setAnchorPoint:{v11, v12}];

  rootLayer = [(PVEffectDebugView *)self rootLayer];
  rootTransformLayer2 = [(PVEffectDebugView *)self rootTransformLayer];
  [rootLayer addSublayer:rootTransformLayer2];

  layer3 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setDocumentBoundingBoxLayer:layer3];

  rootTransformLayer3 = [(PVEffectDebugView *)self rootTransformLayer];
  documentBoundingBoxLayer = [(PVEffectDebugView *)self documentBoundingBoxLayer];
  [rootTransformLayer3 addSublayer:documentBoundingBoxLayer];

  layer4 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setOutputROILayer:layer4];

  rootTransformLayer4 = [(PVEffectDebugView *)self rootTransformLayer];
  outputROILayer = [(PVEffectDebugView *)self outputROILayer];
  [rootTransformLayer4 addSublayer:outputROILayer];

  layer5 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setObjectAlignedBoundingBoxLayer:layer5];

  rootTransformLayer5 = [(PVEffectDebugView *)self rootTransformLayer];
  objectAlignedBoundingBoxLayer = [(PVEffectDebugView *)self objectAlignedBoundingBoxLayer];
  [rootTransformLayer5 addSublayer:objectAlignedBoundingBoxLayer];

  layer6 = [MEMORY[0x277CD9ED0] layer];
  [(PVEffectDebugView *)self setTextBoundingBoxesContainerLayer:layer6];

  rootLayer2 = [(PVEffectDebugView *)self rootLayer];
  textBoundingBoxesContainerLayer = [(PVEffectDebugView *)self textBoundingBoxesContainerLayer];
  [rootLayer2 addSublayer:textBoundingBoxesContainerLayer];

  layer7 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setHitAreaShapeLayer:layer7];

  rootLayer3 = [(PVEffectDebugView *)self rootLayer];
  hitAreaShapeLayer = [(PVEffectDebugView *)self hitAreaShapeLayer];
  [rootLayer3 addSublayer:hitAreaShapeLayer];

  layer8 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setHitAreaMinimumSizeBoundingBoxLayer:layer8];

  hitAreaMinimumSizeBoundingBoxLayer = [(PVEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
  [hitAreaMinimumSizeBoundingBoxLayer setZPosition:-1.0];

  rootLayer4 = [(PVEffectDebugView *)self rootLayer];
  hitAreaMinimumSizeBoundingBoxLayer2 = [(PVEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
  [rootLayer4 addSublayer:hitAreaMinimumSizeBoundingBoxLayer2];

  hitAreaMinimumSizeBoundingBoxLayer3 = [(PVEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
  LODWORD(v36) = 1050253722;
  [hitAreaMinimumSizeBoundingBoxLayer3 setOpacity:v36];

  layer9 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setMidpointLayer:layer9];

  midpointLayer = [(PVEffectDebugView *)self midpointLayer];
  [midpointLayer setZPosition:10.0];

  rootLayer5 = [(PVEffectDebugView *)self rootLayer];
  midpointLayer2 = [(PVEffectDebugView *)self midpointLayer];
  [rootLayer5 addSublayer:midpointLayer2];

  layer10 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setOriginLayer:layer10];

  rootLayer6 = [(PVEffectDebugView *)self rootLayer];
  originLayer = [(PVEffectDebugView *)self originLayer];
  [rootLayer6 addSublayer:originLayer];

  layer11 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setOriginCrosshairLayer:layer11];

  rootTransformLayer6 = [(PVEffectDebugView *)self rootTransformLayer];
  originCrosshairLayer = [(PVEffectDebugView *)self originCrosshairLayer];
  [rootTransformLayer6 addSublayer:originCrosshairLayer];

  layer12 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setCornerPointsLayer:layer12];

  cornerPointsLayer = [(PVEffectDebugView *)self cornerPointsLayer];
  [cornerPointsLayer setZPosition:10.0];

  rootLayer7 = [(PVEffectDebugView *)self rootLayer];
  cornerPointsLayer2 = [(PVEffectDebugView *)self cornerPointsLayer];
  [rootLayer7 addSublayer:cornerPointsLayer2];

  layer13 = [MEMORY[0x277CD9ED0] layer];
  [(PVEffectDebugView *)self setTextCornerPointsContainerLayer:layer13];

  rootLayer8 = [(PVEffectDebugView *)self rootLayer];
  textCornerPointsContainerLayer = [(PVEffectDebugView *)self textCornerPointsContainerLayer];
  [rootLayer8 addSublayer:textCornerPointsContainerLayer];

  layer14 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setHitAreaPointsLayer:layer14];

  rootLayer9 = [(PVEffectDebugView *)self rootLayer];
  hitAreaPointsLayer = [(PVEffectDebugView *)self hitAreaPointsLayer];
  [rootLayer9 addSublayer:hitAreaPointsLayer];

  layer15 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setUserRectsLayer:layer15];

  rootLayer10 = [(PVEffectDebugView *)self rootLayer];
  userRectsLayer = [(PVEffectDebugView *)self userRectsLayer];
  [rootLayer10 addSublayer:userRectsLayer];

  layer16 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setUserRectsTransformedLayer:layer16];

  rootTransformLayer7 = [(PVEffectDebugView *)self rootTransformLayer];
  userRectsTransformedLayer = [(PVEffectDebugView *)self userRectsTransformedLayer];
  [rootTransformLayer7 addSublayer:userRectsTransformedLayer];

  layer17 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setUserPointsLayer:layer17];

  rootLayer11 = [(PVEffectDebugView *)self rootLayer];
  userPointsLayer = [(PVEffectDebugView *)self userPointsLayer];
  [rootLayer11 addSublayer:userPointsLayer];

  layer18 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setUserPointsTransformedLayer:layer18];

  rootTransformLayer8 = [(PVEffectDebugView *)self rootTransformLayer];
  userPointsTransformedLayer = [(PVEffectDebugView *)self userPointsTransformedLayer];
  [rootTransformLayer8 addSublayer:userPointsTransformedLayer];

  delegate = [(PVEffectDebugView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate pvEffectDebugViewOptions], (v69 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v69 = +[PVEffectDebugViewOptions options];
  }

  v70 = v69;
  [(PVEffectDebugView *)self setOptions:v69];
}

- (void)updateDottedBorderedLayer:(id)layer borderRect:(CGRect)rect borderWidth:(double)width borderColor:(id)color borderPhase:(double)phase borderDashPattern:(id)pattern
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  patternCopy = pattern;
  colorCopy = color;
  layerCopy = layer;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v20 = pv_CGRect_to_NSArray(v22);
  clearColor = [MEMORY[0x277D75348] clearColor];
  setShapeLayerPathFromPointsWithStyle(layerCopy, v20, clearColor, colorCopy, patternCopy, phase, width);
}

- (void)updateBorderedLayer:(id)layer borderRect:(CGRect)rect borderWidth:(double)width borderColor:(id)color
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  colorCopy = color;
  layerCopy = layer;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v15 = pv_CGRect_to_NSArray(v17);
  clearColor = [MEMORY[0x277D75348] clearColor];
  setShapeLayerPathFromPointsWithStyle(layerCopy, v15, clearColor, colorCopy, 0, 0.0, width);
}

- (void)updatePolygonLayer:(id)layer points:(id)points borderWidth:(double)width borderColor:(id)color borderPhase:(double)phase borderDashPattern:(id)pattern
{
  v13 = MEMORY[0x277D75348];
  patternCopy = pattern;
  colorCopy = color;
  pointsCopy = points;
  layerCopy = layer;
  clearColor = [v13 clearColor];
  setShapeLayerPathFromPointsWithStyle(layerCopy, pointsCopy, clearColor, colorCopy, patternCopy, phase, width);
}

- (void)updateFilledPolygonLayer:(id)layer path:(CGPath *)path fillColor:(id)color
{
  layerCopy = layer;
  v8 = MEMORY[0x277D75348];
  colorCopy = color;
  clearColor = [v8 clearColor];
  v11 = colorCopy;
  v13 = layerCopy;
  cGColor = [colorCopy CGColor];

  [v13 setFillColor:cGColor];
  [v13 setStrokeColor:{objc_msgSend(clearColor, "CGColor")}];
  [v13 setLineDashPhase:0.0];
  [v13 setLineDashPattern:0];
  [v13 setLineWidth:0.0];
  [v13 setPath:path];
}

- (void)updatePointsLayers:(id)layers points:(id)points colors:(id)colors size:(double)size
{
  pointsCopy = points;
  colorsCopy = colors;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = *"";
  v13[2] = __59__PVEffectDebugView_updatePointsLayers_points_colors_size___block_invoke;
  v13[3] = &unk_279AA4C28;
  sizeCopy = size;
  v14 = pointsCopy;
  v15 = colorsCopy;
  v11 = colorsCopy;
  v12 = pointsCopy;
  [layers enumerateObjectsUsingBlock:v13];
}

void __59__PVEffectDebugView_updatePointsLayers_points_colors_size___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v6 CGPointValue];
  v8 = v7;
  v10 = v9;

  v11 = *(a1 + 48);
  v12 = [*(a1 + 40) objectAtIndexedSubscript:{a3 % objc_msgSend(*(a1 + 40), "count")}];
  v18.origin.x = v8 - v11 * 0.5;
  v18.origin.y = v10 - v11 * 0.5;
  v18.size.width = v11;
  v18.size.height = v11;
  v13 = CGPathCreateWithEllipseInRect(v18, 0);
  v14 = [MEMORY[0x277D75348] clearColor];
  v15 = v12;
  v16 = v5;
  [v16 setFillColor:{objc_msgSend(v12, "CGColor")}];
  [v16 setStrokeColor:{objc_msgSend(v14, "CGColor")}];
  [v16 setLineDashPhase:0.0];
  [v16 setLineDashPattern:0];
  [v16 setLineWidth:0.0];
  [v16 setPath:v13];

  CGPathRelease(v13);
}

- (void)updateFilledCircleLayer:(id)layer center:(CGPoint)center radius:(double)radius fillColor:(id)color
{
  y = center.y;
  x = center.x;
  layerCopy = layer;
  v11 = radius + radius;
  colorCopy = color;
  v19.origin.x = x - v11 * 0.5;
  v19.origin.y = y - v11 * 0.5;
  v19.size.width = v11;
  v19.size.height = v11;
  v13 = CGPathCreateWithEllipseInRect(v19, 0);
  clearColor = [MEMORY[0x277D75348] clearColor];
  v15 = colorCopy;
  v17 = layerCopy;
  cGColor = [colorCopy CGColor];

  [v17 setFillColor:cGColor];
  [v17 setStrokeColor:{objc_msgSend(clearColor, "CGColor")}];
  [v17 setLineDashPhase:0.0];
  [v17 setLineDashPattern:0];
  [v17 setLineWidth:0.0];
  [v17 setPath:v13];

  CGPathRelease(v13);
}

- (void)updateFilledCircleLayer:(id)layer center:(CGPoint)center radius:(double)radius fillColor:(id)color borderWidth:(double)width borderColor:(id)borderColor borderPhase:(double)phase borderDashPattern:(id)self0
{
  y = center.y;
  x = center.x;
  layerCopy = layer;
  borderColorCopy = borderColor;
  patternCopy = pattern;
  v21 = radius + radius;
  colorCopy = color;
  v31.origin.x = x - v21 * 0.5;
  v31.origin.y = y - v21 * 0.5;
  v31.size.width = v21;
  v31.size.height = v21;
  v23 = CGPathCreateWithEllipseInRect(v31, 0);
  v24 = colorCopy;
  v29 = layerCopy;
  v25 = borderColorCopy;
  v26 = patternCopy;
  cGColor = [colorCopy CGColor];

  [v29 setFillColor:cGColor];
  cGColor2 = [v25 CGColor];

  [v29 setStrokeColor:cGColor2];
  [v29 setLineDashPhase:phase];
  [v29 setLineDashPattern:v26];

  [v29 setLineWidth:width];
  [v29 setPath:v23];

  CGPathRelease(v23);
}

- (void)updateCrosshairLayer:(id)layer center:(CGPoint)center color:(id)color size:(CGSize)size thickness:(CGSize)thickness
{
  height = thickness.height;
  width = thickness.width;
  v9 = size.height;
  v10 = size.width;
  y = center.y;
  x = center.x;
  colorCopy = color;
  layerCopy = layer;
  v17 = crosshairPointsWithSizeAndCenterPoint(v10, v9, width, height, x, y);
  clearColor = [MEMORY[0x277D75348] clearColor];
  setShapeLayerPathFromPointsWithStyle(layerCopy, v17, colorCopy, clearColor, 0, 0.0, 0.0);
}

- (void)updateUserRects:(id)rects transformedLayer:(id)layer effectScale:(double)scale rects:(id)a6
{
  rectsCopy = rects;
  layerCopy = layer;
  v11 = a6;
  [rectsCopy setHidden:{objc_msgSend(v11, "count") == 0}];
  [layerCopy setHidden:{objc_msgSend(rectsCopy, "isHidden")}];
  if (([rectsCopy isHidden] & 1) == 0)
  {
    sublayers = [rectsCopy sublayers];
    v13 = [sublayers copy];

    [v13 enumerateObjectsUsingBlock:&__block_literal_global_0];
    sublayers2 = [layerCopy sublayers];
    v15 = [sublayers2 copy];

    [v15 enumerateObjectsUsingBlock:&__block_literal_global_84];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = *"";
    v16[2] = __72__PVEffectDebugView_updateUserRects_transformedLayer_effectScale_rects___block_invoke_3;
    v16[3] = &unk_279AA4C70;
    scaleCopy = scale;
    v17 = rectsCopy;
    v18 = layerCopy;
    [v11 enumerateObjectsUsingBlock:v16];
  }
}

void __72__PVEffectDebugView_updateUserRects_transformedLayer_effectScale_rects___block_invoke_3(uint64_t x0_0, void *a2)
{
  v15 = a2;
  v3 = [v15 ignoreTransform];
  [v15 strokeWidth];
  v5 = v4;
  if ((v3 & 1) == 0)
  {
    v5 = v4 / *(x0_0 + 48);
  }

  v6 = [MEMORY[0x277CD9F90] layer];
  [v15 frame];
  v7 = pv_CGRect_to_NSArray(v17);
  v8 = [v15 fillColor];
  v9 = [v15 strokeColor];
  [v15 lineDashPhase];
  v11 = v10;
  v12 = [v15 lineDashPattern];
  setShapeLayerPathFromPointsWithStyle(v6, v7, v8, v9, v12, v11, v5);

  v13 = [v15 ignoreTransform];
  v14 = 40;
  if (v13)
  {
    v14 = 32;
  }

  [*(x0_0 + v14) addSublayer:v6];
}

- (void)updateUserPoints:(id)points transformedLayer:(id)layer effectScale:(double)scale points:(id)a6
{
  pointsCopy = points;
  layerCopy = layer;
  v12 = a6;
  [pointsCopy setHidden:{objc_msgSend(v12, "count") == 0}];
  [layerCopy setHidden:{objc_msgSend(pointsCopy, "isHidden")}];
  if (([pointsCopy isHidden] & 1) == 0)
  {
    sublayers = [pointsCopy sublayers];
    v14 = [sublayers copy];

    [v14 enumerateObjectsUsingBlock:&__block_literal_global_87];
    sublayers2 = [layerCopy sublayers];
    v16 = [sublayers2 copy];

    [v16 enumerateObjectsUsingBlock:&__block_literal_global_89];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = *"";
    v17[2] = __74__PVEffectDebugView_updateUserPoints_transformedLayer_effectScale_points___block_invoke_3;
    v17[3] = &unk_279AA4CC0;
    scaleCopy = scale;
    v17[4] = self;
    v18 = pointsCopy;
    v19 = layerCopy;
    [v12 enumerateObjectsUsingBlock:v17];
  }
}

void __74__PVEffectDebugView_updateUserPoints_transformedLayer_effectScale_points___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 ignoreTransform];
  [v3 radius];
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v6 = v5 / *(a1 + 56);
  }

  v7 = [v3 ignoreTransform];
  [v3 strokeWidth];
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    v9 = v8 / *(a1 + 56);
  }

  v10 = [v3 lineDashPattern];
  if (([v3 ignoreTransform] & 1) == 0 && objc_msgSend(v10, "count"))
  {
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v27 = MEMORY[0x277D85DD0];
    v28 = *"";
    v29 = __74__PVEffectDebugView_updateUserPoints_transformedLayer_effectScale_points___block_invoke_4;
    v30 = &unk_279AA4C98;
    v12 = v11;
    v31 = v12;
    v32 = *(a1 + 56);
    [v10 enumerateObjectsUsingBlock:&v27];
    v13 = v12;

    v10 = v13;
  }

  v14 = [MEMORY[0x277CD9F90] layer];
  v15 = *(a1 + 32);
  [v3 center];
  v17 = v16;
  v19 = v18;
  v20 = [v3 fillColor];
  v21 = [v3 strokeColor];
  [v3 lineDashPhase];
  v23 = v22;
  v24 = [v3 lineDashPattern];
  [v15 updateFilledCircleLayer:v14 center:v20 radius:v21 fillColor:v24 borderWidth:v17 borderColor:v19 borderPhase:v6 borderDashPattern:{v9, v23}];

  v25 = [v3 ignoreTransform];
  v26 = 48;
  if (v25)
  {
    v26 = 40;
  }

  [*(a1 + v26) addSublayer:v14];
}

void __74__PVEffectDebugView_updateUserPoints_transformedLayer_effectScale_points___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  [a2 doubleValue];
  v7 = [v5 numberWithDouble:v6 / *(a1 + 40)];
  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

- (void)updateWithEffectFrame:(id)frame
{
  v301 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  options = [(PVEffectDebugView *)self options];
  isEnabled = [options isEnabled];

  if (!frameCopy || (isEnabled & 1) == 0)
  {
    rootContainerView = [(PVEffectDebugView *)self rootContainerView];
    [rootContainerView setHidden:1];

    goto LABEL_69;
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  rootContainerView2 = [(PVEffectDebugView *)self rootContainerView];
  [rootContainerView2 setHidden:0];

  [frameCopy viewSize];
  v9 = v8;
  v11 = v10;
  v302.origin.x = 0.0;
  v302.origin.y = 0.0;
  v302.size.width = v9;
  v302.size.height = v11;
  MidX = CGRectGetMidX(v302);
  v303.origin.x = 0.0;
  v303.origin.y = 0.0;
  v303.size.width = v9;
  v303.size.height = v11;
  MidY = CGRectGetMidY(v303);
  v288 = 0u;
  v289 = 0u;
  v287 = 0u;
  [(PVEffectDebugView *)self transform];
  v14 = *(MEMORY[0x277CBF2C0] + 16);
  v279 = *MEMORY[0x277CBF2C0];
  v15 = *(MEMORY[0x277CBF2C0] + 32);
  v280 = v14;
  v281 = v15;
  [(PVEffectDebugView *)self setTransform:&v279];
  [(PVEffectDebugView *)self setFrame:0.0, 0.0, v9, v11];
  v279 = v287;
  v280 = v288;
  v281 = v289;
  [(PVEffectDebugView *)self setTransform:&v279];
  rootContainerView3 = [(PVEffectDebugView *)self rootContainerView];
  [rootContainerView3 setFrame:{0.0, 0.0, v9, v11}];

  rootTransformLayer = [(PVEffectDebugView *)self rootTransformLayer];
  v18 = *(MEMORY[0x277CD9DE8] + 64);
  v19 = *(MEMORY[0x277CD9DE8] + 96);
  v20 = *(MEMORY[0x277CD9DE8] + 112);
  v284 = *(MEMORY[0x277CD9DE8] + 80);
  v285 = v19;
  v286 = v20;
  v21 = *(MEMORY[0x277CD9DE8] + 16);
  v279 = *MEMORY[0x277CD9DE8];
  v22 = *(MEMORY[0x277CD9DE8] + 32);
  v23 = *(MEMORY[0x277CD9DE8] + 48);
  v280 = v21;
  v281 = v22;
  v282 = v23;
  v283 = v18;
  [rootTransformLayer setTransform:&v279];

  rootTransformLayer2 = [(PVEffectDebugView *)self rootTransformLayer];
  [rootTransformLayer2 setBounds:{0.0, 0.0, v9, v11}];

  v26 = *MEMORY[0x277CBF348];
  v25 = *(MEMORY[0x277CBF348] + 8);
  rootTransformLayer3 = [(PVEffectDebugView *)self rootTransformLayer];
  v264 = v25;
  [rootTransformLayer3 setPosition:{v26, v25}];

  v285 = 0u;
  v286 = 0u;
  v283 = 0u;
  v284 = 0u;
  v281 = 0u;
  v282 = 0u;
  v280 = 0u;
  v279 = 0u;
  [frameCopy transformInfo];
  v28 = fmax(fabs(*&v283), 0.001);
  [frameCopy transform];
  d = v296.d;
  b = v296.b;
  c = v296.c;
  a = v296.a;
  v260 = v300;
  v262 = v298;
  v254 = v299;
  v255 = v297;
  rootTransformLayer4 = [(PVEffectDebugView *)self rootTransformLayer];
  v296.a = a;
  v296.b = b;
  v296.c = c;
  v296.d = d;
  v297 = v255;
  v298 = v262;
  v299 = v254;
  v300 = v260;
  [rootTransformLayer4 setTransform:&v296];

  documentBoundingBoxLayer = [(PVEffectDebugView *)self documentBoundingBoxLayer];
  [documentBoundingBoxLayer setBounds:{0.0, 0.0, v9, v11}];

  documentBoundingBoxLayer2 = [(PVEffectDebugView *)self documentBoundingBoxLayer];
  [documentBoundingBoxLayer2 setPosition:{MidX, MidY}];

  outputROILayer = [(PVEffectDebugView *)self outputROILayer];
  [outputROILayer setBounds:{0.0, 0.0, v9, v11}];

  outputROILayer2 = [(PVEffectDebugView *)self outputROILayer];
  [outputROILayer2 setPosition:{MidX, MidY}];

  objectAlignedBoundingBoxLayer = [(PVEffectDebugView *)self objectAlignedBoundingBoxLayer];
  [objectAlignedBoundingBoxLayer setBounds:{0.0, 0.0, v9, v11}];

  objectAlignedBoundingBoxLayer2 = [(PVEffectDebugView *)self objectAlignedBoundingBoxLayer];
  [objectAlignedBoundingBoxLayer2 setPosition:{MidX, MidY}];

  textBoundingBoxesContainerLayer = [(PVEffectDebugView *)self textBoundingBoxesContainerLayer];
  [textBoundingBoxesContainerLayer setBounds:{0.0, 0.0, v9, v11}];

  textBoundingBoxesContainerLayer2 = [(PVEffectDebugView *)self textBoundingBoxesContainerLayer];
  [textBoundingBoxesContainerLayer2 setPosition:{MidX, MidY}];

  originLayer = [(PVEffectDebugView *)self originLayer];
  [originLayer setBounds:{0.0, 0.0, v9, v11}];

  originLayer2 = [(PVEffectDebugView *)self originLayer];
  [originLayer2 setPosition:{MidX, MidY}];

  originCrosshairLayer = [(PVEffectDebugView *)self originCrosshairLayer];
  [originCrosshairLayer setBounds:{0.0, 0.0, v9, v11}];

  originCrosshairLayer2 = [(PVEffectDebugView *)self originCrosshairLayer];
  [originCrosshairLayer2 setPosition:{MidX, MidY}];

  midpointLayer = [(PVEffectDebugView *)self midpointLayer];
  [midpointLayer setBounds:{0.0, 0.0, v9, v11}];

  midpointLayer2 = [(PVEffectDebugView *)self midpointLayer];
  [midpointLayer2 setPosition:{MidX, MidY}];

  cornerPointsLayer = [(PVEffectDebugView *)self cornerPointsLayer];
  [cornerPointsLayer setBounds:{0.0, 0.0, v9, v11}];

  cornerPointsLayer2 = [(PVEffectDebugView *)self cornerPointsLayer];
  [cornerPointsLayer2 setPosition:{MidX, MidY}];

  textCornerPointsContainerLayer = [(PVEffectDebugView *)self textCornerPointsContainerLayer];
  [textCornerPointsContainerLayer setBounds:{0.0, 0.0, v9, v11}];

  textCornerPointsContainerLayer2 = [(PVEffectDebugView *)self textCornerPointsContainerLayer];
  [textCornerPointsContainerLayer2 setPosition:{MidX, MidY}];

  hitAreaPointsLayer = [(PVEffectDebugView *)self hitAreaPointsLayer];
  [hitAreaPointsLayer setBounds:{0.0, 0.0, v9, v11}];

  hitAreaPointsLayer2 = [(PVEffectDebugView *)self hitAreaPointsLayer];
  [hitAreaPointsLayer2 setPosition:{MidX, MidY}];

  userRectsLayer = [(PVEffectDebugView *)self userRectsLayer];
  [userRectsLayer setBounds:{0.0, 0.0, v9, v11}];

  userRectsLayer2 = [(PVEffectDebugView *)self userRectsLayer];
  [userRectsLayer2 setPosition:{MidX, MidY}];

  userRectsTransformedLayer = [(PVEffectDebugView *)self userRectsTransformedLayer];
  [userRectsTransformedLayer setBounds:{0.0, 0.0, v9, v11}];

  userRectsTransformedLayer2 = [(PVEffectDebugView *)self userRectsTransformedLayer];
  [userRectsTransformedLayer2 setPosition:{MidX, MidY}];

  userPointsLayer = [(PVEffectDebugView *)self userPointsLayer];
  [userPointsLayer setBounds:{0.0, 0.0, v9, v11}];

  userPointsLayer2 = [(PVEffectDebugView *)self userPointsLayer];
  [userPointsLayer2 setPosition:{MidX, MidY}];

  userPointsTransformedLayer = [(PVEffectDebugView *)self userPointsTransformedLayer];
  v261 = v9;
  v259 = v11;
  [userPointsTransformedLayer setBounds:{0.0, 0.0, v9, v11}];

  userPointsTransformedLayer2 = [(PVEffectDebugView *)self userPointsTransformedLayer];
  [userPointsTransformedLayer2 setPosition:{MidX, MidY}];

  options2 = [(PVEffectDebugView *)self options];
  showDocumentBoundingBox = [options2 showDocumentBoundingBox];

  v60 = showDocumentBoundingBox ^ 1u;
  documentBoundingBoxLayer3 = [(PVEffectDebugView *)self documentBoundingBoxLayer];
  [documentBoundingBoxLayer3 setHidden:v60];

  if ((v60 & 1) == 0)
  {
    [frameCopy effectSize];
    v63 = v62;
    v65 = v64;
    effectOrigin = [frameCopy effectOrigin];
    v67 = 0;
    v296.a.y = 0.0;
    v296.a.x = 0.0;
    __asm { FMOV            V1.2D, #1.0 }

    v296.b = xmmword_2603426F0;
    v296.c = _Q1;
    v296.d = xmmword_260342700;
    while (1)
    {
      v266 = *(&v296.a.x + v67);
      v269 = *(&v296.a.y + v67);
      if (effectOrigin == 2)
      {
        break;
      }

      v73 = v264;
      v74 = v26;
      if (effectOrigin != 1)
      {
        goto LABEL_9;
      }

      memset(&v290, 0, sizeof(v290));
      CGAffineTransformMakeScale(&v290, v63, v65);
      v291 = v290;
      CGAffineTransformTranslate(&v292, &v291, v26, 1.0);
      v290 = v292;
      v291 = v292;
      CGAffineTransformScale(&v292, &v291, 1.0, -1.0);
LABEL_10:
      v290 = v292;
      *(&v296.a + v67) = vaddq_f64(*&v292.tx, vaddq_f64(vmulq_n_f64(*&v292.a, v266), vmulq_n_f64(*&v292.c, v269)));
      v67 += 16;
      if (v67 == 64)
      {
        v75 = 0;
        v76 = -1.79769313e308;
        v77 = 1.79769313e308;
        v78 = 1.79769313e308;
        v79 = -1.79769313e308;
        do
        {
          v80 = *(&v296.a.x + v75);
          v81 = *(&v296.a.y + v75);
          if (v80 < v77)
          {
            v77 = *(&v296.a.x + v75);
          }

          if (v80 > v76)
          {
            v76 = *(&v296.a.x + v75);
          }

          if (v81 > v79)
          {
            v79 = *(&v296.a.y + v75);
          }

          if (v81 < v78)
          {
            v78 = *(&v296.a.y + v75);
          }

          v75 += 16;
        }

        while (v75 != 64);
        v82 = v76 - v77;
        v83 = v79 - v78;
        documentBoundingBoxLayer4 = [(PVEffectDebugView *)self documentBoundingBoxLayer];
        options3 = [(PVEffectDebugView *)self options];
        documentBoundingBoxColor = [options3 documentBoundingBoxColor];
        v87 = [MEMORY[0x277CCABB0] numberWithDouble:8.0 / v28];
        v295[0] = v87;
        v88 = [MEMORY[0x277CCABB0] numberWithDouble:5.0 / v28];
        v295[1] = v88;
        v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v295 count:2];
        [(PVEffectDebugView *)self updateDottedBorderedLayer:documentBoundingBoxLayer4 borderRect:documentBoundingBoxColor borderWidth:v89 borderColor:v77 borderPhase:v78 borderDashPattern:v82, v83, 2.0 / v28, 0.0];

        goto LABEL_22;
      }
    }

    v73 = -0.5;
    v74 = -0.5;
LABEL_9:
    memset(&v290, 0, sizeof(v290));
    CGAffineTransformMakeScale(&v290, v63, v65);
    v291 = v290;
    CGAffineTransformTranslate(&v292, &v291, v74, v73);
    goto LABEL_10;
  }

LABEL_22:
  options4 = [(PVEffectDebugView *)self options];
  showOutputROI = [options4 showOutputROI];

  v92 = showOutputROI ^ 1u;
  outputROILayer3 = [(PVEffectDebugView *)self outputROILayer];
  [outputROILayer3 setHidden:v92];

  v263 = v26;
  if (v92)
  {
    goto LABEL_41;
  }

  v257 = v28;
  [frameCopy outputROI];
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v101 = v100;
  [frameCopy effectSize];
  v103 = v102;
  v105 = v104;
  [frameCopy effectSize];
  v107 = v106;
  v109 = v108;
  effectOrigin2 = [frameCopy effectOrigin];
  v111 = 0;
  v296.a.x = v95;
  v296.a.y = v97;
  v296.b.x = v95 + v99;
  v296.b.y = v97;
  v296.c.x = v95 + v99;
  v296.c.y = v97 + v101;
  v296.d.x = v95;
  v296.d.y = v97 + v101;
  v112 = v107 / v103;
  v113 = v103 * -0.5;
  v114 = v109 / v105;
  do
  {
    v267 = *(&v296.a.x + v111);
    v270 = *(&v296.a.y + v111);
    if (effectOrigin2 == 2)
    {
      v115 = v105 * -0.5;
      v116 = v113;
    }

    else
    {
      v115 = v264;
      v116 = v263;
      if (effectOrigin2 == 1)
      {
        memset(&v290, 0, sizeof(v290));
        CGAffineTransformMakeScale(&v290, v112, v114);
        v291 = v290;
        CGAffineTransformTranslate(&v292, &v291, v263, v105);
        v290 = v292;
        v291 = v292;
        CGAffineTransformScale(&v292, &v291, 1.0, -1.0);
        goto LABEL_29;
      }
    }

    memset(&v290, 0, sizeof(v290));
    CGAffineTransformMakeScale(&v290, v112, v114);
    v291 = v290;
    CGAffineTransformTranslate(&v292, &v291, v116, v115);
LABEL_29:
    v290 = v292;
    *(&v296.a + v111) = vaddq_f64(*&v292.tx, vaddq_f64(vmulq_n_f64(*&v292.a, v267), vmulq_n_f64(*&v292.c, v270)));
    v111 += 16;
  }

  while (v111 != 64);
  v117 = 0;
  v118 = -1.79769313e308;
  v119 = 1.79769313e308;
  v120 = 1.79769313e308;
  v121 = -1.79769313e308;
  do
  {
    v122 = *(&v296.a.x + v117);
    v123 = *(&v296.a.y + v117);
    if (v122 < v119)
    {
      v119 = *(&v296.a.x + v117);
    }

    if (v122 > v118)
    {
      v118 = *(&v296.a.x + v117);
    }

    if (v123 > v121)
    {
      v121 = *(&v296.a.y + v117);
    }

    if (v123 < v120)
    {
      v120 = *(&v296.a.y + v117);
    }

    v117 += 16;
  }

  while (v117 != 64);
  v124 = v118 - v119;
  v125 = v121 - v120;
  outputROILayer4 = [(PVEffectDebugView *)self outputROILayer];
  v28 = v257;
  options5 = [(PVEffectDebugView *)self options];
  outputROIColor = [options5 outputROIColor];
  v257 = [MEMORY[0x277CCABB0] numberWithDouble:6.0 / v257];
  v294[0] = v257;
  v2572 = [MEMORY[0x277CCABB0] numberWithDouble:4.0 / v257];
  v294[1] = v2572;
  v131 = [MEMORY[0x277CBEA60] arrayWithObjects:v294 count:2];
  [(PVEffectDebugView *)self updateDottedBorderedLayer:outputROILayer4 borderRect:outputROIColor borderWidth:v131 borderColor:v119 borderPhase:v120 borderDashPattern:v124, v125, 2.0 / v257, 10.0 / v257];

  v26 = v263;
LABEL_41:
  options6 = [(PVEffectDebugView *)self options];
  showObjectAlignedBoundingBox = [options6 showObjectAlignedBoundingBox];

  v134 = showObjectAlignedBoundingBox ^ 1u;
  objectAlignedBoundingBoxLayer3 = [(PVEffectDebugView *)self objectAlignedBoundingBoxLayer];
  [objectAlignedBoundingBoxLayer3 setHidden:v134];

  if ((v134 & 1) == 0)
  {
    objectAlignedBoundingBoxLayer4 = [(PVEffectDebugView *)self objectAlignedBoundingBoxLayer];
    [frameCopy objectBounds];
    v138 = v137;
    v140 = v139;
    v142 = v141;
    v144 = v143;
    options7 = [(PVEffectDebugView *)self options];
    objectAlignedBoundingBoxColor = [options7 objectAlignedBoundingBoxColor];
    v147 = [MEMORY[0x277CCABB0] numberWithDouble:3.0 / v28];
    v293[0] = v147;
    v148 = [MEMORY[0x277CCABB0] numberWithDouble:3.0 / v28];
    v293[1] = v148;
    v149 = [MEMORY[0x277CBEA60] arrayWithObjects:v293 count:2];
    v150 = v142;
    v26 = v263;
    [(PVEffectDebugView *)self updateDottedBorderedLayer:objectAlignedBoundingBoxLayer4 borderRect:objectAlignedBoundingBoxColor borderWidth:v149 borderColor:v138 borderPhase:v140 borderDashPattern:v150, v144, 2.0 / v28, 0.0];
  }

  options8 = [(PVEffectDebugView *)self options];
  if ([options8 showTextBoundingBoxes])
  {
    textFrames = [frameCopy textFrames];
    v153 = [textFrames count];

    textBoundingBoxesContainerLayer3 = [(PVEffectDebugView *)self textBoundingBoxesContainerLayer];
    [textBoundingBoxesContainerLayer3 setHidden:v153 == 0];

    if (v153)
    {
      textBoundingBoxesContainerLayer4 = [(PVEffectDebugView *)self textBoundingBoxesContainerLayer];
      textFrames2 = [frameCopy textFrames];
      ensureNSublayers(textBoundingBoxesContainerLayer4, [textFrames2 count]);

      textFrames3 = [frameCopy textFrames];
      v273[0] = MEMORY[0x277D85DD0];
      v273[1] = *"";
      v273[2] = __43__PVEffectDebugView_updateWithEffectFrame___block_invoke;
      v273[3] = &unk_279AA4CE8;
      v275 = 0;
      v276 = 0;
      v273[4] = self;
      v277 = v261;
      v278 = v259;
      v274 = frameCopy;
      [textFrames3 enumerateObjectsUsingBlock:v273];
    }
  }

  else
  {

    textBoundingBoxesContainerLayer5 = [(PVEffectDebugView *)self textBoundingBoxesContainerLayer];
    [textBoundingBoxesContainerLayer5 setHidden:1];
  }

  options9 = [(PVEffectDebugView *)self options];
  showHitAreaShape = [options9 showHitAreaShape];

  hitAreaShapeLayer = [(PVEffectDebugView *)self hitAreaShapeLayer];
  v163 = hitAreaShapeLayer;
  if (showHitAreaShape)
  {
    [hitAreaShapeLayer setHidden:0];

    hitAreaMinimumSizeBoundingBoxLayer = [(PVEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    [hitAreaMinimumSizeBoundingBoxLayer setHidden:0];

    hitAreaShapeLayer2 = [(PVEffectDebugView *)self hitAreaShapeLayer];
    hitAreaPoints = [frameCopy hitAreaPoints];
    options10 = [(PVEffectDebugView *)self options];
    hitAreaShapeColor = [options10 hitAreaShapeColor];
    [(PVEffectDebugView *)self updatePolygonLayer:hitAreaShapeLayer2 points:hitAreaPoints borderWidth:hitAreaShapeColor borderColor:&unk_28732D748 borderPhase:2.0 borderDashPattern:0.0];

    hitAreaMinimumSizeBoundingBoxLayer2 = [(PVEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    ensureNSublayers(hitAreaMinimumSizeBoundingBoxLayer2, 1uLL);

    hitAreaMinimumSizeBoundingBoxLayer3 = [(PVEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    sublayers = [hitAreaMinimumSizeBoundingBoxLayer3 sublayers];
    firstObject = [sublayers firstObject];

    hitAreaPath = [frameCopy hitAreaPath];
    options11 = [(PVEffectDebugView *)self options];
    hitAreaShapeColor2 = [options11 hitAreaShapeColor];
    [(PVEffectDebugView *)self updateFilledPolygonLayer:firstObject path:hitAreaPath fillColor:hitAreaShapeColor2];

    hitAreaMinimumSizeBoundingBoxLayer4 = [(PVEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    expandedHitAreaPath = [frameCopy expandedHitAreaPath];
    options12 = [(PVEffectDebugView *)self options];
    hitAreaShapeColor3 = [options12 hitAreaShapeColor];
    [(PVEffectDebugView *)self updateFilledPolygonLayer:hitAreaMinimumSizeBoundingBoxLayer4 path:expandedHitAreaPath fillColor:hitAreaShapeColor3];
  }

  else
  {
    [hitAreaShapeLayer setHidden:1];

    firstObject = [(PVEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    [firstObject setHidden:1];
  }

  options13 = [(PVEffectDebugView *)self options];
  showCornerPoints = [options13 showCornerPoints];

  v182 = showCornerPoints ^ 1u;
  cornerPointsLayer3 = [(PVEffectDebugView *)self cornerPointsLayer];
  [cornerPointsLayer3 setHidden:v182];

  if ((v182 & 1) == 0)
  {
    cornerPointsLayer4 = [(PVEffectDebugView *)self cornerPointsLayer];
    ensureNSublayers(cornerPointsLayer4, 4uLL);

    cornerPointsLayer5 = [(PVEffectDebugView *)self cornerPointsLayer];
    sublayers2 = [cornerPointsLayer5 sublayers];

    [frameCopy cornerPoints];
    v187 = PVCGPointQuad_to_NSArray(&v296);
    options14 = [(PVEffectDebugView *)self options];
    cornerPointColors = [options14 cornerPointColors];
    [(PVEffectDebugView *)self updatePointsLayers:sublayers2 points:v187 colors:cornerPointColors size:4.0];
  }

  options15 = [(PVEffectDebugView *)self options];
  showOrigin = [options15 showOrigin];

  v192 = showOrigin ^ 1u;
  originLayer3 = [(PVEffectDebugView *)self originLayer];
  [originLayer3 setHidden:v192];

  if ((v192 & 1) == 0)
  {
    originLayer4 = [(PVEffectDebugView *)self originLayer];
    [frameCopy center];
    v196 = v195;
    v198 = v197;
    options16 = [(PVEffectDebugView *)self options];
    originColor = [options16 originColor];
    [(PVEffectDebugView *)self updateFilledCircleLayer:originLayer4 center:originColor radius:v196 fillColor:v198, 6.0];

    originCrosshairLayer3 = [(PVEffectDebugView *)self originCrosshairLayer];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(PVEffectDebugView *)self updateCrosshairLayer:originCrosshairLayer3 center:blackColor color:v26 size:v264 thickness:10.0 / v28, 10.0 / v28, 2.0 / v28, 2.0 / v28];
  }

  options17 = [(PVEffectDebugView *)self options];
  showMidpoint = [options17 showMidpoint];

  v205 = showMidpoint ^ 1u;
  midpointLayer3 = [(PVEffectDebugView *)self midpointLayer];
  [midpointLayer3 setHidden:v205];

  if ((v205 & 1) == 0)
  {
    midpointLayer4 = [(PVEffectDebugView *)self midpointLayer];
    [frameCopy midpoint];
    v209 = v208;
    v211 = v210;
    options18 = [(PVEffectDebugView *)self options];
    midpointColor = [options18 midpointColor];
    [(PVEffectDebugView *)self updateFilledCircleLayer:midpointLayer4 center:midpointColor radius:v209 fillColor:v211, 1.5];
  }

  options19 = [(PVEffectDebugView *)self options];
  if ([options19 showTextCornerPoints])
  {
    textFrames4 = [frameCopy textFrames];
    v216 = [textFrames4 count];

    textCornerPointsContainerLayer3 = [(PVEffectDebugView *)self textCornerPointsContainerLayer];
    [textCornerPointsContainerLayer3 setHidden:v216 == 0];

    if (v216)
    {
      textCornerPointsContainerLayer4 = [(PVEffectDebugView *)self textCornerPointsContainerLayer];
      textFrames5 = [frameCopy textFrames];
      ensureNSublayers(textCornerPointsContainerLayer4, 4 * [textFrames5 count]);

      textCornerPointsContainerLayer5 = [(PVEffectDebugView *)self textCornerPointsContainerLayer];
      sublayers3 = [textCornerPointsContainerLayer5 sublayers];

      v222 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(sublayers3, "count")}];
      textFrames6 = [frameCopy textFrames];
      v271[0] = MEMORY[0x277D85DD0];
      v271[1] = *"";
      v271[2] = __43__PVEffectDebugView_updateWithEffectFrame___block_invoke_97;
      v271[3] = &unk_279AA4D10;
      v272 = v222;
      v224 = v222;
      [textFrames6 enumerateObjectsUsingBlock:v271];

      options20 = [(PVEffectDebugView *)self options];
      textCornerPointColors = [options20 textCornerPointColors];
      [(PVEffectDebugView *)self updatePointsLayers:sublayers3 points:v224 colors:textCornerPointColors size:4.0];

      goto LABEL_61;
    }
  }

  else
  {

    sublayers3 = [(PVEffectDebugView *)self textCornerPointsContainerLayer];
    [sublayers3 setHidden:1];
LABEL_61:
  }

  options21 = [(PVEffectDebugView *)self options];
  showHitAreaPoints = [options21 showHitAreaPoints];

  v229 = showHitAreaPoints ^ 1u;
  hitAreaPointsLayer3 = [(PVEffectDebugView *)self hitAreaPointsLayer];
  [hitAreaPointsLayer3 setHidden:v229];

  if ((v229 & 1) == 0)
  {
    hitAreaPointsLayer4 = [(PVEffectDebugView *)self hitAreaPointsLayer];
    hitAreaPoints2 = [frameCopy hitAreaPoints];
    ensureNSublayers(hitAreaPointsLayer4, [hitAreaPoints2 count]);

    hitAreaPointsLayer5 = [(PVEffectDebugView *)self hitAreaPointsLayer];
    sublayers4 = [hitAreaPointsLayer5 sublayers];

    hitAreaPoints3 = [frameCopy hitAreaPoints];
    options22 = [(PVEffectDebugView *)self options];
    hitAreaPointColors = [options22 hitAreaPointColors];
    [(PVEffectDebugView *)self updatePointsLayers:sublayers4 points:hitAreaPoints3 colors:hitAreaPointColors size:4.0];
  }

  options23 = [(PVEffectDebugView *)self options];
  showUserRects = [options23 showUserRects];

  v240 = showUserRects ^ 1u;
  userRectsLayer3 = [(PVEffectDebugView *)self userRectsLayer];
  [userRectsLayer3 setHidden:v240];

  userRectsTransformedLayer3 = [(PVEffectDebugView *)self userRectsTransformedLayer];
  [userRectsTransformedLayer3 setHidden:v240];

  if ((v240 & 1) == 0)
  {
    userRectsLayer4 = [(PVEffectDebugView *)self userRectsLayer];
    userRectsTransformedLayer4 = [(PVEffectDebugView *)self userRectsTransformedLayer];
    userRectsToDraw = [(PVEffectDebugView *)self userRectsToDraw];
    [(PVEffectDebugView *)self updateUserRects:userRectsLayer4 transformedLayer:userRectsTransformedLayer4 effectScale:userRectsToDraw rects:v28];
  }

  options24 = [(PVEffectDebugView *)self options];
  showUserPoints = [options24 showUserPoints];

  v248 = showUserPoints ^ 1u;
  userPointsLayer3 = [(PVEffectDebugView *)self userPointsLayer];
  [userPointsLayer3 setHidden:v248];

  userPointsTransformedLayer3 = [(PVEffectDebugView *)self userPointsTransformedLayer];
  [userPointsTransformedLayer3 setHidden:v248];

  if ((v248 & 1) == 0)
  {
    userPointsLayer4 = [(PVEffectDebugView *)self userPointsLayer];
    userPointsTransformedLayer4 = [(PVEffectDebugView *)self userPointsTransformedLayer];
    userPointsToDraw = [(PVEffectDebugView *)self userPointsToDraw];
    [(PVEffectDebugView *)self updateUserPoints:userPointsLayer4 transformedLayer:userPointsTransformedLayer4 effectScale:userPointsToDraw points:v28];
  }

  [MEMORY[0x277CD9FF0] commit];
LABEL_69:
}

void __43__PVEffectDebugView_updateWithEffectFrame___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v51[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) textBoundingBoxesContainerLayer];
  v7 = [v6 sublayers];
  v8 = [v7 objectAtIndexedSubscript:a3];

  ensureNSublayers(v8, 1uLL);
  v9 = *(MEMORY[0x277CD9DE8] + 80);
  v47 = *(MEMORY[0x277CD9DE8] + 64);
  v48 = v9;
  v10 = *(MEMORY[0x277CD9DE8] + 112);
  v49 = *(MEMORY[0x277CD9DE8] + 96);
  v50 = v10;
  v11 = *(MEMORY[0x277CD9DE8] + 16);
  v43 = *MEMORY[0x277CD9DE8];
  v44 = v11;
  v12 = *(MEMORY[0x277CD9DE8] + 48);
  v45 = *(MEMORY[0x277CD9DE8] + 32);
  v46 = v12;
  [v8 setTransform:&v43];
  [v8 setBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v13 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  [v8 setPosition:{*MEMORY[0x277CBF348], v14}];
  [v8 setAnchorPoint:{v13, v14}];
  if (v5)
  {
    [v5 transform];
    v16 = v43;
    v15 = v44;
    v18 = v45;
    v17 = v46;
    v20 = v47;
    v19 = v48;
    v22 = v49;
    v21 = v50;
  }

  else
  {
    v22 = 0uLL;
    v21 = 0uLL;
    v20 = 0uLL;
    v19 = 0uLL;
    v18 = 0uLL;
    v17 = 0uLL;
    v16 = 0uLL;
    v15 = 0uLL;
  }

  v43 = v16;
  v44 = v15;
  v45 = v18;
  v46 = v17;
  v47 = v20;
  v48 = v19;
  v49 = v22;
  v50 = v21;
  [v8 setTransform:&v43];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  if (v5)
  {
    [v5 transformInfo];
    v23 = *&v47;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = fmax(fabs(v23), 0.001);
  v25 = [v8 sublayers];
  v26 = [v25 firstObject];

  v27 = [*(a1 + 32) options];
  v28 = [v27 textBoundingBoxColors];
  v29 = [*(a1 + 40) textFrames];
  v30 = [v28 objectAtIndexedSubscript:{a3 % objc_msgSend(v29, "count")}];

  v31 = *(a1 + 32);
  [v5 objectBounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = [MEMORY[0x277CCABB0] numberWithDouble:6.0 / v24];
  v51[0] = v40;
  v41 = [MEMORY[0x277CCABB0] numberWithDouble:3.0 / v24];
  v51[1] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
  [v31 updateDottedBorderedLayer:v26 borderRect:v30 borderWidth:v42 borderColor:v33 borderPhase:v35 borderDashPattern:{v37, v39, 2.0 / v24, 0.0}];
}

void __43__PVEffectDebugView_updateWithEffectFrame___block_invoke_97(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    [a2 cornerPoints];
  }

  else
  {
    memset(&v4, 0, sizeof(v4));
  }

  v3 = PVCGPointQuad_to_NSArray(&v4);
  [v2 addObjectsFromArray:v3];
}

- (id)userRectsToDraw
{
  delegate = [(PVEffectDebugView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    pvEffectDebugViewUserRectsToDraw = [delegate pvEffectDebugViewUserRectsToDraw];
  }

  else
  {
    pvEffectDebugViewUserRectsToDraw = 0;
  }

  return pvEffectDebugViewUserRectsToDraw;
}

- (id)userPointsToDraw
{
  delegate = [(PVEffectDebugView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    pvEffectDebugViewUserPointsToDraw = [delegate pvEffectDebugViewUserPointsToDraw];
  }

  else
  {
    pvEffectDebugViewUserPointsToDraw = 0;
  }

  return pvEffectDebugViewUserPointsToDraw;
}

+ (id)documentBoundsLayerWithFrame:(CGRect)frame options:(id)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = MEMORY[0x277CD9F90];
  optionsCopy = options;
  layer = [v8 layer];
  [layer setFrame:{x, y, width, height}];
  [layer bounds];
  v11 = pv_CGRect_to_NSArray(v36);
  clearColor = [MEMORY[0x277D75348] clearColor];
  documentBoundingBoxColor = [optionsCopy documentBoundingBoxColor];
  setShapeLayerPathFromPointsWithStyle(layer, v11, clearColor, documentBoundingBoxColor, &unk_28732D760, 0.0, 2.0);

  ensureNSublayers(layer, 2uLL);
  [layer bounds];
  v14 = v37.origin.x;
  v15 = v37.origin.y;
  v16 = v37.size.width;
  v17 = v37.size.height;
  MidX = CGRectGetMidX(v37);
  v38.origin.x = v14;
  v38.origin.y = v15;
  v38.size.width = v16;
  v38.size.height = v17;
  MidY = CGRectGetMidY(v38);
  v39.origin.x = MidX + -6.0;
  v39.origin.y = MidY + -6.0;
  v39.size.width = 12.0;
  v39.size.height = 12.0;
  v20 = CGPathCreateWithEllipseInRect(v39, 0);
  v21 = crosshairPointsWithSizeAndCenterPoint(10.0, 10.0, 2.0, 2.0, MidX, MidY);
  v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v21, "count")}];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = *"";
  v33[2] = __makeCircleCrosshairWithSizeAndCenterPoint_block_invoke;
  v33[3] = &unk_279AA4D60;
  v34 = v22;
  v23 = v22;
  [v21 enumerateObjectsWithOptions:2 usingBlock:v33];
  closed_CGPath_with_points = pv_create_closed_CGPath_with_points(v23);
  MutableCopy = CGPathCreateMutableCopy(v20);
  CGPathAddPath(MutableCopy, 0, closed_CGPath_with_points);
  CGPathRelease(v20);
  CGPathRelease(closed_CGPath_with_points);

  sublayers = [layer sublayers];
  v27 = [sublayers objectAtIndexedSubscript:0];
  originColor = [optionsCopy originColor];

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  v30 = originColor;
  v31 = v27;
  [v31 setFillColor:{objc_msgSend(originColor, "CGColor")}];
  [v31 setStrokeColor:{objc_msgSend(clearColor2, "CGColor")}];
  [v31 setLineDashPhase:0.0];
  [v31 setLineDashPattern:0];
  [v31 setLineWidth:0.0];
  [v31 setPath:MutableCopy];

  CGPathRelease(MutableCopy);

  return layer;
}

+ (id)outputROILayerWithFrame:(CGRect)frame options:(id)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = MEMORY[0x277CD9F90];
  optionsCopy = options;
  layer = [v8 layer];
  [layer setFrame:{x, y, width, height}];
  [layer bounds];
  v11 = pv_CGRect_to_NSArray(v16);
  clearColor = [MEMORY[0x277D75348] clearColor];
  outputROIColor = [optionsCopy outputROIColor];

  setShapeLayerPathFromPointsWithStyle(layer, v11, clearColor, outputROIColor, &unk_28732D778, 10.0, 2.0);

  return layer;
}

+ (id)objectBoundsLayerWithFrame:(CGRect)frame options:(id)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  optionsCopy = options;
  layer = [MEMORY[0x277CD9F90] layer];
  [layer setFrame:{x, y, width, height}];
  [layer bounds];
  v10 = pv_CGRect_to_NSArray(v36);
  clearColor = [MEMORY[0x277D75348] clearColor];
  objectAlignedBoundingBoxColor = [optionsCopy objectAlignedBoundingBoxColor];
  setShapeLayerPathFromPointsWithStyle(layer, v10, clearColor, objectAlignedBoundingBoxColor, &unk_28732D790, 0.0, 2.0);

  ensureNSublayers(layer, [v10 count]);
  sublayers = [layer sublayers];
  v29 = MEMORY[0x277D85DD0];
  v30 = *"";
  v31 = __56__PVEffectDebugView_objectBoundsLayerWithFrame_options___block_invoke;
  v32 = &unk_279AA4D38;
  v33 = v10;
  v34 = optionsCopy;
  v14 = optionsCopy;
  v15 = v10;
  [sublayers enumerateObjectsUsingBlock:&v29];

  ensureNSublayers(layer, [v15 count] + 1);
  [layer bounds];
  v16 = v37.origin.x;
  v17 = v37.origin.y;
  v18 = v37.size.width;
  v19 = v37.size.height;
  MidX = CGRectGetMidX(v37);
  v38.origin.x = v16;
  v38.origin.y = v17;
  v38.size.width = v18;
  v38.size.height = v19;
  v39.origin.y = CGRectGetMidY(v38) + -1.5;
  v39.size.width = 3.0;
  v39.size.height = 3.0;
  v39.origin.x = MidX + -1.5;
  v21 = CGPathCreateWithEllipseInRect(v39, 0);
  sublayers2 = [layer sublayers];
  lastObject = [sublayers2 lastObject];
  midpointColor = [v14 midpointColor];
  clearColor2 = [MEMORY[0x277D75348] clearColor];

  v26 = midpointColor;
  v27 = lastObject;
  [v27 setFillColor:{objc_msgSend(midpointColor, "CGColor")}];
  [v27 setStrokeColor:{objc_msgSend(clearColor2, "CGColor")}];
  [v27 setLineDashPhase:0.0];
  [v27 setLineDashPattern:0];
  [v27 setLineWidth:0.0];
  [v27 setPath:v21];

  CGPathRelease(v21);

  return layer;
}

void __56__PVEffectDebugView_objectBoundsLayerWithFrame_options___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v6 CGPointValue];
  v8 = v7;
  v10 = v9;

  v19.origin.x = v8 + -2.0;
  v19.origin.y = v10 + -2.0;
  v19.size.width = 4.0;
  v19.size.height = 4.0;
  v11 = CGPathCreateWithEllipseInRect(v19, 0);
  v12 = [*(a1 + 40) cornerPointColors];
  v13 = [*(a1 + 40) cornerPointColors];
  v14 = [v12 objectAtIndexedSubscript:{a3 % objc_msgSend(v13, "count")}];
  v15 = [MEMORY[0x277D75348] clearColor];
  v16 = v14;
  v17 = v5;
  [v17 setFillColor:{objc_msgSend(v14, "CGColor")}];
  [v17 setStrokeColor:{objc_msgSend(v15, "CGColor")}];
  [v17 setLineDashPhase:0.0];
  [v17 setLineDashPattern:0];
  [v17 setLineWidth:0.0];
  [v17 setPath:v11];

  CGPathRelease(v11);
}

+ (id)textBoundsLayerWithFrame:(CGRect)frame options:(id)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  optionsCopy = options;
  layer = [MEMORY[0x277CD9F90] layer];
  [layer setFrame:{x, y, width, height}];
  [layer bounds];
  v10 = pv_CGRect_to_NSArray(v22);
  clearColor = [MEMORY[0x277D75348] clearColor];
  textBoundingBoxColors = [optionsCopy textBoundingBoxColors];
  firstObject = [textBoundingBoxColors firstObject];
  setShapeLayerPathFromPointsWithStyle(layer, v10, clearColor, firstObject, &unk_28732D7A8, 0.0, 2.0);

  ensureNSublayers(layer, [v10 count]);
  sublayers = [layer sublayers];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = *"";
  v18[2] = __54__PVEffectDebugView_textBoundsLayerWithFrame_options___block_invoke;
  v18[3] = &unk_279AA4D38;
  v19 = v10;
  v20 = optionsCopy;
  v15 = optionsCopy;
  v16 = v10;
  [sublayers enumerateObjectsUsingBlock:v18];

  return layer;
}

void __54__PVEffectDebugView_textBoundsLayerWithFrame_options___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v6 CGPointValue];
  v8 = v7;
  v10 = v9;

  v19.origin.x = v8 + -2.0;
  v19.origin.y = v10 + -2.0;
  v19.size.width = 4.0;
  v19.size.height = 4.0;
  v11 = CGPathCreateWithEllipseInRect(v19, 0);
  v12 = [*(a1 + 40) textCornerPointColors];
  v13 = [*(a1 + 40) textCornerPointColors];
  v14 = [v12 objectAtIndexedSubscript:{a3 % objc_msgSend(v13, "count")}];
  v15 = [MEMORY[0x277D75348] clearColor];
  v16 = v14;
  v17 = v5;
  [v17 setFillColor:{objc_msgSend(v14, "CGColor")}];
  [v17 setStrokeColor:{objc_msgSend(v15, "CGColor")}];
  [v17 setLineDashPhase:0.0];
  [v17 setLineDashPattern:0];
  [v17 setLineWidth:0.0];
  [v17 setPath:v11];

  CGPathRelease(v11);
}

+ (id)hitAreaShapeLayerWithFrame:(CGRect)frame options:(id)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  optionsCopy = options;
  layer = [MEMORY[0x277CD9F90] layer];
  [layer setFrame:{x, y, width, height}];
  hitAreaShapeColor = [optionsCopy hitAreaShapeColor];
  [layer bounds];
  v12 = (v11 + -8.0) * 0.5;
  [layer bounds];
  v13 = v43.origin.x;
  v14 = v43.origin.y;
  v15 = v43.size.width;
  v16 = v43.size.height;
  MidX = CGRectGetMidX(v43);
  v44.origin.x = v13;
  v44.origin.y = v14;
  v44.size.width = v15;
  v44.size.height = v16;
  MidY = CGRectGetMidY(v44);
  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v20 = 0.0;
  v21 = 5;
  do
  {
    v22 = __sincos_stret(v20 * 1.25663706 + 3.14159265);
    v23 = __sincos_stret(v20 * 1.25663706 + 3.14159265 + 0.628318531);
    v24 = [MEMORY[0x277CCAE60] valueWithCGPoint:{MidX + v12 * v22.__sinval, MidY + v12 * v22.__cosval}];
    [v19 addObject:v24];

    v25 = [MEMORY[0x277CCAE60] valueWithCGPoint:{MidX + v12 * 0.5 * v23.__sinval, MidY + v12 * 0.5 * v23.__cosval}];
    [v19 addObject:v25];

    v20 = v20 + 1.0;
    --v21;
  }

  while (v21);
  clearColor = [MEMORY[0x277D75348] clearColor];
  setShapeLayerPathFromPointsWithStyle(layer, v19, clearColor, hitAreaShapeColor, &unk_28732D7C0, 0.0, 2.0);

  ensureNSublayers(layer, 0xAuLL);
  sublayers = [layer sublayers];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = *"";
  v39[2] = __56__PVEffectDebugView_hitAreaShapeLayerWithFrame_options___block_invoke;
  v39[3] = &unk_279AA4D38;
  v40 = v19;
  v41 = optionsCopy;
  v28 = optionsCopy;
  v29 = v19;
  [sublayers enumerateObjectsUsingBlock:v39];

  layer2 = [MEMORY[0x277CD9F90] layer];

  LODWORD(v31) = 1050253722;
  [layer2 setOpacity:v31];
  [layer2 setZPosition:-1.0];
  [layer addSublayer:layer2];
  ensureNSublayers(layer2, 2uLL);
  path = [layer path];
  sublayers2 = [layer2 sublayers];
  v34 = [sublayers2 objectAtIndexedSubscript:0];

  [v34 setFillColor:{objc_msgSend(hitAreaShapeColor, "CGColor")}];
  [v34 setPath:path];

  sublayers3 = [layer2 sublayers];
  v36 = [sublayers3 objectAtIndexedSubscript:1];

  [v36 setFillColor:{objc_msgSend(hitAreaShapeColor, "CGColor")}];
  expanded_closed_CGPath_with_CGPath = pv_create_expanded_closed_CGPath_with_CGPath(path, 8.0);
  [v36 setPath:expanded_closed_CGPath_with_CGPath];
  CGPathRelease(expanded_closed_CGPath_with_CGPath);

  return layer;
}

void __56__PVEffectDebugView_hitAreaShapeLayerWithFrame_options___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v6 CGPointValue];
  v8 = v7;
  v10 = v9;

  v19.origin.x = v8 + -1.5;
  v19.origin.y = v10 + -1.5;
  v19.size.width = 3.0;
  v19.size.height = 3.0;
  v11 = CGPathCreateWithEllipseInRect(v19, 0);
  v12 = [*(a1 + 40) hitAreaPointColors];
  v13 = [*(a1 + 40) hitAreaPointColors];
  v14 = [v12 objectAtIndexedSubscript:{a3 % objc_msgSend(v13, "count")}];
  v15 = [MEMORY[0x277D75348] clearColor];
  v16 = v14;
  v17 = v5;
  [v17 setFillColor:{objc_msgSend(v14, "CGColor")}];
  [v17 setStrokeColor:{objc_msgSend(v15, "CGColor")}];
  [v17 setLineDashPhase:0.0];
  [v17 setLineDashPattern:0];
  [v17 setLineWidth:0.0];
  [v17 setPath:v11];

  CGPathRelease(v11);
}

- (PVEffectDebugViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end