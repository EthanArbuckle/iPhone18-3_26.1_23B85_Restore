@interface RBFill
- (BOOL)hasGeometry;
- (__int16)_setColor:(float)_S0@<S0> colorSpace:(float)space@<S1>;
- (id).cxx_construct;
- (uint64_t)_setConicGradientCenter:(__n128)center angle:stopCount:colors:colorSpace:locations:flags:;
- (uint64_t)_xmlAttributes:(uint64_t)result;
- (void)_set9PartRBImage:(const void *)image transform:(__int128 *)transform destinationRect:(int)rect capInsets:(unsigned int)insets repeat:(int)repeat interpolation:(uint64_t)interpolation tintColor:(double)color colorSpace:(double)self0 flags:(double)self1;
- (void)_setAngularGradientCenter:(__n128)center startAngle:endAngle:stopCount:colors:colorSpace:locations:flags:;
- (void)_setAxialGradientStartPoint:(__n128)point endPoint:(float64_t)endPoint stopCount:(float64_t)count colors:colorSpace:locations:flags:;
- (void)_setRBImage:(const void *)image transform:(uint64_t)transform interpolation:(unsigned int)interpolation tintColor:(int)color colorSpace:(uint64_t)space flags:(float)flags;
- (void)_setRadialGradientStartCenter:(__n128)center startRadius:(double)radius endCenter:(float64_t)endCenter endRadius:(float64_t)endRadius stopCount:colors:colorSpace:locations:flags:;
- (void)_setTiledRBImage:(const void *)image transform:(uint64_t)transform sourceRect:(unsigned int)rect interpolation:(int)interpolation tintColor:(uint64_t)color colorSpace:(float64_t)space flags:(float64_t)flags;
- (void)concat:(CGAffineTransform *)concat;
- (void)invalidateContents;
- (void)set9PartImage:(CGImage *)image transform:(CGAffineTransform *)transform destinationRect:(CGRect)rect capInsets:(id)insets repeat:(BOOL)repeat interpolation:(int)interpolation tintColor:(id)color flags:(unsigned int)self0;
- (void)set9PartRBImage:(id)image transform:(CGAffineTransform *)transform destinationRect:(CGRect)rect capInsets:(id)insets repeat:(BOOL)repeat interpolation:(int)interpolation tintColor:(id)color colorSpace:(int)self0 flags:(unsigned int)self1;
- (void)set9PartRBImage:(id)image transform:(CGAffineTransform *)transform destinationRect:(CGRect)rect capInsets:(id)insets repeat:(BOOL)repeat interpolation:(int)interpolation tintColor:(id)color flags:(unsigned int)self0;
- (void)setAxialGradientStyle:(double)style startPoint:(double)point endPoint:(float64_t)endPoint;
- (void)setCGColor:(CGColor *)color;
- (void)setColor:(id)color;
- (void)setHeadroom:(float)_S0;
- (void)setImage:(CGImage *)image transform:(CGAffineTransform *)transform interpolation:(int)interpolation tintColor:(id)color flags:(unsigned int)flags;
- (void)setMeshGradientType:(unsigned int)type positions:(const float *)positions colors:(id *)colors count:(unint64_t)count width:(unint64_t)width background:(id)background colorSpace:(int)space flags:(unsigned int)self0;
- (void)setRBImage:(id)image transform:(CGAffineTransform *)transform interpolation:(int)interpolation tintColor:(id)color colorSpace:(int)space flags:(unsigned int)flags;
- (void)setShader:(id)shader bounds:(const CGRect *)bounds flags:(unsigned int)flags;
- (void)setTiledImage:(CGImage *)image transform:(CGAffineTransform *)transform sourceRect:(CGRect)rect interpolation:(int)interpolation tintColor:(id)color flags:(unsigned int)flags;
- (void)setTiledRBImage:(id)image transform:(CGAffineTransform *)transform sourceRect:(CGRect)rect interpolation:(int)interpolation tintColor:(id)color colorSpace:(int)space flags:(unsigned int)flags;
@end

@implementation RBFill

- (id).cxx_construct
{
  self->_data.type = 0;
  RB::Heap::Heap(&self->_heap, self->_heap._buffer, 64, 0);
  return self;
}

- (BOOL)hasGeometry
{
  if (result)
  {
    return (*(result + 16) - 2) < 4;
  }

  return result;
}

- (void)setHeadroom:(float)_S0
{
  if (self->_headroom != _S0)
  {
    self->_headroom = _S0;
    type = self->_data.type;
    if (type > 2)
    {
      if (type == 3)
      {
        __asm { FCVT            H0, S0 }

        *&self->_data.data[48] = _H0;
      }

      else if (type == 4)
      {
        __asm { FCVT            H0, S0 }

        *&self->_data.data[104] = _H0;
      }
    }

    else if (type == 1)
    {
      __asm { FCVT            H0, S0 }

      *&self->_data.data[20] = _H0;
    }

    else if (type == 2)
    {
      __asm { FCVT            H0, S0 }

      *&self->_data.data[60] = _H0;
    }
  }
}

- (void)concat:(CGAffineTransform *)concat
{
  type = self->_data.type;
  if (type > 3)
  {
    if (type == 4)
    {
      v12 = *&concat->c;
      v13 = *&concat->tx;
      v14 = *&concat->a;
      v15 = v12;
      v16 = v13;
      RB::Fill::ImageData::concat(&self->_data.data[28], &v14);
    }

    else if (type == 5)
    {
      v7 = *&concat->c;
      v8 = *&concat->tx;
      v14 = *&concat->a;
      v15 = v7;
      v16 = v8;
      *&v9 = RB::operator*(&self->_data.data[188], &v14);
      *&self->_data.data[188] = v9;
      *&self->_data.data[204] = v10;
      *&self->_data.data[220] = v11;
    }
  }

  else if (type == 2 || type == 3)
  {
    v5 = *&concat->c;
    v6 = *&concat->tx;
    v14 = *&concat->a;
    v15 = v5;
    v16 = v6;
    RB::Fill::Gradient::concat(&self->_data.data[12], &v14, &self->_heap);
  }
}

- (void)setColor:(id)color
{
  _S8 = color.var3;
  _S9 = color.var2;
  _S10 = color.var1;
  _S11 = color.var0;
  RBFillData::apply<RB::DestroyAny>(&self->_data);
  __asm
  {
    FCVT            H0, S11
    FCVT            H1, S10
    FCVT            H2, S9
  }

  *&self->_data.data[12] = _H0;
  *&self->_data.data[14] = _H1;
  __asm { FCVT            H0, S8 }

  *&self->_data.data[16] = _H2;
  *&self->_data.data[18] = _H0;
  *&self->_data.data[20] = 0;
  *&self->_data.data[24] = 0;
  self->_data.type = 1;
  self->_headroom = 0.0;
}

- (void)setCGColor:(CGColor *)color
{
  if (color)
  {
    [(RBFill *)color setCGColor:?];
  }

  else
  {
    LODWORD(v4) = 0;
    LODWORD(v5) = 0;
    LODWORD(v6) = 0;
    LODWORD(v7) = 0;

    [(RBFill *)self setColor:v4, v5, v6, v7];
  }
}

- (void)setMeshGradientType:(unsigned int)type positions:(const float *)positions colors:(id *)colors count:(unint64_t)count width:(unint64_t)width background:(id)background colorSpace:(int)space flags:(unsigned int)self0
{
  _S8 = background.var3;
  _S9 = background.var2;
  _S10 = background.var1;
  _S11 = background.var0;
  typeCopy = type;
  RB::Heap::reset(&self->_heap, self->_heap._buffer, 64);
  __asm
  {
    FCVT            H11, S11
    FCVT            H10, S10
    FCVT            H9, S9
    FCVT            H8, S8
  }

  v25 = (LODWORD(_S9) << 32) | (LODWORD(_S8) << 48) | (LODWORD(_S10) << 16) | LODWORD(_S11);
  v26 = 0;
  v27 = rb_color_space(space);
  RBFillData::apply<RB::DestroyAny>(&self->_data);
  self->_data.type = 0;
  (RB::Fill::MeshGradient::MeshGradient)(&self->_data.data[12], typeCopy, count, width, positions, colors, &v25, flags);
  self->_data.type = 3;
  self->_headroom = 0.0;
}

- (void)setRBImage:(id)image transform:(CGAffineTransform *)transform interpolation:(int)interpolation tintColor:(id)color colorSpace:(int)space flags:(unsigned int)flags
{
  v8 = *&transform->c;
  v9[0] = *&transform->a;
  v9[1] = v8;
  v9[2] = *&transform->tx;
  [(RBFill *)self _setRBImage:image.var1 transform:v9 interpolation:interpolation tintColor:space colorSpace:*&flags flags:color.var0, color.var1, color.var2, color.var3];
}

- (void)setTiledRBImage:(id)image transform:(CGAffineTransform *)transform sourceRect:(CGRect)rect interpolation:(int)interpolation tintColor:(id)color colorSpace:(int)space flags:(unsigned int)flags
{
  v9 = *&transform->c;
  v10[0] = *&transform->a;
  v10[1] = v9;
  v10[2] = *&transform->tx;
  [(RBFill *)self _setTiledRBImage:image.var1 transform:v10 sourceRect:interpolation interpolation:space tintColor:*&flags colorSpace:rect.origin.x flags:rect.origin.y, rect.size.width, rect.size.height, color.var0, color.var1, color.var2, color.var3];
}

- (void)set9PartRBImage:(id)image transform:(CGAffineTransform *)transform destinationRect:(CGRect)rect capInsets:(id)insets repeat:(BOOL)repeat interpolation:(int)interpolation tintColor:(id)color colorSpace:(int)self0 flags:(unsigned int)self1
{
  v12 = *&transform->c;
  v13[0] = *&transform->a;
  v13[1] = v12;
  v13[2] = *&transform->tx;
  [(RBFill *)self _set9PartRBImage:image.var1 transform:v13 destinationRect:repeat capInsets:interpolation repeat:v11 interpolation:space tintColor:rect.origin.x colorSpace:rect.origin.y flags:rect.size.width, rect.size.height, insets.var0, insets.var1, insets.var2, SLODWORD(color.var0), SLODWORD(color.var1), SLODWORD(color.var2), SLODWORD(color.var3)];
}

- (void)setShader:(id)shader bounds:(const CGRect *)bounds flags:(unsigned int)flags
{
  rb_closure = [(RBShader *)shader rb_closure];
  if (bounds)
  {
    v9 = vcvt_f32_f64(bounds->size);
    v10.n128_u64[0] = vcvt_f32_f64(bounds->origin);
    *&v10.n128_i8[8] = v9;
  }

  else
  {
    v10 = 0uLL;
  }

  RBFillData::apply<RB::DestroyAny>(&self->_data);
  self->_data.type = 0;
  RB::Fill::Custom::Custom(&self->_data.data[12], rb_closure, &v10, flags);
  self->_data.type = 5;
  self->_headroom = 0.0;
}

- (void)invalidateContents
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_data.type == 4)
  {
    v3 = self->_data.data[20];
    if (v3 == 4 || v3 == 1)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = +[RBDevice allDevices];
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = &self->_data.data[12];
        v9 = *v16;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v15 + 1) + 8 * i);
            queue = [v11 queue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __28__RBFill_invalidateContents__block_invoke;
            block[3] = &unk_1E744CCA0;
            v14 = v3;
            block[4] = v11;
            block[5] = v8;
            dispatch_sync(queue, block);
          }

          v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }
    }
  }
}

RB::Device *__28__RBFill_invalidateContents__block_invoke(uint64_t a1)
{
  result = [(RBDecodedFontMetadata *)*(a1 + 32) fontUID];
  v3 = *(a1 + 48);
  if (v3 == 4)
  {
    v5 = **(a1 + 40);

    return RBInvalidateCachedMTLTexture(result, v5);
  }

  else if (v3 == 1)
  {
    v4 = **(a1 + 40);

    return RBInvalidateCachedIOSurface(result, v4);
  }

  return result;
}

- (uint64_t)_xmlAttributes:(uint64_t)result
{
  if (result)
  {
    switch(*(result + 16))
    {
      case 1:
        v1 = OUTLINED_FUNCTION_13();

        RB::Fill::Color::attributes(v1, v2);
      case 2:
        v9 = OUTLINED_FUNCTION_13();

        RB::Fill::Gradient::attributes(v9, v10);
      case 3:
        v5 = OUTLINED_FUNCTION_13();

        RB::Fill::MeshGradient::attributes(v5, v6);
      case 4:
        v7 = OUTLINED_FUNCTION_13();
        RB::ImageTexture::attributes(v7, v8);
      case 5:
        v3 = OUTLINED_FUNCTION_13();

        RB::Fill::Custom::attributes(v3, v4);
      default:
        return result;
    }
  }

  return result;
}

- (__int16)_setColor:(float)_S0@<S0> colorSpace:(float)space@<S1>
{
  if (self)
  {
    _S8 = a6;
    _S9 = a5;
    _S10 = space;
    _S11 = _S0;
    v11 = rb_color_space(a2);
    RBFillData::apply<RB::DestroyAny>(self + 16);
    __asm
    {
      FCVT            H0, S11
      FCVT            H1, S10
      FCVT            H2, S9
    }

    *(self + 32) = LOWORD(_S0);
    *(self + 34) = _H1;
    __asm { FCVT            H0, S8 }

    *(self + 36) = _H2;
    *(self + 38) = LOWORD(_S0);
    *(self + 40) = 0;
    *(self + 44) = v11;
    *(self + 16) = 1;
    *(self + 392) = 0;
  }

  return LOWORD(_S0);
}

- (void)setAxialGradientStyle:(double)style startPoint:(double)point endPoint:(float64_t)endPoint
{
  v29 = *MEMORY[0x1E69E9840];
  if (self && *(self + 16) == 1)
  {
    _H0 = *(self + 32);
    __asm { FCVT            S12, H0 }

    _H0 = *(self + 34);
    __asm { FCVT            S13, H0 }

    _H0 = *(self + 36);
    __asm { FCVT            S14, H0 }

    _H0 = *(self + 38);
    __asm { FCVT            S15, H0 }

    v24 = rb_color_space(*(self + 44));
    if (RBColorMakeGradient(v24, a2, 2uLL, v28, v27, _S12, _S13, _S14, _S15))
    {
      rb_color_space(*(self + 44));
      v25.n128_f64[0] = style;
      v26.n128_f64[0] = point;
      [RBFill _setAxialGradientStartPoint:self endPoint:v25 stopCount:v26 colors:endPoint colorSpace:a6 locations:? flags:?];
    }
  }
}

- (void)_setAxialGradientStartPoint:(__n128)point endPoint:(float64_t)endPoint stopCount:(float64_t)count colors:colorSpace:locations:flags:
{
  if (self)
  {
    OUTLINED_FUNCTION_1_2();
    v8 = v7;
    if ((set_gradient_color(v7, v9, v10, v11) & 1) == 0)
    {
      OUTLINED_FUNCTION_7();
      v12 = rb_color_space(v6);
      OUTLINED_FUNCTION_3_0(v12, v13, v14, v15, v16, v17, v18, v19, a2.n128_i64[0], a2.n128_i64[1], *&point);
      v21 = COERCE_DOUBLE(vcvt_f32_f64(v20));
      v20.f64[0] = endPoint;
      v20.f64[1] = count;
      v22 = COERCE_DOUBLE(vcvt_f32_f64(v20));
      RBFillData::apply<RB::DestroyAny>(v8 + 16);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_5();
      RB::Fill::Gradient::Gradient(v23, v24, v25, v26, v27, v28, v29, v5, v30, v21, v22, v31, v32);
      OUTLINED_FUNCTION_10();
    }
  }
}

- (void)_setRadialGradientStartCenter:(__n128)center startRadius:(double)radius endCenter:(float64_t)endCenter endRadius:(float64_t)endRadius stopCount:colors:colorSpace:locations:flags:
{
  if (self)
  {
    OUTLINED_FUNCTION_1_2();
    v9 = v8;
    if ((set_gradient_color(v8, v10, v11, v12) & 1) == 0)
    {
      OUTLINED_FUNCTION_7();
      v13 = rb_color_space(v7);
      OUTLINED_FUNCTION_3_0(v13, v14, v15, v16, v17, v18, v19, v20, a2.n128_i64[0], a2.n128_i64[1], *&center);
      v22 = COERCE_DOUBLE(vcvt_f32_f64(v21));
      v21.f64[0] = endCenter;
      v21.f64[1] = endRadius;
      v23 = COERCE_DOUBLE(vcvt_f32_f64(v21));
      RBFillData::apply<RB::DestroyAny>(v9 + 16);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_5();
      RB::Fill::Gradient::Gradient(v24, v25, v26, v27, v28, v29, v30, v6, v31, v22, v23, v32, v33);
      OUTLINED_FUNCTION_10();
    }
  }
}

- (uint64_t)_setConicGradientCenter:(__n128)center angle:stopCount:colors:colorSpace:locations:flags:
{
  if (result)
  {
    OUTLINED_FUNCTION_1_2();
    v6 = v5;
    result = set_gradient_color(v5, v7, v8, v9);
    if ((result & 1) == 0)
    {
      OUTLINED_FUNCTION_7();
      v10 = rb_color_space(v4);
      OUTLINED_FUNCTION_3_0(v10, v11, v12, v13, v14, v15, v16, v17, a2.n128_i64[0], a2.n128_i64[1], *&center);
      v19 = COERCE_DOUBLE(vcvt_f32_f64(v18));
      RBFillData::apply<RB::DestroyAny>(v6 + 16);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_5();
      result = RB::Fill::Gradient::Gradient(v20, v21, v22, v23, v24, v25, v26, v3, v27, v19, v28, v29, v30);
      *(v6 + 16) = 2;
      *(v6 + 392) = 0;
    }
  }

  return result;
}

- (void)_setAngularGradientCenter:(__n128)center startAngle:endAngle:stopCount:colors:colorSpace:locations:flags:
{
  if (self)
  {
    OUTLINED_FUNCTION_1_2();
    v6 = v5;
    if ((set_gradient_color(v5, v7, v8, v9) & 1) == 0)
    {
      OUTLINED_FUNCTION_7();
      v10 = rb_color_space(v4);
      OUTLINED_FUNCTION_3_0(v10, v11, v12, v13, v14, v15, v16, v17, a2.n128_i64[0], a2.n128_i64[1], *&center);
      v19 = COERCE_DOUBLE(vcvt_f32_f64(v18));
      RBFillData::apply<RB::DestroyAny>(v6 + 16);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_5();
      RB::Fill::Gradient::Gradient(v20, v21, v22, v23, v24, v25, v26, v3, v27, v19, v28, v29, v30);
      OUTLINED_FUNCTION_10();
    }
  }
}

- (void)_setRBImage:(const void *)image transform:(uint64_t)transform interpolation:(unsigned int)interpolation tintColor:(int)color colorSpace:(uint64_t)space flags:(float)flags
{
  if (self)
  {
    _S9 = a11;
    _S10 = a10;
    _S11 = a9;
    _S12 = flags;
    *(self + 392) = 0;
    _S8 = 0.0;
    if (!a2)
    {
      CGImageGetContentHeadroom();
      _S8 = v23;
      *(self + 392) = v23;
    }

    __asm
    {
      FCVT            H12, S12
      FCVT            H11, S11
      FCVT            H10, S10
      FCVT            H9, S9
    }

    v52 = *(transform + 32);
    rb_color_space(color);
    __asm { FCVT            H0, S8 }

    OUTLINED_FUNCTION_11();
    v36 = v35 | v34;
    if (_S8 == 0.0)
    {
      v33 = 0;
    }

    v37 = v33 | (v32 << 32);
    v38 = rb_interpolation_mode(interpolation);
    OUTLINED_FUNCTION_12(v38, v39, v40, v41, v42, v43, v44, v45, v52);
    v47 = (space << 12) | ((v46 & 0xF) << 8);
    OUTLINED_FUNCTION_9();
    if (_ZF && ((OUTLINED_FUNCTION_8(), _ZF) ? (_ZF = v48 == a2) : (_ZF = 0), _ZF))
    {
      *(self + 48) = 0;
      __asm { FMOV            V0.2S, #1.0 }

      *(self + 56) = _D0;
      OUTLINED_FUNCTION_0_4();
      *(self + 116) = v36;
      *(self + 124) = v37;
      *(self + 128) = WORD2(v37);
      *(self + 130) = v47;
    }

    else
    {
      OUTLINED_FUNCTION_14();
      RB::ImageTexture::ImageTexture(v53, a2, image);
      RBFillData::apply<RB::DestroyAny>(space);
      *(self + 16) = 0;
      RB::ImageTexture::ImageTexture((self + 32), v53, (self + 288));
      *(self + 48) = 0;
      __asm { FMOV            V0.2S, #1.0 }

      *(self + 56) = _D0;
      OUTLINED_FUNCTION_0_4();
      *(self + 116) = v36;
      *(self + 128) = WORD2(v37);
      *(self + 124) = v37;
      *(self + 130) = v47;
      *(self + 16) = 4;
    }
  }
}

- (void)setImage:(CGImage *)image transform:(CGAffineTransform *)transform interpolation:(int)interpolation tintColor:(id)color flags:(unsigned int)flags
{
  v7 = *&transform->c;
  v8[0] = *&transform->a;
  v8[1] = v7;
  v8[2] = *&transform->tx;
  [(RBFill *)self _setRBImage:image transform:v8 interpolation:interpolation tintColor:0 colorSpace:*&flags flags:color.var0, color.var1, color.var2, color.var3];
}

- (void)_setTiledRBImage:(const void *)image transform:(uint64_t)transform sourceRect:(unsigned int)rect interpolation:(int)interpolation tintColor:(uint64_t)color colorSpace:(float64_t)space flags:(float64_t)flags
{
  if (self)
  {
    _S8 = a15;
    _S9 = a14;
    _S10 = a13;
    _S11 = a12;
    *(self + 392) = 0;
    if (!a2)
    {
      CGImageGetContentHeadroom();
      *(self + 392) = v26;
    }

    v27 = rb_interpolation_mode(rect);
    v28 = RB::interpolation_mode_without_mipmaps(v27);
    __asm
    {
      FCVT            H11, S11
      FCVT            H10, S10
    }

    v56 = *(transform + 32);
    __asm
    {
      FCVT            H9, S9
      FCVT            H8, S8
    }

    _S12 = *(self + 392);
    rb_color_space(interpolation);
    __asm { FCVT            H0, S12 }

    OUTLINED_FUNCTION_11();
    v40 = v39 | v38;
    OUTLINED_FUNCTION_17();
    v41.f64[0] = space;
    v41.f64[1] = flags;
    v42.f64[0] = a10;
    v42.f64[1] = a11;
    v43 = vcvt_f32_f64(v41);
    v44 = vcvt_f32_f64(v42);
    OUTLINED_FUNCTION_12(v45, v46, v47, v48, v49, v50, v51, v52, v56);
    v53 = (color << 12) | ((v28 & 0xF) << 8) | 2;
    OUTLINED_FUNCTION_9();
    if (_ZF && ((OUTLINED_FUNCTION_8(), _ZF) ? (_ZF = v54 == a2) : (_ZF = 0), _ZF))
    {
      *(self + 48) = v43;
      *(self + 56) = v44;
      OUTLINED_FUNCTION_0_4();
      *(self + 116) = v40;
      *(self + 124) = interpolation;
      OUTLINED_FUNCTION_15();
      *(self + 130) = v53;
    }

    else
    {
      OUTLINED_FUNCTION_14();
      RB::ImageTexture::ImageTexture(v61, a2, image);
      RBFillData::apply<RB::DestroyAny>(color);
      *(self + 16) = 0;
      RB::ImageTexture::ImageTexture((self + 32), v61, (self + 288));
      *(self + 48) = v43;
      *(self + 56) = v44;
      OUTLINED_FUNCTION_0_4();
      *(self + 116) = v40;
      OUTLINED_FUNCTION_15();
      *(self + 124) = interpolation;
      *(self + 130) = v53;
      *(self + 16) = 4;
    }
  }
}

- (void)setTiledImage:(CGImage *)image transform:(CGAffineTransform *)transform sourceRect:(CGRect)rect interpolation:(int)interpolation tintColor:(id)color flags:(unsigned int)flags
{
  v8 = *&transform->c;
  v9[0] = *&transform->a;
  v9[1] = v8;
  v9[2] = *&transform->tx;
  [(RBFill *)self _setTiledRBImage:image transform:v9 sourceRect:interpolation interpolation:0 tintColor:*&flags colorSpace:rect.origin.x flags:rect.origin.y, rect.size.width, rect.size.height, color.var0, color.var1, color.var2, color.var3];
}

- (void)_set9PartRBImage:(const void *)image transform:(__int128 *)transform destinationRect:(int)rect capInsets:(unsigned int)insets repeat:(int)repeat interpolation:(uint64_t)interpolation tintColor:(double)color colorSpace:(double)self0 flags:(double)self1
{
  if (self)
  {
    *(self + 392) = 0;
    if (!a2)
    {
      CGImageGetContentHeadroom();
      *(self + 392) = v29;
    }

    _S14 = a18;
    _S13 = a19;
    _S12 = a16;
    _S15 = a17;
    v34 = rb_interpolation_mode(insets);
    v35 = v34;
    if (rect)
    {
      v35 = RB::interpolation_mode_without_mipmaps(v34);
      v36 = 6;
    }

    else
    {
      v36 = 5;
    }

    *&v37 = a13;
    *&v38 = a15;
    v87 = __PAIR64__(v38, v37);
    v84 = transform[1];
    v85 = *transform;
    v83 = transform[2];
    __asm
    {
      FCVT            H8, S12
      FCVT            H10, S15
    }

    _S12 = *(self + 392);
    __asm
    {
      FCVT            H14, S14
      FCVT            H13, S13
    }

    rb_color_space(repeat);
    __asm { FCVT            H0, S12 }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_17();
    v48 = v36 & 0xF0FF | ((v35 & 0xF) << 8) | (interpolation << 12);
    OUTLINED_FUNCTION_9();
    if (_ZF && ((OUTLINED_FUNCTION_8(), _ZF) ? (_ZF = v57 == a2) : (_ZF = 0), _ZF))
    {
      OUTLINED_FUNCTION_2_1(v49, v50, v51, v52, v53, v54, v55, v56, v58, v59, v60, v61, v62, v63, v64, v65, v83, *(&v83 + 1), v84, *(&v84 + 1), v85, *(&v85 + 1), v86, v87, *(&v87 + 1));
      *(self + 124) = repeat;
      OUTLINED_FUNCTION_15();
      *(self + 130) = v48;
    }

    else
    {
      OUTLINED_FUNCTION_14();
      RB::ImageTexture::ImageTexture(v88, a2, image);
      RBFillData::apply<RB::DestroyAny>(interpolation);
      *(self + 16) = 0;
      v67 = RB::ImageTexture::ImageTexture((self + 32), v88, (self + 288));
      OUTLINED_FUNCTION_2_1(v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, *(&v83 + 1), v84, *(&v84 + 1), v85, *(&v85 + 1), v86, v87, *(&v87 + 1));
      OUTLINED_FUNCTION_15();
      *(self + 124) = repeat;
      *(self + 130) = v48;
      *(self + 16) = 4;
    }
  }
}

- (void)set9PartRBImage:(id)image transform:(CGAffineTransform *)transform destinationRect:(CGRect)rect capInsets:(id)insets repeat:(BOOL)repeat interpolation:(int)interpolation tintColor:(id)color flags:(unsigned int)self0
{
  v11 = *&transform->c;
  v12[0] = *&transform->a;
  v12[1] = v11;
  v12[2] = *&transform->tx;
  [(RBFill *)self _set9PartRBImage:image.var1 transform:v12 destinationRect:repeat capInsets:interpolation repeat:0 interpolation:v10 tintColor:rect.origin.x colorSpace:rect.origin.y flags:rect.size.width, rect.size.height, insets.var0, insets.var1, insets.var2, SLODWORD(color.var0), SLODWORD(color.var1), SLODWORD(color.var2), SLODWORD(color.var3)];
}

- (void)set9PartImage:(CGImage *)image transform:(CGAffineTransform *)transform destinationRect:(CGRect)rect capInsets:(id)insets repeat:(BOOL)repeat interpolation:(int)interpolation tintColor:(id)color flags:(unsigned int)self0
{
  v10 = *&transform->c;
  v11[0] = *&transform->a;
  v11[1] = v10;
  v11[2] = *&transform->tx;
  [(RBFill *)self _set9PartRBImage:image transform:v11 destinationRect:repeat capInsets:interpolation repeat:0 interpolation:*&color.var0 tintColor:rect.origin.x colorSpace:rect.origin.y flags:rect.size.width, rect.size.height, insets.var0, insets.var1, insets.var2, flags, v12, v13, v14];
}

- (uint64_t)setCGColor:(CGColor *)a1 .cold.1(CGColor *a1, uint64_t a2)
{
  v3 = RBColorFromCGColor(a1, 0);
  [(RBFill *)a2 _setColor:*&v3 colorSpace:v4, v5, v6];
  result = CGColorGetContentHeadroom();
  *(a2 + 392) = v8;
  return result;
}

@end