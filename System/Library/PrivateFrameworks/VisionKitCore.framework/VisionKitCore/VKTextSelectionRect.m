@interface VKTextSelectionRect
- (BOOL)containsPoint:(CGPoint)a3;
- (CGRect)rect;
- (VKTextSelectionRect)initWithRect:(CGRect)a3 containsStart:(BOOL)a4 containsEnd:(BOOL)a5 layoutDirection:(unint64_t)a6 quad:(id)a7;
- (id)handleInfoForQuad:(id)a3 origin:(CGPoint)a4;
- (id)summaryDescription;
@end

@implementation VKTextSelectionRect

- (VKTextSelectionRect)initWithRect:(CGRect)a3 containsStart:(BOOL)a4 containsEnd:(BOOL)a5 layoutDirection:(unint64_t)a6 quad:(id)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a7;
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
    v17->_containsStart = a4;
    v17->_containsEnd = a5;
    v17->_layoutDirection = a6;
    v19 = [v16 path];
    path = v18->__path;
    v18->__path = v19;

    v21 = [(VKTextSelectionRect *)v18 handleInfoForQuad:v16 origin:x, y];
    customHandleInfo = v18->__customHandleInfo;
    v18->__customHandleInfo = v21;

    objc_storeStrong(&v18->_quad, a7);
  }

  return v18;
}

- (id)handleInfoForQuad:(id)a3 origin:(CGPoint)a4
{
  x = a4.x;
  v5 = a3;
  v6 = objc_alloc_init(VKTextSelectionRectCustomHandleInfo);
  [v5 bottomLeft];
  [(VKTextSelectionRectCustomHandleInfo *)v6 setBottomLeft:VKMAddPoints(v7, v8, x)];
  [v5 bottomRight];
  [(VKTextSelectionRectCustomHandleInfo *)v6 setBottomRight:VKMAddPoints(v9, v10, x)];
  [v5 topLeft];
  [(VKTextSelectionRectCustomHandleInfo *)v6 setTopLeft:VKMAddPoints(v11, v12, x)];
  [v5 topRight];
  v14 = v13;
  v16 = v15;

  [(VKTextSelectionRectCustomHandleInfo *)v6 setTopRight:VKMAddPoints(v14, v16, x)];

  return v6;
}

- (BOOL)containsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(VKTextSelectionRect *)self rect];
  v6 = v15.origin.x;
  v14.x = x;
  v14.y = y;
  v7 = CGRectContainsPoint(v15, v14);
  if (v7)
  {
    v8 = VKMSubtractPoints(x, y, v6);
    v10 = v9;
    v11 = [(VKTextSelectionRect *)self quad];
    v12 = [v11 containsPoint:{v8, v10}];

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