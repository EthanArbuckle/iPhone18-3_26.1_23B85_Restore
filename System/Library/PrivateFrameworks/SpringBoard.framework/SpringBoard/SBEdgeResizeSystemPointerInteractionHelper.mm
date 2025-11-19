@interface SBEdgeResizeSystemPointerInteractionHelper
+ (BOOL)shouldBeginPointerInteractionAtLocation:(CGPoint)a3 frame:(CGRect)a4 innerLengthOfInteractionRegion:(double)a5 outerLengthOfInteractionRegion:(double)a6 cornerLengthOfInteractionRegion:(double)a7 occupiedCorners:(unint64_t)a8 hoveringOverEdge:(unint64_t *)a9 pointerRegion:(CGRect *)a10;
+ (id)fancyResizePointerShapeHoveringOverEdge:(unint64_t)a3 innerLengthOfInteractionRegion:(double)a4 outerLengthOfInteractionRegion:(double)a5 cornerRadii:(UIRectCornerRadii)a6;
+ (unint64_t)latchingAxesForHoveredEdge:(unint64_t)a3;
@end

@implementation SBEdgeResizeSystemPointerInteractionHelper

+ (BOOL)shouldBeginPointerInteractionAtLocation:(CGPoint)a3 frame:(CGRect)a4 innerLengthOfInteractionRegion:(double)a5 outerLengthOfInteractionRegion:(double)a6 cornerLengthOfInteractionRegion:(double)a7 occupiedCorners:(unint64_t)a8 hoveringOverEdge:(unint64_t *)a9 pointerRegion:(CGRect *)a10
{
  v12 = a8;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17 = a3.y;
  v18 = a3.x;
  v19 = a5 + a6;
  SBRectWithSize();
  v31 = a6;
  v32 = y;
  v46.origin.x = x - a6;
  v20 = y + a7;
  v33 = height;
  v21 = height + a7 * -2.0;
  point = v46.origin.x;
  v46.origin.y = v20;
  v46.size.width = v19;
  v46.size.height = v21;
  v38.x = v18;
  v22 = v17;
  v38.y = v17;
  if (CGRectContainsPoint(v46, v38))
  {
    result = 1;
    v24 = 3;
    v25 = point;
    v26 = v20;
    goto LABEL_19;
  }

  v47.origin.x = x + width - a5;
  v27 = v20;
  v47.origin.y = v20;
  v47.size.width = v19;
  v28 = v21;
  v47.size.height = v21;
  v39.x = v18;
  v29 = v22;
  v39.y = v22;
  if (CGRectContainsPoint(v47, v39))
  {
    result = 1;
    v24 = 4;
    v25 = x + width - a5;
    v26 = v27;
    v21 = v28;
    goto LABEL_19;
  }

  v25 = x + a7;
  v30 = v19;
  v26 = v32 + v33 - a5;
  v19 = width + -a7 * 2.0;
  v48.origin.x = v25;
  v48.origin.y = v26;
  v48.size.width = v19;
  v48.size.height = v30;
  v40.x = v18;
  v40.y = v29;
  if (CGRectContainsPoint(v48, v40))
  {
    result = 1;
    v24 = 2;
    v21 = v30;
    goto LABEL_19;
  }

  v41.y = v29;
  v26 = v32 - v31;
  v49.origin.x = v25;
  v49.origin.y = v32 - v31;
  v49.size.width = width + -a7 * 2.0;
  v21 = v30;
  v49.size.height = v30;
  v41.x = v18;
  pointa = v41.y;
  result = CGRectContainsPoint(v49, v41);
  v24 = 1;
  if ((v12 & 8) == 0)
  {
    if (!result)
    {
      UIRectCenteredAboutPoint();
      v25 = v50.origin.x;
      v26 = v50.origin.y;
      v19 = v50.size.width;
      v21 = v50.size.height;
      v42.x = v18;
      v42.y = pointa;
      result = CGRectContainsPoint(v50, v42);
      v24 = 8;
    }

    if ((v12 & 4) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if ((v12 & 4) == 0)
  {
LABEL_11:
    if (!result)
    {
      UIRectCenteredAboutPoint();
      v25 = v51.origin.x;
      v26 = v51.origin.y;
      v19 = v51.size.width;
      v21 = v51.size.height;
      v43.x = v18;
      v43.y = pointa;
      result = CGRectContainsPoint(v51, v43);
      v24 = 7;
    }
  }

LABEL_13:
  if ((v12 & 2) == 0 && !result)
  {
    UIRectCenteredAboutPoint();
    v25 = v52.origin.x;
    v26 = v52.origin.y;
    v19 = v52.size.width;
    v21 = v52.size.height;
    v44.x = v18;
    v44.y = pointa;
    result = CGRectContainsPoint(v52, v44);
    v24 = 6;
  }

  if ((v12 & 1) == 0 && !result)
  {
    UIRectCenteredAboutPoint();
    v25 = v53.origin.x;
    v26 = v53.origin.y;
    v19 = v53.size.width;
    v21 = v53.size.height;
    v45.x = v18;
    v45.y = pointa;
    result = CGRectContainsPoint(v53, v45);
    v24 = 5;
  }

LABEL_19:
  *a9 = v24;
  a10->origin.x = v25;
  a10->origin.y = v26;
  a10->size.width = v19;
  a10->size.height = v21;
  return result;
}

+ (id)fancyResizePointerShapeHoveringOverEdge:(unint64_t)a3 innerLengthOfInteractionRegion:(double)a4 outerLengthOfInteractionRegion:(double)a5 cornerRadii:(UIRectCornerRadii)a6
{
  topRight = a6.topRight;
  bottomRight = a6.bottomRight;
  bottomLeft = a6.bottomLeft;
  topLeft = a6.topLeft;
  Mutable = CGPathCreateMutable();
  if (a3 <= 4)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v14 = 3.14159265;
        goto LABEL_17;
      }
    }

    else
    {
      if (a3 == 1)
      {
        v14 = -1.57079633;
        goto LABEL_17;
      }

      if (a3 == 2)
      {
        v14 = 1.57079633;
LABEL_17:
        v15 = (a4 - a5) * 0.5;
        goto LABEL_20;
      }
    }

LABEL_10:
    v14 = 0.0;
    goto LABEL_17;
  }

  if (a3 > 6)
  {
    if (a3 == 7)
    {
      v14 = 2.35619449;
      bottomRight = bottomLeft;
    }

    else
    {
      if (a3 != 8)
      {
        goto LABEL_10;
      }

      v14 = 0.785398163;
    }
  }

  else if (a3 == 5)
  {
    v14 = -2.35619449;
    bottomRight = topLeft;
  }

  else
  {
    v14 = -0.785398163;
    bottomRight = topRight;
  }

  v15 = bottomRight - sqrt(bottomRight * bottomRight + bottomRight * bottomRight);
LABEL_20:
  memset(&m, 0, sizeof(m));
  CGAffineTransformMakeRotation(&v19, v14);
  CGAffineTransformTranslate(&m, &v19, v15, 0.0);
  CGPathMoveToPoint(Mutable, &m, -3.0, 0.0);
  CGPathAddArcToPoint(Mutable, &m, -3.0, 8.0, -19.8947368, 0.0, 2.0);
  CGPathAddArcToPoint(Mutable, &m, -19.8947368, 0.0, -3.0, -8.0, 2.0);
  CGPathAddArcToPoint(Mutable, &m, -3.0, -8.0, -3.0, 8.0, 2.0);
  CGPathCloseSubpath(Mutable);
  CGPathMoveToPoint(Mutable, &m, 3.0, 0.0);
  CGPathAddArcToPoint(Mutable, &m, 3.0, 8.0, 19.8947368, 0.0, 2.0);
  CGPathAddArcToPoint(Mutable, &m, 19.8947368, 0.0, 3.0, -8.0, 2.0);
  CGPathAddArcToPoint(Mutable, &m, 3.0, -8.0, 3.0, 8.0, 2.0);
  CGPathCloseSubpath(Mutable);
  v16 = objc_alloc_init(MEMORY[0x277D75208]);
  [v16 setCGPath:Mutable];
  CGPathRelease(Mutable);
  v17 = [MEMORY[0x277D75888] shapeWithPath:v16];

  return v17;
}

+ (unint64_t)latchingAxesForHoveredEdge:(unint64_t)a3
{
  if (a3 - 1 > 7)
  {
    return 0;
  }

  else
  {
    return qword_21F8A8078[a3 - 1];
  }
}

@end