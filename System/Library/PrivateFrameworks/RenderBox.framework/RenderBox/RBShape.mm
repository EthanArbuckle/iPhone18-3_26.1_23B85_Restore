@interface RBShape
- (CGRect)boundingRect;
- (id).cxx_construct;
- (uint64_t)shapeData;
- (unint64_t)_setRBPath:(uint64_t)path transform:(float64x2_t *)transform;
- (void)_setCircleAtPoint:(float64_t)point radius:(double)radius;
- (void)_setEmpty;
- (void)_setGlyphs:(uint64_t)glyphs positions:(unint64_t)positions count:(const void *)count font:(int)font renderingStyle:(char)style dilation:(__n128)dilation shouldDrawBitmapRuns:(__n128)runs;
- (void)_setInfinite;
- (void)_setRect:(float64_t)rect;
- (void)_setRoundedRect:(double)rect cornerSize:(float64_t)size cornerStyle:(double)style;
- (void)_setStrokedRBPath:(uint64_t)path transform:(float64x2_t *)transform lineWidth:(unsigned int)width lineCap:(CGLineJoin)cap lineJoin:(double *)join miterLimit:(uint64_t)limit dashPhase:(double)phase dashPattern:(double)self0 dashCount:(double)self1;
- (void)_xmlAttributes:(double)attributes;
- (void)setAntialiased:(BOOL)antialiased;
- (void)setCustomGlyphDilation:(CGSize)dilation;
- (void)setEOFill:(BOOL)fill;
- (void)setEllipseInRect:(CGRect)rect;
- (void)setGlyphs:(const unsigned __int16 *)glyphs positions:(const CGPoint *)positions count:(unint64_t)count font:(CGFont *)font renderingStyle:(unsigned int)style;
- (void)setGlyphs:(uint64_t)glyphs positions:(unint64_t)positions count:(const void *)count font:(int)font renderingStyle:(char)style dilation:(__n128)dilation shouldDrawBitmapRuns:(__n128)runs;
- (void)setPath:(CGPath *)path;
- (void)setPath:(CGPath *)path transform:(CGAffineTransform *)transform;
- (void)setRBPath:(RBPath)path transform:(CGAffineTransform *)transform;
- (void)setRenderingMode:(unsigned int)mode;
- (void)setRenderingModeArgument:(double)argument;
- (void)setRoundedRect:(CGRect)rect cornerRadii:(id)radii cornerStyle:(int)style;
- (void)setShouldDrawBitmapRuns:(BOOL)runs;
- (void)setStroke:(id)stroke;
- (void)setStrokedCircleAtPoint:(CGPoint)point radius:(double)radius lineWidth:(double)width;
- (void)setStrokedLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint lineWidth:(double)width lineCap:(int)cap;
- (void)setStrokedPath:(CGPath *)path transform:(CGAffineTransform *)transform lineWidth:(double)width lineCap:(int)cap lineJoin:(int)join miterLimit:(double)limit;
- (void)setStrokedPath:(CGPath *)path transform:(CGAffineTransform *)transform lineWidth:(double)width lineCap:(int)cap lineJoin:(int)join miterLimit:(double)limit dashPhase:(double)phase dashPattern:(const double *)self0 dashCount:(int64_t)self1;
- (void)setStrokedRBPath:(RBPath)path transform:(CGAffineTransform *)transform lineWidth:(double)width lineCap:(int)cap lineJoin:(int)join miterLimit:(double)limit dashPhase:(double)phase dashPattern:(const double *)self0 dashCount:(int64_t)self1;
- (void)setStrokedRect:(CGRect)rect lineWidth:(double)width;
- (void)setStrokedRoundedRect:(CGRect)rect cornerRadii:(id)radii cornerStyle:(int)style lineWidth:(double)width;
- (void)setStrokedRoundedRect:(CGRect)rect cornerRadius:(double)radius cornerStyle:(int)style lineWidth:(double)width;
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
  if (self)
  {
    return self + 16;
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

- (void)setEOFill:(BOOL)fill
{
  if (self->_eoFill != fill)
  {
    self->_eoFill = fill;
    if (self->_data.type == 2)
    {
      self->_data.data[40] = fill;
    }
  }
}

- (void)setRenderingMode:(unsigned int)mode
{
  if (self->_renderingMode != mode)
  {
    self->_renderingMode = mode;
    RBShapeData::set_rendering_mode(&self->_data, mode);
  }
}

- (void)setAntialiased:(BOOL)antialiased
{
  v3 = !antialiased;
  if (self->_renderingMode != !antialiased)
  {
    self->_renderingMode = v3;
    RBShapeData::set_rendering_mode(&self->_data, v3);
  }
}

- (void)setRenderingModeArgument:(double)argument
{
  if (self->_renderingModeArgument != argument)
  {
    type = self->_data.type;
    p_data = &self->_data;
    v4 = type;
    *&p_data[4].data[44] = argument;
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

    argumentCopy = argument;
    *(&p_data->type + v6) = argumentCopy;
  }
}

- (void)_setRect:(float64_t)rect
{
  v13.f64[0] = a2;
  v13.f64[1] = rect;
  v14.f64[0] = a4;
  v14.f64[1] = a5;
  if (self)
  {
    if (CGRectIsInfinite(*&a2))
    {
      [RBShape _setRect:self];
    }

    else if (RB::Rect::representable_cgrect(&v13, v6))
    {
      [(RBShape *)self _setRect:&v14];
    }

    else
    {
      Rect = RBPathMakeRect(0, v13.f64[0], v13.f64[1], v14.f64[0], v14.f64[1]);
      v9 = v8;
      v10[0] = xmmword_195E42760;
      v10[1] = xmmword_195E42770;
      v11 = 0;
      v12 = 0;
      [(RBShape *)self _setRBPath:v8 transform:v10];
      RBPathRelease(Rect, v9);
    }
  }
}

- (unint64_t)_setRBPath:(uint64_t)path transform:(float64x2_t *)transform
{
  if (result)
  {
    v7 = result;
    v8 = transform[1];
    v9 = transform[2];
    v10 = vandq_s8(vandq_s8(vceqq_f64(v8, xmmword_195E42770), vceqq_f64(*transform, xmmword_195E42760)), vceqzq_f64(v9));
    v11 = vandq_s8(vdupq_laneq_s64(v10, 1), v10).u64[0];
    v12 = v11;
    v13 = (result + 16);
    if (*(result + 16) != 2 || *(result + 32) != a2 || *(result + 40) != path || (v21 = *(result + 48), v21 != (transform & ~v11)) && ((v11 & 0x8000000000000000) != 0 || !v21 || (v22 = vandq_s8(vandq_s8(vceqq_f64(v21[1], v8), vceqq_f64(*v21, *transform)), vceqq_f64(v21[2], v9)), (vandq_s8(vdupq_laneq_s64(v22, 1), v22).u64[0] & 0x8000000000000000) == 0)))
    {
      RB::Heap::reset((result + 128), (result + 168), 256);
      v14 = *(v7 + 424);
      v15 = *(v7 + 428);
      RBShapeData::apply<RB::DestroyAny>(v13);
      *(v7 + 16) = 0;
      v16 = *(v7 + 432);
      *(v7 + 32) = RBPathRetain(a2, path);
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

        v18 = *transform;
        v19 = transform[2];
        *(result + 16) = transform[1];
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

- (void)setStrokedRect:(CGRect)rect lineWidth:(double)width
{
  v19.f64[0] = rect.origin.x;
  v19.f64[1] = rect.origin.y;
  v20.f64[0] = rect.size.width;
  v20.f64[1] = rect.size.height;
  if (width <= 0.0)
  {

    [(RBShape *)self _setEmpty];
  }

  else
  {
    if (rect.size.width >= rect.size.height)
    {
      width = rect.size.width;
    }

    else
    {
      width = rect.size.height;
    }

    if (width <= width)
    {
      v22 = CGRectInset(rect, width * -0.5, width * -0.5);

      [(RBShape *)self _setRect:v22.origin.y, v22.size.width, v22.size.height];
    }

    else if (RB::Rect::representable_cgrect(&v19, a2))
    {
      v7 = vcvt_f32_f64(v19);
      v8 = vcvt_f32_f64(v20);
      renderingMode = self->_renderingMode;
      RBShapeData::apply<RB::DestroyAny>(&self->_data.type);
      widthCopy = width;
      renderingModeArgument = self->_renderingModeArgument;
      *&self->_data.data[12] = v7;
      *&self->_data.data[20] = v8;
      *&self->_data.data[28] = 0;
      *&self->_data.data[36] = 0;
      *&self->_data.data[44] = 1065353216;
      *&self->_data.data[48] = widthCopy;
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
      selfCopy = self;
      v15 = v14;
      [(RBShape *)selfCopy _setStrokedRBPath:v14 transform:v16 lineWidth:0 lineCap:kCGLineJoinMiter lineJoin:0 miterLimit:0 dashPhase:width dashPattern:10.0 dashCount:0.0];
      RBPathRelease(Rect, v15);
    }
  }
}

- (void)_setStrokedRBPath:(uint64_t)path transform:(float64x2_t *)transform lineWidth:(unsigned int)width lineCap:(CGLineJoin)cap lineJoin:(double *)join miterLimit:(uint64_t)limit dashPhase:(double)phase dashPattern:(double)self0 dashCount:(double)self1
{
  v59 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  if (phase <= 0.0)
  {
    [RBShape _setStrokedRBPath:self transform:? lineWidth:? lineCap:? lineJoin:? miterLimit:? dashPhase:? dashPattern:? dashCount:?];
    return;
  }

  v51 = rb_line_cap(width);
  v21 = rb_line_join(cap);
  v23 = v21;
  v24 = limit << (limit & 1);
  v25 = v24 < 0;
  if (v24 >= 0)
  {
    v26 = limit << (limit & 1);
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
      v41 = pattern > 0.0;
    }

    if (!v41)
    {
      LOBYTE(v23) = 2;
    }

    v42 = vandq_s8(vandq_s8(vceqq_f64(transform[1], xmmword_195E42770), vceqq_f64(*transform, xmmword_195E42760)), vceqzq_f64(transform[2]));
    if (vandq_s8(vdupq_laneq_s64(v42, 1), v42).i64[0] < 0)
    {
      transform = 0;
    }

    RB::Heap::reset(&self[16], &self[21], 256);
    v43 = RBPathRetain(a2, path);
    phaseCopy = phase;
    countCopy = count;
    v52 = v43;
    v53 = v46;
    transformCopy = transform;
    v55 = phaseCopy;
    v56 = countCopy;
    v57 = v37;
    v58 = v39;
    v47 = rb_clip_mode(self[53].u8[4]);
    RBShapeData::apply<RB::DestroyAny>(&self[2]);
    self[2].i32[0] = 0;
    self[4] = &unk_1F0A38388;
    RB::Coverage::StrokeablePath::StrokeablePath(&self[5], &v52, &self[16]);
    self[11] = 0x100000001000000;
    self[12] = vneg_f32(0x80000000800000);
    patternCopy = pattern;
    self[13].i8[0] = 0;
    self[13].i8[1] = v51;
    self[13].i8[2] = v23;
    self[13].i8[3] = 15;
    self[13].i8[4] = v47;
    self[14].f32[0] = patternCopy;
    self[2].i32[0] = 3;
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
    if (limit)
    {
      v28 = 8 * limit;
      v29 = 8 * limit;
      v30 = v39;
      joinCopy = join;
      do
      {
        v32 = *joinCopy++;
        v33 = v32;
        *v30++ = v33;
        v29 -= 8;
      }

      while (v29);
      if (v24 != limit)
      {
        v34 = &v39[4 * limit];
        do
        {
          v35 = *join++;
          v36 = v35;
          *v34++ = v36;
          v28 -= 8;
        }

        while (v28);
      }
    }

    if (RB::Stroke::Dasher::prepare_pattern(limit << (limit & 1), v39, v40))
    {
      v37 = limit << (limit & 1);
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

- (void)_setRoundedRect:(double)rect cornerSize:(float64_t)size cornerStyle:(double)style
{
  rectCopy = rect;
  sizeCopy = size;
  styleCopy = style;
  v25 = a6;
  if (self)
  {
    if (CGRectIsInfinite(*&rect))
    {
      [RBShape _setRect:self];
    }

    else
    {
      v13 = RB::Rect::representable_cgrect(&rectCopy, v12);
      v14.f64[0] = rectCopy;
      v15.f64[0] = styleCopy;
      if (v13)
      {
        set_rounded_rect(self, a2, v14, sizeCopy, v15, v25, a7, a8, 0.0);
      }

      else
      {
        RoundedRect = RBPathMakeRoundedRect(rectCopy, sizeCopy, styleCopy, v25, a7, a8, a2, 0);
        v18 = v17;
        v19[0] = xmmword_195E42760;
        v19[1] = xmmword_195E42770;
        v20 = 0;
        v21 = 0;
        [(RBShape *)self _setRBPath:v17 transform:v19];
        RBPathRelease(RoundedRect, v18);
      }
    }
  }
}

- (void)setRoundedRect:(CGRect)rect cornerRadii:(id)radii cornerStyle:(int)style
{
  v5 = *&style;
  var3 = radii.var3;
  var2 = radii.var2;
  var1 = radii.var1;
  var0 = radii.var0;
  rectCopy = rect;
  if (CGRectIsInfinite(rect))
  {

    [(RBShape *)self _setInfinite];
  }

  else if (RB::Rect::representable_cgrect(&rectCopy, v11))
  {
    set_rounded_rect(self, v5, rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height, var0, var1, var2, var3, 0.0);
  }

  else
  {
    UnevenRoundedRect = RBPathMakeUnevenRoundedRect(rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height, var0, var1, var2, var3, v5, 0);
    v14 = v13;
    v15[0] = xmmword_195E42760;
    v15[1] = xmmword_195E42770;
    v16 = 0;
    v17 = 0;
    [(RBShape *)self _setRBPath:v13 transform:v15];
    RBPathRelease(UnevenRoundedRect, v14);
  }
}

- (void)setStrokedRoundedRect:(CGRect)rect cornerRadius:(double)radius cornerStyle:(int)style lineWidth:(double)width
{
  rectCopy = rect;
  if (width <= 0.0)
  {
    goto LABEL_6;
  }

  v8 = *&style;
  if (!CGRectIsInfinite(rect))
  {
    v11 = RB::Rect::representable_cgrect(&rectCopy, v10);
    v12.f64[0] = rectCopy.origin.x;
    v13.f64[0] = rectCopy.size.width;
    if (v11)
    {
      set_rounded_rect(self, v8, v12, rectCopy.origin.y, v13, rectCopy.size.height, radius, radius, width);
    }

    else
    {
      RoundedRect = RBPathMakeRoundedRect(rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height, radius, radius, v8, 0);
      v16 = v15;
      v17[0] = xmmword_195E42760;
      v17[1] = xmmword_195E42770;
      v18 = 0;
      v19 = 0;
      [(RBShape *)self _setStrokedRBPath:v15 transform:v17 lineWidth:0 lineCap:kCGLineJoinMiter lineJoin:0 miterLimit:0 dashPhase:width dashPattern:10.0 dashCount:0.0];
      RBPathRelease(RoundedRect, v16);
    }

    return;
  }

  if (width == INFINITY)
  {

    [(RBShape *)self _setInfinite];
  }

  else
  {
LABEL_6:

    [(RBShape *)self _setEmpty];
  }
}

- (void)setStrokedRoundedRect:(CGRect)rect cornerRadii:(id)radii cornerStyle:(int)style lineWidth:(double)width
{
  rectCopy = rect;
  if (width <= 0.0)
  {
    goto LABEL_6;
  }

  v7 = *&style;
  var3 = radii.var3;
  var2 = radii.var2;
  var1 = radii.var1;
  var0 = radii.var0;
  if (!CGRectIsInfinite(rect))
  {
    if (RB::Rect::representable_cgrect(&rectCopy, v12))
    {
      set_rounded_rect(self, v7, rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height, var0, var1, var2, var3, width);
    }

    else
    {
      UnevenRoundedRect = RBPathMakeUnevenRoundedRect(rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height, var0, var1, var2, var3, v7, 0);
      v15 = v14;
      v16[0] = xmmword_195E42760;
      v16[1] = xmmword_195E42770;
      v17 = 0;
      v18 = 0;
      [(RBShape *)self _setStrokedRBPath:v14 transform:v16 lineWidth:0 lineCap:kCGLineJoinMiter lineJoin:0 miterLimit:0 dashPhase:width dashPattern:10.0 dashCount:0.0];
      RBPathRelease(UnevenRoundedRect, v15);
    }

    return;
  }

  if (width == INFINITY)
  {

    [(RBShape *)self _setInfinite];
  }

  else
  {
LABEL_6:

    [(RBShape *)self _setEmpty];
  }
}

- (void)setEllipseInRect:(CGRect)rect
{
  rectCopy = rect;
  if (RB::Rect::representable_cgrect(&rectCopy, a2))
  {
    v4 = rectCopy.size.width / rectCopy.size.height;
    v5 = 1.0 / (rectCopy.size.width / rectCopy.size.height);
    rectCopy.origin.x = v5 * rectCopy.origin.x;
    rectCopy.size.width = v5 * rectCopy.size.width;
    v6 = vcvt_f32_f64(rectCopy.origin);
    v7 = vcvt_f32_f64(rectCopy.size);
    v8 = rectCopy.size.height * 0.5;
    *&v8 = rectCopy.size.height * 0.5;
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
    Ellipse = RBPathMakeEllipse(0, rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height);
    v14 = v13;
    v16[0] = xmmword_195E42760;
    v16[1] = xmmword_195E42770;
    v17 = 0;
    v18 = 0;
    [(RBShape *)self _setRBPath:v13 transform:v16];
    RBPathRelease(Ellipse, v14);
  }
}

- (void)setStrokedCircleAtPoint:(CGPoint)point radius:(double)radius lineWidth:(double)width
{
  if (width <= 0.0)
  {

    [(RBShape *)self _setEmpty];
  }

  else
  {
    v7 = width * 0.5;
    if (v7 >= radius)
    {
      v16 = v7 + radius;

      [(RBShape *)self _setCircleAtPoint:point radius:point.y, v16];
    }

    else
    {
      y = point.y;
      v9 = vcvt_f32_f64(vsubq_f64(point, vdupq_lane_s64(*&radius, 0)));
      v10 = radius + radius;
      *&v10 = radius + radius;
      v11 = vdup_lane_s32(*&v10, 0);
      renderingMode = self->_renderingMode;
      RBShapeData::apply<RB::DestroyAny>(&self->_data.type);
      v13.i32[1] = HIDWORD(radius);
      *v13.i32 = radius;
      widthCopy = width;
      renderingModeArgument = self->_renderingModeArgument;
      *&self->_data.data[12] = v9;
      *&self->_data.data[20] = v11;
      *&self->_data.data[28] = vdupq_lane_s32(v13, 0);
      *&self->_data.data[44] = 1065353216;
      *&self->_data.data[48] = widthCopy;
      *&self->_data.data[52] = renderingModeArgument;
      self->_data.data[56] = 5;
      self->_data.data[57] = renderingMode;
      self->_data.data[58] &= 0xF8u;
      self->_data.type = 1;
    }
  }
}

- (void)setStrokedLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint lineWidth:(double)width lineCap:(int)cap
{
  if (width <= 0.0)
  {

    [(RBShape *)self _setEmpty];
  }

  else
  {
    y = toPoint.y;
    x = toPoint.x;
    if (cap == 1)
    {
      v11 = 7;
    }

    else
    {
      v11 = 8;
    }

    v19 = point.x;
    v20 = point.y;
    v12 = rb_clip_mode(LOBYTE(self->_renderingMode));
    v13.f64[0] = v19;
    v13.f64[1] = v20;
    v14 = vcvt_f32_f64(v13);
    *&v15 = x - v19;
    *v13.f64 = y - v20;
    HIDWORD(v15) = LODWORD(v13.f64[0]);
    v21 = v15;
    RBShapeData::apply<RB::DestroyAny>(&self->_data.type);
    widthCopy = width;
    renderingModeArgument = self->_renderingModeArgument;
    *&self->_data.data[12] = v14;
    *&self->_data.data[20] = v21;
    *&self->_data.data[36] = 0;
    *&self->_data.data[44] = 1065353216;
    *&self->_data.data[48] = widthCopy;
    *&self->_data.data[52] = renderingModeArgument;
    if (cap)
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

- (void)setPath:(CGPath *)path
{
  v3[0] = xmmword_195E42760;
  v3[1] = xmmword_195E42770;
  v4 = 0;
  v5 = 0;
  [(RBShape *)self _setRBPath:path transform:&RBPathCGPathCallbacks, v3];
}

- (void)setPath:(CGPath *)path transform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v5 = *&transform->tx;
  v6[0] = *&transform->a;
  v6[1] = v4;
  v6[2] = v5;
  [(RBShape *)self _setRBPath:path transform:&RBPathCGPathCallbacks, v6];
}

- (void)setRBPath:(RBPath)path transform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v5 = *&transform->tx;
  v6[0] = *&transform->a;
  v6[1] = v4;
  v6[2] = v5;
  [(RBShape *)self _setRBPath:path.var1 transform:v6];
}

- (void)setStrokedPath:(CGPath *)path transform:(CGAffineTransform *)transform lineWidth:(double)width lineCap:(int)cap lineJoin:(int)join miterLimit:(double)limit dashPhase:(double)phase dashPattern:(const double *)self0 dashCount:(int64_t)self1
{
  v11 = *&transform->c;
  v12 = *&transform->tx;
  v13[0] = *&transform->a;
  v13[1] = v11;
  v13[2] = v12;
  [(RBShape *)self _setStrokedRBPath:path transform:&RBPathCGPathCallbacks lineWidth:v13 lineCap:cap lineJoin:join miterLimit:pattern dashPhase:count dashPattern:width dashCount:limit, phase];
}

- (void)setStrokedPath:(CGPath *)path transform:(CGAffineTransform *)transform lineWidth:(double)width lineCap:(int)cap lineJoin:(int)join miterLimit:(double)limit
{
  v8 = *&transform->c;
  v9 = *&transform->tx;
  v10[0] = *&transform->a;
  v10[1] = v8;
  v10[2] = v9;
  [(RBShape *)self _setStrokedRBPath:path transform:&RBPathCGPathCallbacks lineWidth:v10 lineCap:cap lineJoin:join miterLimit:0 dashPhase:0 dashPattern:width dashCount:limit, 0.0];
}

- (void)setStrokedRBPath:(RBPath)path transform:(CGAffineTransform *)transform lineWidth:(double)width lineCap:(int)cap lineJoin:(int)join miterLimit:(double)limit dashPhase:(double)phase dashPattern:(const double *)self0 dashCount:(int64_t)self1
{
  v11 = *&transform->c;
  v12 = *&transform->tx;
  v13[0] = *&transform->a;
  v13[1] = v11;
  v13[2] = v12;
  [(RBShape *)self _setStrokedRBPath:path.var1 transform:v13 lineWidth:cap lineCap:join lineJoin:pattern miterLimit:count dashPhase:width dashPattern:limit dashCount:phase];
}

- (void)_setGlyphs:(uint64_t)glyphs positions:(unint64_t)positions count:(const void *)count font:(int)font renderingStyle:(char)style dilation:(__n128)dilation shouldDrawBitmapRuns:(__n128)runs
{
  runsCopy = runs;
  v25 = *MEMORY[0x1E69E9840];
  if (self && !HIDWORD(positions))
  {
    dilationCopy = dilation;
    if (positions < 0x201)
    {
      MEMORY[0x1EEE9AC00](self, a2);
      v16 = &dilationCopy - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v16, v17);
      if (!positions)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v16 = malloc_type_malloc(8 * positions, 0x100004000313F17uLL);
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
      *&v16[8 * v18] = vcvt_f32_f64(*(glyphs + 16 * v18));
      ++v18;
    }

    while (positions != v18);
LABEL_9:
    RB::Heap::reset((self + 128), (self + 168), 256);
    *&v19.f64[0] = dilationCopy.n128_u64[0];
    *&v19.f64[1] = runsCopy.n128_u64[0];
    v20 = COERCE_DOUBLE(vcvt_f32_f64(v19));
    v21 = *(self + 428);
    RBShapeData::apply<RB::DestroyAny>((self + 16));
    *(self + 16) = 0;
    v22 = *(self + 432);
    RB::Coverage::Glyphs::Glyphs(self + 32, (self + 128), count, positions, a2, v16, font, v21, v20, v22, style);
    *(self + 16) = 4;
    if (positions < 0x201)
    {
      return;
    }

    goto LABEL_10;
  }
}

- (void)setGlyphs:(const unsigned __int16 *)glyphs positions:(const CGPoint *)positions count:(unint64_t)count font:(CGFont *)font renderingStyle:(unsigned int)style
{
  v7.n128_u64[0] = *MEMORY[0x1E695F060];
  v8.n128_u64[0] = *(MEMORY[0x1E695F060] + 8);
  [(RBShape *)self _setGlyphs:glyphs positions:positions count:count font:font renderingStyle:style dilation:0 shouldDrawBitmapRuns:v7, v8];
}

- (void)setCustomGlyphDilation:(CGSize)dilation
{
  if (self->_data.type == 4)
  {
    height = dilation.height;
    *&self->_data.data[36] = vcvt_f32_f64(dilation);
  }
}

- (void)setShouldDrawBitmapRuns:(BOOL)runs
{
  if (self->_data.type == 4)
  {
    self->_data.data[65] = self->_data.data[65] & 0xFE | runs;
  }
}

- (void)setStroke:(id)stroke
{
  strokeType = [stroke strokeType];
  v6 = strokeType;
  if (strokeType)
  {
    if (strokeType != 1)
    {
      abort();
    }

    v7 = rb_alpha_blend_mode([stroke blendMode]);
    v8 = 0;
    v9 = 1;
    v10 = 10.0;
  }

  else
  {
    v8 = rb_line_cap([stroke lineCap]);
    v11 = rb_line_join([stroke lineJoin]);
    [stroke miterLimit];
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
  strokeCopy = stroke;
  v15 = rb_clip_mode(LOBYTE(self->_renderingMode));
  RBShapeData::apply<RB::DestroyAny>(&self->_data.type);
  self->_data.type = 0;
  *&self->_data.data[12] = &unk_1F0A383A8;
  *&self->_data.data[20] = strokeCopy;
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

- (void)_xmlAttributes:(double)attributes
{
  if (self)
  {
    switch(self[1].i32[0])
    {
      case 1:
        RB::Coverage::Primitive::attributes(self + 2, a2, attributes, a4, a5);
        break;
      case 2:
        RB::Coverage::Path::attributes(&self[2], a2);
      case 3:
        RB::Coverage::StrokeablePath::attributes(&self[2].i64[1]);
      case 4:
        RB::Coverage::Glyphs::attributes(&self[2], a2);
      case 5:
        RBStrokeRef::attributes(&self[2].i64[1]);
        break;
      default:
        return;
    }
  }
}

- (void)_setInfinite
{
  if (self)
  {
    OUTLINED_FUNCTION_3(self);
    OUTLINED_FUNCTION_2_0();
    *(v1 + 64) = 1065353216;
    *(v1 + 72) = 0;
    *(v1 + 76) = 257;
    OUTLINED_FUNCTION_0_0();
  }
}

- (void)_setEmpty
{
  if (self)
  {
    OUTLINED_FUNCTION_3(self);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0_0();
  }
}

- (void)_setCircleAtPoint:(float64_t)point radius:(double)radius
{
  if (self)
  {
    if (radius <= 0.0)
    {
      RBShapeData::apply<RB::DestroyAny>((self + 16));
      OUTLINED_FUNCTION_1_0();
    }

    else
    {
      a2.f64[1] = point;
      v5 = vcvt_f32_f64(vsubq_f64(a2, vdupq_lane_s64(*&radius, 0)));
      v6 = radius + radius;
      *&v6 = radius + radius;
      v7 = vdup_lane_s32(*&v6, 0);
      v8 = *(self + 428);
      RBShapeData::apply<RB::DestroyAny>((self + 16));
      v9.i32[1] = HIDWORD(radius);
      *v9.i32 = radius;
      v10 = *(self + 432);
      *(self + 32) = v5;
      *(self + 40) = v7;
      *(self + 48) = vdupq_lane_s32(v9, 0);
      *(self + 64) = 1065353216;
      *(self + 72) = v10;
      *(self + 76) = 5;
      *(self + 77) = v8;
    }

    OUTLINED_FUNCTION_0_0();
  }
}

- (void)setGlyphs:(uint64_t)glyphs positions:(unint64_t)positions count:(const void *)count font:(int)font renderingStyle:(char)style dilation:(__n128)dilation shouldDrawBitmapRuns:(__n128)runs
{
  if (self)
  {
    [(RBShape *)self _setGlyphs:a2 positions:glyphs count:positions font:count renderingStyle:font dilation:style shouldDrawBitmapRuns:dilation, runs];
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