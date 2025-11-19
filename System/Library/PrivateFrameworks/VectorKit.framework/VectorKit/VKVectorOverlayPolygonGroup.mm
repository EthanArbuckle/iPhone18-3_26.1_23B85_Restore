@interface VKVectorOverlayPolygonGroup
- (CGColor)fillColor;
- (CGColor)strokeColor;
- (VKVectorOverlayPolygonGroup)initWithPolygons:(id)a3;
- (double)alpha;
- (double)lineWidth;
- (double)miterLimit;
- (double)strokeEnd;
- (double)strokeStart;
- (id).cxx_construct;
- (int64_t)lineJoin;
- (shared_ptr<md::PolygonOverlayRenderable::Style>)_style;
- (void)_updateStyleColor;
- (void)dealloc;
- (void)setAlpha:(double)a3;
- (void)setBlendMode:(int64_t)a3;
- (void)setFillColor:(CGColor *)a3;
- (void)setLineJoin:(int64_t)a3;
- (void)setLineWidth:(double)a3;
- (void)setMiterLimit:(double)a3;
- (void)setStrokeColor:(CGColor *)a3;
- (void)setStrokeEnd:(double)a3;
- (void)setStrokeStart:(double)a3;
@end

@implementation VKVectorOverlayPolygonGroup

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 28) = 0;
  return self;
}

- (shared_ptr<md::PolygonOverlayRenderable::Style>)_style
{
  cntrl = self->_style.__cntrl_;
  *v2 = self->_style.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setStrokeEnd:(double)a3
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  self->_strokeEnd = a3;
  strokeStart = self->_strokeStart;
  v6 = *(self->_style.__ptr_ + 4);
  os_unfair_lock_lock((v6 + 196));
  *(v6 + 152) = strokeStart;
  *&a3 = a3;
  *(v6 + 156) = LODWORD(a3);
  os_unfair_lock_unlock((v6 + 196));
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  [WeakRetained vectorOverlayNeedsDisplay:self needsFullInvalidate:0];

  os_unfair_lock_unlock(&self->_propertiesLock._lock);
}

- (double)strokeEnd
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  strokeEnd = self->_strokeEnd;
  os_unfair_lock_unlock(&self->_propertiesLock._lock);
  return strokeEnd;
}

- (void)setStrokeStart:(double)a3
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  self->_strokeStart = a3;
  strokeEnd = self->_strokeEnd;
  v6 = *(self->_style.__ptr_ + 4);
  os_unfair_lock_lock((v6 + 196));
  *&a3 = a3;
  *(v6 + 152) = LODWORD(a3);
  *(v6 + 156) = strokeEnd;
  os_unfair_lock_unlock((v6 + 196));
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  [WeakRetained vectorOverlayNeedsDisplay:self needsFullInvalidate:0];

  os_unfair_lock_unlock(&self->_propertiesLock._lock);
}

- (double)strokeStart
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  strokeStart = self->_strokeStart;
  os_unfair_lock_unlock(&self->_propertiesLock._lock);
  return strokeStart;
}

- (void)setAlpha:(double)a3
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  alpha = self->_alpha;
  self->_alpha = a3;
  v6 = a3;
  md::PolygonOverlayRenderable::Style::setAlpha(self->_style.__ptr_, v6);
  v7 = vabdd_f64(a3, alpha);
  if (v7 > fabs(alpha + a3) * 2.22044605e-14 && v7 >= 2.22507386e-308)
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
  [(VKVectorOverlayPolygonGroup *)self _updateStyleColor];
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
  [(VKVectorOverlayPolygonGroup *)self _updateStyleColor];
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

- (void)setMiterLimit:(double)a3
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  miterLimit = self->_miterLimit;
  v6 = vabdd_f64(a3, miterLimit);
  self->_miterLimit = a3;
  v7 = v6 <= fabs(miterLimit + a3) * 2.22044605e-14 || v6 < 2.22507386e-308;
  if (!v7 && self->_lineJoin == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    [WeakRetained vectorOverlayNeedsDisplay:self needsFullInvalidate:1];
  }

  os_unfair_lock_unlock(&self->_propertiesLock._lock);
}

- (double)miterLimit
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  miterLimit = self->_miterLimit;
  os_unfair_lock_unlock(&self->_propertiesLock._lock);
  return miterLimit;
}

- (void)setLineJoin:(int64_t)a3
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  if (self->_lineJoin != a3)
  {
    self->_lineJoin = a3;
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    [WeakRetained vectorOverlayNeedsDisplay:self needsFullInvalidate:1];
  }

  os_unfair_lock_unlock(&self->_propertiesLock._lock);
}

- (int64_t)lineJoin
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  lineJoin = self->_lineJoin;
  os_unfair_lock_unlock(&self->_propertiesLock._lock);
  return lineJoin;
}

- (void)setLineWidth:(double)a3
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  lineWidth = self->_lineWidth;
  self->_lineWidth = a3;
  v7 = *(self->_style.__ptr_ + 4);
  os_unfair_lock_lock((v7 + 196));
  v6 = a3;
  *(v7 + 132) = v6;
  os_unfair_lock_unlock((v7 + 196));
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
  _colorFromCGColor(v7, v2, self->_fillColor);
  md::PolygonOverlayRenderable::Style::setFillColor(ptr, v7);
  v5 = self->_style.__ptr_;
  _colorFromCGColor(v7, v6, self->_strokeColor);
  md::PolylineOverlayStyle::setFillColor(*(v5 + 4), v7);
}

- (void)setBlendMode:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = VKVectorOverlayPolygonGroup;
  [(VKVectorOverlayData *)&v6 setBlendMode:?];
  ptr = self->_style.__ptr_;
  if ((a3 - 1) >= 0x11)
  {
    LODWORD(a3) = 0;
  }

  os_unfair_lock_lock(ptr + 6);
  ptr[5]._os_unfair_lock_opaque = a3;
  os_unfair_lock_unlock(ptr + 6);
}

- (void)dealloc
{
  CGColorRelease(self->_fillColor);
  CGColorRelease(self->_strokeColor);
  v3.receiver = self;
  v3.super_class = VKVectorOverlayPolygonGroup;
  [(VKVectorOverlayPolygonGroup *)&v3 dealloc];
}

- (VKVectorOverlayPolygonGroup)initWithPolygons:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VKVectorOverlayPolygonGroup;
  v5 = [(VKVectorOverlayData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    polygons = v5->_polygons;
    v5->_polygons = v6;

    v5->_miterLimit = 10.0;
    _ZNSt3__115allocate_sharedB8nn200100IN2md24PolygonOverlayRenderable5StyleENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  return 0;
}

@end