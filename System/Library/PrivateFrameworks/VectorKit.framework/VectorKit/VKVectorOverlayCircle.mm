@interface VKVectorOverlayCircle
- (Box<double,)_bounds;
- (CGColor)fillColor;
- (CGColor)strokeColor;
- (VKVectorOverlayCircle)initWithMapRect:(id)rect lineWidth:(double)width fillColor:(CGColor *)color strokeColor:(CGColor *)strokeColor alpha:(double)alpha;
- (double)alpha;
- (double)lineWidth;
- (id).cxx_construct;
- (shared_ptr<md::CircleOverlayRenderable>)_renderable;
- (void)_updateStyleColor;
- (void)dealloc;
- (void)setAlpha:(double)alpha;
- (void)setBlendMode:(int64_t)mode;
- (void)setFillColor:(CGColor *)color;
- (void)setLineWidth:(double)width;
- (void)setStrokeColor:(CGColor *)color;
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

- (void)setAlpha:(double)alpha
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  alpha = self->_alpha;
  self->_alpha = alpha;
  ptr = self->_style.__ptr_;
  os_unfair_lock_lock(ptr + 11);
  alphaCopy = alpha;
  *(ptr + 9) = alphaCopy;
  os_unfair_lock_unlock(ptr + 11);
  v8 = vabdd_f64(alpha, alpha);
  if (v8 > fabs(alpha + alpha) * 2.22044605e-14 && v8 >= 2.22507386e-308)
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

- (void)setStrokeColor:(CGColor *)color
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  v5 = CGColorEqualToColor(color, self->_strokeColor);
  CGColorRelease(self->_strokeColor);
  self->_strokeColor = CGColorRetain(color);
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

- (void)setFillColor:(CGColor *)color
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  v5 = CGColorEqualToColor(color, self->_fillColor);
  CGColorRelease(self->_fillColor);
  self->_fillColor = CGColorRetain(color);
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

- (void)setLineWidth:(double)width
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  lineWidth = self->_lineWidth;
  self->_lineWidth = width;
  ptr = self->_style.__ptr_;
  os_unfair_lock_lock(ptr + 11);
  widthCopy = width;
  *ptr = widthCopy;
  os_unfair_lock_unlock(ptr + 11);
  v8 = vabdd_f64(width, lineWidth);
  if (v8 > fabs(lineWidth + width) * 2.22044605e-14 && v8 >= 2.22507386e-308)
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

- (void)setBlendMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = VKVectorOverlayCircle;
  [(VKVectorOverlayData *)&v6 setBlendMode:?];
  ptr = self->_style.__ptr_;
  if ((mode - 1) >= 0x11)
  {
    LODWORD(mode) = 0;
  }

  os_unfair_lock_lock(ptr + 11);
  ptr[10]._os_unfair_lock_opaque = mode;
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

- (VKVectorOverlayCircle)initWithMapRect:(id)rect lineWidth:(double)width fillColor:(CGColor *)color strokeColor:(CGColor *)strokeColor alpha:(double)alpha
{
  v14.receiver = self;
  v14.super_class = VKVectorOverlayCircle;
  v11 = [(VKVectorOverlayData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_lineWidth = width;
    v11->_fillColor = CGColorRetain(color);
    v12->_strokeColor = CGColorRetain(strokeColor);
    v12->_alpha = alpha;
    operator new();
  }

  return 0;
}

@end