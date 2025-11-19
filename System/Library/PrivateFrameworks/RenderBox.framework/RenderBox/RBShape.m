@interface RBShape
- (CGRect)boundingRect;
- (id).cxx_construct;
- (uint64_t)shapeData;
- (unint64_t)_setRBPath:(uint64_t)a3 transform:(float64x2_t *)a4;
- (void)_setCircleAtPoint:(float64_t)a3 radius:(double)a4;
- (void)_setEmpty;
- (void)_setGlyphs:(uint64_t)a3 positions:(unint64_t)a4 count:(const void *)a5 font:(int)a6 renderingStyle:(char)a7 dilation:(__n128)a8 shouldDrawBitmapRuns:(__n128)a9;
- (void)_setInfinite;
- (void)_setRect:(float64_t)a3;
- (void)_setRoundedRect:(double)a3 cornerSize:(float64_t)a4 cornerStyle:(double)a5;
- (void)_setStrokedRBPath:(uint64_t)a3 transform:(float64x2_t *)a4 lineWidth:(unsigned int)a5 lineCap:(CGLineJoin)a6 lineJoin:(double *)a7 miterLimit:(uint64_t)a8 dashPhase:(double)a9 dashPattern:(double)a10 dashCount:(double)a11;
- (void)_xmlAttributes:(double)a3;
- (void)setAntialiased:(BOOL)a3;
- (void)setCustomGlyphDilation:(CGSize)a3;
- (void)setEOFill:(BOOL)a3;
- (void)setEllipseInRect:(CGRect)a3;
- (void)setGlyphs:(const unsigned __int16 *)a3 positions:(const CGPoint *)a4 count:(unint64_t)a5 font:(CGFont *)a6 renderingStyle:(unsigned int)a7;
- (void)setGlyphs:(uint64_t)a3 positions:(unint64_t)a4 count:(const void *)a5 font:(int)a6 renderingStyle:(char)a7 dilation:(__n128)a8 shouldDrawBitmapRuns:(__n128)a9;
- (void)setPath:(CGPath *)a3;
- (void)setPath:(CGPath *)a3 transform:(CGAffineTransform *)a4;
- (void)setRBPath:(RBPath)a3 transform:(CGAffineTransform *)a4;
- (void)setRenderingMode:(unsigned int)a3;
- (void)setRenderingModeArgument:(double)a3;
- (void)setRoundedRect:(CGRect)a3 cornerRadii:(id)a4 cornerStyle:(int)a5;
- (void)setShouldDrawBitmapRuns:(BOOL)a3;
- (void)setStroke:(id)a3;
- (void)setStrokedCircleAtPoint:(CGPoint)a3 radius:(double)a4 lineWidth:(double)a5;
- (void)setStrokedLineFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 lineWidth:(double)a5 lineCap:(int)a6;
- (void)setStrokedPath:(CGPath *)a3 transform:(CGAffineTransform *)a4 lineWidth:(double)a5 lineCap:(int)a6 lineJoin:(int)a7 miterLimit:(double)a8;
- (void)setStrokedPath:(CGPath *)a3 transform:(CGAffineTransform *)a4 lineWidth:(double)a5 lineCap:(int)a6 lineJoin:(int)a7 miterLimit:(double)a8 dashPhase:(double)a9 dashPattern:(const double *)a10 dashCount:(int64_t)a11;
- (void)setStrokedRBPath:(RBPath)a3 transform:(CGAffineTransform *)a4 lineWidth:(double)a5 lineCap:(int)a6 lineJoin:(int)a7 miterLimit:(double)a8 dashPhase:(double)a9 dashPattern:(const double *)a10 dashCount:(int64_t)a11;
- (void)setStrokedRect:(CGRect)a3 lineWidth:(double)a4;
- (void)setStrokedRoundedRect:(CGRect)a3 cornerRadii:(id)a4 cornerStyle:(int)a5 lineWidth:(double)a6;
- (void)setStrokedRoundedRect:(CGRect)a3 cornerRadius:(double)a4 cornerStyle:(int)a5 lineWidth:(double)a6;
@end

@implementation RBShape

- (id).cxx_construct
{
  self->_data.type = 0;
  RB::Heap::Heap(&self->_heap, self->_heap._buffer, 256, 0);
  return self;
}

- (uint64_t)shapeData
{
  if (a1)
  {
    return a1 + 16;
  }

  else
  {
    return 0;
  }
}

- (CGRect)boundingRect
{
  type = self->_data.type;
  v7 = 0;
  if (type <= 2)
  {
    if (type == 1)
    {
      v14 = xmmword_195E42760;
      v15 = xmmword_195E42770;
      v16 = 0;
      v17 = 0;
      *&v8 = RB::Coverage::Primitive::bounds(&self->_data.data[12], &v14, xmmword_195E42760, xmmword_195E42770, v2, v3, v4, v5);
    }

    else
    {
      v8 = 0.0;
      if (type == 2)
      {
        v14 = xmmword_195E42760;
        v15 = xmmword_195E42770;
        v16 = 0;
        v17 = 0;
        v18.var0 = &self->_data.data[12];
        v18.var1 = &v14;
        v8 = RB::Coverage::Path::bounds(v18);
      }
    }
  }

  else if (type == 3)
  {
    v14 = xmmword_195E42760;
    v15 = xmmword_195E42770;
    v16 = 0;
    v17 = 0;
    *&v8 = RB::Coverage::Stroke<RB::Coverage::StrokeablePath>::bounds(&self->_data.data[12], &v14);
  }

  else if (type == 4)
  {
    v14 = xmmword_195E42760;
    v15 = xmmword_195E42770;
    v16 = 0;
    v17 = 0;
    v8 = RB::Coverage::Glyphs::bounds(&self->_data.data[12], &v14, 0);
  }

  else
  {
    v8 = 0.0;
    if (type == 5)
    {
      v14 = xmmword_195E42760;
      v15 = xmmword_195E42770;
      v16 = 0;
      v17 = 0;
      *&v8 = RB::Coverage::Stroke<RBStrokeRef>::bounds(&self->_data.data[12], &v14);
    }
  }

  v9 = *(&v8 + 1);
  v10 = *&v7;
  v11 = *(&v7 + 1);
  v12 = *&v8;
  v13 = v9;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)setEOFill:(BOOL)a3
{
  if (self->_eoFill != a3)
  {
    self->_eoFill = a3;
    if (self->_data.type == 2)
    {
      self->_data.data[40] = a3;
    }
  }
}

- (void)setRenderingMode:(unsigned int)a3
{
  if (self->_renderingMode != a3)
  {
    self->_renderingMode = a3;
    RBShapeData::set_rendering_mode(&self->_data, a3);
  }
}

- (void)setAntialiased:(BOOL)a3
{
  v3 = !a3;
  if (self->_renderingMode != !a3)
  {
    self->_renderingMode = v3;
    RBShapeData::set_rendering_mode(&self->_data, v3);
  }
}

- (void)setRenderingModeArgument:(double)a3
{
  if (self->_renderingModeArgument != a3)
  {
    type = self->_data.type;
    p_data = &self->_data;
    v4 = type;
    *&p_data[4].data[44] = a3;
    if (type == 1)
    {
      v6 = 56;
    }

    else if (v4 == 4)
    {
      v6 = 64;
    }

    else
    {
      if (v4 != 2)
      {
        return;
      }

      v6 = 40;
    }

    v7 = a3;
    *(&p_data->type + v6) = v7;
  }
}

- (void)_setRect:(float64_t)a3
{
  v13.f64[0] = a2;
  v13.f64[1] = a3;
  v14.f64[0] = a4;
  v14.f64[1] = a5;
  if (a1)
  {
    if (CGRectIsInfinite(*&a2))
    {
      [RBShape _setRect:a1];
    }

    else if (RB::Rect::representable_cgrect(&v13, v6))
    {
      [(RBShape *)a1 _setRect:&v14];
    }

    else
    {
      Rect = RBPathMakeRect(0, v13.f64[0], v13.f64[1], v14.f64[0], v14.f64[1]);
      v9 = v8;
      v10[0] = xmmword_195E42760;
      v10[1] = xmmword_195E42770;
      v11 = 0;
      v12 = 0;
      [(RBShape *)a1 _setRBPath:v8 transform:v10];
      RBPathRelease(Rect, v9);
    }
  }
}

- (unint64_t)_setRBPath:(uint64_t)a3 transform:(float64x2_t *)a4
{
  if (result)
  {
    v7 = result;
    v8 = a4[1];
    v9 = a4[2];
    v10 = vandq_s8(vandq_s8(vceqq_f64(v8, xmmword_195E42770), vceqq_f64(*a4, xmmword_195E42760)), vceqzq_f64(v9));
    v11 = vandq_s8(vdupq_laneq_s64(v10, 1), v10).u64[0];
    v12 = v11;
    v13 = (result + 16);
    if (*(result + 16) != 2 || *(result + 32) != a2 || *(result + 40) != a3 || (v21 = *(result + 48), v21 != (a4 & ~v11)) && ((v11 & 0x8000000000000000) != 0 || !v21 || (v22 = vandq_s8(vandq_s8(vceqq_f64(v21[1], v8), vceqq_f64(*v21, *a4)), vceqq_f64(v21[2], v9)), (vandq_s8(vdupq_laneq_s64(v22, 1), v22).u64[0] & 0x8000000000000000) == 0)))
    {
      RB::Heap::reset((result + 128), (result + 168), 256);
      v14 = *(v7 + 424);
      v15 = *(v7 + 428);
      RBShapeData::apply<RB::DestroyAny>(v13);
      *(v7 + 16) = 0;
      v16 = *(v7 + 432);
      *(v7 + 32) = RBPathRetain(a2, a3);
      *(v7 + 40) = v17;
      if ((v12 & 0x8000000000000000) != 0)
      {
        result = 0;
      }

      else
      {
        result = (*(v7 + 144) + 15) & 0xFFFFFFFFFFFFFFF0;
        if (result + 48 > *(v7 + 152))
        {
          result = RB::Heap::alloc_slow((v7 + 128), 0x30uLL, 15);
        }

        else
        {
          *(v7 + 144) = result + 48;
        }

        v18 = *a4;
        v19 = a4[2];
        *(result + 16) = a4[1];
        *(result + 32) = v19;
        *result = v18;
      }

      v20 = v16;
      *(v7 + 48) = result;
      *(v7 + 56) = v20;
      *(v7 + 60) = v14;
      *(v7 + 61) = v15;
      *(v7 + 16) = 2;
    }
  }

  return result;
}

- (void)setStrokedRect:(CGRect)a3 lineWidth:(double)a4
{
  v19.f64[0] = a3.origin.x;
  v19.f64[1] = a3.origin.y;
  v20.f64[0] = a3.size.width;
  v20.f64[1] = a3.size.height;
  if (a4 <= 0.0)
  {

    [(RBShape *)self _setEmpty];
  }

  else
  {
    if (a3.size.width >= a3.size.height)
    {
      width = a3.size.width;
    }

    else
    {
      width = a3.size.height;
    }

    if (width <= a4)
    {
      v22 = CGRectInset(a3, a4 * -0.5, a4 * -0.5);

      [(RBShape *)self _setRect:v22.origin.y, v22.size.width, v22.size.height];
    }

    else if (RB::Rect::representable_cgrect(&v19, a2))
    {
      v7 = vcvt_f32_f64(v19);
      v8 = vcvt_f32_f64(v20);
      renderingMode = self->_renderingMode;
      RBShapeData::apply<RB::DestroyAny>(&self->_data.type);
      v10 = a4;
      renderingModeArgument = self->_renderingModeArgument;
      *&self->_data.data[12] = v7;
      *&self->_data.data[20] = v8;
      *&self->_data.data[28] = 0;
      *&self->_data.data[36] = 0;
      *&self->_data.data[44] = 1065353216;
      *&self->_data.data[48] = v10;
      *&self->_data.data[52] = renderingModeArgument;
      self->_data.data[56] = 2;
      self->_data.data[57] = renderingMode;
      self->_data.data[58] &= 0xF8u;
      self->_data.type = 1;
    }

    else
    {
      Rect = RBPathMakeRect(0, v19.f64[0], v19.f64[1], v20.f64[0], v20.f64[1]);
      v16[0] = xmmword_195E42760;
      v16[1] = xmmword_195E42770;
      v17 = 0;
      v18 = 0;
      v13 = self;
      v15 = v14;
      [(RBShape *)v13 _setStrokedRBPath:v14 transform:v16 lineWidth:0 lineCap:kCGLineJoinMiter lineJoin:0 miterLimit:0 dashPhase:a4 dashPattern:10.0 dashCount:0.0];
      RBPathRelease(Rect, v15);
    }
  }
}

- (void)_setStrokedRBPath:(uint64_t)a3 transform:(float64x2_t *)a4 lineWidth:(unsigned int)a5 lineCap:(CGLineJoin)a6 lineJoin:(double *)a7 miterLimit:(uint64_t)a8 dashPhase:(double)a9 dashPattern:(double)a10 dashCount:(double)a11
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  if (a9 <= 0.0)
  {
    [RBShape _setStrokedRBPath:a1 transform:? lineWidth:? lineCap:? lineJoin:? miterLimit:? dashPhase:? dashPattern:? dashCount:?];
    return;
  }

  v51 = rb_line_cap(a5);
  v21 = rb_line_join(a6);
  v23 = v21;
  v24 = a8 << (a8 & 1);
  v25 = v24 < 0;
  if (v24 >= 0)
  {
    v26 = a8 << (a8 & 1);
  }

  else
  {
    v26 = -v24;
  }

  if (v24 >= 0)
  {
    v27 = 4 * v26;
  }

  else
  {
    v27 = -4 * v26;
  }

  if (!(4 * v26))
  {
    v25 = 0;
  }

  if (v26 >> 62 || v25)
  {
    if (v24)
    {
      return;
    }

    v38 = 0;
    v39 = 0;
    v37 = 0;
LABEL_32:
    if (v23)
    {
      v41 = 1;
    }

    else
    {
      v41 = a10 > 0.0;
    }

    if (!v41)
    {
      LOBYTE(v23) = 2;
    }

    v42 = vandq_s8(vandq_s8(vceqq_f64(a4[1], xmmword_195E42770), vceqq_f64(*a4, xmmword_195E42760)), vceqzq_f64(a4[2]));
    if (vandq_s8(vdupq_laneq_s64(v42, 1), v42).i64[0] < 0)
    {
      a4 = 0;
    }

    RB::Heap::reset(&a1[16], &a1[21], 256);
    v43 = RBPathRetain(a2, a3);
    v44 = a9;
    v45 = a11;
    v52 = v43;
    v53 = v46;
    v54 = a4;
    v55 = v44;
    v56 = v45;
    v57 = v37;
    v58 = v39;
    v47 = rb_clip_mode(a1[53].u8[4]);
    RBShapeData::apply<RB::DestroyAny>(&a1[2]);
    a1[2].i32[0] = 0;
    a1[4] = &unk_1F0A38388;
    RB::Coverage::StrokeablePath::StrokeablePath(&a1[5], &v52, &a1[16]);
    a1[11] = 0x100000001000000;
    a1[12] = vneg_f32(0x80000000800000);
    v48 = a10;
    a1[13].i8[0] = 0;
    a1[13].i8[1] = v51;
    a1[13].i8[2] = v23;
    a1[13].i8[3] = 15;
    a1[13].i8[4] = v47;
    a1[14].f32[0] = v48;
    a1[2].i32[0] = 3;
    RBPathRelease(v52, v53);
    if (v38)
    {
      goto LABEL_40;
    }

    return;
  }

  v50 = v27 > 0x1000;
  if (v27 > 0x1000)
  {
    v39 = malloc_type_malloc(v27, 0x100004052888210uLL);
    if (!v24)
    {
LABEL_30:
      v37 = 0;
LABEL_31:
      v38 = v50;
      goto LABEL_32;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v21, v22);
    v39 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v39, v27);
    if (!v24)
    {
      goto LABEL_30;
    }
  }

  if (v39)
  {
    if (a8)
    {
      v28 = 8 * a8;
      v29 = 8 * a8;
      v30 = v39;
      v31 = a7;
      do
      {
        v32 = *v31++;
        v33 = v32;
        *v30++ = v33;
        v29 -= 8;
      }

      while (v29);
      if (v24 != a8)
      {
        v34 = &v39[4 * a8];
        do
        {
          v35 = *a7++;
          v36 = v35;
          *v34++ = v36;
          v28 -= 8;
        }

        while (v28);
      }
    }

    if (RB::Stroke::Dasher::prepare_pattern(a8 << (a8 & 1), v39, v40))
    {
      v37 = a8 << (a8 & 1);
    }

    else
    {
      v37 = 0;
    }

    goto LABEL_31;
  }

  if (v27 > 0x1000)
  {
    v39 = 0;
LABEL_40:
    free(v39);
  }
}

- (void)_setRoundedRect:(double)a3 cornerSize:(float64_t)a4 cornerStyle:(double)a5
{
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  if (a1)
  {
    if (CGRectIsInfinite(*&a3))
    {
      [RBShape _setRect:a1];
    }

    else
    {
      v13 = RB::Rect::representable_cgrect(&v22, v12);
      v14.f64[0] = v22;
      v15.f64[0] = v24;
      if (v13)
      {
        set_rounded_rect(a1, a2, v14, v23, v15, v25, a7, a8, 0.0);
      }

      else
      {
        RoundedRect = RBPathMakeRoundedRect(v22, v23, v24, v25, a7, a8, a2, 0);
        v18 = v17;
        v19[0] = xmmword_195E42760;
        v19[1] = xmmword_195E42770;
        v20 = 0;
        v21 = 0;
        [(RBShape *)a1 _setRBPath:v17 transform:v19];
        RBPathRelease(RoundedRect, v18);
      }
    }
  }
}

- (void)setRoundedRect:(CGRect)a3 cornerRadii:(id)a4 cornerStyle:(int)a5
{
  v5 = *&a5;
  var3 = a4.var3;
  var2 = a4.var2;
  var1 = a4.var1;
  var0 = a4.var0;
  v18 = a3;
  if (CGRectIsInfinite(a3))
  {

    [(RBShape *)self _setInfinite];
  }

  else if (RB::Rect::representable_cgrect(&v18, v11))
  {
    set_rounded_rect(self, v5, v18.origin.x, v18.origin.y, v18.size.width, v18.size.height, var0, var1, var2, var3, 0.0);
  }

  else
  {
    UnevenRoundedRect = RBPathMakeUnevenRoundedRect(v18.origin.x, v18.origin.y, v18.size.width, v18.size.height, var0, var1, var2, var3, v5, 0);
    v14 = v13;
    v15[0] = xmmword_195E42760;
    v15[1] = xmmword_195E42770;
    v16 = 0;
    v17 = 0;
    [(RBShape *)self _setRBPath:v13 transform:v15];
    RBPathRelease(UnevenRoundedRect, v14);
  }
}

- (void)setStrokedRoundedRect:(CGRect)a3 cornerRadius:(double)a4 cornerStyle:(int)a5 lineWidth:(double)a6
{
  v20 = a3;
  if (a6 <= 0.0)
  {
    goto LABEL_6;
  }

  v8 = *&a5;
  if (!CGRectIsInfinite(a3))
  {
    v11 = RB::Rect::representable_cgrect(&v20, v10);
    v12.f64[0] = v20.origin.x;
    v13.f64[0] = v20.size.width;
    if (v11)
    {
      set_rounded_rect(self, v8, v12, v20.origin.y, v13, v20.size.height, a4, a4, a6);
    }

    else
    {
      RoundedRect = RBPathMakeRoundedRect(v20.origin.x, v20.origin.y, v20.size.width, v20.size.height, a4, a4, v8, 0);
      v16 = v15;
      v17[0] = xmmword_195E42760;
      v17[1] = xmmword_195E42770;
      v18 = 0;
      v19 = 0;
      [(RBShape *)self _setStrokedRBPath:v15 transform:v17 lineWidth:0 lineCap:kCGLineJoinMiter lineJoin:0 miterLimit:0 dashPhase:a6 dashPattern:10.0 dashCount:0.0];
      RBPathRelease(RoundedRect, v16);
    }

    return;
  }

  if (a6 == INFINITY)
  {

    [(RBShape *)self _setInfinite];
  }

  else
  {
LABEL_6:

    [(RBShape *)self _setEmpty];
  }
}

- (void)setStrokedRoundedRect:(CGRect)a3 cornerRadii:(id)a4 cornerStyle:(int)a5 lineWidth:(double)a6
{
  v19 = a3;
  if (a6 <= 0.0)
  {
    goto LABEL_6;
  }

  v7 = *&a5;
  var3 = a4.var3;
  var2 = a4.var2;
  var1 = a4.var1;
  var0 = a4.var0;
  if (!CGRectIsInfinite(a3))
  {
    if (RB::Rect::representable_cgrect(&v19, v12))
    {
      set_rounded_rect(self, v7, v19.origin.x, v19.origin.y, v19.size.width, v19.size.height, var0, var1, var2, var3, a6);
    }

    else
    {
      UnevenRoundedRect = RBPathMakeUnevenRoundedRect(v19.origin.x, v19.origin.y, v19.size.width, v19.size.height, var0, var1, var2, var3, v7, 0);
      v15 = v14;
      v16[0] = xmmword_195E42760;
      v16[1] = xmmword_195E42770;
      v17 = 0;
      v18 = 0;
      [(RBShape *)self _setStrokedRBPath:v14 transform:v16 lineWidth:0 lineCap:kCGLineJoinMiter lineJoin:0 miterLimit:0 dashPhase:a6 dashPattern:10.0 dashCount:0.0];
      RBPathRelease(UnevenRoundedRect, v15);
    }

    return;
  }

  if (a6 == INFINITY)
  {

    [(RBShape *)self _setInfinite];
  }

  else
  {
LABEL_6:

    [(RBShape *)self _setEmpty];
  }
}

- (void)setEllipseInRect:(CGRect)a3
{
  v19 = a3;
  if (RB::Rect::representable_cgrect(&v19, a2))
  {
    v4 = v19.size.width / v19.size.height;
    v5 = 1.0 / (v19.size.width / v19.size.height);
    v19.origin.x = v5 * v19.origin.x;
    v19.size.width = v5 * v19.size.width;
    v6 = vcvt_f32_f64(v19.origin);
    v7 = vcvt_f32_f64(v19.size);
    v8 = v19.size.height * 0.5;
    *&v8 = v19.size.height * 0.5;
    v15 = vdupq_lane_s32(*&v8, 0);
    renderingMode = self->_renderingMode;
    RBShapeData::apply<RB::DestroyAny>(&self->_data.type);
    v10 = v4;
    renderingModeArgument = self->_renderingModeArgument;
    *&self->_data.data[12] = v6;
    *&self->_data.data[20] = v7;
    *&self->_data.data[28] = v15;
    *&self->_data.data[44] = v10;
    *&self->_data.data[48] = 0;
    *&self->_data.data[52] = renderingModeArgument;
    self->_data.data[56] = 5;
    self->_data.data[57] = renderingMode;
    self->_data.data[58] &= 0xF8u;
    self->_data.type = 1;
  }

  else
  {
    Ellipse = RBPathMakeEllipse(0, v19.origin.x, v19.origin.y, v19.size.width, v19.size.height);
    v14 = v13;
    v16[0] = xmmword_195E42760;
    v16[1] = xmmword_195E42770;
    v17 = 0;
    v18 = 0;
    [(RBShape *)self _setRBPath:v13 transform:v16];
    RBPathRelease(Ellipse, v14);
  }
}

- (void)setStrokedCircleAtPoint:(CGPoint)a3 radius:(double)a4 lineWidth:(double)a5
{
  if (a5 <= 0.0)
  {

    [(RBShape *)self _setEmpty];
  }

  else
  {
    v7 = a5 * 0.5;
    if (v7 >= a4)
    {
      v16 = v7 + a4;

      [(RBShape *)self _setCircleAtPoint:a3 radius:a3.y, v16];
    }

    else
    {
      y = a3.y;
      v9 = vcvt_f32_f64(vsubq_f64(a3, vdupq_lane_s64(*&a4, 0)));
      v10 = a4 + a4;
      *&v10 = a4 + a4;
      v11 = vdup_lane_s32(*&v10, 0);
      renderingMode = self->_renderingMode;
      RBShapeData::apply<RB::DestroyAny>(&self->_data.type);
      v13.i32[1] = HIDWORD(a4);
      *v13.i32 = a4;
      v14 = a5;
      renderingModeArgument = self->_renderingModeArgument;
      *&self->_data.data[12] = v9;
      *&self->_data.data[20] = v11;
      *&self->_data.data[28] = vdupq_lane_s32(v13, 0);
      *&self->_data.data[44] = 1065353216;
      *&self->_data.data[48] = v14;
      *&self->_data.data[52] = renderingModeArgument;
      self->_data.data[56] = 5;
      self->_data.data[57] = renderingMode;
      self->_data.data[58] &= 0xF8u;
      self->_data.type = 1;
    }
  }
}

- (void)setStrokedLineFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 lineWidth:(double)a5 lineCap:(int)a6
{
  if (a5 <= 0.0)
  {

    [(RBShape *)self _setEmpty];
  }

  else
  {
    y = a4.y;
    x = a4.x;
    if (a6 == 1)
    {
      v11 = 7;
    }

    else
    {
      v11 = 8;
    }

    v19 = a3.x;
    v20 = a3.y;
    v12 = rb_clip_mode(LOBYTE(self->_renderingMode));
    v13.f64[0] = v19;
    v13.f64[1] = v20;
    v14 = vcvt_f32_f64(v13);
    *&v15 = x - v19;
    *v13.f64 = y - v20;
    HIDWORD(v15) = LODWORD(v13.f64[0]);
    v21 = v15;
    RBShapeData::apply<RB::DestroyAny>(&self->_data.type);
    v16 = a5;
    renderingModeArgument = self->_renderingModeArgument;
    *&self->_data.data[12] = v14;
    *&self->_data.data[20] = v21;
    *&self->_data.data[36] = 0;
    *&self->_data.data[44] = 1065353216;
    *&self->_data.data[48] = v16;
    *&self->_data.data[52] = renderingModeArgument;
    if (a6)
    {
      v18 = v11;
    }

    else
    {
      v18 = 6;
    }

    self->_data.data[56] = v18;
    self->_data.data[57] = v12;
    self->_data.data[58] &= 0xF8u;
    self->_data.type = 1;
  }
}

- (void)setPath:(CGPath *)a3
{
  v3[0] = xmmword_195E42760;
  v3[1] = xmmword_195E42770;
  v4 = 0;
  v5 = 0;
  [(RBShape *)self _setRBPath:a3 transform:&RBPathCGPathCallbacks, v3];
}

- (void)setPath:(CGPath *)a3 transform:(CGAffineTransform *)a4
{
  v4 = *&a4->c;
  v5 = *&a4->tx;
  v6[0] = *&a4->a;
  v6[1] = v4;
  v6[2] = v5;
  [(RBShape *)self _setRBPath:a3 transform:&RBPathCGPathCallbacks, v6];
}

- (void)setRBPath:(RBPath)a3 transform:(CGAffineTransform *)a4
{
  v4 = *&a4->c;
  v5 = *&a4->tx;
  v6[0] = *&a4->a;
  v6[1] = v4;
  v6[2] = v5;
  [(RBShape *)self _setRBPath:a3.var1 transform:v6];
}

- (void)setStrokedPath:(CGPath *)a3 transform:(CGAffineTransform *)a4 lineWidth:(double)a5 lineCap:(int)a6 lineJoin:(int)a7 miterLimit:(double)a8 dashPhase:(double)a9 dashPattern:(const double *)a10 dashCount:(int64_t)a11
{
  v11 = *&a4->c;
  v12 = *&a4->tx;
  v13[0] = *&a4->a;
  v13[1] = v11;
  v13[2] = v12;
  [(RBShape *)self _setStrokedRBPath:a3 transform:&RBPathCGPathCallbacks lineWidth:v13 lineCap:a6 lineJoin:a7 miterLimit:a10 dashPhase:a11 dashPattern:a5 dashCount:a8, a9];
}

- (void)setStrokedPath:(CGPath *)a3 transform:(CGAffineTransform *)a4 lineWidth:(double)a5 lineCap:(int)a6 lineJoin:(int)a7 miterLimit:(double)a8
{
  v8 = *&a4->c;
  v9 = *&a4->tx;
  v10[0] = *&a4->a;
  v10[1] = v8;
  v10[2] = v9;
  [(RBShape *)self _setStrokedRBPath:a3 transform:&RBPathCGPathCallbacks lineWidth:v10 lineCap:a6 lineJoin:a7 miterLimit:0 dashPhase:0 dashPattern:a5 dashCount:a8, 0.0];
}

- (void)setStrokedRBPath:(RBPath)a3 transform:(CGAffineTransform *)a4 lineWidth:(double)a5 lineCap:(int)a6 lineJoin:(int)a7 miterLimit:(double)a8 dashPhase:(double)a9 dashPattern:(const double *)a10 dashCount:(int64_t)a11
{
  v11 = *&a4->c;
  v12 = *&a4->tx;
  v13[0] = *&a4->a;
  v13[1] = v11;
  v13[2] = v12;
  [(RBShape *)self _setStrokedRBPath:a3.var1 transform:v13 lineWidth:a6 lineCap:a7 lineJoin:a10 miterLimit:a11 dashPhase:a5 dashPattern:a8 dashCount:a9];
}

- (void)_setGlyphs:(uint64_t)a3 positions:(unint64_t)a4 count:(const void *)a5 font:(int)a6 renderingStyle:(char)a7 dilation:(__n128)a8 shouldDrawBitmapRuns:(__n128)a9
{
  v24 = a9;
  v25 = *MEMORY[0x1E69E9840];
  if (a1 && !HIDWORD(a4))
  {
    v23 = a8;
    if (a4 < 0x201)
    {
      MEMORY[0x1EEE9AC00](a1, a2);
      v16 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v16, v17);
      if (!a4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v16 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL);
      if (!v16)
      {
LABEL_10:
        free(v16);
        return;
      }
    }

    v18 = 0;
    do
    {
      *&v16[8 * v18] = vcvt_f32_f64(*(a3 + 16 * v18));
      ++v18;
    }

    while (a4 != v18);
LABEL_9:
    RB::Heap::reset((a1 + 128), (a1 + 168), 256);
    *&v19.f64[0] = v23.n128_u64[0];
    *&v19.f64[1] = v24.n128_u64[0];
    v20 = COERCE_DOUBLE(vcvt_f32_f64(v19));
    v21 = *(a1 + 428);
    RBShapeData::apply<RB::DestroyAny>((a1 + 16));
    *(a1 + 16) = 0;
    v22 = *(a1 + 432);
    RB::Coverage::Glyphs::Glyphs(a1 + 32, (a1 + 128), a5, a4, a2, v16, a6, v21, v20, v22, a7);
    *(a1 + 16) = 4;
    if (a4 < 0x201)
    {
      return;
    }

    goto LABEL_10;
  }
}

- (void)setGlyphs:(const unsigned __int16 *)a3 positions:(const CGPoint *)a4 count:(unint64_t)a5 font:(CGFont *)a6 renderingStyle:(unsigned int)a7
{
  v7.n128_u64[0] = *MEMORY[0x1E695F060];
  v8.n128_u64[0] = *(MEMORY[0x1E695F060] + 8);
  [(RBShape *)self _setGlyphs:a3 positions:a4 count:a5 font:a6 renderingStyle:a7 dilation:0 shouldDrawBitmapRuns:v7, v8];
}

- (void)setCustomGlyphDilation:(CGSize)a3
{
  if (self->_data.type == 4)
  {
    height = a3.height;
    *&self->_data.data[36] = vcvt_f32_f64(a3);
  }
}

- (void)setShouldDrawBitmapRuns:(BOOL)a3
{
  if (self->_data.type == 4)
  {
    self->_data.data[65] = self->_data.data[65] & 0xFE | a3;
  }
}

- (void)setStroke:(id)a3
{
  v5 = [a3 strokeType];
  v6 = v5;
  if (v5)
  {
    if (v5 != 1)
    {
      abort();
    }

    v7 = rb_alpha_blend_mode([a3 blendMode]);
    v8 = 0;
    v9 = 1;
    v10 = 10.0;
  }

  else
  {
    v8 = rb_line_cap([a3 lineCap]);
    v11 = rb_line_join([a3 lineJoin]);
    [a3 miterLimit];
    v10 = v12;
    if (v12 <= 0.0 && v11 == 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v11;
    }

    v7 = 15;
  }

  RB::Heap::reset(&self->_heap, self->_heap._buffer, 256);
  v14 = a3;
  v15 = rb_clip_mode(LOBYTE(self->_renderingMode));
  RBShapeData::apply<RB::DestroyAny>(&self->_data.type);
  self->_data.type = 0;
  *&self->_data.data[12] = &unk_1F0A383A8;
  *&self->_data.data[20] = v14;
  *&self->_data.data[28] = 0x100000001000000;
  *&self->_data.data[36] = vneg_f32(0x80000000800000);
  self->_data.data[44] = v6;
  self->_data.data[45] = v8;
  self->_data.data[46] = v9;
  self->_data.data[47] = v7;
  self->_data.data[48] = v15;
  *&self->_data.data[52] = v10;
  self->_data.type = 5;
}

- (void)_xmlAttributes:(double)a3
{
  if (a1)
  {
    switch(a1[1].i32[0])
    {
      case 1:
        RB::Coverage::Primitive::attributes(a1 + 2, a2, a3, a4, a5);
        break;
      case 2:
        RB::Coverage::Path::attributes(&a1[2], a2);
      case 3:
        RB::Coverage::StrokeablePath::attributes(&a1[2].i64[1]);
      case 4:
        RB::Coverage::Glyphs::attributes(&a1[2], a2);
      case 5:
        RBStrokeRef::attributes(&a1[2].i64[1]);
        break;
      default:
        return;
    }
  }
}

- (void)_setInfinite
{
  if (a1)
  {
    OUTLINED_FUNCTION_3(a1);
    OUTLINED_FUNCTION_2_0();
    *(v1 + 64) = 1065353216;
    *(v1 + 72) = 0;
    *(v1 + 76) = 257;
    OUTLINED_FUNCTION_0_0();
  }
}

- (void)_setEmpty
{
  if (a1)
  {
    OUTLINED_FUNCTION_3(a1);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0_0();
  }
}

- (void)_setCircleAtPoint:(float64_t)a3 radius:(double)a4
{
  if (a1)
  {
    if (a4 <= 0.0)
    {
      RBShapeData::apply<RB::DestroyAny>((a1 + 16));
      OUTLINED_FUNCTION_1_0();
    }

    else
    {
      a2.f64[1] = a3;
      v5 = vcvt_f32_f64(vsubq_f64(a2, vdupq_lane_s64(*&a4, 0)));
      v6 = a4 + a4;
      *&v6 = a4 + a4;
      v7 = vdup_lane_s32(*&v6, 0);
      v8 = *(a1 + 428);
      RBShapeData::apply<RB::DestroyAny>((a1 + 16));
      v9.i32[1] = HIDWORD(a4);
      *v9.i32 = a4;
      v10 = *(a1 + 432);
      *(a1 + 32) = v5;
      *(a1 + 40) = v7;
      *(a1 + 48) = vdupq_lane_s32(v9, 0);
      *(a1 + 64) = 1065353216;
      *(a1 + 72) = v10;
      *(a1 + 76) = 5;
      *(a1 + 77) = v8;
    }

    OUTLINED_FUNCTION_0_0();
  }
}

- (void)setGlyphs:(uint64_t)a3 positions:(unint64_t)a4 count:(const void *)a5 font:(int)a6 renderingStyle:(char)a7 dilation:(__n128)a8 shouldDrawBitmapRuns:(__n128)a9
{
  if (a1)
  {
    [(RBShape *)a1 _setGlyphs:a2 positions:a3 count:a4 font:a5 renderingStyle:a6 dilation:a7 shouldDrawBitmapRuns:a8, a9];
  }
}

- (void)_setRect:(float64x2_t *)a3 .cold.1(uint64_t a1, float64x2_t *a2, float64x2_t *a3)
{
  v4 = vcvt_f32_f64(*a2);
  v5 = vcvt_f32_f64(*a3);
  v6 = *(a1 + 428);
  RBShapeData::apply<RB::DestroyAny>((a1 + 16));
  v7 = *(a1 + 432);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = v7;
  *(a1 + 76) = 2;
  *(a1 + 77) = v6;
  OUTLINED_FUNCTION_0_0();
}

- (void)_setRect:(uint64_t)a1 .cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_2_0();
  *(v1 + 64) = 1065353216;
  *(v1 + 72) = 0;
  *(v1 + 76) = 257;
  OUTLINED_FUNCTION_0_0();
}

- (void)_setStrokedRBPath:(uint64_t)a1 transform:lineWidth:lineCap:lineJoin:miterLimit:dashPhase:dashPattern:dashCount:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
}

@end