@interface VKVectorOverlayPolygonGroup
- (CGColor)fillColor;
- (CGColor)strokeColor;
- (VKVectorOverlayPolygonGroup)initWithPolygons:(id)polygons;
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
- (void)setAlpha:(double)alpha;
- (void)setBlendMode:(int64_t)mode;
- (void)setFillColor:(CGColor *)color;
- (void)setLineJoin:(int64_t)join;
- (void)setLineWidth:(double)width;
- (void)setMiterLimit:(double)limit;
- (void)setStrokeColor:(CGColor *)color;
- (void)setStrokeEnd:(double)end;
- (void)setStrokeStart:(double)start;
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

- (void)setStrokeEnd:(double)end
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  self->_strokeEnd = end;
  strokeStart = self->_strokeStart;
  v6 = *(self->_style.__ptr_ + 4);
  os_unfair_lock_lock((v6 + 196));
  *(v6 + 152) = strokeStart;
  *&end = end;
  *(v6 + 156) = LODWORD(end);
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

- (void)setStrokeStart:(double)start
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  self->_strokeStart = start;
  strokeEnd = self->_strokeEnd;
  v6 = *(self->_style.__ptr_ + 4);
  os_unfair_lock_lock((v6 + 196));
  *&start = start;
  *(v6 + 152) = LODWORD(start);
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

- (void)setAlpha:(double)alpha
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  alpha = self->_alpha;
  self->_alpha = alpha;
  alphaCopy = alpha;
  md::PolygonOverlayRenderable::Style::setAlpha(self->_style.__ptr_, alphaCopy);
  v7 = vabdd_f64(alpha, alpha);
  if (v7 > fabs(alpha + alpha) * 2.22044605e-14 && v7 >= 2.22507386e-308)
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

- (void)setFillColor:(CGColor *)color
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  v5 = CGColorEqualToColor(color, self->_fillColor);
  CGColorRelease(self->_fillColor);
  self->_fillColor = CGColorRetain(color);
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

- (void)setMiterLimit:(double)limit
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  miterLimit = self->_miterLimit;
  v6 = vabdd_f64(limit, miterLimit);
  self->_miterLimit = limit;
  v7 = v6 <= fabs(miterLimit + limit) * 2.22044605e-14 || v6 < 2.22507386e-308;
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

- (void)setLineJoin:(int64_t)join
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  if (self->_lineJoin != join)
  {
    self->_lineJoin = join;
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

- (void)setLineWidth:(double)width
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  lineWidth = self->_lineWidth;
  self->_lineWidth = width;
  v7 = *(self->_style.__ptr_ + 4);
  os_unfair_lock_lock((v7 + 196));
  widthCopy = width;
  *(v7 + 132) = widthCopy;
  os_unfair_lock_unlock((v7 + 196));
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
  _colorFromCGColor(v7, v2, self->_fillColor);
  md::PolygonOverlayRenderable::Style::setFillColor(ptr, v7);
  v5 = self->_style.__ptr_;
  _colorFromCGColor(v7, v6, self->_strokeColor);
  md::PolylineOverlayStyle::setFillColor(*(v5 + 4), v7);
}

- (void)setBlendMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = VKVectorOverlayPolygonGroup;
  [(VKVectorOverlayData *)&v6 setBlendMode:?];
  ptr = self->_style.__ptr_;
  if ((mode - 1) >= 0x11)
  {
    LODWORD(mode) = 0;
  }

  os_unfair_lock_lock(ptr + 6);
  ptr[5]._os_unfair_lock_opaque = mode;
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

- (VKVectorOverlayPolygonGroup)initWithPolygons:(id)polygons
{
  polygonsCopy = polygons;
  v9.receiver = self;
  v9.super_class = VKVectorOverlayPolygonGroup;
  v5 = [(VKVectorOverlayData *)&v9 init];
  if (v5)
  {
    v6 = [polygonsCopy copy];
    polygons = v5->_polygons;
    v5->_polygons = v6;

    v5->_miterLimit = 10.0;
    _ZNSt3__115allocate_sharedB8nn200100IN2md24PolygonOverlayRenderable5StyleENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  return 0;
}

@end