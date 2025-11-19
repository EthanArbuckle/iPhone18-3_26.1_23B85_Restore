@interface PVEffectDebugView
+ (id)documentBoundsLayerWithFrame:(CGRect)a3 options:(id)a4;
+ (id)hitAreaShapeLayerWithFrame:(CGRect)a3 options:(id)a4;
+ (id)objectBoundsLayerWithFrame:(CGRect)a3 options:(id)a4;
+ (id)outputROILayerWithFrame:(CGRect)a3 options:(id)a4;
+ (id)textBoundsLayerWithFrame:(CGRect)a3 options:(id)a4;
- (PVEffectDebugView)initWithCoder:(id)a3;
- (PVEffectDebugView)initWithFrame:(CGRect)a3;
- (PVEffectDebugView)initWithFrame:(CGRect)a3 delegate:(id)a4;
- (PVEffectDebugViewDelegate)delegate;
- (id)userPointsToDraw;
- (id)userRectsToDraw;
- (void)setupViews;
- (void)updateBorderedLayer:(id)a3 borderRect:(CGRect)a4 borderWidth:(double)a5 borderColor:(id)a6;
- (void)updateCrosshairLayer:(id)a3 center:(CGPoint)a4 color:(id)a5 size:(CGSize)a6 thickness:(CGSize)a7;
- (void)updateDottedBorderedLayer:(id)a3 borderRect:(CGRect)a4 borderWidth:(double)a5 borderColor:(id)a6 borderPhase:(double)a7 borderDashPattern:(id)a8;
- (void)updateFilledCircleLayer:(id)a3 center:(CGPoint)a4 radius:(double)a5 fillColor:(id)a6;
- (void)updateFilledCircleLayer:(id)a3 center:(CGPoint)a4 radius:(double)a5 fillColor:(id)a6 borderWidth:(double)a7 borderColor:(id)a8 borderPhase:(double)a9 borderDashPattern:(id)a10;
- (void)updateFilledPolygonLayer:(id)a3 path:(CGPath *)a4 fillColor:(id)a5;
- (void)updatePointsLayers:(id)a3 points:(id)a4 colors:(id)a5 size:(double)a6;
- (void)updatePolygonLayer:(id)a3 points:(id)a4 borderWidth:(double)a5 borderColor:(id)a6 borderPhase:(double)a7 borderDashPattern:(id)a8;
- (void)updateUserPoints:(id)a3 transformedLayer:(id)a4 effectScale:(double)a5 points:(id)a6;
- (void)updateUserRects:(id)a3 transformedLayer:(id)a4 effectScale:(double)a5 rects:(id)a6;
- (void)updateWithEffectFrame:(id)a3;
@end

@implementation PVEffectDebugView

- (PVEffectDebugView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PVEffectDebugView;
  v3 = [(PVEffectDebugView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PVEffectDebugView *)v3 setupViews];
  }

  return v4;
}

- (PVEffectDebugView)initWithFrame:(CGRect)a3 delegate:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = PVEffectDebugView;
  v10 = [(PVEffectDebugView *)&v13 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(PVEffectDebugView *)v10 setDelegate:v9];
    [(PVEffectDebugView *)v11 setupViews];
  }

  return v11;
}

- (PVEffectDebugView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PVEffectDebugView;
  v3 = [(PVEffectDebugView *)&v6 initWithCoder:a3];
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

  v5 = [(PVEffectDebugView *)self rootContainerView];
  [v5 setUserInteractionEnabled:0];

  v6 = [(PVEffectDebugView *)self rootContainerView];
  [v6 setHidden:1];

  v7 = [(PVEffectDebugView *)self rootContainerView];
  [(PVEffectDebugView *)self addSubview:v7];

  v8 = [(PVEffectDebugView *)self rootContainerView];
  v9 = [v8 layer];
  [(PVEffectDebugView *)self setRootLayer:v9];

  v10 = [MEMORY[0x277CD9FF8] layer];
  [(PVEffectDebugView *)self setRootTransformLayer:v10];

  v11 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  v13 = [(PVEffectDebugView *)self rootTransformLayer];
  [v13 setAnchorPoint:{v11, v12}];

  v14 = [(PVEffectDebugView *)self rootLayer];
  v15 = [(PVEffectDebugView *)self rootTransformLayer];
  [v14 addSublayer:v15];

  v16 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setDocumentBoundingBoxLayer:v16];

  v17 = [(PVEffectDebugView *)self rootTransformLayer];
  v18 = [(PVEffectDebugView *)self documentBoundingBoxLayer];
  [v17 addSublayer:v18];

  v19 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setOutputROILayer:v19];

  v20 = [(PVEffectDebugView *)self rootTransformLayer];
  v21 = [(PVEffectDebugView *)self outputROILayer];
  [v20 addSublayer:v21];

  v22 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setObjectAlignedBoundingBoxLayer:v22];

  v23 = [(PVEffectDebugView *)self rootTransformLayer];
  v24 = [(PVEffectDebugView *)self objectAlignedBoundingBoxLayer];
  [v23 addSublayer:v24];

  v25 = [MEMORY[0x277CD9ED0] layer];
  [(PVEffectDebugView *)self setTextBoundingBoxesContainerLayer:v25];

  v26 = [(PVEffectDebugView *)self rootLayer];
  v27 = [(PVEffectDebugView *)self textBoundingBoxesContainerLayer];
  [v26 addSublayer:v27];

  v28 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setHitAreaShapeLayer:v28];

  v29 = [(PVEffectDebugView *)self rootLayer];
  v30 = [(PVEffectDebugView *)self hitAreaShapeLayer];
  [v29 addSublayer:v30];

  v31 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setHitAreaMinimumSizeBoundingBoxLayer:v31];

  v32 = [(PVEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
  [v32 setZPosition:-1.0];

  v33 = [(PVEffectDebugView *)self rootLayer];
  v34 = [(PVEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
  [v33 addSublayer:v34];

  v35 = [(PVEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
  LODWORD(v36) = 1050253722;
  [v35 setOpacity:v36];

  v37 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setMidpointLayer:v37];

  v38 = [(PVEffectDebugView *)self midpointLayer];
  [v38 setZPosition:10.0];

  v39 = [(PVEffectDebugView *)self rootLayer];
  v40 = [(PVEffectDebugView *)self midpointLayer];
  [v39 addSublayer:v40];

  v41 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setOriginLayer:v41];

  v42 = [(PVEffectDebugView *)self rootLayer];
  v43 = [(PVEffectDebugView *)self originLayer];
  [v42 addSublayer:v43];

  v44 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setOriginCrosshairLayer:v44];

  v45 = [(PVEffectDebugView *)self rootTransformLayer];
  v46 = [(PVEffectDebugView *)self originCrosshairLayer];
  [v45 addSublayer:v46];

  v47 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setCornerPointsLayer:v47];

  v48 = [(PVEffectDebugView *)self cornerPointsLayer];
  [v48 setZPosition:10.0];

  v49 = [(PVEffectDebugView *)self rootLayer];
  v50 = [(PVEffectDebugView *)self cornerPointsLayer];
  [v49 addSublayer:v50];

  v51 = [MEMORY[0x277CD9ED0] layer];
  [(PVEffectDebugView *)self setTextCornerPointsContainerLayer:v51];

  v52 = [(PVEffectDebugView *)self rootLayer];
  v53 = [(PVEffectDebugView *)self textCornerPointsContainerLayer];
  [v52 addSublayer:v53];

  v54 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setHitAreaPointsLayer:v54];

  v55 = [(PVEffectDebugView *)self rootLayer];
  v56 = [(PVEffectDebugView *)self hitAreaPointsLayer];
  [v55 addSublayer:v56];

  v57 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setUserRectsLayer:v57];

  v58 = [(PVEffectDebugView *)self rootLayer];
  v59 = [(PVEffectDebugView *)self userRectsLayer];
  [v58 addSublayer:v59];

  v60 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setUserRectsTransformedLayer:v60];

  v61 = [(PVEffectDebugView *)self rootTransformLayer];
  v62 = [(PVEffectDebugView *)self userRectsTransformedLayer];
  [v61 addSublayer:v62];

  v63 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setUserPointsLayer:v63];

  v64 = [(PVEffectDebugView *)self rootLayer];
  v65 = [(PVEffectDebugView *)self userPointsLayer];
  [v64 addSublayer:v65];

  v66 = [MEMORY[0x277CD9F90] layer];
  [(PVEffectDebugView *)self setUserPointsTransformedLayer:v66];

  v67 = [(PVEffectDebugView *)self rootTransformLayer];
  v68 = [(PVEffectDebugView *)self userPointsTransformedLayer];
  [v67 addSublayer:v68];

  v71 = [(PVEffectDebugView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v71 pvEffectDebugViewOptions], (v69 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v69 = +[PVEffectDebugViewOptions options];
  }

  v70 = v69;
  [(PVEffectDebugView *)self setOptions:v69];
}

- (void)updateDottedBorderedLayer:(id)a3 borderRect:(CGRect)a4 borderWidth:(double)a5 borderColor:(id)a6 borderPhase:(double)a7 borderDashPattern:(id)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16 = a8;
  v17 = a6;
  v18 = a3;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v20 = pv_CGRect_to_NSArray(v22);
  v19 = [MEMORY[0x277D75348] clearColor];
  setShapeLayerPathFromPointsWithStyle(v18, v20, v19, v17, v16, a7, a5);
}

- (void)updateBorderedLayer:(id)a3 borderRect:(CGRect)a4 borderWidth:(double)a5 borderColor:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a6;
  v13 = a3;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v15 = pv_CGRect_to_NSArray(v17);
  v14 = [MEMORY[0x277D75348] clearColor];
  setShapeLayerPathFromPointsWithStyle(v13, v15, v14, v12, 0, 0.0, a5);
}

- (void)updatePolygonLayer:(id)a3 points:(id)a4 borderWidth:(double)a5 borderColor:(id)a6 borderPhase:(double)a7 borderDashPattern:(id)a8
{
  v13 = MEMORY[0x277D75348];
  v14 = a8;
  v15 = a6;
  v16 = a4;
  v17 = a3;
  v18 = [v13 clearColor];
  setShapeLayerPathFromPointsWithStyle(v17, v16, v18, v15, v14, a7, a5);
}

- (void)updateFilledPolygonLayer:(id)a3 path:(CGPath *)a4 fillColor:(id)a5
{
  v7 = a3;
  v8 = MEMORY[0x277D75348];
  v9 = a5;
  v10 = [v8 clearColor];
  v11 = v9;
  v13 = v7;
  v12 = [v9 CGColor];

  [v13 setFillColor:v12];
  [v13 setStrokeColor:{objc_msgSend(v10, "CGColor")}];
  [v13 setLineDashPhase:0.0];
  [v13 setLineDashPattern:0];
  [v13 setLineWidth:0.0];
  [v13 setPath:a4];
}

- (void)updatePointsLayers:(id)a3 points:(id)a4 colors:(id)a5 size:(double)a6
{
  v9 = a4;
  v10 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = *"";
  v13[2] = __59__PVEffectDebugView_updatePointsLayers_points_colors_size___block_invoke;
  v13[3] = &unk_279AA4C28;
  v16 = a6;
  v14 = v9;
  v15 = v10;
  v11 = v10;
  v12 = v9;
  [a3 enumerateObjectsUsingBlock:v13];
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

- (void)updateFilledCircleLayer:(id)a3 center:(CGPoint)a4 radius:(double)a5 fillColor:(id)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v11 = a5 + a5;
  v12 = a6;
  v19.origin.x = x - v11 * 0.5;
  v19.origin.y = y - v11 * 0.5;
  v19.size.width = v11;
  v19.size.height = v11;
  v13 = CGPathCreateWithEllipseInRect(v19, 0);
  v14 = [MEMORY[0x277D75348] clearColor];
  v15 = v12;
  v17 = v10;
  v16 = [v12 CGColor];

  [v17 setFillColor:v16];
  [v17 setStrokeColor:{objc_msgSend(v14, "CGColor")}];
  [v17 setLineDashPhase:0.0];
  [v17 setLineDashPattern:0];
  [v17 setLineWidth:0.0];
  [v17 setPath:v13];

  CGPathRelease(v13);
}

- (void)updateFilledCircleLayer:(id)a3 center:(CGPoint)a4 radius:(double)a5 fillColor:(id)a6 borderWidth:(double)a7 borderColor:(id)a8 borderPhase:(double)a9 borderDashPattern:(id)a10
{
  y = a4.y;
  x = a4.x;
  v18 = a3;
  v19 = a8;
  v20 = a10;
  v21 = a5 + a5;
  v22 = a6;
  v31.origin.x = x - v21 * 0.5;
  v31.origin.y = y - v21 * 0.5;
  v31.size.width = v21;
  v31.size.height = v21;
  v23 = CGPathCreateWithEllipseInRect(v31, 0);
  v24 = v22;
  v29 = v18;
  v25 = v19;
  v26 = v20;
  v27 = [v22 CGColor];

  [v29 setFillColor:v27];
  v28 = [v25 CGColor];

  [v29 setStrokeColor:v28];
  [v29 setLineDashPhase:a9];
  [v29 setLineDashPattern:v26];

  [v29 setLineWidth:a7];
  [v29 setPath:v23];

  CGPathRelease(v23);
}

- (void)updateCrosshairLayer:(id)a3 center:(CGPoint)a4 color:(id)a5 size:(CGSize)a6 thickness:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v9 = a6.height;
  v10 = a6.width;
  y = a4.y;
  x = a4.x;
  v14 = a5;
  v15 = a3;
  v17 = crosshairPointsWithSizeAndCenterPoint(v10, v9, width, height, x, y);
  v16 = [MEMORY[0x277D75348] clearColor];
  setShapeLayerPathFromPointsWithStyle(v15, v17, v14, v16, 0, 0.0, 0.0);
}

- (void)updateUserRects:(id)a3 transformedLayer:(id)a4 effectScale:(double)a5 rects:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  [v9 setHidden:{objc_msgSend(v11, "count") == 0}];
  [v10 setHidden:{objc_msgSend(v9, "isHidden")}];
  if (([v9 isHidden] & 1) == 0)
  {
    v12 = [v9 sublayers];
    v13 = [v12 copy];

    [v13 enumerateObjectsUsingBlock:&__block_literal_global_0];
    v14 = [v10 sublayers];
    v15 = [v14 copy];

    [v15 enumerateObjectsUsingBlock:&__block_literal_global_84];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = *"";
    v16[2] = __72__PVEffectDebugView_updateUserRects_transformedLayer_effectScale_rects___block_invoke_3;
    v16[3] = &unk_279AA4C70;
    v19 = a5;
    v17 = v9;
    v18 = v10;
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

- (void)updateUserPoints:(id)a3 transformedLayer:(id)a4 effectScale:(double)a5 points:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  [v10 setHidden:{objc_msgSend(v12, "count") == 0}];
  [v11 setHidden:{objc_msgSend(v10, "isHidden")}];
  if (([v10 isHidden] & 1) == 0)
  {
    v13 = [v10 sublayers];
    v14 = [v13 copy];

    [v14 enumerateObjectsUsingBlock:&__block_literal_global_87];
    v15 = [v11 sublayers];
    v16 = [v15 copy];

    [v16 enumerateObjectsUsingBlock:&__block_literal_global_89];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = *"";
    v17[2] = __74__PVEffectDebugView_updateUserPoints_transformedLayer_effectScale_points___block_invoke_3;
    v17[3] = &unk_279AA4CC0;
    v20 = a5;
    v17[4] = self;
    v18 = v10;
    v19 = v11;
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

- (void)updateWithEffectFrame:(id)a3
{
  v301 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PVEffectDebugView *)self options];
  v6 = [v5 isEnabled];

  if (!v4 || (v6 & 1) == 0)
  {
    v158 = [(PVEffectDebugView *)self rootContainerView];
    [v158 setHidden:1];

    goto LABEL_69;
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v7 = [(PVEffectDebugView *)self rootContainerView];
  [v7 setHidden:0];

  [v4 viewSize];
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
  v16 = [(PVEffectDebugView *)self rootContainerView];
  [v16 setFrame:{0.0, 0.0, v9, v11}];

  v17 = [(PVEffectDebugView *)self rootTransformLayer];
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
  [v17 setTransform:&v279];

  v24 = [(PVEffectDebugView *)self rootTransformLayer];
  [v24 setBounds:{0.0, 0.0, v9, v11}];

  v26 = *MEMORY[0x277CBF348];
  v25 = *(MEMORY[0x277CBF348] + 8);
  v27 = [(PVEffectDebugView *)self rootTransformLayer];
  v264 = v25;
  [v27 setPosition:{v26, v25}];

  v285 = 0u;
  v286 = 0u;
  v283 = 0u;
  v284 = 0u;
  v281 = 0u;
  v282 = 0u;
  v280 = 0u;
  v279 = 0u;
  [v4 transformInfo];
  v28 = fmax(fabs(*&v283), 0.001);
  [v4 transform];
  d = v296.d;
  b = v296.b;
  c = v296.c;
  a = v296.a;
  v260 = v300;
  v262 = v298;
  v254 = v299;
  v255 = v297;
  v29 = [(PVEffectDebugView *)self rootTransformLayer];
  v296.a = a;
  v296.b = b;
  v296.c = c;
  v296.d = d;
  v297 = v255;
  v298 = v262;
  v299 = v254;
  v300 = v260;
  [v29 setTransform:&v296];

  v30 = [(PVEffectDebugView *)self documentBoundingBoxLayer];
  [v30 setBounds:{0.0, 0.0, v9, v11}];

  v31 = [(PVEffectDebugView *)self documentBoundingBoxLayer];
  [v31 setPosition:{MidX, MidY}];

  v32 = [(PVEffectDebugView *)self outputROILayer];
  [v32 setBounds:{0.0, 0.0, v9, v11}];

  v33 = [(PVEffectDebugView *)self outputROILayer];
  [v33 setPosition:{MidX, MidY}];

  v34 = [(PVEffectDebugView *)self objectAlignedBoundingBoxLayer];
  [v34 setBounds:{0.0, 0.0, v9, v11}];

  v35 = [(PVEffectDebugView *)self objectAlignedBoundingBoxLayer];
  [v35 setPosition:{MidX, MidY}];

  v36 = [(PVEffectDebugView *)self textBoundingBoxesContainerLayer];
  [v36 setBounds:{0.0, 0.0, v9, v11}];

  v37 = [(PVEffectDebugView *)self textBoundingBoxesContainerLayer];
  [v37 setPosition:{MidX, MidY}];

  v38 = [(PVEffectDebugView *)self originLayer];
  [v38 setBounds:{0.0, 0.0, v9, v11}];

  v39 = [(PVEffectDebugView *)self originLayer];
  [v39 setPosition:{MidX, MidY}];

  v40 = [(PVEffectDebugView *)self originCrosshairLayer];
  [v40 setBounds:{0.0, 0.0, v9, v11}];

  v41 = [(PVEffectDebugView *)self originCrosshairLayer];
  [v41 setPosition:{MidX, MidY}];

  v42 = [(PVEffectDebugView *)self midpointLayer];
  [v42 setBounds:{0.0, 0.0, v9, v11}];

  v43 = [(PVEffectDebugView *)self midpointLayer];
  [v43 setPosition:{MidX, MidY}];

  v44 = [(PVEffectDebugView *)self cornerPointsLayer];
  [v44 setBounds:{0.0, 0.0, v9, v11}];

  v45 = [(PVEffectDebugView *)self cornerPointsLayer];
  [v45 setPosition:{MidX, MidY}];

  v46 = [(PVEffectDebugView *)self textCornerPointsContainerLayer];
  [v46 setBounds:{0.0, 0.0, v9, v11}];

  v47 = [(PVEffectDebugView *)self textCornerPointsContainerLayer];
  [v47 setPosition:{MidX, MidY}];

  v48 = [(PVEffectDebugView *)self hitAreaPointsLayer];
  [v48 setBounds:{0.0, 0.0, v9, v11}];

  v49 = [(PVEffectDebugView *)self hitAreaPointsLayer];
  [v49 setPosition:{MidX, MidY}];

  v50 = [(PVEffectDebugView *)self userRectsLayer];
  [v50 setBounds:{0.0, 0.0, v9, v11}];

  v51 = [(PVEffectDebugView *)self userRectsLayer];
  [v51 setPosition:{MidX, MidY}];

  v52 = [(PVEffectDebugView *)self userRectsTransformedLayer];
  [v52 setBounds:{0.0, 0.0, v9, v11}];

  v53 = [(PVEffectDebugView *)self userRectsTransformedLayer];
  [v53 setPosition:{MidX, MidY}];

  v54 = [(PVEffectDebugView *)self userPointsLayer];
  [v54 setBounds:{0.0, 0.0, v9, v11}];

  v55 = [(PVEffectDebugView *)self userPointsLayer];
  [v55 setPosition:{MidX, MidY}];

  v56 = [(PVEffectDebugView *)self userPointsTransformedLayer];
  v261 = v9;
  v259 = v11;
  [v56 setBounds:{0.0, 0.0, v9, v11}];

  v57 = [(PVEffectDebugView *)self userPointsTransformedLayer];
  [v57 setPosition:{MidX, MidY}];

  v58 = [(PVEffectDebugView *)self options];
  v59 = [v58 showDocumentBoundingBox];

  v60 = v59 ^ 1u;
  v61 = [(PVEffectDebugView *)self documentBoundingBoxLayer];
  [v61 setHidden:v60];

  if ((v60 & 1) == 0)
  {
    [v4 effectSize];
    v63 = v62;
    v65 = v64;
    v66 = [v4 effectOrigin];
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
      if (v66 == 2)
      {
        break;
      }

      v73 = v264;
      v74 = v26;
      if (v66 != 1)
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
        v84 = [(PVEffectDebugView *)self documentBoundingBoxLayer];
        v85 = [(PVEffectDebugView *)self options];
        v86 = [v85 documentBoundingBoxColor];
        v87 = [MEMORY[0x277CCABB0] numberWithDouble:8.0 / v28];
        v295[0] = v87;
        v88 = [MEMORY[0x277CCABB0] numberWithDouble:5.0 / v28];
        v295[1] = v88;
        v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v295 count:2];
        [(PVEffectDebugView *)self updateDottedBorderedLayer:v84 borderRect:v86 borderWidth:v89 borderColor:v77 borderPhase:v78 borderDashPattern:v82, v83, 2.0 / v28, 0.0];

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
  v90 = [(PVEffectDebugView *)self options];
  v91 = [v90 showOutputROI];

  v92 = v91 ^ 1u;
  v93 = [(PVEffectDebugView *)self outputROILayer];
  [v93 setHidden:v92];

  v263 = v26;
  if (v92)
  {
    goto LABEL_41;
  }

  v257 = v28;
  [v4 outputROI];
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v101 = v100;
  [v4 effectSize];
  v103 = v102;
  v105 = v104;
  [v4 effectSize];
  v107 = v106;
  v109 = v108;
  v110 = [v4 effectOrigin];
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
    if (v110 == 2)
    {
      v115 = v105 * -0.5;
      v116 = v113;
    }

    else
    {
      v115 = v264;
      v116 = v263;
      if (v110 == 1)
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
  v126 = [(PVEffectDebugView *)self outputROILayer];
  v28 = v257;
  v127 = [(PVEffectDebugView *)self options];
  v128 = [v127 outputROIColor];
  v129 = [MEMORY[0x277CCABB0] numberWithDouble:6.0 / v257];
  v294[0] = v129;
  v130 = [MEMORY[0x277CCABB0] numberWithDouble:4.0 / v257];
  v294[1] = v130;
  v131 = [MEMORY[0x277CBEA60] arrayWithObjects:v294 count:2];
  [(PVEffectDebugView *)self updateDottedBorderedLayer:v126 borderRect:v128 borderWidth:v131 borderColor:v119 borderPhase:v120 borderDashPattern:v124, v125, 2.0 / v257, 10.0 / v257];

  v26 = v263;
LABEL_41:
  v132 = [(PVEffectDebugView *)self options];
  v133 = [v132 showObjectAlignedBoundingBox];

  v134 = v133 ^ 1u;
  v135 = [(PVEffectDebugView *)self objectAlignedBoundingBoxLayer];
  [v135 setHidden:v134];

  if ((v134 & 1) == 0)
  {
    v136 = [(PVEffectDebugView *)self objectAlignedBoundingBoxLayer];
    [v4 objectBounds];
    v138 = v137;
    v140 = v139;
    v142 = v141;
    v144 = v143;
    v145 = [(PVEffectDebugView *)self options];
    v146 = [v145 objectAlignedBoundingBoxColor];
    v147 = [MEMORY[0x277CCABB0] numberWithDouble:3.0 / v28];
    v293[0] = v147;
    v148 = [MEMORY[0x277CCABB0] numberWithDouble:3.0 / v28];
    v293[1] = v148;
    v149 = [MEMORY[0x277CBEA60] arrayWithObjects:v293 count:2];
    v150 = v142;
    v26 = v263;
    [(PVEffectDebugView *)self updateDottedBorderedLayer:v136 borderRect:v146 borderWidth:v149 borderColor:v138 borderPhase:v140 borderDashPattern:v150, v144, 2.0 / v28, 0.0];
  }

  v151 = [(PVEffectDebugView *)self options];
  if ([v151 showTextBoundingBoxes])
  {
    v152 = [v4 textFrames];
    v153 = [v152 count];

    v154 = [(PVEffectDebugView *)self textBoundingBoxesContainerLayer];
    [v154 setHidden:v153 == 0];

    if (v153)
    {
      v155 = [(PVEffectDebugView *)self textBoundingBoxesContainerLayer];
      v156 = [v4 textFrames];
      ensureNSublayers(v155, [v156 count]);

      v157 = [v4 textFrames];
      v273[0] = MEMORY[0x277D85DD0];
      v273[1] = *"";
      v273[2] = __43__PVEffectDebugView_updateWithEffectFrame___block_invoke;
      v273[3] = &unk_279AA4CE8;
      v275 = 0;
      v276 = 0;
      v273[4] = self;
      v277 = v261;
      v278 = v259;
      v274 = v4;
      [v157 enumerateObjectsUsingBlock:v273];
    }
  }

  else
  {

    v159 = [(PVEffectDebugView *)self textBoundingBoxesContainerLayer];
    [v159 setHidden:1];
  }

  v160 = [(PVEffectDebugView *)self options];
  v161 = [v160 showHitAreaShape];

  v162 = [(PVEffectDebugView *)self hitAreaShapeLayer];
  v163 = v162;
  if (v161)
  {
    [v162 setHidden:0];

    v164 = [(PVEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    [v164 setHidden:0];

    v165 = [(PVEffectDebugView *)self hitAreaShapeLayer];
    v166 = [v4 hitAreaPoints];
    v167 = [(PVEffectDebugView *)self options];
    v168 = [v167 hitAreaShapeColor];
    [(PVEffectDebugView *)self updatePolygonLayer:v165 points:v166 borderWidth:v168 borderColor:&unk_28732D748 borderPhase:2.0 borderDashPattern:0.0];

    v169 = [(PVEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    ensureNSublayers(v169, 1uLL);

    v170 = [(PVEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    v171 = [v170 sublayers];
    v172 = [v171 firstObject];

    v173 = [v4 hitAreaPath];
    v174 = [(PVEffectDebugView *)self options];
    v175 = [v174 hitAreaShapeColor];
    [(PVEffectDebugView *)self updateFilledPolygonLayer:v172 path:v173 fillColor:v175];

    v176 = [(PVEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    v177 = [v4 expandedHitAreaPath];
    v178 = [(PVEffectDebugView *)self options];
    v179 = [v178 hitAreaShapeColor];
    [(PVEffectDebugView *)self updateFilledPolygonLayer:v176 path:v177 fillColor:v179];
  }

  else
  {
    [v162 setHidden:1];

    v172 = [(PVEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    [v172 setHidden:1];
  }

  v180 = [(PVEffectDebugView *)self options];
  v181 = [v180 showCornerPoints];

  v182 = v181 ^ 1u;
  v183 = [(PVEffectDebugView *)self cornerPointsLayer];
  [v183 setHidden:v182];

  if ((v182 & 1) == 0)
  {
    v184 = [(PVEffectDebugView *)self cornerPointsLayer];
    ensureNSublayers(v184, 4uLL);

    v185 = [(PVEffectDebugView *)self cornerPointsLayer];
    v186 = [v185 sublayers];

    [v4 cornerPoints];
    v187 = PVCGPointQuad_to_NSArray(&v296);
    v188 = [(PVEffectDebugView *)self options];
    v189 = [v188 cornerPointColors];
    [(PVEffectDebugView *)self updatePointsLayers:v186 points:v187 colors:v189 size:4.0];
  }

  v190 = [(PVEffectDebugView *)self options];
  v191 = [v190 showOrigin];

  v192 = v191 ^ 1u;
  v193 = [(PVEffectDebugView *)self originLayer];
  [v193 setHidden:v192];

  if ((v192 & 1) == 0)
  {
    v194 = [(PVEffectDebugView *)self originLayer];
    [v4 center];
    v196 = v195;
    v198 = v197;
    v199 = [(PVEffectDebugView *)self options];
    v200 = [v199 originColor];
    [(PVEffectDebugView *)self updateFilledCircleLayer:v194 center:v200 radius:v196 fillColor:v198, 6.0];

    v201 = [(PVEffectDebugView *)self originCrosshairLayer];
    v202 = [MEMORY[0x277D75348] blackColor];
    [(PVEffectDebugView *)self updateCrosshairLayer:v201 center:v202 color:v26 size:v264 thickness:10.0 / v28, 10.0 / v28, 2.0 / v28, 2.0 / v28];
  }

  v203 = [(PVEffectDebugView *)self options];
  v204 = [v203 showMidpoint];

  v205 = v204 ^ 1u;
  v206 = [(PVEffectDebugView *)self midpointLayer];
  [v206 setHidden:v205];

  if ((v205 & 1) == 0)
  {
    v207 = [(PVEffectDebugView *)self midpointLayer];
    [v4 midpoint];
    v209 = v208;
    v211 = v210;
    v212 = [(PVEffectDebugView *)self options];
    v213 = [v212 midpointColor];
    [(PVEffectDebugView *)self updateFilledCircleLayer:v207 center:v213 radius:v209 fillColor:v211, 1.5];
  }

  v214 = [(PVEffectDebugView *)self options];
  if ([v214 showTextCornerPoints])
  {
    v215 = [v4 textFrames];
    v216 = [v215 count];

    v217 = [(PVEffectDebugView *)self textCornerPointsContainerLayer];
    [v217 setHidden:v216 == 0];

    if (v216)
    {
      v218 = [(PVEffectDebugView *)self textCornerPointsContainerLayer];
      v219 = [v4 textFrames];
      ensureNSublayers(v218, 4 * [v219 count]);

      v220 = [(PVEffectDebugView *)self textCornerPointsContainerLayer];
      v221 = [v220 sublayers];

      v222 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v221, "count")}];
      v223 = [v4 textFrames];
      v271[0] = MEMORY[0x277D85DD0];
      v271[1] = *"";
      v271[2] = __43__PVEffectDebugView_updateWithEffectFrame___block_invoke_97;
      v271[3] = &unk_279AA4D10;
      v272 = v222;
      v224 = v222;
      [v223 enumerateObjectsUsingBlock:v271];

      v225 = [(PVEffectDebugView *)self options];
      v226 = [v225 textCornerPointColors];
      [(PVEffectDebugView *)self updatePointsLayers:v221 points:v224 colors:v226 size:4.0];

      goto LABEL_61;
    }
  }

  else
  {

    v221 = [(PVEffectDebugView *)self textCornerPointsContainerLayer];
    [v221 setHidden:1];
LABEL_61:
  }

  v227 = [(PVEffectDebugView *)self options];
  v228 = [v227 showHitAreaPoints];

  v229 = v228 ^ 1u;
  v230 = [(PVEffectDebugView *)self hitAreaPointsLayer];
  [v230 setHidden:v229];

  if ((v229 & 1) == 0)
  {
    v231 = [(PVEffectDebugView *)self hitAreaPointsLayer];
    v232 = [v4 hitAreaPoints];
    ensureNSublayers(v231, [v232 count]);

    v233 = [(PVEffectDebugView *)self hitAreaPointsLayer];
    v234 = [v233 sublayers];

    v235 = [v4 hitAreaPoints];
    v236 = [(PVEffectDebugView *)self options];
    v237 = [v236 hitAreaPointColors];
    [(PVEffectDebugView *)self updatePointsLayers:v234 points:v235 colors:v237 size:4.0];
  }

  v238 = [(PVEffectDebugView *)self options];
  v239 = [v238 showUserRects];

  v240 = v239 ^ 1u;
  v241 = [(PVEffectDebugView *)self userRectsLayer];
  [v241 setHidden:v240];

  v242 = [(PVEffectDebugView *)self userRectsTransformedLayer];
  [v242 setHidden:v240];

  if ((v240 & 1) == 0)
  {
    v243 = [(PVEffectDebugView *)self userRectsLayer];
    v244 = [(PVEffectDebugView *)self userRectsTransformedLayer];
    v245 = [(PVEffectDebugView *)self userRectsToDraw];
    [(PVEffectDebugView *)self updateUserRects:v243 transformedLayer:v244 effectScale:v245 rects:v28];
  }

  v246 = [(PVEffectDebugView *)self options];
  v247 = [v246 showUserPoints];

  v248 = v247 ^ 1u;
  v249 = [(PVEffectDebugView *)self userPointsLayer];
  [v249 setHidden:v248];

  v250 = [(PVEffectDebugView *)self userPointsTransformedLayer];
  [v250 setHidden:v248];

  if ((v248 & 1) == 0)
  {
    v251 = [(PVEffectDebugView *)self userPointsLayer];
    v252 = [(PVEffectDebugView *)self userPointsTransformedLayer];
    v253 = [(PVEffectDebugView *)self userPointsToDraw];
    [(PVEffectDebugView *)self updateUserPoints:v251 transformedLayer:v252 effectScale:v253 points:v28];
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
  v2 = [(PVEffectDebugView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 pvEffectDebugViewUserRectsToDraw];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)userPointsToDraw
{
  v2 = [(PVEffectDebugView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 pvEffectDebugViewUserPointsToDraw];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)documentBoundsLayerWithFrame:(CGRect)a3 options:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = MEMORY[0x277CD9F90];
  v9 = a4;
  v10 = [v8 layer];
  [v10 setFrame:{x, y, width, height}];
  [v10 bounds];
  v11 = pv_CGRect_to_NSArray(v36);
  v12 = [MEMORY[0x277D75348] clearColor];
  v13 = [v9 documentBoundingBoxColor];
  setShapeLayerPathFromPointsWithStyle(v10, v11, v12, v13, &unk_28732D760, 0.0, 2.0);

  ensureNSublayers(v10, 2uLL);
  [v10 bounds];
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

  v26 = [v10 sublayers];
  v27 = [v26 objectAtIndexedSubscript:0];
  v28 = [v9 originColor];

  v29 = [MEMORY[0x277D75348] clearColor];
  v30 = v28;
  v31 = v27;
  [v31 setFillColor:{objc_msgSend(v28, "CGColor")}];
  [v31 setStrokeColor:{objc_msgSend(v29, "CGColor")}];
  [v31 setLineDashPhase:0.0];
  [v31 setLineDashPattern:0];
  [v31 setLineWidth:0.0];
  [v31 setPath:MutableCopy];

  CGPathRelease(MutableCopy);

  return v10;
}

+ (id)outputROILayerWithFrame:(CGRect)a3 options:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = MEMORY[0x277CD9F90];
  v9 = a4;
  v10 = [v8 layer];
  [v10 setFrame:{x, y, width, height}];
  [v10 bounds];
  v11 = pv_CGRect_to_NSArray(v16);
  v12 = [MEMORY[0x277D75348] clearColor];
  v13 = [v9 outputROIColor];

  setShapeLayerPathFromPointsWithStyle(v10, v11, v12, v13, &unk_28732D778, 10.0, 2.0);

  return v10;
}

+ (id)objectBoundsLayerWithFrame:(CGRect)a3 options:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v9 = [MEMORY[0x277CD9F90] layer];
  [v9 setFrame:{x, y, width, height}];
  [v9 bounds];
  v10 = pv_CGRect_to_NSArray(v36);
  v11 = [MEMORY[0x277D75348] clearColor];
  v12 = [v8 objectAlignedBoundingBoxColor];
  setShapeLayerPathFromPointsWithStyle(v9, v10, v11, v12, &unk_28732D790, 0.0, 2.0);

  ensureNSublayers(v9, [v10 count]);
  v13 = [v9 sublayers];
  v29 = MEMORY[0x277D85DD0];
  v30 = *"";
  v31 = __56__PVEffectDebugView_objectBoundsLayerWithFrame_options___block_invoke;
  v32 = &unk_279AA4D38;
  v33 = v10;
  v34 = v8;
  v14 = v8;
  v15 = v10;
  [v13 enumerateObjectsUsingBlock:&v29];

  ensureNSublayers(v9, [v15 count] + 1);
  [v9 bounds];
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
  v22 = [v9 sublayers];
  v23 = [v22 lastObject];
  v24 = [v14 midpointColor];
  v25 = [MEMORY[0x277D75348] clearColor];

  v26 = v24;
  v27 = v23;
  [v27 setFillColor:{objc_msgSend(v24, "CGColor")}];
  [v27 setStrokeColor:{objc_msgSend(v25, "CGColor")}];
  [v27 setLineDashPhase:0.0];
  [v27 setLineDashPattern:0];
  [v27 setLineWidth:0.0];
  [v27 setPath:v21];

  CGPathRelease(v21);

  return v9;
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

+ (id)textBoundsLayerWithFrame:(CGRect)a3 options:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v9 = [MEMORY[0x277CD9F90] layer];
  [v9 setFrame:{x, y, width, height}];
  [v9 bounds];
  v10 = pv_CGRect_to_NSArray(v22);
  v11 = [MEMORY[0x277D75348] clearColor];
  v12 = [v8 textBoundingBoxColors];
  v13 = [v12 firstObject];
  setShapeLayerPathFromPointsWithStyle(v9, v10, v11, v13, &unk_28732D7A8, 0.0, 2.0);

  ensureNSublayers(v9, [v10 count]);
  v14 = [v9 sublayers];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = *"";
  v18[2] = __54__PVEffectDebugView_textBoundsLayerWithFrame_options___block_invoke;
  v18[3] = &unk_279AA4D38;
  v19 = v10;
  v20 = v8;
  v15 = v8;
  v16 = v10;
  [v14 enumerateObjectsUsingBlock:v18];

  return v9;
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

+ (id)hitAreaShapeLayerWithFrame:(CGRect)a3 options:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v9 = [MEMORY[0x277CD9F90] layer];
  [v9 setFrame:{x, y, width, height}];
  v10 = [v8 hitAreaShapeColor];
  [v9 bounds];
  v12 = (v11 + -8.0) * 0.5;
  [v9 bounds];
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
  v26 = [MEMORY[0x277D75348] clearColor];
  setShapeLayerPathFromPointsWithStyle(v9, v19, v26, v10, &unk_28732D7C0, 0.0, 2.0);

  ensureNSublayers(v9, 0xAuLL);
  v27 = [v9 sublayers];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = *"";
  v39[2] = __56__PVEffectDebugView_hitAreaShapeLayerWithFrame_options___block_invoke;
  v39[3] = &unk_279AA4D38;
  v40 = v19;
  v41 = v8;
  v28 = v8;
  v29 = v19;
  [v27 enumerateObjectsUsingBlock:v39];

  v30 = [MEMORY[0x277CD9F90] layer];

  LODWORD(v31) = 1050253722;
  [v30 setOpacity:v31];
  [v30 setZPosition:-1.0];
  [v9 addSublayer:v30];
  ensureNSublayers(v30, 2uLL);
  v32 = [v9 path];
  v33 = [v30 sublayers];
  v34 = [v33 objectAtIndexedSubscript:0];

  [v34 setFillColor:{objc_msgSend(v10, "CGColor")}];
  [v34 setPath:v32];

  v35 = [v30 sublayers];
  v36 = [v35 objectAtIndexedSubscript:1];

  [v36 setFillColor:{objc_msgSend(v10, "CGColor")}];
  expanded_closed_CGPath_with_CGPath = pv_create_expanded_closed_CGPath_with_CGPath(v32, 8.0);
  [v36 setPath:expanded_closed_CGPath_with_CGPath];
  CGPathRelease(expanded_closed_CGPath_with_CGPath);

  return v9;
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