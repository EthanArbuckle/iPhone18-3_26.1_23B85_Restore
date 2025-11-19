@interface RBStrokeAccumulator
- (CGRect)boundingRect;
- (RBStrokeAccumulator)init;
- (float)borderWidth;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)addPath:(uint64_t)a1 transform:(uint64_t)a2;
- (void)addElement:(unsigned __int8)a3 args:(const float *)a4;
- (void)addPath:(CGPath *)a3 transform:(CGAffineTransform *)a4;
- (void)applyFunction:(void *)a3 info:(void *)a4;
- (void)removeAllElements;
- (void)setBlendMode:(int)a3;
- (void)setImage:(CGImage *)a3;
- (void)setImageCount:(unint64_t)a3;
- (void)setImageScale:(float)a3;
- (void)setLineCap:(int)a3;
- (void)setLineJoin:(int)a3;
- (void)setMiterLimit:(float)a3;
- (void)setRotatesImage:(BOOL)a3;
- (void)setSeed:(int64_t)a3;
- (void)setStrokeType:(int)a3;
@end

@implementation RBStrokeAccumulator

- (RBStrokeAccumulator)init
{
  v3.receiver = self;
  v3.super_class = RBStrokeAccumulator;
  result = [(RBStrokeAccumulator *)&v3 init];
  if (result)
  {
    result->_imageScale = 1.0;
    result->_imageCount = 1;
    *&result->_strokeType = xmmword_195E443A0;
    *&result->_miterLimit = 1092616192;
    result->_seed = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(RBStrokeAccumulator);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v4->_elements._size = 0;
  p = self->_elements._p;
  size = self->_elements._size;
  if (v4->_elements._capacity < size)
  {
    RB::vector<unsigned char,0ul,unsigned long>::reserve_slow(&v4->_elements, self->_elements._size);
    v8 = v5->_elements._size;
  }

  else
  {
    v8 = 0;
    if (!size)
    {
      goto LABEL_6;
    }
  }

  v9 = v5->_elements._p;
  v10 = size;
  do
  {
    v11 = *p++;
    v9[v8] = v11;
    ++v9;
    --v10;
  }

  while (v10);
LABEL_6:
  v5->_elements._size = v8 + size;
  v5->_values._size = 0;
  v13 = self->_values._p;
  v12 = self->_values._size;
  if (v5->_values._capacity < v12)
  {
    RB::vector<float,0ul,unsigned long>::reserve_slow(&v5->_values, self->_values._size);
    v14 = v5->_values._size;
LABEL_8:
    v15 = &v5->_values._p[v14];
    v16 = v12;
    do
    {
      v17 = *v13++;
      *v15++ = v17;
      --v16;
    }

    while (v16);
    goto LABEL_10;
  }

  v14 = 0;
  if (v12)
  {
    goto LABEL_8;
  }

LABEL_10:
  v5->_values._size = v14 + v12;
  v18 = self->_image._p;
  v19 = v5->_image._p;
  if (v19 != v18)
  {
    if (v19)
    {
      CFRelease(v19);
    }

    if (v18)
    {
      v20 = CFRetain(v18);
    }

    else
    {
      v20 = 0;
    }

    v5->_image._p = v20;
  }

  v5->_imageScale = self->_imageScale;
  v5->_imageCount = self->_imageCount;
  *&v5->_strokeType = *&self->_strokeType;
  v5->_miterLimit = self->_miterLimit;
  v5->_seed = self->_seed;
  if (self->_hasBounds)
  {
    v21 = self->_bounds.size;
    v5->_bounds.origin = self->_bounds.origin;
    v5->_bounds.size = v21;
    v5->_borderWidth = self->_borderWidth;
    v5->_hasBounds = 1;
  }

  v5->_rotatesImage = self->_rotatesImage;
  return v5;
}

- (void)addElement:(unsigned __int8)a3 args:(const float *)a4
{
  if (self->_committed)
  {
    [RBStrokeAccumulator addElement:a2 args:?];
  }

  v5 = a3;
  size = self->_elements._size;
  v8 = size + 1;
  if (self->_elements._capacity < size + 1)
  {
    RB::vector<unsigned char,0ul,unsigned long>::reserve_slow(&self->_elements, v8);
    size = self->_elements._size;
    v8 = size + 1;
  }

  self->_elements._p[size] = v5;
  self->_elements._size = v8;
  if (v5 <= 0xF && v5 != 4)
  {
    v9 = 0;
    v10 = RB::Stroke::element_args(RBStrokeElement)::elts[v5];
    v11 = self->_values._size;
    do
    {
      v12 = v11 + 1;
      if (self->_values._capacity < v11 + 1)
      {
        RB::vector<float,0ul,unsigned long>::reserve_slow(&self->_values, v12);
        v11 = self->_values._size;
        v12 = v11 + 1;
      }

      self->_values._p[v11] = a4[v9];
      self->_values._size = v12;
      ++v9;
      v11 = v12;
    }

    while (v10 != v9);
    if (v5 == 5)
    {
      maxLineWidth = self->_maxLineWidth;
      if (maxLineWidth < *a4)
      {
        maxLineWidth = *a4;
      }

      self->_maxLineWidth = maxLineWidth;
    }
  }
}

- (void)addPath:(CGPath *)a3 transform:(CGAffineTransform *)a4
{
  if (self->_committed)
  {
    [RBStrokeAccumulator addElement:a2 args:?];
  }

  info = self;
  v4 = *&a4->c;
  v6 = *&a4->a;
  v7 = v4;
  v8 = *&a4->tx;
  CGPathApply(a3, &info, [RBStrokeAccumulator addPath:transform:]::$_0::__invoke);
}

- (void)removeAllElements
{
  if (self->_committed)
  {
    [RBStrokeAccumulator addElement:a2 args:?];
  }

  self->_elements._size = 0;
  self->_values._size = 0;
  self->_maxLineWidth = 0.0;
}

- (void)setStrokeType:(int)a3
{
  if (self->_committed)
  {
    [RBStrokeAccumulator addElement:a2 args:?];
  }

  self->_strokeType = a3;
}

- (void)setImage:(CGImage *)a3
{
  if (self->_committed)
  {
    [RBStrokeAccumulator addElement:a2 args:?];
  }

  p = self->_image._p;
  if (p != a3)
  {
    if (p)
    {
      CFRelease(p);
    }

    if (a3)
    {
      v6 = CFRetain(a3);
    }

    else
    {
      v6 = 0;
    }

    self->_image._p = v6;
  }
}

- (void)setImageScale:(float)a3
{
  if (self->_committed)
  {
    [RBStrokeAccumulator addElement:a2 args:?];
  }

  self->_imageScale = a3;
}

- (void)setImageCount:(unint64_t)a3
{
  if (self->_committed)
  {
    [RBStrokeAccumulator addElement:a2 args:?];
  }

  self->_imageCount = a3;
}

- (void)setRotatesImage:(BOOL)a3
{
  if (self->_committed)
  {
    [RBStrokeAccumulator addElement:a2 args:?];
  }

  self->_rotatesImage = a3;
}

- (void)setBlendMode:(int)a3
{
  if (self->_committed)
  {
    [RBStrokeAccumulator addElement:a2 args:?];
  }

  self->_blendMode = a3;
}

- (void)setLineCap:(int)a3
{
  if (self->_committed)
  {
    [RBStrokeAccumulator addElement:a2 args:?];
  }

  self->_lineCap = a3;
}

- (void)setLineJoin:(int)a3
{
  if (self->_committed)
  {
    [RBStrokeAccumulator addElement:a2 args:?];
  }

  self->_lineJoin = a3;
}

- (void)setMiterLimit:(float)a3
{
  if (self->_committed)
  {
    [RBStrokeAccumulator addElement:a2 args:?];
  }

  self->_miterLimit = a3;
}

- (void)setSeed:(int64_t)a3
{
  if (self->_committed)
  {
    [RBStrokeAccumulator addElement:a2 args:?];
  }

  self->_seed = a3;
}

- (CGRect)boundingRect
{
  if (self->_hasBounds)
  {
    x = self->_bounds.origin.x;
    y = self->_bounds.origin.y;
    width = self->_bounds.size.width;
    height = self->_bounds.size.height;
  }

  else
  {
    RBStrokeBoundingRect(self, &self->_borderWidth);
    self->_bounds.origin.x = x;
    self->_bounds.origin.y = y;
    self->_bounds.size.width = width;
    self->_bounds.size.height = height;
    self->_hasBounds = 1;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (float)borderWidth
{
  if (!self->_hasBounds)
  {
    RBStrokeBoundingRect(self, &self->_borderWidth);
    self->_bounds.origin.x = v3;
    self->_bounds.origin.y = v4;
    self->_bounds.size.width = v5;
    self->_bounds.size.height = v6;
    self->_hasBounds = 1;
  }

  return self->_borderWidth;
}

- (void)applyFunction:(void *)a3 info:(void *)a4
{
  size = self->_elements._size;
  if (size)
  {
    (a3)(size, self->_elements._p, self->_values._p, a4);
  }
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (uint64_t)addPath:(uint64_t)a1 transform:(uint64_t)a2
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        *v12.f32 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(*(a1 + 40), *(a1 + 8), **(a2 + 8)), *(a1 + 24), *(*(a2 + 8) + 8)));
        v3 = 1;
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
      *v12.f32 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(*(a1 + 40), *(a1 + 8), **(a2 + 8)), *(a1 + 24), *(*(a2 + 8) + 8)));
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        v4 = *(a2 + 8);
        v12 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(*(a1 + 40), *(a1 + 24), v4[1]), *(a1 + 8), *v4)), vmlaq_n_f64(vmlaq_n_f64(*(a1 + 40), *(a1 + 8), v4[2]), *(a1 + 24), v4[3]));
        v3 = 2;
        break;
      case 3:
        v5 = *(a2 + 8);
        v6 = *(a1 + 8);
        v7 = v5[4];
        v8 = v5[5];
        v9 = *(a1 + 24);
        v10 = *(a1 + 40);
        v12 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(v10, v9, v5[1]), v6, *v5)), vmlaq_n_f64(vmlaq_n_f64(v10, v6, v5[2]), v9, v5[3]));
        v13 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(v10, v6, v7), v9, v8));
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      default:
        v3 = 0;
        break;
    }
  }

  return [*a1 addElement:v3 args:&v12];
}

@end