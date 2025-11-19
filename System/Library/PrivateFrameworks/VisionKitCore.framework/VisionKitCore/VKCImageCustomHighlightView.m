@interface VKCImageCustomHighlightView
- (CGAffineTransform)transformForHighlightLayerInCurrentBounds;
- (CGRect)currentContentsRectInLayerCoordinates;
- (VKCImageCustomHighlightView)initWithDelegate:(id)a3;
- (VKCImageCustomHighlightViewDelegate)highlightViewDelegate;
- (void)_configureHighlightDotForRanges:(id)a3;
- (void)beginHighlightWithRanges:(id)a3 animated:(BOOL)a4;
- (void)clearHighlightsAnimated:(BOOL)a3 hideLayers:(BOOL)a4;
- (void)layoutSubviews;
- (void)normalizedVisibleRectDidChange;
- (void)performHighlightForRanges:(id)a3 animated:(BOOL)a4 isReplacingResults:(BOOL)a5;
- (void)updateHighlightLayerGeometry;
- (void)updateHighlightLayerGeometryIfVisible;
@end

@implementation VKCImageCustomHighlightView

- (VKCImageCustomHighlightView)initWithDelegate:(id)a3
{
  v4 = a3;
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

    v12 = [(VKCImageCustomHighlightView *)v5 layer];
    [v12 addSublayer:v5->_highlightShadowLayer];
    [v12 addSublayer:v5->_highlightLayer];
    [v12 addSublayer:v5->_highlightColorLayer];
    objc_storeWeak(&v5->_highlightViewDelegate, v4);
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
  v3 = [(VKCImageCustomHighlightView *)self highlightDots];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_8];
}

- (void)clearHighlightsAnimated:(BOOL)a3 hideLayers:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v12 = [(VKCImageCustomHighlightView *)self highlightLayer];
  v7 = [(VKCImageCustomHighlightView *)self highlightColorLayer];
  v8 = [(VKCImageCustomHighlightView *)self highlightShadowLayer];
  v9 = [(VKCImageCustomHighlightView *)self highlightDots];
  v10 = [v12 sublayers];
  [v10 makeObjectsPerformSelector:sel_removeFromSuperlayer];

  [v9 makeObjectsPerformSelector:sel_removeFromSuperview];
  [v9 removeAllObjects];
  if (v4)
  {
    [MEMORY[0x1E6979518] begin];
    v11 = !v5;
    [MEMORY[0x1E6979518] setDisableActions:v11];
    if (!v11)
    {
      [MEMORY[0x1E6979518] setAnimationDuration:0.25];
    }

    [v12 setOpacity:0.0];
    [v7 setOpacity:0.0];
    [v8 setOpacity:0.0];
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

  v3 = [(VKCImageCustomHighlightView *)self highlightLayer];
  v4 = [(VKCImageCustomHighlightView *)self highlightColorLayer];
  v5 = [(VKCImageCustomHighlightView *)self highlightShadowLayer];
  memset(&v27, 0, sizeof(v27));
  [(VKCImageCustomHighlightView *)self transformForHighlightLayerInCurrentBounds];
  [(VKCImageCustomHighlightView *)self currentContentsRectInLayerCoordinates];
  v7 = v6;
  v9 = v8;
  v26 = v27;
  [v3 setAffineTransform:&v26];
  [v3 setPosition:{v7, v9}];
  v26 = v27;
  [v4 setAffineTransform:&v26];
  [v4 setPosition:{v7, v9}];
  v10 = [MEMORY[0x1E69DC888] blueColor];
  [v4 setBackgroundColor:{objc_msgSend(v10, "CGColor")}];

  [(VKCImageCustomHighlightView *)self currentContentsRectInLayerCoordinates];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  memset(&v26, 0, sizeof(v26));
  CGAffineTransformMakeScale(&v26, v15, v17);
  v19 = [(VKCImageCustomHighlightView *)self normalizedHighlightPath];
  v20 = [v19 copy];

  v25 = v26;
  [v20 vk_applyTransform:&v25];
  [v5 setFrame:{v12, v14, v16, v18}];
  [v5 setShadowPath:{objc_msgSend(v20, "vk_CGPath")}];
  v21 = objc_alloc_init(MEMORY[0x1E69794A0]);
  [v5 bounds];
  [v21 setFrame:?];
  v22 = [(VKCImageCustomHighlightView *)self borderedNormalizedHighlightPath];
  v23 = [v22 copy];

  v25 = v26;
  [v23 vk_applyTransform:&v25];
  [v21 setPath:{objc_msgSend(v23, "vk_CGPath")}];
  v24 = [MEMORY[0x1E69DC888] blackColor];
  [v21 setFillColor:{objc_msgSend(v24, "CGColor")}];

  [v21 setFillRule:*MEMORY[0x1E69797F8]];
  [v5 setMask:v21];
  if (![(VKCImageCustomHighlightView *)self isConfiguringHighlights])
  {
    [MEMORY[0x1E6979518] commit];
  }
}

- (CGRect)currentContentsRectInLayerCoordinates
{
  v3 = [(VKCImageCustomHighlightView *)self layer];
  [v3 bounds];
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

- (void)beginHighlightWithRanges:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(VKCImageCustomHighlightView *)self highlightRanges];
  if ([v6 count])
  {
    v7 = [v11 count] != 0;
  }

  else
  {
    v7 = 0;
  }

  [(VKCImageCustomHighlightView *)self setHighlightRanges:v11];
  v8 = [v11 count] == 0;
  [(VKCImageCustomHighlightView *)self setIsConfiguringHighlights:1];
  [(VKCImageCustomHighlightView *)self clearHighlightsAnimated:v8 hideLayers:v7 ^ 1];
  if ([v11 count])
  {
    v9 = [(VKCImageCustomHighlightView *)self highlightViewDelegate];
    v10 = [v9 highlightView:self selectionRectsForRanges:v11];
    [(VKCImageCustomHighlightView *)self setSelectionRects:v10];

    [(VKCImageCustomHighlightView *)self performHighlightForRanges:v11 animated:v4 isReplacingResults:v7];
  }

  [(VKCImageCustomHighlightView *)self setIsConfiguringHighlights:0];
}

- (void)performHighlightForRanges:(id)a3 animated:(BOOL)a4 isReplacingResults:(BOOL)a5
{
  v6 = MEMORY[0x1E695DF70];
  v42 = a3;
  v7 = objc_alloc_init(v6);
  v8 = [(VKCImageBaseOverlayView *)self recognitionResult];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __85__VKCImageCustomHighlightView_performHighlightForRanges_animated_isReplacingResults___block_invoke;
  v46[3] = &unk_1E7BE4F40;
  v9 = v7;
  v47 = v9;
  v44 = v8;
  v48 = v44;
  [v42 enumerateObjectsUsingBlock:v46];
  v10 = [(VKCImageBaseOverlayView *)self recognitionResult];
  [v10 imageSize];
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
  v18 = [(VKCImageCustomHighlightView *)self highlightShadowLayer];
  v19 = [(VKCImageCustomHighlightView *)self highlightLayer];
  v20 = [(VKCImageCustomHighlightView *)self highlightColorLayer];
  v21 = [MEMORY[0x1E69DC888] blackColor];
  v22 = [v21 colorWithAlphaComponent:0.25];
  [v19 setFillColor:{objc_msgSend(v22, "CGColor")}];

  v23 = *MEMORY[0x1E69797F8];
  [v19 setFillRule:*MEMORY[0x1E69797F8]];
  v24 = [(VKCImageCustomHighlightView *)self highlightColor];
  v25 = [v24 vk_colorWithMaxSaturation];
  v26 = [v25 vk_colorWith20PercentOpacity];
  [v20 setFillColor:{objc_msgSend(v26, "CGColor")}];

  [v19 setFillRule:v23];
  [(VKCImageCustomHighlightView *)self updateHighlightLayerGeometry];
  [(UIView *)self vk_viewLengthFromWindowLength:15.0];
  [v18 setShadowRadius:?];
  [(UIView *)self vk_viewLengthFromWindowLength:5.0];
  [v18 setShadowOffset:{0.0, v27}];
  v28 = [MEMORY[0x1E69DC888] blackColor];
  [v18 setShadowColor:{objc_msgSend(v28, "CGColor")}];

  LODWORD(v29) = 0.25;
  [v18 setShadowOpacity:v29];
  [(VKCImageCustomHighlightView *)self _configureHighlightDotForRanges:v42];

  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] begin];
  if (a4)
  {
    v30 = [(VKCImageCustomHighlightView *)self normalizedHighlightPath];
    [v20 setPath:{objc_msgSend(v30, "vk_CGPath")}];

    [v19 setPath:{objc_msgSend(v14, "vk_CGPath")}];
    LODWORD(v31) = 1.0;
    [v18 setOpacity:v31];
    LODWORD(v32) = 1.0;
    [v19 setOpacity:v32];
    LODWORD(v33) = 1.0;
    [v20 setOpacity:v33];
    if (!a5)
    {
      v34 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
      [v34 setFromValue:&unk_1F2C38E30];
      [v34 setToValue:&unk_1F2C38E48];
      [v34 setDuration:0.25];
      v35 = [v34 copy];
      [v18 addAnimation:v35 forKey:0];

      v36 = [v34 copy];
      [v19 addAnimation:v36 forKey:0];

      [v20 addAnimation:v34 forKey:0];
    }
  }

  else
  {
    [MEMORY[0x1E6979518] setDisableActions:1];
    v37 = [(VKCImageCustomHighlightView *)self normalizedHighlightPath];
    [v20 setPath:{objc_msgSend(v37, "vk_CGPath")}];

    [v19 setPath:{objc_msgSend(v14, "vk_CGPath")}];
    LODWORD(v38) = 1.0;
    [v18 setOpacity:v38];
    LODWORD(v39) = 1.0;
    [v19 setOpacity:v39];
    LODWORD(v40) = 1.0;
    [v20 setOpacity:v40];
  }

  [MEMORY[0x1E6979518] commit];
}

void __85__VKCImageCustomHighlightView_performHighlightForRanges_animated_isReplacingResults___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) normalizedSelectionQuadsForRange:a2];
  [v2 addObjectsFromArray:v3];
}

- (void)_configureHighlightDotForRanges:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(VKCImageBaseOverlayView *)self recognitionResult];
  [(VKCImageBaseOverlayView *)self contentsRect];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__VKCImageCustomHighlightView__configureHighlightDotForRanges___block_invoke;
  v18[3] = &unk_1E7BE4F68;
  v19 = v6;
  v20 = v7;
  v21 = self;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v12 = v7;
  v13 = v6;
  [v5 enumerateObjectsUsingBlock:v18];

  [v13 sortUsingComparator:&__block_literal_global_172_0];
  v14 = [(VKCImageCustomHighlightView *)self highlightColor];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__VKCImageCustomHighlightView__configureHighlightDotForRanges___block_invoke_3;
  v16[3] = &unk_1E7BE4FB0;
  v16[4] = self;
  v17 = v14;
  v15 = v14;
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