@interface VKCImageTextSelectionView
+ (BOOL)sceneAwareLookupEnabled;
- (BOOL)containsSelectedTextAtPoint:(CGPoint)point;
- (BOOL)containsTextAtPoint:(CGPoint)point;
- (BOOL)imageContainsPoint:(CGPoint)point;
- (CALayer)highlightShadowLayer;
- (CAShapeLayer)highlightLayer;
- (CGAffineTransform)transformForHighlightLayerInCurrentBounds;
- (CGPoint)selectionQuadsVertexCentroid;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)currentContentsRectInLayerCoordinates;
- (CGRect)firstRectForRange:(id)range;
- (CGRect)highlightLayerStartContentsRect;
- (NSArray)allLineQuads;
- (NSAttributedString)attributedText;
- (NSAttributedString)selectedAttributedText;
- (NSString)selectedText;
- (NSString)text;
- (VKCImageTextSelectionView)initWithFrame:(CGRect)frame;
- (VKCImageTextSelectionViewDelegate)textSelectionDelegate;
- (id)attributedTextInRange:(id)range;
- (id)boundedPositionFromPosition:(id)position;
- (id)characterRangeAtPoint:(CGPoint)point;
- (id)characterRangeByExtendingPosition:(id)position inDirection:(unint64_t)direction;
- (id)closestBlockOfType:(unint64_t)type toPoint:(CGPoint)point maxDistance:(double)distance;
- (id)closestPositionToPoint:(CGPoint)point;
- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range;
- (id)closestQuadForBlockOfType:(unint64_t)type toPoint:(CGPoint)point maxDistance:(double)distance;
- (id)positionFromPosition:(id)position inDirection:(unint64_t)direction offset:(int64_t)offset;
- (id)positionFromPosition:(id)position offset:(int64_t)offset;
- (id)positionWithinRange:(id)range farthestInDirection:(unint64_t)direction;
- (id)quadsForAllWordsForCurrentLayout;
- (id)selectionRectsForRange:(id)range;
- (id)summaryDescription;
- (id)textInRange:(id)range;
- (id)textQueryProvider;
- (int64_t)baseWritingDirectionForPosition:(id)position inDirection:(unint64_t)direction;
- (int64_t)comparePosition:(id)position toPosition:(id)toPosition;
- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition;
- (void)performHighlightSelectableTextAnimated:(BOOL)animated;
- (void)sendAnalyticsEventWithSelector:(SEL)selector type:(int64_t)type source:(int64_t)source;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setHighlightSelectableItems:(BOOL)items animated:(BOOL)animated;
- (void)setRecognitionResult:(id)result;
- (void)updateHighlightLayerContentIfVisible;
- (void)updateHighlightLayerGeometry;
- (void)updateHighlightLayerGeometryIfVisible;
@end

@implementation VKCImageTextSelectionView

- (id)quadsForAllWordsForCurrentLayout
{
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  text = [(VKCImageTextSelectionView *)self text];
  vk_range = [text vk_range];
  v6 = v5;

  text2 = [(VKCImageTextSelectionView *)self text];
  v7 = vk_range + v6;
  if (vk_range + v6)
  {
    v8 = 0;
    v9 = 0x1ED69F000uLL;
    do
    {
      recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
      v11 = [v9 + 2824 positionWithOffset:v8];
      v12 = [recognitionResult smallestSelectableRangeForPosition:v11];
      nsRange = [v12 nsRange];
      v15 = v14;

      if (nsRange == 0x7FFFFFFFFFFFFFFFLL || v15 == 0)
      {
        ++v8;
      }

      else
      {
        v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v18 = [text2 vk_substringWithRange:{nsRange, v15}];
        v19 = [VKTextRange rangeWithNSRange:nsRange, v15];
        [(VKCImageTextSelectionView *)self selectionRectsForRange:v19];
        v21 = v20 = v9;
        firstObject = [v21 firstObject];

        quad = [firstObject quad];
        [firstObject rect];
        v24 = [quad quadFromAddingPoint:?];

        [v17 setObject:v18 forKeyedSubscript:VKCMockResultTextKey];
        dictionaryRepresentation = [v24 dictionaryRepresentation];
        [v17 setObject:dictionaryRepresentation forKeyedSubscript:VKCMockResultQuadKey];

        v26 = [VKCMockHelper plistFromRange:nsRange, v15];
        [v17 setObject:v26 forKeyedSubscript:VKCMockResultRangeKey];

        [v29 addObject:v17];
        v8 = nsRange + v15;

        v9 = v20;
      }
    }

    while (v8 < v7);
  }

  return v29;
}

+ (BOOL)sceneAwareLookupEnabled
{
  if (sceneAwareLookupEnabled_onceToken != -1)
  {
    +[VKCImageTextSelectionView sceneAwareLookupEnabled];
  }

  return sceneAwareLookupEnabled_sSceneAwareLookupEnabled;
}

uint64_t __52__VKCImageTextSelectionView_sceneAwareLookupEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  sceneAwareLookupEnabled_sSceneAwareLookupEnabled = result;
  return result;
}

- (VKCImageTextSelectionView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = VKCImageTextSelectionView;
  v3 = [(VKCImageBaseOverlayView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, -1);
    v5 = dispatch_queue_create("com.apple.VisionKit.textAnalytics", v4);
    analyticsQueue = v3->_analyticsQueue;
    v3->_analyticsQueue = v5;
  }

  return v3;
}

- (NSArray)allLineQuads
{
  allLineQuads = self->_allLineQuads;
  if (!allLineQuads)
  {
    recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
    allLineQuads = [recognitionResult allLineQuads];
    v6 = self->_allLineQuads;
    self->_allLineQuads = allLineQuads;

    allLineQuads = self->_allLineQuads;
  }

  return allLineQuads;
}

- (NSString)text
{
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  text = [recognitionResult text];

  return text;
}

- (NSAttributedString)attributedText
{
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  attributedText = [recognitionResult attributedText];

  return attributedText;
}

- (CGPoint)selectionQuadsVertexCentroid
{
  selectedVKRange = [(VKCImageTextSelectionView *)self selectedVKRange];
  v4 = [(VKCImageTextSelectionView *)self selectionRectsForRange:selectedVKRange];
  v5 = [v4 vk_compactMap:&__block_literal_global_157];

  if ([v5 count])
  {
    [VKQuad vertexCentroidFromQuads:v5];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

id __57__VKCImageTextSelectionView_selectionQuadsVertexCentroid__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 quad];
  [v2 rect];
  v5 = v4;
  v7 = v6;

  v8 = [v3 quadFromAddingPoint:{v5, v7}];

  return v8;
}

- (void)setRecognitionResult:(id)result
{
  resultCopy = result;
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];

  v14.receiver = self;
  v14.super_class = VKCImageTextSelectionView;
  [(VKCImageBaseOverlayView *)&v14 setRecognitionResult:resultCopy];

  text = [(VKCImageTextSelectionView *)self text];
  vk_range = [text vk_range];
  v9 = [VKTextRange rangeWithNSRange:vk_range, v8];
  [(VKCImageTextSelectionView *)self setDocumentRange:v9];

  v10 = +[VKTextRange emptyRange];
  [(VKCImageTextSelectionView *)self setSelectedVKRange:v10];

  allLineQuads = self->_allLineQuads;
  self->_allLineQuads = 0;

  if ([(VKCImageTextSelectionView *)self highlightSelectableItems])
  {
    recognitionResult2 = [(VKCImageBaseOverlayView *)self recognitionResult];

    if (recognitionResult2)
    {
      [(VKCImageTextSelectionView *)self performHighlightSelectableTextAnimated:recognitionResult == 0];
    }

    else
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      highlightLayer = [(VKCImageTextSelectionView *)self highlightLayer];
      [highlightLayer setHidden:1];

      [MEMORY[0x1E6979518] commit];
    }
  }
}

- (void)setHighlightSelectableItems:(BOOL)items animated:(BOOL)animated
{
  if (self->_highlightSelectableItems != items)
  {
    animatedCopy = animated;
    self->_highlightSelectableItems = items;
    if (items)
    {

      [(VKCImageTextSelectionView *)self performHighlightSelectableTextAnimated:animated];
    }

    else
    {
      highlightLayer = [(VKCImageTextSelectionView *)self highlightLayer];
      highlightShadowLayer = [(VKCImageTextSelectionView *)self highlightShadowLayer];
      if (animatedCopy)
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setAnimationDuration:0.15];
        [highlightLayer setOpacity:0.0];
        [highlightShadowLayer setOpacity:0.0];
        v8 = MEMORY[0x1E6979518];
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = __66__VKCImageTextSelectionView_setHighlightSelectableItems_animated___block_invoke;
        v12 = &unk_1E7BE4768;
        v13 = highlightLayer;
        v14 = highlightShadowLayer;
        [v8 setCompletionBlock:&v9];
        [MEMORY[0x1E6979518] commit];
      }

      else
      {
        [highlightLayer removeAllAnimations];
        [highlightLayer setPath:0];
        [highlightLayer setHidden:1];
        [highlightShadowLayer setHidden:1];
        [highlightShadowLayer setMask:0];
        [highlightShadowLayer setShadowPath:0];
      }
    }
  }
}

uint64_t __66__VKCImageTextSelectionView_setHighlightSelectableItems_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPath:0];
  [*(a1 + 32) setHidden:1];
  [*(a1 + 40) setHidden:1];
  [*(a1 + 40) setMask:0];
  v2 = *(a1 + 40);

  return [v2 setShadowPath:0];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = VKCImageTextSelectionView;
  [(VKCImageTextSelectionView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(VKCImageTextSelectionView *)self updateHighlightLayerGeometryIfVisible];
}

- (NSString)selectedText
{
  text = [(VKCImageTextSelectionView *)self text];
  selectedVKRange = [(VKCImageTextSelectionView *)self selectedVKRange];
  v5 = [text vk_substringWithVKRange:selectedVKRange];

  return v5;
}

- (NSAttributedString)selectedAttributedText
{
  selectedVKRange = [(VKCImageTextSelectionView *)self selectedVKRange];
  v4 = [(VKCImageTextSelectionView *)self attributedTextInRange:selectedVKRange];

  return v4;
}

- (void)updateHighlightLayerContentIfVisible
{
  if ([(VKCImageTextSelectionView *)self highlightSelectableItems])
  {

    [(VKCImageTextSelectionView *)self performHighlightSelectableTextAnimated:0];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(VKCImageTextSelectionView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v25.receiver = self;
  v25.super_class = VKCImageTextSelectionView;
  [(VKCImageTextSelectionView *)&v25 setBounds:x, y, width, height];
  [(VKCImageTextSelectionView *)self bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v26.origin.x = v9;
  v26.origin.y = v11;
  v26.size.width = v13;
  v26.size.height = v15;
  v27.origin.x = v17;
  v27.origin.y = v19;
  v27.size.width = v21;
  v27.size.height = v23;
  if (!CGRectEqualToRect(v26, v27))
  {
    [(VKCImageTextSelectionView *)self updateHighlightLayerGeometryIfVisible];
    textSelectionDelegate = [(VKCImageTextSelectionView *)self textSelectionDelegate];
    [textSelectionDelegate textSelectionView:self boundsDidChangeFromRect:v9 toRect:{v11, v13, v15, v17, v19, v21, v23}];
  }
}

- (void)updateHighlightLayerGeometryIfVisible
{
  if ([(VKCImageTextSelectionView *)self highlightSelectableItems])
  {

    [(VKCImageTextSelectionView *)self updateHighlightLayerGeometry];
  }
}

- (void)updateHighlightLayerGeometry
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  highlightLayer = [(VKCImageTextSelectionView *)self highlightLayer];
  highlightShadowLayer = [(VKCImageTextSelectionView *)self highlightShadowLayer];
  memset(&v25, 0, sizeof(v25));
  [(VKCImageTextSelectionView *)self transformForHighlightLayerInCurrentBounds];
  [(VKCImageTextSelectionView *)self currentContentsRectInLayerCoordinates];
  v6 = v5;
  v8 = v7;
  v24 = v25;
  [highlightLayer setAffineTransform:&v24];
  [highlightLayer setPosition:{v6, v8}];
  [(VKCImageTextSelectionView *)self currentContentsRectInLayerCoordinates];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  memset(&v24, 0, sizeof(v24));
  CGAffineTransformMakeScale(&v24, v13, v15);
  normalizedHighlightPath = [(VKCImageTextSelectionView *)self normalizedHighlightPath];
  v18 = [normalizedHighlightPath copy];

  v23 = v24;
  [v18 vk_applyTransform:&v23];
  [highlightShadowLayer setAnchorPoint:{0.5, 0.5}];
  [highlightShadowLayer setFrame:{v10, v12, v14, v16}];
  [highlightShadowLayer setShadowPath:{objc_msgSend(v18, "vk_CGPath")}];
  v19 = objc_alloc_init(MEMORY[0x1E69794A0]);
  [v19 setAnchorPoint:{0.5, 0.5}];
  [highlightShadowLayer bounds];
  [v19 setFrame:?];
  borderedNormalizedHighlightPath = [(VKCImageTextSelectionView *)self borderedNormalizedHighlightPath];
  v21 = [borderedNormalizedHighlightPath copy];

  v23 = v24;
  [v21 vk_applyTransform:&v23];
  [v19 setPath:{objc_msgSend(v21, "vk_CGPath")}];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [v19 setFillColor:{objc_msgSend(blackColor, "CGColor")}];

  [v19 setFillRule:*MEMORY[0x1E69797F8]];
  [highlightShadowLayer setMask:v19];
  [MEMORY[0x1E6979518] commit];
}

- (id)summaryDescription
{
  text = [(VKCImageTextSelectionView *)self text];
  v3 = [text vk_substringToIndex:40];

  return v3;
}

- (CGRect)currentContentsRectInLayerCoordinates
{
  layer = [(VKCImageTextSelectionView *)self layer];
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
  [(VKCImageTextSelectionView *)self currentContentsRectInLayerCoordinates];
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;

  return CGAffineTransformMakeScale(retstr, v4, v5);
}

- (void)performHighlightSelectableTextAnimated:(BOOL)animated
{
  animatedCopy = animated;
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  text = [(VKCImageTextSelectionView *)self text];
  vk_range = [text vk_range];
  v9 = [VKTextRange rangeWithNSRange:vk_range, v8];
  v10 = [recognitionResult normalizedSelectionQuadsForRange:v9];

  textSelectionDelegate = [(VKCImageTextSelectionView *)self textSelectionDelegate];
  v12 = [textSelectionDelegate nonTextNormalizedHighlightAllQuadsForTextSelectionView:self];

  recognitionResult2 = [(VKCImageBaseOverlayView *)self recognitionResult];
  [recognitionResult2 imageSize];
  v16 = VKMAspectRatio(v14, v15);

  v32 = [MEMORY[0x1E69DC728] vk_roundAndGroupNormalizedQuadsForHighlight:v10 aspectRatio:v16 expansionScale:0.2 radiusToAvgHeightRatio:0.25];
  if ([v12 count])
  {
    v17 = [MEMORY[0x1E69DC728] vk_roundAndGroupNormalizedQuadsForHighlight:v12 aspectRatio:v16 expansionScale:0.07 radiusToAvgHeightRatio:0.02];
    v18 = [v32 vk_unionAndFlattenWithPath:v17];

    v32 = v18;
  }

  highlightShadowLayer = [(VKCImageTextSelectionView *)self highlightShadowLayer];
  highlightLayer = [(VKCImageTextSelectionView *)self highlightLayer];
  v21 = [v32 copy];
  [(VKCImageTextSelectionView *)self setNormalizedHighlightPath:v21];

  v22 = [MEMORY[0x1E69DC728] bezierPathWithRect:{0.0, 0.0, 1.0, 1.0}];
  [v32 vk_appendBezierPath:v22];

  v23 = [v32 copy];
  [(VKCImageTextSelectionView *)self setBorderedNormalizedHighlightPath:v23];

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [highlightLayer setHidden:1];
  [highlightLayer setPath:{objc_msgSend(v32, "vk_CGPath")}];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v25 = [blackColor colorWithAlphaComponent:0.25];
  [highlightLayer setFillColor:{objc_msgSend(v25, "CGColor")}];

  [highlightLayer setFillRule:*MEMORY[0x1E69797F8]];
  [(VKCImageTextSelectionView *)self updateHighlightLayerGeometry];
  [highlightLayer setOpacity:0.0];
  [highlightShadowLayer setHidden:1];
  [highlightShadowLayer setOpacity:0.0];
  [(UIView *)self vk_viewLengthFromWindowLength:15.0];
  [highlightShadowLayer setShadowRadius:?];
  [(UIView *)self vk_viewLengthFromWindowLength:5.0];
  [highlightShadowLayer setShadowOffset:{0.0, v26}];
  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  [highlightShadowLayer setShadowColor:{objc_msgSend(blackColor2, "CGColor")}];

  LODWORD(v28) = 0.25;
  [highlightShadowLayer setShadowOpacity:v28];
  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] begin];
  v29 = 0.15;
  if (!animatedCopy)
  {
    v29 = 0.0;
  }

  [MEMORY[0x1E6979518] setAnimationDuration:v29];
  [highlightLayer setHidden:0];
  LODWORD(v30) = 1.0;
  [highlightLayer setOpacity:v30];
  [highlightShadowLayer setHidden:0];
  LODWORD(v31) = 1.0;
  [highlightShadowLayer setOpacity:v31];
  [MEMORY[0x1E6979518] commit];
}

- (CAShapeLayer)highlightLayer
{
  highlightLayer = self->_highlightLayer;
  if (!highlightLayer)
  {
    highlightShadowLayer = [(VKCImageTextSelectionView *)self highlightShadowLayer];
    v5 = objc_alloc_init(MEMORY[0x1E69794A0]);
    v6 = self->_highlightLayer;
    self->_highlightLayer = v5;

    layer = [(VKCImageTextSelectionView *)self layer];
    [layer addSublayer:self->_highlightLayer];

    highlightLayer = self->_highlightLayer;
  }

  return highlightLayer;
}

- (CALayer)highlightShadowLayer
{
  highlightShadowLayer = self->_highlightShadowLayer;
  if (!highlightShadowLayer)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6979398]);
    v5 = self->_highlightShadowLayer;
    self->_highlightShadowLayer = v4;

    [(CALayer *)self->_highlightShadowLayer setBounds:0.0, 0.0, 1.0, 1.0];
    layer = [(VKCImageTextSelectionView *)self layer];
    [layer addSublayer:self->_highlightShadowLayer];

    highlightShadowLayer = self->_highlightShadowLayer;
  }

  return highlightShadowLayer;
}

- (int64_t)baseWritingDirectionForPosition:(id)position inDirection:(unint64_t)direction
{
  if (direction == 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (direction == 2)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (CGRect)caretRectForPosition:(id)position
{
  positionCopy = position;
  documentRange = [(VKCImageTextSelectionView *)self documentRange];
  if ([documentRange length])
  {
    v6 = [documentRange end];
    v7 = [positionCopy isEqual:v6];

    offset = [positionCopy offset];
    v9 = [VKTextRange rangeWithStartOffset:offset - v7 endOffset:offset - v7 + 1];
    [(VKCImageTextSelectionView *)self firstRectForRange:v9];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v11 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v15 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
  }

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (id)characterRangeAtPoint:(CGPoint)point
{
  [(VKCImageBaseOverlayView *)self normalizedPointFromViewPoint:point.x, point.y];
  v5 = v4;
  v7 = v6;
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  v9 = [recognitionResult characterRangeAtPoint:{v5, v7}];

  return v9;
}

- (id)positionFromPosition:(id)position offset:(int64_t)offset
{
  v5 = [position positionByAddingOffset:offset];
  v6 = [(VKCImageTextSelectionView *)self boundedPositionFromPosition:v5];

  return v6;
}

- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition
{
  positionCopy = position;
  offset = [toPosition offset];
  offset2 = [positionCopy offset];

  return offset - offset2;
}

- (id)positionFromPosition:(id)position inDirection:(unint64_t)direction offset:(int64_t)offset
{
  if (direction == 2)
  {
    offsetCopy = -offset;
  }

  else
  {
    offsetCopy = offset;
  }

  v8 = [position positionByAddingOffset:offsetCopy];
  v9 = [(VKCImageTextSelectionView *)self boundedPositionFromPosition:v8];

  return v9;
}

- (id)characterRangeByExtendingPosition:(id)position inDirection:(unint64_t)direction
{
  if (direction == 3)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  positionCopy = position;
  v7 = [positionCopy positionByAddingOffset:v5];
  v8 = [(VKCImageTextSelectionView *)self boundedPositionFromPosition:v7];

  v9 = [[VKTextRange alloc] initWithStart:positionCopy end:v8];

  return v9;
}

- (id)boundedPositionFromPosition:(id)position
{
  positionCopy = position;
  offset = [(VKTextPosition *)positionCopy offset];
  text = [(VKCImageTextSelectionView *)self text];
  v7 = VKMClampInt(offset, 0, [text length]);

  v8 = positionCopy;
  if (v7 != [(VKTextPosition *)positionCopy offset])
  {
    v8 = [[VKTextPosition alloc] initWithOffset:v7];
  }

  return v8;
}

- (id)closestPositionToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  documentRange = [(VKCImageTextSelectionView *)self documentRange];
  v7 = [(VKCImageTextSelectionView *)self closestPositionToPoint:documentRange withinRange:x, y];

  return v7;
}

- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range
{
  y = point.y;
  x = point.x;
  rangeCopy = range;
  [(VKCImageBaseOverlayView *)self normalizedPointFromViewPoint:x, y];
  v9 = v8;
  v11 = v10;
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  v13 = [recognitionResult closestPositionToPoint:rangeCopy withinRange:{v9, v11}];

  return v13;
}

- (id)closestQuadForBlockOfType:(unint64_t)type toPoint:(CGPoint)point maxDistance:(double)distance
{
  distance = [(VKCImageTextSelectionView *)self closestBlockOfType:type toPoint:point.x maxDistance:point.y, distance];
  if (distance)
  {
    [(VKCImageBaseOverlayView *)self contentsRect];
    v7 = [distance vk_quadConvertedToView:self withContentsRect:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)closestBlockOfType:(unint64_t)type toPoint:(CGPoint)point maxDistance:(double)distance
{
  y = point.y;
  x = point.x;
  [(VKCImageBaseOverlayView *)self normalizedPointFromViewPoint:?];
  v11 = v10;
  v13 = v12;
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  v15 = [recognitionResult closestBlockOfType:type toPoint:{v11, v13}];

  if (v15)
  {
    [(VKCImageBaseOverlayView *)self contentsRect];
    v16 = [v15 vk_quadConvertedToView:self withContentsRect:?];
    if (([v16 containsPoint:{x, y}] & 1) != 0 || distance > 0.0 && (objc_msgSend(v16, "mininumDistanceToPoint:", x, y), v18 <= distance))
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (int64_t)comparePosition:(id)position toPosition:(id)toPosition
{
  positionCopy = position;
  toPositionCopy = toPosition;
  offset = [positionCopy offset];
  if (offset >= [toPositionCopy offset])
  {
    offset2 = [positionCopy offset];
    v8 = offset2 > [toPositionCopy offset];
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (CGRect)firstRectForRange:(id)range
{
  rangeCopy = range;
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  [(VKCImageBaseOverlayView *)self contentsRect];
  [recognitionResult firstRectForRange:rangeCopy documentView:self contentRect:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)positionWithinRange:(id)range farthestInDirection:(unint64_t)direction
{
  nsRange = [range nsRange];
  v7 = nsRange + v6;
  if (((1 << direction) & 0x34) == 0)
  {
    v7 = nsRange;
  }

  if (direction <= 5)
  {
    v8 = v7;
  }

  else
  {
    v8 = nsRange;
  }

  v9 = [[VKTextPosition alloc] initWithOffset:v8];

  return v9;
}

- (id)selectionRectsForRange:(id)range
{
  rangeCopy = range;
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  [(VKCImageBaseOverlayView *)self contentsRect];
  v6 = [recognitionResult selectionRectsForRange:rangeCopy documentView:self contentRect:?];

  return v6;
}

- (id)textInRange:(id)range
{
  rangeCopy = range;
  text = [(VKCImageTextSelectionView *)self text];
  v6 = [text vk_substringWithVKRange:rangeCopy];

  return v6;
}

- (id)attributedTextInRange:(id)range
{
  rangeCopy = range;
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  v6 = [recognitionResult convertPlainTextRangeToAttributedRange:rangeCopy];

  attributedText = [(VKCImageTextSelectionView *)self attributedText];
  v8 = [attributedText vk_attributedSubstringFromVKRange:v6];

  return v8;
}

- (BOOL)containsTextAtPoint:(CGPoint)point
{
  [(VKCImageBaseOverlayView *)self normalizedPointFromViewPoint:point.x, point.y];
  v5 = v4;
  v7 = v6;
  allLineQuads = [(VKCImageTextSelectionView *)self allLineQuads];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__VKCImageTextSelectionView_containsTextAtPoint___block_invoke;
  v11[3] = &__block_descriptor_48_e23_B32__0__VKQuad_8Q16_B24l;
  v11[4] = v5;
  v11[5] = v7;
  v9 = [allLineQuads vk_containsObjectPassingTest:v11];

  return v9;
}

- (BOOL)containsSelectedTextAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selectedVKRange = [(VKCImageTextSelectionView *)self selectedVKRange];
  if ([selectedVKRange isEmpty])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(VKCImageTextSelectionView *)self closestBlockOfType:48 toPoint:x maxDistance:y, 0.0];
    if (v8)
    {
      recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
      sourceVNDocument = [recognitionResult sourceVNDocument];
      vk_textBlock = [v8 vk_textBlock];
      v12 = [sourceVNDocument rangeOfTextBlock:vk_textBlock];
      v14 = v13;

      v7 = [selectedVKRange intersectsNSRange:{v12, v14}];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)imageContainsPoint:(CGPoint)point
{
  [(VKCImageBaseOverlayView *)self normalizedPointFromViewPoint:point.x, point.y];
  v4 = v3;
  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = 0x3FF0000000000000;
  v10 = 0x3FF0000000000000;

  return CGRectContainsPoint(*&v7, *&v4);
}

- (void)sendAnalyticsEventWithSelector:(SEL)selector type:(int64_t)type source:(int64_t)source
{
  text = [(VKCImageTextSelectionView *)self text];
  selectedVKRange = [(VKCImageTextSelectionView *)self selectedVKRange];
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  customAnalyticsIdentifier = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
  objc_initWeak(&location, self);
  analyticsQueue = [(VKCImageTextSelectionView *)self analyticsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__VKCImageTextSelectionView_sendAnalyticsEventWithSelector_type_source___block_invoke;
  block[3] = &unk_1E7BE4A40;
  v19 = selectedVKRange;
  v20 = text;
  v23[1] = selector;
  v23[2] = type;
  v23[3] = source;
  v21 = recognitionResult;
  v22 = customAnalyticsIdentifier;
  v14 = customAnalyticsIdentifier;
  v15 = recognitionResult;
  v16 = text;
  v17 = selectedVKRange;
  objc_copyWeak(v23, &location);
  dispatch_async(analyticsQueue, block);

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

void __72__VKCImageTextSelectionView_sendAnalyticsEventWithSelector_type_source___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = [*(a1 + 40) length];
  v4 = [*(a1 + 40) vk_checkedSubstringWithVKRange:*(a1 + 32)];
  v5 = [v4 vk_wordCount];

  v6 = -[VKAnalyticsTextEvent initWithSelectionLength:totalLength:selectionWordCount:macOSSelector:includesRichPasteBoardContent:eventType:source:customIdentifier:]([VKAnalyticsTextEvent alloc], "initWithSelectionLength:totalLength:selectionWordCount:macOSSelector:includesRichPasteBoardContent:eventType:source:customIdentifier:", v2, v3, v5, *(a1 + 72), [*(a1 + 48) containsRichPasteboardElementsForRange:*(a1 + 32)], *(a1 + 80), *(a1 + 88), *(a1 + 56));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__VKCImageTextSelectionView_sendAnalyticsEventWithSelector_type_source___block_invoke_2;
  v8[3] = &unk_1E7BE4A18;
  objc_copyWeak(&v10, (a1 + 64));
  v7 = v6;
  v9 = v7;
  vk_dispatchMainAfterDelay(v8, 0.0);

  objc_destroyWeak(&v10);
}

void __72__VKCImageTextSelectionView_sendAnalyticsEventWithSelector_type_source___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained textSelectionDelegate];
    [v3 textSelectionView:v4 analyticsEventOccured:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (id)textQueryProvider
{
  if ([objc_opt_class() sceneAwareLookupEnabled])
  {
    objc_initWeak(&location, self);
    recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
    objc_initWeak(&from, recognitionResult);

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__VKCImageTextSelectionView_textQueryProvider__block_invoke;
    v7[3] = &unk_1E7BE4AB8;
    objc_copyWeak(&v8, &location);
    objc_copyWeak(&v9, &from);
    v4 = _Block_copy(v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v4 = 0;
  }

  v5 = _Block_copy(v4);

  return v5;
}

void __46__VKCImageTextSelectionView_textQueryProvider__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && ([WeakRetained recognitionResult], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_loadWeakRetained((a1 + 40)), v10, v9, v9 == v10))
  {
    v11 = [v8 textSelectionDelegate];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__VKCImageTextSelectionView_textQueryProvider__block_invoke_2;
    v12[3] = &unk_1E7BE4A90;
    v13 = v6;
    [v11 generateTextualVisualSearchResultForQueryInfo:v5 completionHandler:v12];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

void __46__VKCImageTextSelectionView_textQueryProvider__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__VKCImageTextSelectionView_textQueryProvider__block_invoke_3;
  v11[3] = &unk_1E7BE4A68;
  v12 = v7;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v7;
  vk_performBlockOnMainThread(v11);
}

void __46__VKCImageTextSelectionView_textQueryProvider__block_invoke_3(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch.text");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __46__VKCImageTextSelectionView_textQueryProvider__block_invoke_3_cold_1(v2, v3);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 40) searchSections];
    (*(v4 + 16))(v4, v5, 0);
  }
}

- (VKCImageTextSelectionViewDelegate)textSelectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textSelectionDelegate);

  return WeakRetained;
}

- (CGRect)highlightLayerStartContentsRect
{
  x = self->_highlightLayerStartContentsRect.origin.x;
  y = self->_highlightLayerStartContentsRect.origin.y;
  width = self->_highlightLayerStartContentsRect.size.width;
  height = self->_highlightLayerStartContentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

id __46__VKCImageTextSelectionView_iOS__addShortcut___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1B4335000, v2, OS_LOG_TYPE_DEFAULT, "Add Shortcut: %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v6.receiver = *(a1 + 32);
  v6.super_class = VKCImageTextSelectionView_iOS;
  return objc_msgSendSuper2(&v6, sel__addShortcut_, v4);
}

id __41__VKCImageTextSelectionView_iOS__lookup___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1B4335000, v2, OS_LOG_TYPE_DEFAULT, "Lookup: %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v6.receiver = *(a1 + 32);
  v6.super_class = VKCImageTextSelectionView_iOS;
  return objc_msgSendSuper2(&v6, sel__lookup_, v4);
}

void __41__VKCImageTextSelectionView_iOS__define___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v5.receiver = *(a1 + 40);
  v5.super_class = VKCImageTextSelectionView_iOS;
  objc_msgSendSuper2(&v5, sel__define_, v2);
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Define: %@", buf, 0xCu);
  }
}

id __44__VKCImageTextSelectionView_iOS__translate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1B4335000, v2, OS_LOG_TYPE_DEFAULT, "Translate: %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v6.receiver = *(a1 + 32);
  v6.super_class = VKCImageTextSelectionView_iOS;
  return objc_msgSendSuper2(&v6, sel__translate_, v4);
}

void __40__VKCImageTextSelectionView_iOS__share___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = a2;
  v27.origin.x = v4;
  v27.origin.y = v5;
  v27.size.width = v6;
  v27.size.height = v7;
  if (CGRectIsNull(v27))
  {
    [v8 rect];
    x = v9;
    y = v11;
    width = v13;
    height = v15;
  }

  else
  {
    v17 = *(*(a1 + 32) + 8);
    [v8 rect];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v29.origin.x = v19;
    v29.origin.y = v21;
    v29.size.width = v23;
    v29.size.height = v25;
    v28 = CGRectUnion(v17[1], v29);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
  }

  v26 = *(*(a1 + 32) + 8);
  v26[4] = x;
  v26[5] = y;
  v26[6] = width;
  v26[7] = height;
}

void __40__VKCImageTextSelectionView_iOS__share___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) selectedText];
  v3 = [*(a1 + 32) selectedAttributedText];
  v4 = [*(a1 + 32) textSelectionDelegate];
  v5 = [v4 textSelectionView:*(a1 + 32) updateStringForCopy:v2];

  v6 = [*(a1 + 32) textSelectionDelegate];
  v7 = [v6 textSelectionView:*(a1 + 32) updateAttributedStringForCopy:v3];

  if (v2 == v5 && v3 == v7)
  {
    v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_1B4335000, v9, OS_LOG_TYPE_DEFAULT, "share: %@", buf, 0xCu);
    }

    v11 = *(a1 + 40);
    v12.receiver = *(a1 + 32);
    v12.super_class = VKCImageTextSelectionView_iOS;
    objc_msgSendSuper2(&v12, sel__share_, v11);
  }

  else
  {
    [*(a1 + 32) presentShareSheetForCustomStrings:v5 attributedString:v7];
  }
}

void __84__VKCImageTextSelectionView_iOS_presentShareSheetForCustomStrings_attributedString___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = a2;
  v27.origin.x = v4;
  v27.origin.y = v5;
  v27.size.width = v6;
  v27.size.height = v7;
  if (CGRectIsNull(v27))
  {
    [v8 rect];
    x = v9;
    y = v11;
    width = v13;
    height = v15;
  }

  else
  {
    v17 = *(*(a1 + 32) + 8);
    [v8 rect];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v29.origin.x = v19;
    v29.origin.y = v21;
    v29.size.width = v23;
    v29.size.height = v25;
    v28 = CGRectUnion(v17[1], v29);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
  }

  v26 = *(*(a1 + 32) + 8);
  v26[4] = x;
  v26[5] = y;
  v26[6] = width;
  v26[7] = height;
}

void __66__VKCImageTextSelectionView_iOS_processHasSnapshotDragEntitlement__block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    *cf = 0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.QuartzCore.global-capture", cf);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFBooleanGetTypeID())
      {
        v5 = [v3 BOOLValue];
      }

      else
      {
        v5 = 0;
      }

      processHasSnapshotDragEntitlement_sHasEntitlement = v5;
      CFRelease(v3);
    }

    CFRelease(v1);
    if (*cf)
    {
      v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __66__VKCImageTextSelectionView_iOS_processHasSnapshotDragEntitlement__block_invoke_cold_1(cf, v6);
      }

      CFRelease(*cf);
    }
  }

  v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = VKMUIStringForBool(processHasSnapshotDragEntitlement_sHasEntitlement);
    *cf = 138412290;
    *&cf[4] = v8;
    _os_log_impl(&dword_1B4335000, v7, OS_LOG_TYPE_DEFAULT, "Process has SnapshotDragEntitlement: %@", cf, 0xCu);
  }
}

void __81__VKCImageTextSelectionView_iOS_targetedDragPreviewWithLabelsForCurrentSelection__block_invoke(uint64_t a1, void *a2)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 rect];
  v5 = v4;
  [MEMORY[0x1E69DB878] systemFontSize];
  v7 = v6 / v5;
  v8 = [MEMORY[0x1E69DB878] systemFontOfSize:v5];
  [v3 rect];
  v10 = v9;
  v12 = v11;
  v15 = VKMSubtractPoints(v13, v14, *(a1 + 40));
  v17 = v16;
  v18 = [[VKCDragImageLabel alloc] initWithFrame:v15, v16, v10, v12];
  [(VKCDragImageLabel *)v18 setFont:v8];
  [(VKCDragImageLabel *)v18 setCustomEdgeInsets:0.0, v7, 0.0, v7];
  v19 = [v3 _transcript];
  [(VKCDragImageLabel *)v18 setText:v19];

  v20 = [MEMORY[0x1E69DC888] labelColor];
  v21 = [v20 vk_colorWith80PercentOpacity];
  [(VKCDragImageLabel *)v18 setTextColor:v21];

  [(VKCDragImageLabel *)v18 setTextAlignment:3];
  v22 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(VKCDragImageLabel *)v18 setBackgroundColor:v22];

  [(VKCDragImageLabel *)v18 setAdjustsFontSizeToFitWidth:1];
  v23 = objc_alloc(MEMORY[0x1E69DD250]);
  [(VKCDragImageLabel *)v18 frame];
  v24 = [v23 initWithFrame:?];
  v25 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v26 = [v25 vk_colorWith80PercentOpacity];
  [v24 setBackgroundColor:v26];

  [v24 addSubview:v18];
  [*(a1 + 32) addSubview:v24];
  v27 = [(VKCDragImageLabel *)v18 text];
  v28 = *MEMORY[0x1E69DB648];
  v60 = *MEMORY[0x1E69DB648];
  v61[0] = v8;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
  [v27 sizeWithAttributes:v29];
  v31 = v30;
  v33 = v32;

  [v24 setFrame:{v15, v17, v10, v12}];
  [v24 setBounds:VKMRectWithSize()];
  [v24 bounds];
  [(VKCDragImageLabel *)v18 setFrame:?];
  if (v5 < 20.0)
  {
    v34 = [MEMORY[0x1E69DB878] systemFontOfSize:?];

    [(VKCDragImageLabel *)v18 setFont:v34];
    v35 = [(VKCDragImageLabel *)v18 text];
    v58 = v28;
    v59 = v34;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    [v35 sizeWithAttributes:v36];
    v38 = v37;

    [v24 bounds];
    v43 = VKMCenterOfRect(v39, v40, v41, v42);
    [(VKCDragImageLabel *)v18 setFrame:VKMRectWithCenterAndSize(v43, v44, v38)];
    memset(&v57, 0, 48);
    CGAffineTransformMakeScale(&v57, v31 / v38, v31 / v38);
    *&v55.m11 = *&v57.m11;
    *&v55.m13 = *&v57.m13;
    *&v55.m21 = *&v57.m21;
    [(VKCDragImageLabel *)v18 setTransform:&v55];
    v8 = v34;
  }

  v45 = [v24 layer];
  [v45 setCornerRadius:v33 * 0.1];

  v46 = [v24 layer];
  [v46 setMasksToBounds:1];

  memset(&v57, 0, sizeof(v57));
  CATransform3DMakeScale(&v57, v31 / v10, v33 / v12, 1.0);
  v56 = v57;
  v47 = [v24 layer];
  v55 = v56;
  [v47 setTransform:&v55];

  memset(v54, 0, sizeof(v54));
  memset(&v55, 0, sizeof(v55));
  v48 = [v24 layer];
  v49 = [v3 quad];
  [VKQuad transformToConvertLayer:v48 intoQuad:v49 frame:v54];

  v53 = v55;
  v50 = [v24 layer];
  v52 = v53;
  [v50 setTransform:&v52];

  v51 = [v24 layer];
  [v51 setPosition:{v15, v17}];
}

id __66__VKCImageTextSelectionView_iOS_selectedTextPathsConvertedToView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 quad];
  [v3 rect];
  v6 = v5;
  v8 = v7;

  v9 = [v4 quadFromAddingPoint:{v6, v8}];

  v10 = v9;
  v11 = v10;
  v12 = *(a1 + 32);
  v13 = v10;
  if (v12)
  {
    v13 = v10;
    if (v12 != *(a1 + 40))
    {
      v13 = [v10 quadByConvertingFromView:? toView:? isNormalized:?];
    }
  }

  v14 = [v13 path];

  return v14;
}

void __46__VKCImageTextSelectionView_textQueryProvider__block_invoke_3_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "%@", &v3, 0xCu);
}

void __66__VKCImageTextSelectionView_iOS_processHasSnapshotDragEntitlement__block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "Failed to check if SnapshotDragEntitlement is set: %@", &v3, 0xCu);
}

@end