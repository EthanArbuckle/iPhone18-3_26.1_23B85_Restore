@interface _UIPopoverShapePathProviderTV
- (id)generatePopoverPathForParameters:(_UIPopoverShapePathParameters *)parameters;
- (void)_addBottomRightPinnedEdgeArrowToPath:(id)path bounds:(CGRect)bounds pinnedEdgeArrowStartPoint:(CGPoint)point arrowHeight:(double)height pinnedArrowBase:(double)base arrowTipWidth:(double)width arrowTipHeight:(double)tipHeight;
- (void)_addCenterArrowToPath:(id)path bounds:(CGRect)bounds arrowOffset:(double)offset arrowHeight:(double)height arrowBase:(double)base arrowTipWidth:(double)width arrowTipHeight:(double)tipHeight;
- (void)_addCorner:(unint64_t)corner startPoint:(CGPoint)point endPoint:(CGPoint)endPoint toPath:(id)path;
- (void)_transformPath:(id)path rotation:(double)rotation flipX:(BOOL)x flipY:(BOOL)y roundToScale:(double)scale;
@end

@implementation _UIPopoverShapePathProviderTV

- (id)generatePopoverPathForParameters:(_UIPopoverShapePathParameters *)parameters
{
  var0 = parameters->var0;
  var1 = parameters->var1;
  height = parameters->var4.maxXMaxY.height;
  maxXMinY = parameters->var4.maxXMinY;
  width = parameters->var4.minXMinY.width;
  v39 = parameters->var4.minXMaxY.height;
  v40 = parameters->var4.minXMinY.height;
  var6 = parameters->var6;
  v34 = parameters->var4.maxXMaxY.width;
  v38 = parameters->var4.minXMaxY.width;
  var3 = parameters->var3;
  var7 = parameters->var7;
  var8 = parameters->var8;
  v7 = parameters->var0 == 8;
  v8 = parameters->var0 == 8 || parameters->var0 == 4;
  if (v8)
  {
    v9 = parameters->var2.size.width;
  }

  else
  {
    v9 = parameters->var2.size.height;
  }

  if (v8)
  {
    v10 = parameters->var2.size.height;
  }

  else
  {
    v10 = parameters->var2.size.width;
  }

  origin = parameters->var2.origin;
  var5 = parameters->var5;
  if (var0)
  {
    v12 = v9 - parameters->var5;
  }

  else
  {
    v12 = parameters->var2.size.height;
  }

  v13 = +[UIBezierPath bezierPath];
  v44.origin = origin;
  v44.size.width = v10;
  v44.size.height = v12;
  MaxX = CGRectGetMaxX(v44);
  v45.origin = origin;
  v45.size.width = v10;
  v45.size.height = v12;
  v15 = CGRectGetMaxY(v45) - height;
  v46.origin = origin;
  v46.size.width = v10;
  v46.size.height = v12;
  v16 = CGRectGetMaxX(v46);
  v47.origin = origin;
  v47.size.width = v10;
  v47.size.height = v12;
  MaxY = CGRectGetMaxY(v47);
  [v13 moveToPoint:{MaxX, v15}];
  if (var1 && var0)
  {
    [(_UIPopoverShapePathProviderTV *)self _addBottomRightPinnedEdgeArrowToPath:v13 bounds:origin pinnedEdgeArrowStartPoint:v10 arrowHeight:v12 pinnedArrowBase:MaxX arrowTipWidth:v15 arrowTipHeight:var5, var7, 0x4022000000000000, 0x4000CCCCCCCCCCCDLL];
  }

  else
  {
    [(_UIPopoverShapePathProviderTV *)self _addCorner:8 startPoint:v13 endPoint:MaxX toPath:v15, v16 - v34, MaxY];
    if (var0)
    {
      [(_UIPopoverShapePathProviderTV *)self _addCenterArrowToPath:v13 bounds:origin arrowOffset:v10 arrowHeight:v12 arrowBase:var3 arrowTipWidth:var5 arrowTipHeight:var6, 9.0, 0x4000CCCCCCCCCCCDLL];
    }
  }

  v48.origin = origin;
  v48.size.width = v10;
  v48.size.height = v12;
  v18 = v38 + CGRectGetMinX(v48);
  v49.origin = origin;
  v49.size.width = v10;
  v49.size.height = v12;
  v19 = CGRectGetMaxY(v49);
  v50.origin = origin;
  v50.size.width = v10;
  v50.size.height = v12;
  MinX = CGRectGetMinX(v50);
  v51.origin = origin;
  v51.size.width = v10;
  v51.size.height = v12;
  v21 = CGRectGetMaxY(v51) - v39;
  [v13 addLineToPoint:{v18, v19}];
  [(_UIPopoverShapePathProviderTV *)self _addCorner:4 startPoint:v13 endPoint:v18 toPath:v19, MinX, v21];
  v52.origin = origin;
  v52.size.width = v10;
  v52.size.height = v12;
  v22 = CGRectGetMinX(v52);
  v53.origin = origin;
  v53.size.width = v10;
  v53.size.height = v12;
  v23 = v40 + CGRectGetMinY(v53);
  v54.origin = origin;
  v54.size.width = v10;
  v54.size.height = v12;
  v24 = width + CGRectGetMinX(v54);
  v55.origin = origin;
  v55.size.width = v10;
  v55.size.height = v12;
  MinY = CGRectGetMinY(v55);
  [v13 addLineToPoint:{v22, v23}];
  [(_UIPopoverShapePathProviderTV *)self _addCorner:1 startPoint:v13 endPoint:v22 toPath:v23, v24, MinY];
  v56.origin = origin;
  v56.size.width = v10;
  v56.size.height = v12;
  v26 = CGRectGetMaxX(v56) - maxXMinY.width;
  v57.origin = origin;
  v57.size.width = v10;
  v57.size.height = v12;
  v27 = CGRectGetMinY(v57);
  v58.origin = origin;
  v58.size.width = v10;
  v58.size.height = v12;
  v28 = CGRectGetMaxX(v58);
  v59.origin = origin;
  v59.size.width = v10;
  v59.size.height = v12;
  v29 = maxXMinY.height + CGRectGetMinY(v59);
  [v13 addLineToPoint:{v26, v27}];
  [(_UIPopoverShapePathProviderTV *)self _addCorner:2 startPoint:v13 endPoint:v26 toPath:v27, v28, v29];
  [v13 closePath];
  if (var0)
  {
    v30 = 90.0;
    if (!v8)
    {
      v30 = 0.0;
    }

    if (var0 != 4 && var0 != 8)
    {
      v7 = var1 == 4;
    }

    if (var0 != 4 && var0 != 8)
    {
      var1 = var0;
    }

    [(_UIPopoverShapePathProviderTV *)self _transformPath:v13 rotation:v7 flipX:var1 == 1 flipY:v30 roundToScale:var8];
  }

  return v13;
}

- (void)_addCorner:(unint64_t)corner startPoint:(CGPoint)point endPoint:(CGPoint)endPoint toPath:(id)path
{
  y = endPoint.y;
  x = endPoint.x;
  if (corner == 1)
  {
    v9 = 0;
    __asm { FMOV            V0.2D, #-1.0 }
  }

  else
  {
    if (corner == 2)
    {
      _Q0 = xmmword_18A678B70;
    }

    else
    {
      if (corner != 4)
      {
        v9 = 0;
        __asm { FMOV            V0.2D, #1.0 }

        goto LABEL_9;
      }

      _Q0 = xmmword_18A678B60;
    }

    v9 = 1;
  }

LABEL_9:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71___UIPopoverShapePathProviderTV__addCorner_startPoint_endPoint_toPath___block_invoke;
  aBlock[3] = &__block_descriptor_49_e30__CGPoint_dd_24__0_CGPoint_dd_8l;
  v43 = v9;
  v42 = _Q0;
  pathCopy = path;
  v15 = _Block_copy(aBlock);
  v16 = v15[2](-4.01, 22.65);
  v18 = v17;
  v19 = (v15[2])(v15, 0.0);
  v21 = v20;
  v22 = (v15[2])(v15);
  [pathCopy addCurveToPoint:point.x + v16 controlPoint1:point.y + v18 controlPoint2:{point.x + v19, point.y + v21, point.x + v22, point.y + v23}];
  v24 = (v15[2])(v15, 22.65, -4.01);
  v26 = v25;
  v27 = (v15[2])(v15, 31.38, -10.46);
  v29 = v28;
  v30 = (v15[2])(v15, 27.54, -6.62);
  [pathCopy addCurveToPoint:x + v24 controlPoint1:y + v26 controlPoint2:{x + v27, y + v29, x + v30, y + v31}];
  v32 = (v15[2])(v15, 0.0, 0.0);
  v34 = v33;
  v35 = (v15[2])(v15, 17.76, -1.39);
  v37 = v36;
  v38 = (v15[2])(v15, 12.91, 0.0);
  [pathCopy addCurveToPoint:x + v32 controlPoint1:y + v34 controlPoint2:{x + v35, y + v37, x + v38, y + v39}];
}

- (void)_addCenterArrowToPath:(id)path bounds:(CGRect)bounds arrowOffset:(double)offset arrowHeight:(double)height arrowBase:(double)base arrowTipWidth:(double)width arrowTipHeight:(double)tipHeight
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  pathCopy = path;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v15 = CGRectGetMidX(v26) + offset;
  v16 = base * 0.5;
  v17 = base * 0.5 + v15;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MaxY = CGRectGetMaxY(v27);
  v23 = v15 - v16;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v22 = CGRectGetMaxY(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v19 = CGRectGetMaxY(v29) + height;
  [pathCopy addLineToPoint:{v17, MaxY}];
  [pathCopy addCurveToPoint:v17 + -12.7 controlPoint1:MaxY + 4.64 controlPoint2:{v17, MaxY, v17 + -7.92, MaxY + -0.16}];
  [pathCopy addLineToPoint:{width * 0.5 + v15, v19 - tipHeight}];
  [pathCopy addCurveToPoint:v15 controlPoint1:v19 controlPoint2:{v15 + 3.35, v19 + -1.02, v15 + 1.92, v19}];
  [pathCopy addCurveToPoint:v15 - width * 0.5 controlPoint1:v19 - tipHeight controlPoint2:{v15 + -1.92, v19, v15 + -3.35, v19 + -1.02}];
  [pathCopy addLineToPoint:{v23 + 12.7, v22 + 4.64}];
  [pathCopy addCurveToPoint:v23 controlPoint1:v22 controlPoint2:{v23 + 7.92, v22 + -0.16, v23, v22}];
}

- (void)_addBottomRightPinnedEdgeArrowToPath:(id)path bounds:(CGRect)bounds pinnedEdgeArrowStartPoint:(CGPoint)point arrowHeight:(double)height pinnedArrowBase:(double)base arrowTipWidth:(double)width arrowTipHeight:(double)tipHeight
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  pathCopy = path;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v15 = CGRectGetMaxX(v22) - base;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MaxY = CGRectGetMaxY(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v17 = CGRectGetMaxX(v24) - base * 0.5 + 1.0;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v18 = CGRectGetMaxY(v25) + height;
  [pathCopy addCurveToPoint:point.x + -12.05 controlPoint1:point.y + 42.56 controlPoint2:{point.x + -12.05 + 12.05, point.y + 42.56 + -18.73, point.x + -12.05 + 8.19, point.y + 42.56 + -10.98}];
  [pathCopy addLineToPoint:{width * 0.5 + v17, v18 - tipHeight}];
  [pathCopy addCurveToPoint:v17 controlPoint1:v18 controlPoint2:{v17 + 3.55, v18 + -0.86, v17 + 1.93, v18}];
  [pathCopy addCurveToPoint:v17 - width * 0.5 controlPoint1:v18 - tipHeight controlPoint2:{v17 - width * 0.5 + 2.62, v18 - tipHeight + 2.12, v17 - width * 0.5 + 1.18, v18 - tipHeight + 1.09}];
  [pathCopy addLineToPoint:{v15 + 12.72, MaxY + 4.56}];
  [pathCopy addCurveToPoint:v15 controlPoint1:MaxY controlPoint2:{v15 + 8.66, MaxY + 0.48, v15 + 2.37, MaxY + 0.04}];
}

- (void)_transformPath:(id)path rotation:(double)rotation flipX:(BOOL)x flipY:(BOOL)y roundToScale:(double)scale
{
  yCopy = y;
  xCopy = x;
  pathCopy = path;
  [pathCopy bounds];
  UIRectRoundToScale(v12, v13, v14, v15, scale);
  v16 = rotation * 3.14159265 / 180.0;
  v17 = (rotation * 0x2D82D82D82D82D83) >> 64;
  v18 = (v17 >> 63) + (v17 >> 4);
  v20 = v19 * -0.5;
  v22 = v21 * -0.5;
  v23 = -(v21 * -0.5);
  v24 = -(v19 * -0.5);
  if (v18)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  if (v18)
  {
    v26 = v24;
  }

  else
  {
    v26 = v23;
  }

  CGAffineTransformMakeTranslation(&v29, v20, v22);
  [pathCopy applyTransform:&v29];
  CGAffineTransformMakeRotation(&v29, v16);
  [pathCopy applyTransform:&v29];
  v27 = 1.0;
  if (xCopy)
  {
    v28 = -1.0;
  }

  else
  {
    v28 = 1.0;
  }

  if (yCopy)
  {
    v27 = -1.0;
  }

  CGAffineTransformMakeScale(&v29, v28, v27);
  [pathCopy applyTransform:&v29];
  CGAffineTransformMakeTranslation(&v29, v25, v26);
  [pathCopy applyTransform:&v29];
}

@end