@interface VKCImageDataDetectorView_macOS
- (BOOL)highlightedElementContainsPoint:(CGPoint)point;
- (BOOL)needsRotationOffsetForElementQuad:(id)quad buttonQuad:(id)buttonQuad isLTR:(BOOL)r;
- (CGSize)buttonImageSizeFromQuad:(id)quad baseline:(CGPoint *)baseline LTR:(BOOL)r finalIsLTR:(BOOL *)tR;
- (VKCImageDataDetectorView_macOS)initWithFrame:(CGRect)frame;
- (VKEdgeDistance)edgeDistanceFromLine:(CGPoint *)line toRect:(CGRect)rect;
- (double)angleOfQuad:(id)quad LTR:(BOOL)r;
- (double)closestDistanceFromLine:(CGPoint *)line point:(CGPoint)point toRect:(CGRect)rect;
- (id)elementAtPoint:(CGPoint)point;
- (id)pathForDataDetectorElement:(id)element;
- (id)quadAddingButtonQuad:(id)quad toElementQuad:(id)elementQuad LTR:(BOOL)r;
- (id)setupButtonForElement:(id)element;
- (void)setHighlightedElement:(id)element;
- (void)updateHighlightForPoint:(CGPoint)point;
@end

@implementation VKCImageDataDetectorView_macOS

- (VKCImageDataDetectorView_macOS)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = VKCImageDataDetectorView_macOS;
  v3 = [(VKCImageDataDetectorView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(VKCDataDetectorHighlightView);
    highlightView = v3->_highlightView;
    v3->_highlightView = v4;

    [(VKCImageDataDetectorView_macOS *)v3 addSubview:v3->_highlightView];
    v6 = objc_alloc_init(VKCImageDataDetectorViewHighlightButton);
    highlightButtonImageView = v3->_highlightButtonImageView;
    v3->_highlightButtonImageView = v6;

    [(VKCImageDataDetectorViewHighlightButton *)v3->_highlightButtonImageView setHidden:1];
    [(VKCImageDataDetectorView_macOS *)v3 addSubview:v3->_highlightButtonImageView];
  }

  return v3;
}

- (id)pathForDataDetectorElement:(id)element
{
  v3 = [(VKCImageDataDetectorView *)self viewSpaceQuadsForDataDetectorElement:element];
  v4 = [v3 vk_compactMap:&__block_literal_global_39];
  v5 = [MEMORY[0x1E69DC728] vk_groupAndRoundPaths:v4 radius:4.0 offset:4.0];

  return v5;
}

- (BOOL)highlightedElementContainsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  highlightView = [(VKCImageDataDetectorView_macOS *)self highlightView];
  if (highlightView)
  {
    [(VKCImageDataDetectorView_macOS *)self convertPoint:highlightView toView:x, y];
    v8 = v7;
    v10 = v9;
    path = [highlightView path];
    v12 = [path containsPoint:{v8, v10}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)updateHighlightForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(VKCImageDataDetectorView_macOS *)self highlightedElementContainsPoint:?])
  {
    v6 = [(VKCImageDataDetectorView_macOS *)self elementAtPoint:x, y];
    v10 = v6;
    if (v6)
    {
      v7 = v6;
      selfCopy2 = self;
      v9 = v7;
    }

    else
    {
      selfCopy2 = self;
      v9 = 0;
    }

    [(VKCImageDataDetectorView_macOS *)selfCopy2 setHighlightedElement:v9];
  }
}

- (void)setHighlightedElement:(id)element
{
  elementCopy = element;
  if (self->_highlightedElement != elementCopy)
  {
    objc_storeStrong(&self->_highlightedElement, element);
    highlightView = [(VKCImageDataDetectorView_macOS *)self highlightView];
    [highlightView setHidden:self->_highlightedElement == 0];
    if (self->_highlightedElement)
    {
      v7 = [(VKCImageDataDetectorView_macOS *)self setupButtonForElement:?];
      ddBottomQuad = [v7 ddBottomQuad];
      [ddBottomQuad sideLength];
      if (v9 >= v10)
      {
        v9 = v10;
      }

      [(UIView *)self vk_windowLengthFromViewLength:v9];
      v12 = v11 < 6.0;
      combinedElementHighlightPath = [v7 combinedElementHighlightPath];
      buttonQuad = [v7 buttonQuad];
      [(VKCImageDataDetectorView_macOS *)self setButtonQuad:buttonQuad];

      ddBottomQuad2 = [v7 ddBottomQuad];
      [(VKCImageDataDetectorView_macOS *)self setDdBottomQuad:ddBottomQuad2];

      [combinedElementHighlightPath bounds];
      [highlightView setFrame:?];
      [highlightView frame];
      v17 = -v16;
      [highlightView frame];
      CGAffineTransformMakeTranslation(&v21, v17, -v18);
      [combinedElementHighlightPath vk_applyTransform:&v21];
      [highlightView setPath:combinedElementHighlightPath];
      [highlightView setHideDashedLine:v12];
    }

    else
    {
      highlightButtonImageView = [(VKCImageDataDetectorView_macOS *)self highlightButtonImageView];
      [highlightButtonImageView setHidden:1];

      highlightView2 = [(VKCImageDataDetectorView_macOS *)self highlightView];
      [highlightView2 setPath:0];

      [(VKCImageDataDetectorView_macOS *)self setButtonQuad:0];
    }
  }
}

- (id)elementAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(VKCImageDataDetectorView_macOS *)self highlightedElementContainsPoint:?])
  {
    [(VKCImageDataDetectorView_macOS *)self highlightedElement];
  }

  else
  {
    [(VKCImageDataDetectorView *)self closestElementToPoint:x maxDistance:y, 0.0];
  }
  v6 = ;

  return v6;
}

- (id)setupButtonForElement:(id)element
{
  v69[4] = *MEMORY[0x1E69E9840];
  v4 = [(VKCImageDataDetectorView *)self viewSpaceQuadsForDataDetectorElement:element];
  lastObject = [v4 lastObject];
  [lastObject bottomLeft];
  v7 = v6;
  v9 = v8;
  [lastObject bottomRight];
  v12 = VKMAngleOfLine(v7, v9, v10, v11);
  [lastObject bottomLeft];
  v14 = v13;
  v16 = v15;
  [lastObject bottomRight];
  v69[0] = v14;
  v69[1] = v16;
  v69[2] = v17;
  v69[3] = v18;
  v68 = 0;
  [(VKCImageDataDetectorView_macOS *)self buttonImageSizeFromQuad:lastObject baseline:v69 LTR:1 finalIsLTR:&v68];
  v20 = v19;
  [lastObject bottomLeft];
  v22 = v21;
  v24 = v23;
  [lastObject topLeft];
  v26 = VKMMidpointOnLineSegment(v22, v24, v25);
  v28 = v27;
  [lastObject bottomRight];
  v30 = v29;
  v32 = v31;
  [lastObject topRight];
  v34 = VKMMidpointOnLineSegment(v30, v32, v33);
  v36 = VKMPointByExtendingLineFromPoints(v26, v28, v34, v35, v20 * 0.5);
  v38 = v37;
  highlightButtonImageView = [(VKCImageDataDetectorView_macOS *)self highlightButtonImageView];
  v40 = VKMRectWithCenterAndSize(v36, v38, v20);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  [highlightButtonImageView setFrame:?];
  [highlightButtonImageView setHidden:0];
  [highlightButtonImageView setRotation:v12];
  v47 = [[VKQuad alloc] initWithRect:v40, v42, v44, v46];
  v48 = [(VKQuad *)v47 quadFromRotatingAroundCentroidWithAngle:v12];
  if ([(VKCImageDataDetectorView_macOS *)self needsRotationOffsetForElementQuad:lastObject buttonQuad:v48 isLTR:1])
  {
    v49 = v12 + 3.14159265;
    [highlightButtonImageView setRotation:v49];
    v50 = [(VKQuad *)v47 quadFromRotatingAroundCentroidWithAngle:v49];

    v48 = v50;
  }

  v51 = [(VKCImageDataDetectorView_macOS *)self quadAddingButtonQuad:v48 toElementQuad:lastObject LTR:1];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __56__VKCImageDataDetectorView_macOS_setupButtonForElement___block_invoke;
  v65[3] = &unk_1E7BE74A8;
  v66 = v51;
  selfCopy = self;
  v52 = v51;
  v53 = [v4 vk_map:v65];
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  [recognitionResult imageSize];
  v57 = VKMAspectRatio(v55, v56);

  v58 = [MEMORY[0x1E69DC728] vk_roundAndGroupNormalizedQuadsForHighlight:v53 aspectRatio:v57 expansionScale:0.2 radiusToAvgHeightRatio:0.02];
  [(VKCImageDataDetectorView_macOS *)self bounds];
  memset(&v64, 0, sizeof(v64));
  CGAffineTransformMakeScale(&v64, v59, v60);
  v63 = v64;
  [v58 vk_applyTransform:&v63];
  v61 = objc_alloc_init(VKCImageDataDetectorViewQuadInfo);
  [(VKCImageDataDetectorViewQuadInfo *)v61 setButtonQuad:v48];
  [(VKCImageDataDetectorViewQuadInfo *)v61 setDdBottomQuad:lastObject];
  [(VKCImageDataDetectorViewQuadInfo *)v61 setCombinedElementHighlightPath:v58];

  return v61;
}

- (BOOL)needsRotationOffsetForElementQuad:(id)quad buttonQuad:(id)buttonQuad isLTR:(BOOL)r
{
  rCopy = r;
  buttonQuadCopy = buttonQuad;
  quadCopy = quad;
  v9 = quadCopy;
  if (rCopy)
  {
    [quadCopy bottomLeft];
    v11 = v10;
    v13 = v12;
    [buttonQuadCopy bottomLeft];
    v16 = VKMDistance(v11, v13, v14, v15);
    [v9 bottomLeft];
    v18 = v17;
    v20 = v19;

    [buttonQuadCopy bottomRight];
  }

  else
  {
    [quadCopy bottomRight];
    v24 = v23;
    v26 = v25;
    [buttonQuadCopy bottomRight];
    v16 = VKMDistance(v24, v26, v27, v28);
    [v9 bottomRight];
    v18 = v29;
    v20 = v30;

    [buttonQuadCopy bottomLeft];
  }

  v31 = v21;
  v32 = v22;

  return v16 > VKMDistance(v18, v20, v31, v32);
}

- (double)angleOfQuad:(id)quad LTR:(BOOL)r
{
  rCopy = r;
  quadCopy = quad;
  v6 = quadCopy;
  if (rCopy)
  {
    [quadCopy bottomLeft];
    v8 = v7;
    v10 = v9;
    [v6 bottomRight];
  }

  else
  {
    [quadCopy bottomRight];
    v8 = v13;
    v10 = v14;
    [v6 bottomLeft];
  }

  v15 = v11;
  v16 = v12;

  return VKMAngleOfLine(v8, v10, v15, v16);
}

- (VKEdgeDistance)edgeDistanceFromLine:(CGPoint *)line toRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(VKCImageDataDetectorView_macOS *)self closestDistanceFromLine:line->x point:line->y toRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v11 = v10;
  [(VKCImageDataDetectorView_macOS *)self closestDistanceFromLine:line point:line[1].x toRect:line[1].y, x, y, width, height];
  v13 = v11;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (double)closestDistanceFromLine:(CGPoint *)line point:(CGPoint)point toRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = point.y;
  v10 = point.x;
  v32[4] = *MEMORY[0x1E69E9840];
  v33.x = v10;
  v33.y = v9;
  v12 = CGRectContainsPoint(rect, v33);
  result = -1.0;
  if (v12)
  {
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    MinX = CGRectGetMinX(v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MinY = CGRectGetMinY(v36);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    MaxX = CGRectGetMaxX(v37);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v22 = CGRectGetMinY(v38);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v14 = CGRectGetMinX(v39) + 0.00001;
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    MaxY = CGRectGetMaxY(v40);
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    v16 = CGRectGetMaxX(v41) + 0.00001;
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    v32[0] = MaxX;
    v32[1] = v22;
    v32[2] = MinX;
    v32[3] = MinY;
    v28 = v16;
    v29 = CGRectGetMaxY(v42);
    v30 = v14;
    v31 = MaxY;
    v27[0] = MinX;
    v27[1] = MinY;
    v27[2] = v14;
    v27[3] = MaxY;
    v26[0] = MaxX;
    v26[1] = v22;
    v26[2] = v16;
    v26[3] = v29;
    VKMDistanceFromLineToLineAtPoint(&line->x, v32);
    v18 = v17;
    VKMDistanceFromLineToLineAtPoint(&line->x, &v28);
    if (v18 >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    VKMDistanceFromLineToLineAtPoint(&line->x, v27);
    if (v20 >= v21)
    {
      v20 = v21;
    }

    VKMDistanceFromLineToLineAtPoint(&line->x, v26);
    if (v20 < result)
    {
      return v20;
    }
  }

  return result;
}

- (CGSize)buttonImageSizeFromQuad:(id)quad baseline:(CGPoint *)baseline LTR:(BOOL)r finalIsLTR:(BOOL *)tR
{
  rCopy = r;
  *tR = r;
  [quad sideLength];
  v12 = v10;
  v13 = v11;
  if (rCopy)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  [(UIView *)self vk_viewPointRatioFromWindow];
  v16 = VKMClamp(v14, v15 * 12.0, v15 * 32.0);
  [(VKCImageDataDetectorView_macOS *)self bounds];
  [(VKCImageDataDetectorView_macOS *)self edgeDistanceFromLine:baseline toRect:?];
  if (rCopy)
  {
    if (v17 >= 12.0)
    {
      if (v17 < v16)
      {
        v16 = v17;
      }
    }

    else if (v18 > 12.0)
    {
      v16 = VKMClamp(v13, 12.0, 32.0);
      *tR = 0;
    }
  }

  else if (v18 < 12.0 && v17 > 12.0)
  {
    v16 = VKMClamp(v12, 12.0, 32.0);
    *tR = 1;
  }

  v20 = v16;
  v21 = v16;
  result.height = v21;
  result.width = v20;
  return result;
}

- (id)quadAddingButtonQuad:(id)quad toElementQuad:(id)elementQuad LTR:(BOOL)r
{
  rCopy = r;
  v67[4] = *MEMORY[0x1E69E9840];
  elementQuadCopy = elementQuad;
  quadCopy = quad;
  [elementQuadCopy topLeft];
  v10 = v9;
  v12 = v11;
  [elementQuadCopy topRight];
  v14 = v13;
  v16 = v15;
  [elementQuadCopy bottomLeft];
  v18 = v17;
  v20 = v19;
  [elementQuadCopy bottomRight];
  v22 = v21;
  v24 = v23;

  if (rCopy)
  {
    v25 = v20;
  }

  else
  {
    v25 = v24;
  }

  if (rCopy)
  {
    v26 = v18;
  }

  else
  {
    v26 = v22;
  }

  v67[0] = v26;
  v67[1] = v25;
  v52 = v20;
  v53 = v18;
  if (rCopy)
  {
    v20 = v24;
    v18 = v22;
    v27 = v12;
  }

  else
  {
    v27 = v16;
  }

  if (rCopy)
  {
    v28 = v10;
  }

  else
  {
    v28 = v14;
  }

  v56 = v12;
  v57 = v10;
  v54 = v16;
  v55 = v14;
  if (rCopy)
  {
    v12 = v16;
  }

  v67[2] = v18;
  v67[3] = v20;
  if (rCopy)
  {
    v10 = v14;
  }

  v66[0] = v28;
  v66[1] = v27;
  v66[2] = v10;
  v66[3] = v12;
  if (rCopy)
  {
    [quadCopy bottomRight];
    v62 = v29;
    v63 = v30;
    [quadCopy topRight];
  }

  else
  {
    [quadCopy bottomLeft];
    v62 = v33;
    v63 = v34;
    [quadCopy topLeft];
  }

  v35 = v31;
  v36 = v32;

  v60 = 0;
  v61 = 0;
  v58 = 0.0;
  v59 = 0.0;
  v64 = v35;
  v65 = v36;
  VKMIntersectionOfLines(v67, &v62, &v60, &v61, &v58, 1, 1);
  v37 = VKMDistance(v18, v20, v58, v59);
  VKMIntersectionOfLines(v66, &v62, &v60, &v61, &v58, 1, 1);
  v38 = VKMDistance(v10, v12, v58, v59);
  if (rCopy)
  {
    v40 = v56;
    v39 = v57;
    v41 = VKMPointByExtendingLineFromPoints(v57, v56, v55, v54, v38);
    v43 = v42;
    v44 = v53;
    v45 = v37;
    v46 = v52;
    v22 = VKMPointByExtendingLineFromPoints(v53, v52, v22, v24, v45);
    v24 = v47;
  }

  else
  {
    v43 = v54;
    v41 = v55;
    v39 = VKMPointByExtendingLineFromPoints(v55, v54, v57, v56, v38);
    v40 = v48;
    v44 = VKMPointByExtendingLineFromPoints(v22, v24, v53, v52, v37);
    v46 = v49;
  }

  v50 = [[VKQuad alloc] initWithBottomLeft:v44 bottomRight:v46 topLeft:v22 topRight:v24, v39, v40, v41, v43];

  return v50;
}

@end