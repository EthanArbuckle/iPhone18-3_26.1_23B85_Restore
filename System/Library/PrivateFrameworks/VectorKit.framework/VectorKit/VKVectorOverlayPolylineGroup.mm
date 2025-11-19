@interface VKVectorOverlayPolylineGroup
- (CGColor)color;
- (VKVectorOverlayPolylineGroup)initWithPolylines:(id)a3;
- (double)alpha;
- (double)lineWidth;
- (double)miterLimit;
- (double)strokeEnd;
- (double)strokeStart;
- (id).cxx_construct;
- (int64_t)lineCap;
- (int64_t)lineJoin;
- (shared_ptr<md::PolylineOverlayStyle>)style;
- (void)_updateStyleColor;
- (void)dealloc;
- (void)setAlpha:(double)a3;
- (void)setBlendMode:(int64_t)a3;
- (void)setColor:(CGColor *)a3;
- (void)setColorStopColors:(id)a3 locations:(id)a4;
- (void)setLineCap:(int64_t)a3;
- (void)setLineJoin:(int64_t)a3;
- (void)setLineWidth:(double)a3;
- (void)setMiterLimit:(double)a3;
- (void)setStrokeEnd:(double)a3;
- (void)setStrokeStart:(double)a3;
@end

@implementation VKVectorOverlayPolylineGroup

- (id).cxx_construct
{
  *(self + 22) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  return self;
}

- (shared_ptr<md::PolylineOverlayStyle>)style
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
  ptr = self->_style.__ptr_;
  strokeStart = self->_strokeStart;
  os_unfair_lock_lock(ptr + 49);
  *(ptr + 38) = strokeStart;
  *&a3 = a3;
  *(ptr + 39) = LODWORD(a3);
  os_unfair_lock_unlock(ptr + 49);
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
  ptr = self->_style.__ptr_;
  strokeEnd = self->_strokeEnd;
  os_unfair_lock_lock(ptr + 49);
  *&a3 = a3;
  *(ptr + 38) = LODWORD(a3);
  *(ptr + 39) = strokeEnd;
  os_unfair_lock_unlock(ptr + 49);
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

- (void)setLineCap:(int64_t)a3
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  if (self->_lineCap != a3)
  {
    self->_lineCap = a3;
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    [WeakRetained vectorOverlayNeedsDisplay:self needsFullInvalidate:1];
  }

  os_unfair_lock_unlock(&self->_propertiesLock._lock);
}

- (int64_t)lineCap
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  lineCap = self->_lineCap;
  os_unfair_lock_unlock(&self->_propertiesLock._lock);
  return lineCap;
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

- (void)setAlpha:(double)a3
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  alpha = self->_alpha;
  self->_alpha = a3;
  ptr = self->_style.__ptr_;
  os_unfair_lock_lock(ptr + 49);
  v7 = a3;
  *(ptr + 40) = v7;
  os_unfair_lock_unlock(ptr + 49);
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

- (void)setColor:(CGColor *)a3
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  v5 = CGColorEqualToColor(a3, self->_color);
  CGColorRelease(self->_color);
  self->_color = CGColorRetain(a3);
  [(VKVectorOverlayPolylineGroup *)self _updateStyleColor];
  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    [WeakRetained vectorOverlayNeedsDisplay:self needsFullInvalidate:0];
  }

  os_unfair_lock_unlock(&self->_propertiesLock._lock);
}

- (CGColor)color
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  color = self->_color;
  os_unfair_lock_unlock(&self->_propertiesLock._lock);
  return color;
}

- (void)setLineWidth:(double)a3
{
  os_unfair_lock_lock(&self->_propertiesLock._lock);
  lineWidth = self->_lineWidth;
  self->_lineWidth = a3;
  ptr = self->_style.__ptr_;
  os_unfair_lock_lock(ptr + 49);
  v7 = a3;
  *(ptr + 33) = v7;
  os_unfair_lock_unlock(ptr + 49);
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
  _colorFromCGColor(v4, v2, self->_color);
  md::PolylineOverlayStyle::setFillColor(ptr, v4);
}

- (void)setColorStopColors:(id)a3 locations:(id)a4
{
  v43 = a3;
  v6 = a4;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if ([v6 count])
  {
    v7 = [v6 count];
    if (v7 == [v43 count])
    {
      v8 = [v6 count];
      if (0xCCCCCCCCCCCCCCCDLL * ((v47 - v45) >> 2) < v8)
      {
        if (v8 <= 0xCCCCCCCCCCCCCCCLL)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolylineOverlayStyle::GradientColorStop>>(v8);
        }

        goto LABEL_64;
      }

      v42 = self;
      v9 = 0;
      v10 = v46;
      v11 = v47;
      v12 = v45;
      while (v9 < [v6 count])
      {
        v13 = [v6 objectAtIndexedSubscript:v9];
        [v13 floatValue];
        v15 = v14;

        v16 = [v43 objectAtIndexedSubscript:v9];

        _colorFromCGColor(&v44, v17, v16);
        if (v10 >= v11)
        {
          v18 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v12) >> 2) + 1;
          if (v18 > 0xCCCCCCCCCCCCCCCLL)
          {
            v46 = v10;
            v47 = v11;
            v45 = v12;
            goto LABEL_64;
          }

          if (0x999999999999999ALL * ((v11 - v12) >> 2) > v18)
          {
            v18 = 0x999999999999999ALL * ((v11 - v12) >> 2);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v11 - v12) >> 2) >= 0x666666666666666)
          {
            v19 = 0xCCCCCCCCCCCCCCCLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolylineOverlayStyle::GradientColorStop>>(v19);
          }

          v20 = 4 * ((v10 - v12) >> 2);
          *v20 = v44;
          *(v20 + 16) = v15;
          if (v12 != v10)
          {
            v21 = v12;
            v22 = (v20 + v12 - v10);
            do
            {
              *v22 = *v21;
              *(v22 + 4) = *(v21 + 4);
              v21 += 20;
              v22 += 20;
            }

            while (v21 != v10);
          }

          v11 = 0;
          if (v12)
          {
            operator delete(v12);
          }

          v12 = (v20 + v12 - v10);
          v10 = v20;
        }

        else
        {
          *v10 = v44;
          *(v10 + 4) = v15;
        }

        v10 += 20;
        ++v9;
      }

      v46 = v10;
      v47 = v11;
      v45 = v12;
      self = v42;
    }
  }

  v23 = v45;
  v24 = v46;
  v25 = v46 - v45;
  v26 = 0xCCCCCCCCCCCCCCCDLL * ((v46 - v45) >> 2);
  if (v26 <= 0x10)
  {
    ptr = self->_style.__ptr_;
    os_unfair_lock_lock(ptr + 49);
    v29 = (ptr + 168);
    v28 = *(ptr + 21);
    v30 = *(ptr + 23);
    if (v30 - v28 < v25)
    {
      if (v28)
      {
        *(ptr + 22) = v28;
        operator delete(v28);
        v30 = 0;
        *v29 = 0;
        *(ptr + 22) = 0;
        *(ptr + 23) = 0;
      }

      v31 = 0xCCCCCCCCCCCCCCCDLL * (v30 >> 2);
      v32 = 2 * v31;
      if (2 * v31 <= v26)
      {
        v32 = v26;
      }

      if (v31 >= 0x666666666666666)
      {
        v33 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v33 = v32;
      }

      if (v33 <= 0xCCCCCCCCCCCCCCCLL)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolylineOverlayStyle::GradientColorStop>>(v33);
      }

LABEL_64:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v34 = *(ptr + 22);
    if (v34 - v28 >= v25)
    {
      while (v23 != v24)
      {
        for (i = 0; i != 16; i += 4)
        {
          *&v28[i] = *&v23[i];
        }

        *(v28 + 4) = *(v23 + 4);
        v23 += 20;
        v28 += 20;
      }
    }

    else
    {
      v35 = &v23[v34 - v28];
      if (v34 != v28)
      {
        do
        {
          for (j = 0; j != 16; j += 4)
          {
            *&v28[j] = *&v23[j];
          }

          *(v28 + 4) = *(v23 + 4);
          v23 += 20;
          v28 += 20;
        }

        while (v23 != v35);
      }

      while (v35 != v24)
      {
        *v34 = *v35;
        *(v34 + 4) = *(v35 + 4);
        v35 += 20;
        v34 += 20;
      }

      v28 = v34;
    }

    *(ptr + 22) = v28;
    if (*v29 == v28)
    {
      v40 = 0;
    }

    else
    {
      v38 = (*v29 + 20);
      do
      {
        v39 = *(v38 - 8);
        v40 = v39 < 1.0;
        v41 = v39 < 1.0 || v38 == v28;
        v38 += 20;
      }

      while (!v41);
    }

    *(ptr + 192) = v40;
    os_unfair_lock_unlock(ptr + 49);
    v23 = v45;
  }

  if (v23)
  {
    v46 = v23;
    operator delete(v23);
  }
}

- (void)setBlendMode:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = VKVectorOverlayPolylineGroup;
  [(VKVectorOverlayData *)&v6 setBlendMode:?];
  ptr = self->_style.__ptr_;
  if ((a3 - 1) >= 0x11)
  {
    LODWORD(a3) = 0;
  }

  os_unfair_lock_lock(ptr + 49);
  *(ptr + 41) = a3;
  os_unfair_lock_unlock(ptr + 49);
}

- (void)dealloc
{
  CGColorRelease(self->_color);
  v3.receiver = self;
  v3.super_class = VKVectorOverlayPolylineGroup;
  [(VKVectorOverlayPolylineGroup *)&v3 dealloc];
}

- (VKVectorOverlayPolylineGroup)initWithPolylines:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VKVectorOverlayPolylineGroup;
  v5 = [(VKVectorOverlayData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    polylines = v5->_polylines;
    v5->_polylines = v6;

    v5->_miterLimit = 10.0;
    v5->_strokeStart = 0.0;
    v5->_strokeEnd = 1.0;
    _ZNSt3__115allocate_sharedB8nn200100IN2md20PolylineOverlayStyleENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  return 0;
}

@end