@interface VKVectorOverlayCircle
- (Box<double,)_bounds;
- (CGColor)fillColor;
- (CGColor)strokeColor;
- (VKVectorOverlayCircle)initWithMapRect:(id)a3 lineWidth:(double)a4 fillColor:(CGColor *)a5 strokeColor:(CGColor *)a6 alpha:(double)a7;
- (double)alpha;
- (double)lineWidth;
- (id).cxx_construct;
- (shared_ptr<md::CircleOverlayRenderable>)_renderable;
- (void)_updateStyleColor;
- (void)dealloc;
- (void)setAlpha:(double)a3;
- (void)setBlendMode:(int64_t)a3;
- (void)setFillColor:(CGColor *)a3;
- (void)setLineWidth:(double)a3;
- (void)setStrokeColor:(CGColor *)a3;
@end

@implementation VKVectorOverlayCircle

- (id).cxx_construct
{
  *(self + 30) = 0;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 19) = 0;
  return self;
}

- (shared_ptr<md::CircleOverlayRenderable>)_renderable
{
  cntrl = self->_renderable.__cntrl_;
  *v2 = self->_renderable.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (Box<double,)_bounds
{
  v2 = self->_bounds._minimum._e[0];
  v3 = self->_bounds._minimum._e[1];
  v4 = self->_bounds._maximum._e[0];
  v5 = self->_bounds._maximum._e[1];
  result._maximum._e[1] = v5;
  result._maximum._e[0] = v4;
  result._minimum._e[1] = v3;
  result._minimum._e[0] = v2;
  return result;
}

- (void)setAlpha:(double)a3
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  alpha = self->_alpha;
  self->_alpha = a3;
  ptr = self->_style.__ptr_;
  os_unfair_lock_lock(ptr + 11);
  v7 = a3;
  *(ptr + 9) = v7;
  os_unfair_lock_unlock(ptr + 11);
  v8 = vabdd_f64(a3, alpha);
  if (v8 > fabs(alpha + a3) * 2.22044605e-14 && v8 >= 2.22507386e-308)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    [WeakRetained vectorOverlayNeedsDisplay:self needsFullInvalidate:0];
  }

  os_unfair_lock_unlock(&self->_propertiesLock._lock);
}

- (double)alpha
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  alpha = self->_alpha;
  os_unfair_lock_unlock(&self->_propertiesLock._lock);
  return alpha;
}

- (void)setStrokeColor:(CGColor *)a3
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  v5 = CGColorEqualToColor(a3, self->_strokeColor);
  CGColorRelease(self->_strokeColor);
  self->_strokeColor = CGColorRetain(a3);
  [(VKVectorOverlayCircle *)self _updateStyleColor];
  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    [WeakRetained vectorOverlayNeedsDisplay:self needsFullInvalidate:0];
  }

  os_unfair_lock_unlock(&self->_propertiesLock._lock);
}

- (CGColor)strokeColor
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  strokeColor = self->_strokeColor;
  os_unfair_lock_unlock(&self->_propertiesLock._lock);
  return strokeColor;
}

- (void)setFillColor:(CGColor *)a3
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  v5 = CGColorEqualToColor(a3, self->_fillColor);
  CGColorRelease(self->_fillColor);
  self->_fillColor = CGColorRetain(a3);
  [(VKVectorOverlayCircle *)self _updateStyleColor];
  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    [WeakRetained vectorOverlayNeedsDisplay:self needsFullInvalidate:0];
  }

  os_unfair_lock_unlock(&self->_propertiesLock._lock);
}

- (CGColor)fillColor
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  fillColor = self->_fillColor;
  os_unfair_lock_unlock(&self->_propertiesLock._lock);
  return fillColor;
}

- (void)setLineWidth:(double)a3
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  lineWidth = self->_lineWidth;
  self->_lineWidth = a3;
  ptr = self->_style.__ptr_;
  os_unfair_lock_lock(ptr + 11);
  v7 = a3;
  *ptr = v7;
  os_unfair_lock_unlock(ptr + 11);
  v8 = vabdd_f64(a3, lineWidth);
  if (v8 > fabs(lineWidth + a3) * 2.22044605e-14 && v8 >= 2.22507386e-308)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    [WeakRetained vectorOverlayNeedsDisplay:self needsFullInvalidate:0];
  }

  os_unfair_lock_unlock(&self->_propertiesLock._lock);
}

- (double)lineWidth
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  lineWidth = self->_lineWidth;
  os_unfair_lock_unlock(&self->_propertiesLock._lock);
  return lineWidth;
}

- (void)_updateStyleColor
{
  ptr = self->_style.__ptr_;
  _colorFromCGColor(&v7, v2, self->_fillColor);
  os_unfair_lock_lock(ptr + 11);
  *(ptr + 20) = v7;
  os_unfair_lock_unlock(ptr + 11);
  v5 = self->_style.__ptr_;
  _colorFromCGColor(&v7, v6, self->_strokeColor);
  os_unfair_lock_lock(v5 + 11);
  *(v5 + 4) = v7;

  os_unfair_lock_unlock(v5 + 11);
}

- (void)setBlendMode:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = VKVectorOverlayCircle;
  [(VKVectorOverlayData *)&v6 setBlendMode:?];
  ptr = self->_style.__ptr_;
  if ((a3 - 1) >= 0x11)
  {
    LODWORD(a3) = 0;
  }

  os_unfair_lock_lock(ptr + 11);
  ptr[10]._os_unfair_lock_opaque = a3;
  os_unfair_lock_unlock(ptr + 11);
}

- (void)dealloc
{
  CGColorRelease(self->_fillColor);
  CGColorRelease(self->_strokeColor);
  v3.receiver = self;
  v3.super_class = VKVectorOverlayCircle;
  [(VKVectorOverlayCircle *)&v3 dealloc];
}

- (VKVectorOverlayCircle)initWithMapRect:(id)a3 lineWidth:(double)a4 fillColor:(CGColor *)a5 strokeColor:(CGColor *)a6 alpha:(double)a7
{
  v14.receiver = self;
  v14.super_class = VKVectorOverlayCircle;
  v11 = [(VKVectorOverlayData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_lineWidth = a4;
    v11->_fillColor = CGColorRetain(a5);
    v12->_strokeColor = CGColorRetain(a6);
    v12->_alpha = a7;
    operator new();
  }

  return 0;
}

@end