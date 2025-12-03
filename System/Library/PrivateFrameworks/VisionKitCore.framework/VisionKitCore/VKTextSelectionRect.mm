@interface VKTextSelectionRect
- (BOOL)containsPoint:(CGPoint)point;
- (CGRect)rect;
- (VKTextSelectionRect)initWithRect:(CGRect)rect containsStart:(BOOL)start containsEnd:(BOOL)end layoutDirection:(unint64_t)direction quad:(id)quad;
- (id)handleInfoForQuad:(id)quad origin:(CGPoint)origin;
- (id)summaryDescription;
@end

@implementation VKTextSelectionRect

- (VKTextSelectionRect)initWithRect:(CGRect)rect containsStart:(BOOL)start containsEnd:(BOOL)end layoutDirection:(unint64_t)direction quad:(id)quad
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  quadCopy = quad;
  v24.receiver = self;
  v24.super_class = VKTextSelectionRect;
  v17 = [(VKTextSelectionRect *)&v24 init];
  v18 = v17;
  if (v17)
  {
    v17->_rect.origin.x = x;
    v17->_rect.origin.y = y;
    v17->_rect.size.width = width;
    v17->_rect.size.height = height;
    v17->_containsStart = start;
    v17->_containsEnd = end;
    v17->_layoutDirection = direction;
    path = [quadCopy path];
    path = v18->__path;
    v18->__path = path;

    v21 = [(VKTextSelectionRect *)v18 handleInfoForQuad:quadCopy origin:x, y];
    customHandleInfo = v18->__customHandleInfo;
    v18->__customHandleInfo = v21;

    objc_storeStrong(&v18->_quad, quad);
  }

  return v18;
}

- (id)handleInfoForQuad:(id)quad origin:(CGPoint)origin
{
  x = origin.x;
  quadCopy = quad;
  v6 = objc_alloc_init(VKTextSelectionRectCustomHandleInfo);
  [quadCopy bottomLeft];
  [(VKTextSelectionRectCustomHandleInfo *)v6 setBottomLeft:VKMAddPoints(v7, v8, x)];
  [quadCopy bottomRight];
  [(VKTextSelectionRectCustomHandleInfo *)v6 setBottomRight:VKMAddPoints(v9, v10, x)];
  [quadCopy topLeft];
  [(VKTextSelectionRectCustomHandleInfo *)v6 setTopLeft:VKMAddPoints(v11, v12, x)];
  [quadCopy topRight];
  v14 = v13;
  v16 = v15;

  [(VKTextSelectionRectCustomHandleInfo *)v6 setTopRight:VKMAddPoints(v14, v16, x)];

  return v6;
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(VKTextSelectionRect *)self rect];
  v6 = v15.origin.x;
  v14.x = x;
  v14.y = y;
  v7 = CGRectContainsPoint(v15, v14);
  if (v7)
  {
    v8 = VKMSubtractPoints(x, y, v6);
    v10 = v9;
    quad = [(VKTextSelectionRect *)self quad];
    v12 = [quad containsPoint:{v8, v10}];

    LOBYTE(v7) = v12;
  }

  return v7;
}

- (id)summaryDescription
{
  v2 = MEMORY[0x1E696AEC0];
  [(VKTextSelectionRect *)self rect];
  v7 = VKMUIStringForRect(v3, v4, v5, v6);
  v8 = [v2 stringWithFormat:@"%@", v7];

  return v8;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end