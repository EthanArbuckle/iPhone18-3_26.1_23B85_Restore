@interface VKCImageBaseOverlayView
- (BOOL)isPublicAPI;
- (BOOL)isVIHosted;
- (CGPoint)normalizedPointFromViewPoint:(CGPoint)point;
- (CGPoint)viewPointFromNormalizedPoint:(CGPoint)point;
- (CGRect)contentBounds;
- (CGRect)contentsRect;
- (CGRect)normalizedRectFromViewRect:(CGRect)rect;
- (CGRect)normalizedVisibleRect;
- (CGRect)viewRectFromNormalizedRect:(CGRect)rect;
- (CGRect)visibleRect;
- (VKCImageAnalysisResult)analysisResult;
- (VKCImageBaseOverlayView)initWithFrame:(CGRect)frame;
- (VKCImageBaseOverlayViewDelegate)baseDelegate;
- (id)description;
- (id)normalizedPathFromViewPath:(id)path;
- (id)normalizedQuadFromViewQuad:(id)quad;
- (id)viewPathFromNormalizedPath:(id)path;
- (id)viewQuadFromNormalizedQuad:(id)quad;
- (void)setNormalizedVisibleRect:(CGRect)rect;
@end

@implementation VKCImageBaseOverlayView

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  analysisResult = [(VKCImageBaseOverlayView *)self analysisResult];
  v6 = [v3 stringWithFormat:@"<%@: %p> id: %d", v4, self, objc_msgSend(analysisResult, "analysisRequestID")];

  return v6;
}

- (VKCImageBaseOverlayView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = VKCImageBaseOverlayView;
  result = [(VKCImageBaseOverlayView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_contentsRect.origin = VKMRectUnit;
    result->_contentsRect.size = *&qword_1B44285A8;
  }

  return result;
}

- (VKCImageAnalysisResult)analysisResult
{
  v3 = objc_opt_class();
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  v5 = VKDynamicCast(v3, recognitionResult);

  return v5;
}

- (BOOL)isPublicAPI
{
  baseDelegate = [(VKCImageBaseOverlayView *)self baseDelegate];
  isPublicAPI = [baseDelegate isPublicAPI];

  return isPublicAPI;
}

- (BOOL)isVIHosted
{
  baseDelegate = [(VKCImageBaseOverlayView *)self baseDelegate];
  isVIHosted = [baseDelegate isVIHosted];

  return isVIHosted;
}

- (CGRect)contentBounds
{
  [(VKCImageBaseOverlayView *)self viewRectFromNormalizedRect:0.0, 0.0, 1.0, 1.0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)visibleRect
{
  [(VKCImageBaseOverlayView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VKCImageBaseOverlayView *)self contentsRect];
  VKMRectFromNormalizedSubrect(v4, v6, v8, v10, v11, v12, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
  VKMRectFromNormalizedSubrect(v16, v18, v20, v22, v23, v24, v25, v26);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v16;
  v36 = v18;
  v37 = v20;
  v38 = v22;

  return CGRectIntersection(*&v35, *&v28);
}

- (void)setNormalizedVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_normalizedVisibleRect = &self->_normalizedVisibleRect;
  if (!CGRectEqualToRect(self->_normalizedVisibleRect, rect))
  {
    p_normalizedVisibleRect->origin.x = x;
    p_normalizedVisibleRect->origin.y = y;
    p_normalizedVisibleRect->size.width = width;
    p_normalizedVisibleRect->size.height = height;

    [(VKCImageBaseOverlayView *)self normalizedVisibleRectDidChange];
  }
}

- (CGPoint)normalizedPointFromViewPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(VKCImageBaseOverlayView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(VKCImageBaseOverlayView *)self contentsRect];
  VKMRectFromNormalizedSubrect(v7, v9, v11, v13, v14, v15, v16, v17);

  v21 = VKMNormalizedPointInRect(x, y, v18, v19, v20);
  result.y = v22;
  result.x = v21;
  return result;
}

- (CGPoint)viewPointFromNormalizedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(VKCImageBaseOverlayView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(VKCImageBaseOverlayView *)self contentsRect];
  VKMRectFromNormalizedSubrect(v7, v9, v11, v13, v14, v15, v16, v17);

  v21 = VKMPointFromNormalizedRect(x, y, v18, v19, v20);
  result.y = v22;
  result.x = v21;
  return result;
}

- (CGRect)normalizedRectFromViewRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(VKCImageBaseOverlayView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(VKCImageBaseOverlayView *)self contentsRect];
  VKMRectFromNormalizedSubrect(v9, v11, v13, v15, v16, v17, v18, v19);

  VKMNormalizedSubrectInRect(x, y, width, height, v20, v21, v22, v23);
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)viewRectFromNormalizedRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(VKCImageBaseOverlayView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(VKCImageBaseOverlayView *)self contentsRect];
  VKMRectFromNormalizedSubrect(v9, v11, v13, v15, v16, v17, v18, v19);

  VKMRectFromNormalizedSubrect(v20, v21, v22, v23, x, y, width, height);
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (id)normalizedQuadFromViewQuad:(id)quad
{
  quadCopy = quad;
  [quadCopy topLeft];
  [(VKCImageBaseOverlayView *)self normalizedPointFromViewPoint:?];
  v6 = v5;
  v8 = v7;
  [quadCopy topRight];
  [(VKCImageBaseOverlayView *)self normalizedPointFromViewPoint:?];
  v10 = v9;
  v12 = v11;
  [quadCopy bottomLeft];
  [(VKCImageBaseOverlayView *)self normalizedPointFromViewPoint:?];
  v14 = v13;
  v16 = v15;
  [quadCopy bottomRight];
  v18 = v17;
  v20 = v19;

  [(VKCImageBaseOverlayView *)self normalizedPointFromViewPoint:v18, v20];
  v23 = [[VKQuad alloc] initWithBottomLeft:v14 bottomRight:v16 topLeft:v21 topRight:v22, v6, v8, v10, v12];

  return v23;
}

- (id)viewQuadFromNormalizedQuad:(id)quad
{
  quadCopy = quad;
  [quadCopy topLeft];
  [(VKCImageBaseOverlayView *)self viewPointFromNormalizedPoint:?];
  v6 = v5;
  v8 = v7;
  [quadCopy topRight];
  [(VKCImageBaseOverlayView *)self viewPointFromNormalizedPoint:?];
  v10 = v9;
  v12 = v11;
  [quadCopy bottomLeft];
  [(VKCImageBaseOverlayView *)self viewPointFromNormalizedPoint:?];
  v14 = v13;
  v16 = v15;
  [quadCopy bottomRight];
  v18 = v17;
  v20 = v19;

  [(VKCImageBaseOverlayView *)self viewPointFromNormalizedPoint:v18, v20];
  v23 = [[VKQuad alloc] initWithBottomLeft:v14 bottomRight:v16 topLeft:v21 topRight:v22, v6, v8, v10, v12];

  return v23;
}

- (id)normalizedPathFromViewPath:(id)path
{
  pathCopy = path;
  [pathCopy bounds];
  [(VKCImageBaseOverlayView *)self normalizedRectFromViewRect:?];
  v5 = [pathCopy vk_pathByFittingToRect:?];

  return v5;
}

- (id)viewPathFromNormalizedPath:(id)path
{
  pathCopy = path;
  [pathCopy bounds];
  [(VKCImageBaseOverlayView *)self viewRectFromNormalizedRect:?];
  v5 = [pathCopy vk_pathByFittingToRect:?];

  return v5;
}

- (VKCImageBaseOverlayViewDelegate)baseDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_baseDelegate);

  return WeakRetained;
}

- (CGRect)contentsRect
{
  x = self->_contentsRect.origin.x;
  y = self->_contentsRect.origin.y;
  width = self->_contentsRect.size.width;
  height = self->_contentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)normalizedVisibleRect
{
  x = self->_normalizedVisibleRect.origin.x;
  y = self->_normalizedVisibleRect.origin.y;
  width = self->_normalizedVisibleRect.size.width;
  height = self->_normalizedVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end