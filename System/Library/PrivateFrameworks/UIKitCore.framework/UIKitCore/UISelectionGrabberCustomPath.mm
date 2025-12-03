@interface UISelectionGrabberCustomPath
- (BOOL)containsZeroPoint;
- (CGPoint)bottomPoint;
- (CGPoint)topPoint;
- (CGRect)boundingEdgeRect;
- (CGRect)boundingRect;
- (id)bezierPathForHostView:(id)view targetView:(id)targetView;
- (id)description;
- (id)summaryDescription;
@end

@implementation UISelectionGrabberCustomPath

- (BOOL)containsZeroPoint
{
  [(UISelectionGrabberCustomPath *)self bottomPoint];
  v5 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  if (v6 == *MEMORY[0x1E695EFF8] && v3 == v4)
  {
    return 1;
  }

  [(UISelectionGrabberCustomPath *)self topPoint];
  return v9 == v4 && v8 == v5;
}

- (CGRect)boundingRect
{
  [(UISelectionGrabberCustomPath *)self topPoint];
  v4 = v3;
  v6 = v5;
  [(UISelectionGrabberCustomPath *)self bottomPoint];
  if (v4 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v4 >= v7)
  {
    v7 = v4;
  }

  if (v6 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v6 >= v8)
  {
    v8 = v6;
  }

  v11 = v7 - v9;
  v12 = v8 - v10;
  v13 = v9;
  v14 = v10;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)boundingEdgeRect
{
  [(UISelectionGrabberCustomPath *)self boundingRect];
  v5 = 1.0;
  result.size.height = v4;
  result.size.width = v5;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)summaryDescription
{
  v3 = MEMORY[0x1E696AEC0];
  [(UISelectionGrabberCustomPath *)self topPoint];
  v5 = v4;
  [(UISelectionGrabberCustomPath *)self topPoint];
  v7 = v6;
  [(UISelectionGrabberCustomPath *)self bottomPoint];
  v9 = v8;
  [(UISelectionGrabberCustomPath *)self bottomPoint];
  v11 = v10;
  [(UISelectionGrabberCustomPath *)self lineWidth];
  return [v3 stringWithFormat:@"top: [%ld, %ld] bottom: [%ld, %ld] lineWidth: %0.1f", v5, v7, v9, v11, v12];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(UISelectionGrabberCustomPath *)self topPoint];
  v5 = v4;
  [(UISelectionGrabberCustomPath *)self topPoint];
  v7 = v6;
  [(UISelectionGrabberCustomPath *)self bottomPoint];
  v9 = v8;
  [(UISelectionGrabberCustomPath *)self bottomPoint];
  v11 = v10;
  [(UISelectionGrabberCustomPath *)self lineWidth];
  return [v3 stringWithFormat:@"top    : %.2f %.2f \nbottom   : %.2f %.2f \nlineWidth %.1f", v5, v7, v9, v11, v12];
}

- (id)bezierPathForHostView:(id)view targetView:(id)targetView
{
  targetViewCopy = targetView;
  viewCopy = view;
  v8 = objc_alloc_init(UIBezierPath);
  [(UISelectionGrabberCustomPath *)self bottomPoint];
  [viewCopy convertPoint:targetViewCopy toView:?];
  v10 = v9;
  v12 = v11;
  [(UISelectionGrabberCustomPath *)self topPoint];
  [viewCopy convertPoint:targetViewCopy toView:?];
  v14 = v13;
  v16 = v15;

  [(UIBezierPath *)v8 moveToPoint:v10, v12];
  [(UIBezierPath *)v8 addLineToPoint:v14, v16];

  return v8;
}

- (CGPoint)topPoint
{
  x = self->_topPoint.x;
  y = self->_topPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)bottomPoint
{
  x = self->_bottomPoint.x;
  y = self->_bottomPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end