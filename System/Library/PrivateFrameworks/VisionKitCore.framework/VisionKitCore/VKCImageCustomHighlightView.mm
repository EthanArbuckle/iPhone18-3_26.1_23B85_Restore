@interface VKCImageCustomHighlightView
- (CGAffineTransform)transformForHighlightLayerInCurrentBounds;
- (CGRect)currentContentsRectInLayerCoordinates;
- (VKCImageCustomHighlightView)initWithDelegate:(id)delegate;
- (VKCImageCustomHighlightViewDelegate)highlightViewDelegate;
- (void)_configureHighlightDotForRanges:(id)ranges;
- (void)beginHighlightWithRanges:(id)ranges animated:(BOOL)animated;
- (void)clearHighlightsAnimated:(BOOL)animated hideLayers:(BOOL)layers;
- (void)layoutSubviews;
- (void)normalizedVisibleRectDidChange;
- (void)performHighlightForRanges:(id)ranges animated:(BOOL)animated isReplacingResults:(BOOL)results;
- (void)updateHighlightLayerGeometry;
- (void)updateHighlightLayerGeometryIfVisible;
@end

@implementation VKCImageCustomHighlightView

- (VKCImageCustomHighlightView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = VKCImageCustomHighlightView;
  v5 = [(VKCImageCustomHighlightView *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E6979398]);
    highlightShadowLayer = v5->_highlightShadowLayer;
    v5->_highlightShadowLayer = v6;

    v8 = objc_alloc_init(MEMORY[0x1E69794A0]);
    highlightLayer = v5->_highlightLayer;
    v5->_highlightLayer = v8;

    v10 = objc_alloc_init(MEMORY[0x1E69794A0]);
    highlightColorLayer = v5->_highlightColorLayer;
    v5->_highlightColorLayer = v10;

    layer = [(VKCImageCustomHighlightView *)v5 layer];
    [layer addSublayer:v5->_highlightShadowLayer];
    [layer addSublayer:v5->_highlightLayer];
    [layer addSublayer:v5->_highlightColorLayer];
    objc_storeWeak(&v5->_highlightViewDelegate, delegateCopy);
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    highlightDots = v5->_highlightDots;
    v5->_highlightDots = v13;
  }

  return v5;
}

- (void)normalizedVisibleRectDidChange
{
  v4.receiver = self;
  v4.super_class = VKCImageCustomHighlightView;
  [(VKCImageBaseOverlayView *)&v4 normalizedVisibleRectDidChange];
  highlightDots = [(VKCImageCustomHighlightView *)self highlightDots];
  [highlightDots enumerateObjectsUsingBlock:&__block_literal_global_8];
}

- (void)clearHighlightsAnimated:(BOOL)animated hideLayers:(BOOL)layers
{
  layersCopy = layers;
  animatedCopy = animated;
  highlightLayer = [(VKCImageCustomHighlightView *)self highlightLayer];
  highlightColorLayer = [(VKCImageCustomHighlightView *)self highlightColorLayer];
  highlightShadowLayer = [(VKCImageCustomHighlightView *)self highlightShadowLayer];
  highlightDots = [(VKCImageCustomHighlightView *)self highlightDots];
  sublayers = [highlightLayer sublayers];
  [sublayers makeObjectsPerformSelector:sel_removeFromSuperlayer];

  [highlightDots makeObjectsPerformSelector:sel_removeFromSuperview];
  [highlightDots removeAllObjects];
  if (layersCopy)
  {
    [MEMORY[0x1E6979518] begin];
    v11 = !animatedCopy;
    [MEMORY[0x1E6979518] setDisableActions:v11];
    if (!v11)
    {
      [MEMORY[0x1E6979518] setAnimationDuration:0.25];
    }

    [highlightLayer setOpacity:0.0];
    [highlightColorLayer setOpacity:0.0];
    [highlightShadowLayer setOpacity:0.0];
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)updateHighlightLayerGeometryIfVisible
{
  [(VKCImageCustomHighlightView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (VKMRectIsFinite(v3, v5, v7, v9))
  {
    v12.origin.x = v4;
    v12.origin.y = v6;
    v12.size.width = v8;
    v12.size.height = v10;
    if (!CGRectIsEmpty(v12))
    {

      [(VKCImageCustomHighlightView *)self updateHighlightLayerGeometry];
    }
  }
}

- (void)updateHighlightLayerGeometry
{
  if (![(VKCImageCustomHighlightView *)self isConfiguringHighlights])
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
  }

  highlightLayer = [(VKCImageCustomHighlightView *)self highlightLayer];
  highlightColorLayer = [(VKCImageCustomHighlightView *)self highlightColorLayer];
  highlightShadowLayer = [(VKCImageCustomHighlightView *)self highlightShadowLayer];
  memset(&v27, 0, sizeof(v27));
  [(VKCImageCustomHighlightView *)self transformForHighlightLayerInCurrentBounds];
  [(VKCImageCustomHighlightView *)self currentContentsRectInLayerCoordinates];
  v7 = v6;
  v9 = v8;
  v26 = v27;
  [highlightLayer setAffineTransform:&v26];
  [highlightLayer setPosition:{v7, v9}];
  v26 = v27;
  [highlightColorLayer setAffineTransform:&v26];
  [highlightColorLayer setPosition:{v7, v9}];
  blueColor = [MEMORY[0x1E69DC888] blueColor];
  [highlightColorLayer setBackgroundColor:{objc_msgSend(blueColor, "CGColor")}];

  [(VKCImageCustomHighlightView *)self currentContentsRectInLayerCoordinates];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  memset(&v26, 0, sizeof(v26));
  CGAffineTransformMakeScale(&v26, v15, v17);
  normalizedHighlightPath = [(VKCImageCustomHighlightView *)self normalizedHighlightPath];
  v20 = [normalizedHighlightPath copy];

  v25 = v26;
  [v20 vk_applyTransform:&v25];
  [highlightShadowLayer setFrame:{v12, v14, v16, v18}];
  [highlightShadowLayer setShadowPath:{objc_msgSend(v20, "vk_CGPath")}];
  v21 = objc_alloc_init(MEMORY[0x1E69794A0]);
  [highlightShadowLayer bounds];
  [v21 setFrame:?];
  borderedNormalizedHighlightPath = [(VKCImageCustomHighlightView *)self borderedNormalizedHighlightPath];
  v23 = [borderedNormalizedHighlightPath copy];

  v25 = v26;
  [v23 vk_applyTransform:&v25];
  [v21 setPath:{objc_msgSend(v23, "vk_CGPath")}];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [v21 setFillColor:{objc_msgSend(blackColor, "CGColor")}];

  [v21 setFillRule:*MEMORY[0x1E69797F8]];
  [highlightShadowLayer setMask:v21];
  if (![(VKCImageCustomHighlightView *)self isConfiguringHighlights])
  {
    [MEMORY[0x1E6979518] commit];
  }
}

- (CGRect)currentContentsRectInLayerCoordinates
{
  layer = [(VKCImageCustomHighlightView *)self layer];
  [layer bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(VKCImageBaseOverlayView *)self contentsRect];
  VKMRectFromNormalizedSubrect(v5, v7, v9, v11, v12, v13, v14, v15);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGAffineTransform)transformForHighlightLayerInCurrentBounds
{
  [(VKCImageCustomHighlightView *)self currentContentsRectInLayerCoordinates];
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;

  return CGAffineTransformMakeScale(retstr, v4, v5);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VKCImageCustomHighlightView;
  [(VKCImageCustomHighlightView *)&v3 layoutSubviews];
  [(VKCImageCustomHighlightView *)self updateHighlightLayerGeometryIfVisible];
}

- (void)beginHighlightWithRanges:(id)ranges animated:(BOOL)animated
{
  animatedCopy = animated;
  rangesCopy = ranges;
  highlightRanges = [(VKCImageCustomHighlightView *)self highlightRanges];
  if ([highlightRanges count])
  {
    v7 = [rangesCopy count] != 0;
  }

  else
  {
    v7 = 0;
  }

  [(VKCImageCustomHighlightView *)self setHighlightRanges:rangesCopy];
  v8 = [rangesCopy count] == 0;
  [(VKCImageCustomHighlightView *)self setIsConfiguringHighlights:1];
  [(VKCImageCustomHighlightView *)self clearHighlightsAnimated:v8 hideLayers:v7 ^ 1];
  if ([rangesCopy count])
  {
    highlightViewDelegate = [(VKCImageCustomHighlightView *)self highlightViewDelegate];
    v10 = [highlightViewDelegate highlightView:self selectionRectsForRanges:rangesCopy];
    [(VKCImageCustomHighlightView *)self setSelectionRects:v10];

    [(VKCImageCustomHighlightView *)self performHighlightForRanges:rangesCopy animated:animatedCopy isReplacingResults:v7];
  }

  [(VKCImageCustomHighlightView *)self setIsConfiguringHighlights:0];
}

- (void)performHighlightForRanges:(id)ranges animated:(BOOL)animated isReplacingResults:(BOOL)results
{
  v6 = MEMORY[0x1E695DF70];
  rangesCopy = ranges;
  v7 = objc_alloc_init(v6);
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __85__VKCImageCustomHighlightView_performHighlightForRanges_animated_isReplacingResults___block_invoke;
  v46[3] = &unk_1E7BE4F40;
  v9 = v7;
  v47 = v9;
  v44 = recognitionResult;
  v48 = v44;
  [rangesCopy enumerateObjectsUsingBlock:v46];
  recognitionResult2 = [(VKCImageBaseOverlayView *)self recognitionResult];
  [recognitionResult2 imageSize];
  v13 = VKMAspectRatio(v11, v12);

  v45 = v9;
  v14 = [MEMORY[0x1E69DC728] vk_roundAndGroupNormalizedQuadsForHighlight:v9 aspectRatio:v13 expansionScale:0.2 radiusToAvgHeightRatio:0.25];
  v15 = [v14 copy];
  [(VKCImageCustomHighlightView *)self setNormalizedHighlightPath:v15];

  v16 = [MEMORY[0x1E69DC728] bezierPathWithRect:{0.0, 0.0, 1.0, 1.0}];
  [v14 vk_appendBezierPath:v16];

  v17 = [v14 copy];
  [(VKCImageCustomHighlightView *)self setBorderedNormalizedHighlightPath:v17];

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  highlightShadowLayer = [(VKCImageCustomHighlightView *)self highlightShadowLayer];
  highlightLayer = [(VKCImageCustomHighlightView *)self highlightLayer];
  highlightColorLayer = [(VKCImageCustomHighlightView *)self highlightColorLayer];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v22 = [blackColor colorWithAlphaComponent:0.25];
  [highlightLayer setFillColor:{objc_msgSend(v22, "CGColor")}];

  v23 = *MEMORY[0x1E69797F8];
  [highlightLayer setFillRule:*MEMORY[0x1E69797F8]];
  highlightColor = [(VKCImageCustomHighlightView *)self highlightColor];
  vk_colorWithMaxSaturation = [highlightColor vk_colorWithMaxSaturation];
  vk_colorWith20PercentOpacity = [vk_colorWithMaxSaturation vk_colorWith20PercentOpacity];
  [highlightColorLayer setFillColor:{objc_msgSend(vk_colorWith20PercentOpacity, "CGColor")}];

  [highlightLayer setFillRule:v23];
  [(VKCImageCustomHighlightView *)self updateHighlightLayerGeometry];
  [(UIView *)self vk_viewLengthFromWindowLength:15.0];
  [highlightShadowLayer setShadowRadius:?];
  [(UIView *)self vk_viewLengthFromWindowLength:5.0];
  [highlightShadowLayer setShadowOffset:{0.0, v27}];
  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  [highlightShadowLayer setShadowColor:{objc_msgSend(blackColor2, "CGColor")}];

  LODWORD(v29) = 0.25;
  [highlightShadowLayer setShadowOpacity:v29];
  [(VKCImageCustomHighlightView *)self _configureHighlightDotForRanges:rangesCopy];

  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] begin];
  if (animated)
  {
    normalizedHighlightPath = [(VKCImageCustomHighlightView *)self normalizedHighlightPath];
    [highlightColorLayer setPath:{objc_msgSend(normalizedHighlightPath, "vk_CGPath")}];

    [highlightLayer setPath:{objc_msgSend(v14, "vk_CGPath")}];
    LODWORD(v31) = 1.0;
    [highlightShadowLayer setOpacity:v31];
    LODWORD(v32) = 1.0;
    [highlightLayer setOpacity:v32];
    LODWORD(v33) = 1.0;
    [highlightColorLayer setOpacity:v33];
    if (!results)
    {
      v34 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
      [v34 setFromValue:&unk_1F2C38E30];
      [v34 setToValue:&unk_1F2C38E48];
      [v34 setDuration:0.25];
      v35 = [v34 copy];
      [highlightShadowLayer addAnimation:v35 forKey:0];

      v36 = [v34 copy];
      [highlightLayer addAnimation:v36 forKey:0];

      [highlightColorLayer addAnimation:v34 forKey:0];
    }
  }

  else
  {
    [MEMORY[0x1E6979518] setDisableActions:1];
    normalizedHighlightPath2 = [(VKCImageCustomHighlightView *)self normalizedHighlightPath];
    [highlightColorLayer setPath:{objc_msgSend(normalizedHighlightPath2, "vk_CGPath")}];

    [highlightLayer setPath:{objc_msgSend(v14, "vk_CGPath")}];
    LODWORD(v38) = 1.0;
    [highlightShadowLayer setOpacity:v38];
    LODWORD(v39) = 1.0;
    [highlightLayer setOpacity:v39];
    LODWORD(v40) = 1.0;
    [highlightColorLayer setOpacity:v40];
  }

  [MEMORY[0x1E6979518] commit];
}

void __85__VKCImageCustomHighlightView_performHighlightForRanges_animated_isReplacingResults___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) normalizedSelectionQuadsForRange:a2];
  [v2 addObjectsFromArray:v3];
}

- (void)_configureHighlightDotForRanges:(id)ranges
{
  v4 = MEMORY[0x1E695DF70];
  rangesCopy = ranges;
  v6 = objc_alloc_init(v4);
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  [(VKCImageBaseOverlayView *)self contentsRect];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__VKCImageCustomHighlightView__configureHighlightDotForRanges___block_invoke;
  v18[3] = &unk_1E7BE4F68;
  v19 = v6;
  v20 = recognitionResult;
  selfCopy = self;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v12 = recognitionResult;
  v13 = v6;
  [rangesCopy enumerateObjectsUsingBlock:v18];

  [v13 sortUsingComparator:&__block_literal_global_172_0];
  highlightColor = [(VKCImageCustomHighlightView *)self highlightColor];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__VKCImageCustomHighlightView__configureHighlightDotForRanges___block_invoke_3;
  v16[3] = &unk_1E7BE4FB0;
  v16[4] = self;
  v17 = highlightColor;
  v15 = highlightColor;
  [v13 enumerateObjectsUsingBlock:v16];
}

void __63__VKCImageCustomHighlightView__configureHighlightDotForRanges___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) selectionRectsForRange:a2 documentView:*(a1 + 48) contentRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [v2 addObjectsFromArray:v3];
}

uint64_t __63__VKCImageCustomHighlightView__configureHighlightDotForRanges___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [a2 quad];
  [v6 maxHeight];
  v7 = [v4 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  v9 = [v5 quad];

  [v9 maxHeight];
  v10 = [v8 numberWithDouble:?];
  v11 = [v7 compare:v10];

  return v11;
}

void __63__VKCImageCustomHighlightView__configureHighlightDotForRanges___block_invoke_3(uint64_t a1, void *a2, unint64_t a3)
{
  v25 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E69794A0]);
  v6 = [*(a1 + 32) highlightLayer];
  [v25 rect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [*(a1 + 32) layer];
  [v6 convertRect:v15 fromLayer:{v8, v10, v12, v14}];
  [v5 setFrame:?];

  if (a3 <= 7)
  {
    v16 = [[VKCTextHighlightDot alloc] initWithColor:*(a1 + 40)];
    v17 = [v25 quad];
    [v17 sideLength];
    [(VKCTextHighlightDot *)v16 setQuadSideLength:?];

    [(VKCTextHighlightDot *)v16 setTextHighlightLayer:v5];
    v18 = [v25 quad];
    [v18 vertexCentroid];
    v21 = VKMRectWithCenterAndSize(v19, v20, 20.0);

    [v25 rect];
    [(VKCTextHighlightDot *)v16 setFrame:VKMAddPoints(v22, v23, v21)];
    v24 = [*(a1 + 32) highlightDots];
    [v24 addObject:v16];

    [*(a1 + 32) addSubview:v16];
  }
}

- (VKCImageCustomHighlightViewDelegate)highlightViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_highlightViewDelegate);

  return WeakRetained;
}

@end