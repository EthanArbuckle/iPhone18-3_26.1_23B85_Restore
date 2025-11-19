@interface _UIPopoverShapePathProviderIOS
- (CGPoint)_addArrowCurveToPath:(id)a3 direction:(unint64_t)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 peakPoint:(CGPoint)a7 pinnedArrowSide:(int64_t)a8;
- (CGPoint)_addLineWithSlightTrailingAndLeadingCurveToPath:(id)a3 startPoint:(CGPoint)a4 endPoint:(CGPoint)a5 leadingEdge:(BOOL)a6 isVertical:(BOOL)a7;
- (double)_leftAndRightStartYLocationForBounds:(CGRect)a3 pinnedArrowSide:(int64_t)a4 arrowBase:(double)a5 arrowOffset:(double)a6;
- (double)_upAndDownStartingXLocationForBounds:(CGRect)a3 pinnedArrowSide:(int64_t)a4 arrowBase:(double)a5 arrowOffset:(double)a6;
- (id)generatePopoverPathForParameters:(_UIPopoverShapePathParameters *)a3;
- (void)_generateBottomArrowShapeInPath:(id)a3 bounds:(CGRect)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 peakPoint:(CGPoint)a7 pinnedArrowSide:(int64_t)a8 cornerRadii:(CACornerRadii *)a9 arrowBase:(double)a10;
- (void)_generateLeftArrowShapeInPath:(id)a3 bounds:(CGRect)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 peakPoint:(CGPoint)a7 pinnedArrowSide:(int64_t)a8 cornerRadii:(CACornerRadii *)a9 arrowBase:(double)a10;
- (void)_generateRightArrowShapeInPath:(id)a3 bounds:(CGRect)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 peakPoint:(CGPoint)a7 pinnedArrowSide:(int64_t)a8 cornerRadii:(CACornerRadii *)a9 arrowBase:(double)a10;
- (void)_generateTopArrowShapeInPath:(id)a3 bounds:(CGRect)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 peakPoint:(CGPoint)a7 pinnedArrowSide:(int64_t)a8 cornerRadii:(CACornerRadii *)a9 arrowBase:(double)a10;
@end

@implementation _UIPopoverShapePathProviderIOS

- (id)generatePopoverPathForParameters:(_UIPopoverShapePathParameters *)a3
{
  v5 = +[UIBezierPath bezierPath];
  var1 = a3->var1;
  x = a3->var2.origin.x;
  y = a3->var2.origin.y;
  width = a3->var2.size.width;
  height = a3->var2.size.height;
  v10 = a3->var4.minXMaxY.height;
  v11 = a3->var4.maxXMaxY.height;
  v12 = a3->var4.maxXMinY.height;
  v13 = a3->var4.minXMinY.height;
  [MEMORY[0x1E6979398] cornerCurveExpansionFactor:*MEMORY[0x1E69796E8]];
  v15 = fmin(width, height) * 0.5 / v14;
  v16 = fmin(v13, v15);
  v17 = fmin(v12, v15);
  v18 = fmin(v10, v15);
  v19 = fmin(v11, v15);
  var0 = a3->var0;
  if (a3->var0 > 3)
  {
    if (var0 != 4)
    {
      if (var0 == 8)
      {
        v26 = width - a3->var5;
        [(_UIPopoverShapePathProviderIOS *)self _leftAndRightStartYLocationForBounds:var1 pinnedArrowSide:x arrowBase:y arrowOffset:v26, height, a3->var6, a3->var3];
        v28 = v27;
        var6 = a3->var6;
        v30 = x + v26 + a3->var5;
        v53 = v18;
        v54 = v18;
        v55 = v19;
        v56 = v19;
        v57 = v17;
        v58 = v17;
        v59 = v16;
        v60 = v16;
        [(_UIPopoverShapePathProviderIOS *)self _generateRightArrowShapeInPath:v5 bounds:var1 startPoint:&v53 endPoint:x peakPoint:y pinnedArrowSide:v26 cornerRadii:height arrowBase:x + v26, v28, x + v26, v28 + var6, *&v30, v28 + var6 * 0.5, *&var6];
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    var5 = a3->var5;
    v45 = x + var5;
    v46 = width - var5;
    [(_UIPopoverShapePathProviderIOS *)self _leftAndRightStartYLocationForBounds:var1 pinnedArrowSide:v45 arrowBase:y arrowOffset:v46, height, a3->var6, a3->var3];
    v48 = v47;
    v49 = a3->var6;
    v50 = v45 - a3->var5;
    v53 = v18;
    v54 = v18;
    v55 = v19;
    v56 = v19;
    v57 = v17;
    v58 = v17;
    v59 = v16;
    v60 = v16;
    [(_UIPopoverShapePathProviderIOS *)self _generateLeftArrowShapeInPath:v5 bounds:var1 startPoint:&v53 endPoint:v45 peakPoint:y pinnedArrowSide:v46 cornerRadii:height arrowBase:v45, v48, v45, v48 + v49, *&v50, v48 + v49 * 0.5, *&v49];
  }

  else
  {
    if (var0 != 1)
    {
      if (var0 == 2)
      {
        v21 = height - a3->var5;
        [(_UIPopoverShapePathProviderIOS *)self _upAndDownStartingXLocationForBounds:var1 pinnedArrowSide:x arrowBase:y arrowOffset:width, v21, a3->var6, a3->var3];
        v23 = v22;
        v24 = a3->var6;
        v25 = y + v21 + a3->var5;
        v53 = v18;
        v54 = v18;
        v55 = v19;
        v56 = v19;
        v57 = v17;
        v58 = v17;
        v59 = v16;
        v60 = v16;
        [(_UIPopoverShapePathProviderIOS *)self _generateBottomArrowShapeInPath:v5 bounds:var1 startPoint:&v53 endPoint:x peakPoint:y pinnedArrowSide:width cornerRadii:v21 arrowBase:v23, y + v21, v23 + v24, y + v21, v23 + v24 * 0.5, *&v25, *&v24];
        goto LABEL_11;
      }

LABEL_8:
      v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
      v32 = [MEMORY[0x1E696B098] valueWithCGSize:{v16, v16}];
      [v31 addObject:v32];

      v33 = [MEMORY[0x1E696B098] valueWithCGSize:{v17, v17}];
      [v31 addObject:v33];

      v34 = [MEMORY[0x1E696B098] valueWithCGSize:{v18, v18}];
      [v31 addObject:v34];

      v35 = [MEMORY[0x1E696B098] valueWithCGSize:{v19, v19}];
      [v31 addObject:v35];

      v36 = [UIBezierPath roundedRectBezierPath:-1 withRoundedCorners:v31 withCornerRadii:x, y, width, height];

      v5 = v36;
      goto LABEL_11;
    }

    v37 = a3->var5;
    v38 = y + v37;
    v39 = height - v37;
    [(_UIPopoverShapePathProviderIOS *)self _upAndDownStartingXLocationForBounds:var1 pinnedArrowSide:x arrowBase:y + v37 arrowOffset:width, v39, a3->var6, a3->var3];
    v41 = v40;
    v42 = a3->var6;
    v43 = v38 - a3->var5;
    v53 = v18;
    v54 = v18;
    v55 = v19;
    v56 = v19;
    v57 = v17;
    v58 = v17;
    v59 = v16;
    v60 = v16;
    [(_UIPopoverShapePathProviderIOS *)self _generateTopArrowShapeInPath:v5 bounds:var1 startPoint:&v53 endPoint:x peakPoint:v38 pinnedArrowSide:width cornerRadii:v39 arrowBase:v41, v38, v41 + v42, v38, v41 + v42 * 0.5, *&v43, *&v42];
  }

LABEL_11:

  return v5;
}

- (CGPoint)_addLineWithSlightTrailingAndLeadingCurveToPath:(id)a3 startPoint:(CGPoint)a4 endPoint:(CGPoint)a5 leadingEdge:(BOOL)a6 isVertical:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  y = a5.y;
  x = a5.x;
  v11 = a4.y;
  v12 = a4.x;
  v13 = (a5.x - a4.x) * 0.5;
  v14 = (a5.y - a4.y) * 0.5;
  v15 = a3;
  v16 = v15;
  if (v8)
  {
    if (v7)
    {
      v17 = v12;
    }

    else
    {
      v17 = v12 - v13;
    }

    if (v7)
    {
      v18 = v11 - v14;
    }

    else
    {
      v18 = v11;
    }

    [v15 moveToPoint:{v17, v18, v11 + v14, v12 + v13}];
    [v16 addCurveToPoint:v24 controlPoint1:v23 controlPoint2:{v12, v11, v12, v11}];
    [v16 lineToPoint:{x, y}];
  }

  else
  {
    v17 = x - v13;
    v18 = y - v14;
    if (v7)
    {
      v19 = x;
    }

    else
    {
      v19 = x + v13;
    }

    if (v7)
    {
      v20 = y + v14;
    }

    else
    {
      v20 = y;
    }

    [v15 lineToPoint:{x - v13, y - v14}];
    [v16 addCurveToPoint:v19 controlPoint1:v20 controlPoint2:{x, y, x, y}];
  }

  v21 = v17;
  v22 = v18;
  result.y = v22;
  result.x = v21;
  return result;
}

- (double)_upAndDownStartingXLocationForBounds:(CGRect)a3 pinnedArrowSide:(int64_t)a4 arrowBase:(double)a5 arrowOffset:(double)a6
{
  x = a3.origin.x;
  v8 = a3.origin.x + a3.size.width - a5;
  v9 = a3.origin.x + a3.size.width * 0.5 + a6 - a5 * 0.5;
  v10 = _UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows();
  if (a4 == 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  if (a4 == 4)
  {
    v11 = x;
  }

  if (!v10)
  {
    v11 = v9;
  }

  return fmax(x, fmin(v11, v8));
}

- (double)_leftAndRightStartYLocationForBounds:(CGRect)a3 pinnedArrowSide:(int64_t)a4 arrowBase:(double)a5 arrowOffset:(double)a6
{
  y = a3.origin.y;
  v8 = a3.origin.y + a3.size.height - a5;
  v9 = a3.origin.y + a3.size.height * 0.5 + a6 - a5 * 0.5;
  v10 = _UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows();
  if (a4 == 3)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  if (a4 == 1)
  {
    v11 = y;
  }

  if (!v10)
  {
    v11 = v9;
  }

  return fmax(y, fmin(v11, v8));
}

- (CGPoint)_addArrowCurveToPath:(id)a3 direction:(unint64_t)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 peakPoint:(CGPoint)a7 pinnedArrowSide:(int64_t)a8
{
  y = a7.y;
  x = a7.x;
  v11 = a6.y;
  v12 = a6.x;
  v13 = a5.y;
  v14 = a5.x;
  v17 = a3;
  if (a4 > 3)
  {
    if (a4 == 4)
    {
      v47 = v11;
      v20 = y + -2.0;
      v24 = _UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows();
      if (a8 == 1 && v24)
      {
        [v17 moveToPoint:{x + 1.0, y + -2.0}];
        v18 = x + 1.0;
      }

      else
      {
        [(_UIPopoverShapePathProviderIOS *)self _addLineWithSlightTrailingAndLeadingCurveToPath:v17 startPoint:1 endPoint:1 leadingEdge:v14 isVertical:v13, x + 1.0, y + -2.0];
        v18 = v41;
        v20 = v42;
      }

      [v17 addCurveToPoint:x + 1.0 controlPoint1:y + 2.0 controlPoint2:{x, y, x, y}];
      v43 = _UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows();
      if (a8 == 3 && v43)
      {
        goto LABEL_38;
      }

      v28 = self;
      v29 = v17;
      v30 = x + 1.0;
      v31 = y + 2.0;
      v32 = v12;
      v33 = v47;
    }

    else
    {
      if (a4 != 8)
      {
        goto LABEL_12;
      }

      v20 = y + 2.0;
      v21 = _UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows();
      if (a8 == 3 && v21)
      {
        [v17 moveToPoint:{x + -1.0, y + 2.0}];
        v18 = x + -1.0;
      }

      else
      {
        [(_UIPopoverShapePathProviderIOS *)self _addLineWithSlightTrailingAndLeadingCurveToPath:v17 startPoint:1 endPoint:1 leadingEdge:v12 isVertical:v11, x + -1.0, y + 2.0];
        v18 = v34;
        v20 = v35;
      }

      [v17 addCurveToPoint:x + -1.0 controlPoint1:y + -2.0 controlPoint2:{x, y, x, y}];
      v36 = _UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows();
      if (a8 == 1 && v36)
      {
        goto LABEL_38;
      }

      v28 = self;
      v29 = v17;
      v30 = x + -1.0;
      v31 = y + -2.0;
      v32 = v14;
      v33 = v13;
    }

    v40 = 1;
    goto LABEL_37;
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      v46 = v11;
      v18 = x + -2.0;
      v19 = _UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows();
      if (a8 == 4 && v19)
      {
        [v17 moveToPoint:{x + -2.0, y + -1.0}];
        v20 = y + -1.0;
      }

      else
      {
        [(_UIPopoverShapePathProviderIOS *)self _addLineWithSlightTrailingAndLeadingCurveToPath:v17 startPoint:1 endPoint:0 leadingEdge:v14 isVertical:v13, x + -2.0, y + -1.0];
        v18 = v25;
        v20 = v26;
      }

      [v17 addCurveToPoint:x + 2.0 controlPoint1:y + -1.0 controlPoint2:{x, y, x, y}];
      v27 = _UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows();
      if (a8 != 2 || !v27)
      {
        v28 = self;
        v29 = v17;
        v30 = x + 2.0;
        v31 = y + -1.0;
        v32 = v12;
        v33 = v46;
LABEL_31:
        v40 = 0;
LABEL_37:
        [(_UIPopoverShapePathProviderIOS *)v28 _addLineWithSlightTrailingAndLeadingCurveToPath:v29 startPoint:0 endPoint:v40 leadingEdge:v30 isVertical:v31, v32, v33];
        goto LABEL_38;
      }

      goto LABEL_38;
    }

LABEL_12:
    v20 = v13;
    v18 = v14;
    goto LABEL_38;
  }

  v22 = v11;
  v18 = x + 2.0;
  v23 = _UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows();
  if (a8 == 2 && v23)
  {
    [v17 moveToPoint:{x + 2.0, y + 1.0}];
    v20 = y + 1.0;
  }

  else
  {
    [(_UIPopoverShapePathProviderIOS *)self _addLineWithSlightTrailingAndLeadingCurveToPath:v17 startPoint:1 endPoint:0 leadingEdge:v12 isVertical:v22, x + 2.0, y + 1.0];
    v18 = v37;
    v20 = v38;
  }

  [v17 addCurveToPoint:x + -2.0 controlPoint1:y + 1.0 controlPoint2:{x, y, x, y}];
  v39 = _UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows();
  if (a8 != 4 || !v39)
  {
    v28 = self;
    v29 = v17;
    v30 = x + -2.0;
    v31 = y + 1.0;
    v32 = v14;
    v33 = v13;
    goto LABEL_31;
  }

LABEL_38:

  v44 = v18;
  v45 = v20;
  result.y = v45;
  result.x = v44;
  return result;
}

- (void)_generateTopArrowShapeInPath:(id)a3 bounds:(CGRect)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 peakPoint:(CGPoint)a7 pinnedArrowSide:(int64_t)a8 cornerRadii:(CACornerRadii *)a9 arrowBase:(double)a10
{
  y = a7.y;
  x = a7.x;
  v12 = a6.y;
  v13 = a6.x;
  v14 = a5.y;
  v15 = a5.x;
  v38 = a4.origin.y;
  height = a4.size.height;
  width = a4.size.width;
  v17 = a4.origin.x;
  v41 = a3;
  v35 = v15;
  v36 = v13;
  v37 = v12;
  [(_UIPopoverShapePathProviderIOS *)self _addArrowCurveToPath:v15 direction:v14 startPoint:v13 endPoint:v12 peakPoint:a10 pinnedArrowSide:v43];
  v21 = v19;
  v22 = v20;
  v40 = width;
  if (*&x == 4)
  {
    v34 = v20;
    v23 = v19;
    v44.origin.x = v17;
    v24 = v38;
    v25 = height;
    v44.origin.y = v38;
    v44.size.width = width;
    v44.size.height = height;
    MinX = CGRectGetMinX(v44);
    v45.origin.x = v17;
    v45.origin.y = v38;
    v45.size.width = width;
    v45.size.height = height;
    v27 = CGRectGetMinY(v45) + *(*&y + 56);
    if (!_UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows())
    {
      [v41 lineToPoint:{v35, v14}];
    }

    [v41 addCurveToPoint:MinX controlPoint1:v27 controlPoint2:{v17, v38, v17, v38}];
    v21 = v23;
    v22 = v34;
  }

  else
  {
    v24 = v38;
    [v41 _addRoundedCornerWithTrueCorner:1 radius:1 corner:v17 clockwise:{v38, *(*&y + 48), *(*&y + 56)}];
    v25 = height;
  }

  [v41 lineToPoint:{v17, v24 + v25 - *(*&y + 56)}];
  [v41 _addRoundedCornerWithTrueCorner:4 radius:1 corner:v17 clockwise:{v24 + v25, **&y, *(*&y + 8)}];
  v28 = v17 + width;
  [v41 lineToPoint:{v17 + v40 - **&y, v24 + v25}];
  [v41 _addRoundedCornerWithTrueCorner:8 radius:1 corner:v17 + v40 clockwise:{v24 + v25, *(*&y + 16), *(*&y + 24)}];
  [v41 lineToPoint:{v17 + v40, v24 + *(*&y + 24)}];
  if (*&x == 2)
  {
    v29 = _UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows();
    if (v29)
    {
      v30 = v21;
    }

    else
    {
      v30 = v36;
    }

    if (v29)
    {
      v31 = v22;
    }

    else
    {
      v31 = v37;
    }

    v46.origin.x = v17;
    v46.origin.y = v24;
    v46.size.width = v40;
    v46.size.height = v25;
    MaxX = CGRectGetMaxX(v46);
    v47.origin.x = v17;
    v47.origin.y = v24;
    v47.size.width = v40;
    v47.size.height = v25;
    MinY = CGRectGetMinY(v47);
    [v41 addCurveToPoint:v30 controlPoint1:v31 controlPoint2:{MaxX, MinY, MaxX, MinY}];
  }

  else
  {
    [v41 _addRoundedCornerWithTrueCorner:2 radius:1 corner:v28 clockwise:{v24, *(*&y + 32), *(*&y + 40)}];
    [v41 lineToPoint:{v21, v22}];
  }

  [v41 closePath];
}

- (void)_generateBottomArrowShapeInPath:(id)a3 bounds:(CGRect)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 peakPoint:(CGPoint)a7 pinnedArrowSide:(int64_t)a8 cornerRadii:(CACornerRadii *)a9 arrowBase:(double)a10
{
  y = a7.y;
  x = a7.x;
  v40 = a6.y;
  height = a4.size.height;
  v12 = a6.x;
  v13 = a5.y;
  v14 = a5.x;
  width = a4.size.width;
  v16 = a4.origin.y;
  v17 = a4.origin.x;
  v42 = a3;
  v38 = v14;
  v39 = v13;
  v37 = v12;
  [(_UIPopoverShapePathProviderIOS *)self _addArrowCurveToPath:v14 direction:v13 startPoint:v12 endPoint:v40 peakPoint:a10 pinnedArrowSide:v44];
  v21 = v19;
  v22 = v20;
  if (*&x == 2)
  {
    v35 = v19;
    v36 = v20;
    v46.origin.x = v17;
    v46.origin.y = v16;
    v46.size.width = width;
    v23 = height;
    v46.size.height = height;
    MaxX = CGRectGetMaxX(v46);
    v47.origin.x = v17;
    v47.origin.y = v16;
    v47.size.width = width;
    v47.size.height = height;
    v33 = CGRectGetMaxY(v47) - *(*&y + 24);
    v48.origin.x = v17;
    v48.origin.y = v16;
    v48.size.width = width;
    v48.size.height = height;
    v24 = CGRectGetMaxX(v48);
    v49.origin.x = v17;
    v49.origin.y = v16;
    v49.size.width = width;
    v49.size.height = height;
    MaxY = CGRectGetMaxY(v49);
    if (!_UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows())
    {
      [v42 lineToPoint:{v37, v40}];
    }

    [v42 addCurveToPoint:MaxX controlPoint1:v33 controlPoint2:{v24, MaxY, v24, MaxY, *&v33}];
    v21 = v35;
    v26 = v17 + width;
    v27 = v16 + height;
    v22 = v36;
  }

  else
  {
    v26 = v17 + width;
    v23 = height;
    v27 = v16 + height;
    [v42 _addRoundedCornerWithTrueCorner:8 radius:1 corner:v17 + width clockwise:{v16 + height, *(*&y + 16), *(*&y + 24)}];
  }

  [v42 lineToPoint:{v26, v16 + *(*&y + 24)}];
  [v42 _addRoundedCornerWithTrueCorner:2 radius:1 corner:v26 clockwise:{v16, *(*&y + 32), *(*&y + 40)}];
  [v42 lineToPoint:{v17 + *(*&y + 32) + v45 + 6.0, v16}];
  [v42 _addRoundedCornerWithTrueCorner:1 radius:1 corner:v17 clockwise:{v16, *(*&y + 48), *(*&y + 56)}];
  [v42 lineToPoint:{v17, v27 - *(*&y + 56)}];
  if (*&x == 4)
  {
    v28 = _UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows();
    if (v28)
    {
      v29 = v21;
    }

    else
    {
      v29 = v38;
    }

    if (v28)
    {
      v30 = v22;
    }

    else
    {
      v30 = v39;
    }

    v50.origin.x = v17;
    v50.origin.y = v16;
    v50.size.width = width;
    v50.size.height = v23;
    MinX = CGRectGetMinX(v50);
    v51.origin.x = v17;
    v51.origin.y = v16;
    v51.size.width = width;
    v51.size.height = v23;
    v32 = CGRectGetMaxY(v51);
    [v42 addCurveToPoint:v29 controlPoint1:v30 controlPoint2:{MinX, v32, MinX, v32}];
  }

  else
  {
    [v42 _addRoundedCornerWithTrueCorner:4 radius:1 corner:v17 clockwise:{v27, **&y, *(*&y + 8)}];
    [v42 lineToPoint:{v21, v22}];
  }

  [v42 closePath];
}

- (void)_generateLeftArrowShapeInPath:(id)a3 bounds:(CGRect)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 peakPoint:(CGPoint)a7 pinnedArrowSide:(int64_t)a8 cornerRadii:(CACornerRadii *)a9 arrowBase:(double)a10
{
  y = a7.y;
  x = a7.x;
  v12 = a6.y;
  v13 = a6.x;
  v14 = a5.y;
  v15 = a5.x;
  v41 = a4.origin.y;
  height = a4.size.height;
  width = a4.size.width;
  v17 = a4.origin.x;
  v44 = a3;
  v39 = v15;
  v40 = v14;
  v37 = v13;
  v38 = v12;
  [(_UIPopoverShapePathProviderIOS *)self _addArrowCurveToPath:v15 direction:v14 startPoint:v13 endPoint:v12 peakPoint:a10 pinnedArrowSide:v46];
  v43 = v20;
  v21 = v19;
  if (*&x == 3)
  {
    v36 = v19;
    v48.origin.x = v17;
    v23 = v41;
    v22 = height;
    v48.origin.y = v41;
    v48.size.width = width;
    v48.size.height = height;
    v35 = CGRectGetMinX(v48) + **&y;
    v49.origin.x = v17;
    v49.origin.y = v41;
    v49.size.width = width;
    v49.size.height = height;
    MaxY = CGRectGetMaxY(v49);
    v50.origin.x = v17;
    v50.origin.y = v41;
    v50.size.width = width;
    v50.size.height = height;
    MinX = CGRectGetMinX(v50);
    v51.origin.x = v17;
    v51.origin.y = v41;
    v25 = width;
    v51.size.width = width;
    v51.size.height = height;
    v26 = CGRectGetMaxY(v51);
    if (!_UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows())
    {
      [v44 lineToPoint:{v37, v38}];
    }

    [v44 addCurveToPoint:v35 controlPoint1:MaxY controlPoint2:{MinX, v26, MinX, v26, *&MaxY}];
    v27 = v41 + height;
    v28 = v17;
    v21 = v36;
  }

  else
  {
    v25 = width;
    v23 = v41;
    v22 = height;
    v27 = v41 + height;
    [v44 _addRoundedCornerWithTrueCorner:4 radius:1 corner:v17 clockwise:{v41 + height, **&y, *(*&y + 8)}];
    v28 = v17;
  }

  [v44 lineToPoint:{v28 + v25 - **&y, v27}];
  [v44 _addRoundedCornerWithTrueCorner:8 radius:1 corner:v28 + v25 clockwise:{v27, *(*&y + 16), *(*&y + 24)}];
  [v44 lineToPoint:{v28 + v25, v23 + *(*&y + 24)}];
  [v44 _addRoundedCornerWithTrueCorner:2 radius:1 corner:v28 + v25 clockwise:{v23, *(*&y + 32), *(*&y + 40)}];
  [v44 lineToPoint:{v28 + *(*&y + 32) + v47 + 6.0, v23}];
  if (*&x == 1)
  {
    v29 = _UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows();
    if (v29)
    {
      v30 = v43;
    }

    else
    {
      v30 = v39;
    }

    if (v29)
    {
      v31 = v21;
    }

    else
    {
      v31 = v40;
    }

    v52.origin.x = v28;
    v52.origin.y = v23;
    v52.size.width = v25;
    v52.size.height = v22;
    v32 = CGRectGetMinX(v52);
    v53.origin.x = v28;
    v53.origin.y = v23;
    v53.size.width = v25;
    v53.size.height = v22;
    MinY = CGRectGetMinY(v53);
    [v44 addCurveToPoint:v30 controlPoint1:v31 controlPoint2:{v32, MinY, v32, MinY}];
  }

  else
  {
    [v44 _addRoundedCornerWithTrueCorner:1 radius:1 corner:v28 clockwise:{v23, *(*&y + 48), *(*&y + 56)}];
    [v44 lineToPoint:{v43, v21}];
  }

  [v44 closePath];
}

- (void)_generateRightArrowShapeInPath:(id)a3 bounds:(CGRect)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 peakPoint:(CGPoint)a7 pinnedArrowSide:(int64_t)a8 cornerRadii:(CACornerRadii *)a9 arrowBase:(double)a10
{
  y = a7.y;
  x = a7.x;
  v12 = a6.y;
  v13 = a6.x;
  v14 = a5.y;
  v15 = a5.x;
  v41 = a4.origin.y;
  height = a4.size.height;
  width = a4.size.width;
  v17 = a4.origin.x;
  v43 = a3;
  v37 = v15;
  v38 = v14;
  v39 = v13;
  v40 = v12;
  [(_UIPopoverShapePathProviderIOS *)self _addArrowCurveToPath:v15 direction:v14 startPoint:v13 endPoint:v12 peakPoint:a10 pinnedArrowSide:v45];
  v21 = v19;
  v22 = v20;
  if (*&x == 1)
  {
    v36 = v20;
    v23 = v19;
    v47.origin.x = v17;
    v25 = v41;
    v24 = height;
    v47.origin.y = v41;
    v47.size.width = width;
    v47.size.height = height;
    v35 = CGRectGetMaxX(v47) - *(*&y + 32);
    v48.origin.x = v17;
    v48.origin.y = v41;
    v48.size.width = width;
    v48.size.height = height;
    MinY = CGRectGetMinY(v48);
    v49.origin.x = v17;
    v49.origin.y = v41;
    v49.size.width = width;
    v49.size.height = height;
    MaxX = CGRectGetMaxX(v49);
    v50.origin.x = v17;
    v50.origin.y = v41;
    v50.size.width = width;
    v50.size.height = height;
    v27 = CGRectGetMinY(v50);
    if (!_UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows())
    {
      [v43 lineToPoint:{v37, v38}];
    }

    [v43 addCurveToPoint:v35 controlPoint1:MinY controlPoint2:{MaxX, v27, MaxX, v27}];
    v28 = v17 + width;
    v21 = v23;
    v22 = v36;
  }

  else
  {
    v28 = v17 + width;
    v25 = v41;
    [v43 _addRoundedCornerWithTrueCorner:2 radius:1 corner:v17 + width clockwise:{v41, *(*&y + 32), *(*&y + 40)}];
    v24 = height;
  }

  [v43 lineToPoint:{v17 + *(*&y + 32) + v46 + 6.0, v25}];
  [v43 _addRoundedCornerWithTrueCorner:1 radius:1 corner:v17 clockwise:{v25, *(*&y + 48), *(*&y + 56)}];
  [v43 lineToPoint:{v17, v25 + v24 - *(*&y + 56)}];
  [v43 _addRoundedCornerWithTrueCorner:4 radius:1 corner:v17 clockwise:{v25 + v24, **&y, *(*&y + 8)}];
  [v43 lineToPoint:{v28 - **&y, v25 + v24}];
  if (*&x == 3)
  {
    v29 = _UIPopoverShapeLayerChromeViewWantsCurvedPinnedArrows();
    if (v29)
    {
      v30 = v21;
    }

    else
    {
      v30 = v39;
    }

    if (v29)
    {
      v31 = v22;
    }

    else
    {
      v31 = v40;
    }

    v51.origin.x = v17;
    v51.origin.y = v25;
    v51.size.width = width;
    v51.size.height = v24;
    v32 = CGRectGetMaxX(v51);
    v52.origin.x = v17;
    v52.origin.y = v25;
    v52.size.width = width;
    v52.size.height = v24;
    MaxY = CGRectGetMaxY(v52);
    [v43 addCurveToPoint:v30 controlPoint1:v31 controlPoint2:{v32, MaxY, v32, MaxY}];
  }

  else
  {
    [v43 _addRoundedCornerWithTrueCorner:8 radius:1 corner:v28 clockwise:{v25 + v24, *(*&y + 16), *(*&y + 24)}];
    [v43 lineToPoint:{v21, v22}];
  }

  [v43 closePath];
}

@end