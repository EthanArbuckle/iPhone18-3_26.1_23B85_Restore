@interface TSDBrushStrokeDirectSurfaceRenderingContext
- (CGAffineTransform)transform;
- (CGRect)frame;
- (TSDBrushStrokeDirectSurfaceRenderingContext)initWithSurface:(id)a3 frame:(CGRect)a4 transform:(CGAffineTransform *)a5 contentsScale:(double)a6 destinationColorSpaceOverride:(CGColorSpace *)a7 metalDeviceOverride:(id)a8;
- (void)dealloc;
@end

@implementation TSDBrushStrokeDirectSurfaceRenderingContext

- (TSDBrushStrokeDirectSurfaceRenderingContext)initWithSurface:(id)a3 frame:(CGRect)a4 transform:(CGAffineTransform *)a5 contentsScale:(double)a6 destinationColorSpaceOverride:(CGColorSpace *)a7 metalDeviceOverride:(id)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v18 = a3;
  v19 = a8;
  v25.receiver = self;
  v25.super_class = TSDBrushStrokeDirectSurfaceRenderingContext;
  v20 = [(TSDBrushStrokeDirectSurfaceRenderingContext *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_surface, a3);
    v21->_frame.origin.x = x;
    v21->_frame.origin.y = y;
    v21->_frame.size.width = width;
    v21->_frame.size.height = height;
    v22 = *&a5->a;
    v23 = *&a5->c;
    *&v21->_transform.tx = *&a5->tx;
    *&v21->_transform.c = v23;
    *&v21->_transform.a = v22;
    v21->_contentsScale = a6;
    v21->_destinationColorSpaceOverride = CGColorSpaceRetain(a7);
    objc_storeStrong(&v21->_metalDeviceOverride, a8);
  }

  return v21;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_destinationColorSpaceOverride);
  v3.receiver = self;
  v3.super_class = TSDBrushStrokeDirectSurfaceRenderingContext;
  [(TSDBrushStrokeDirectSurfaceRenderingContext *)&v3 dealloc];
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[1].ty;
  *&retstr->a = *&self[1].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].b;
  return self;
}

@end