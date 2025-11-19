@interface FxTransform
+ (id)identity;
+ (id)transformWithCGAffineTransform:(CGAffineTransform *)a3;
+ (id)transformWithScale:(CGPoint)a3 rotate:(float)a4 translate:(CGPoint)a5 shear:(CGPoint)a6;
- (CGAffineTransform)cgAffineTransform;
- (CGPoint)scale;
- (CGPoint)shear;
- (CGPoint)translation;
- (FxTransform)initWithCGAffineTransform:(CGAffineTransform *)a3;
- (FxTransform)initWithScale:(CGPoint)a3 rotate:(float)a4 translate:(CGPoint)a5 shear:(CGPoint)a6;
- (void)dealloc;
- (void)setCGAffineTransform:(CGAffineTransform *)a3;
@end

@implementation FxTransform

- (void)dealloc
{
  FxDebugAssert(self->_priv != 0, &cfstr_PrivNull.isa, v2, v3, v4, v5, v6, v7, v9.receiver);
  free(self->_priv);
  v9.receiver = self;
  v9.super_class = FxTransform;
  [(FxTransform *)&v9 dealloc];
}

- (FxTransform)initWithCGAffineTransform:(CGAffineTransform *)a3
{
  v9.receiver = self;
  v9.super_class = FxTransform;
  v4 = [(FxTransform *)&v9 init];
  if (v4)
  {
    v5 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004095CF6A33uLL);
    v4->_priv = v5;
    if (v5)
    {
      v6 = *&a3->c;
      v8[0] = *&a3->a;
      v8[1] = v6;
      v8[2] = *&a3->tx;
      [(FxTransform *)v4 setCGAffineTransform:v8];
    }
  }

  return v4;
}

+ (id)identity
{
  v2 = objc_alloc(objc_opt_class());
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v2 initWithCGAffineTransform:v5];
}

+ (id)transformWithCGAffineTransform:(CGAffineTransform *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = *&a3->c;
  v7[0] = *&a3->a;
  v7[1] = v5;
  v7[2] = *&a3->tx;
  return [v4 initWithCGAffineTransform:v7];
}

- (FxTransform)initWithScale:(CGPoint)a3 rotate:(float)a4 translate:(CGPoint)a5 shear:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  v11 = a3.y;
  v12 = a3.x;
  v16.receiver = self;
  v16.super_class = FxTransform;
  v13 = [(FxTransform *)&v16 init];
  if (v13)
  {
    v14 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004095CF6A33uLL);
    v13->_priv = v14;
    if (v14)
    {
      v14->var0.x = v12;
      v14->var0.y = v11;
      v14->var1 = a4;
      v14->var2.x = v9;
      v14->var2.y = v8;
      v14->var3.x = x;
      v14->var3.y = y;
    }
  }

  return v13;
}

+ (id)transformWithScale:(CGPoint)a3 rotate:(float)a4 translate:(CGPoint)a5 shear:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  v11 = a3.y;
  v12 = a3.x;
  v13 = objc_alloc(objc_opt_class());
  *&v14 = a4;
  v15 = [v13 initWithScale:v12 rotate:v11 translate:v14 shear:{v9, v8, x, y}];

  return v15;
}

- (CGPoint)scale
{
  priv = self->_priv;
  x = priv->var0.x;
  y = priv->var0.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)translation
{
  priv = self->_priv;
  x = priv->var2.x;
  y = priv->var2.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)shear
{
  priv = self->_priv;
  x = priv->var3.x;
  y = priv->var3.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setCGAffineTransform:(CGAffineTransform *)a3
{
  priv = self->_priv;
  priv->var2 = vbicq_s8(*&a3->tx, vcgtq_f64(vdupq_n_s64(0x3E45798EE0000000uLL), vabsq_f64(*&a3->tx)));
  d = a3->d;
  a = a3->a;
  b = a3->b;
  v7 = a3->a * d - d * b;
  if (fabsf(v7) >= 0.00000001)
  {
    v8 = sqrt(a * a + b * b);
    v9 = v8;
    if (v8 >= 0.00000001)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = a / v9;
    v12 = b / v9;
    a3->a = v11;
    a3->b = b / v9;
    c = a3->c;
    v14 = d * v12 + v11 * c;
    v15 = c - v11 * v14;
    v16 = d - v12 * v14;
    v17 = sqrt(v15 * v15 + v16 * v16);
    v18 = v17;
    if (v17 >= 0.00000001)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0.0;
    }

    v20 = v15 / v18;
    v21 = v16 / v18;
    a3->c = v20;
    a3->d = v21;
    v22 = v14 / v17;
    if (fabsf(v22) >= 0.00000001)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0.0;
    }

    v24 = v11 * v21 - v12 * v20;
    v25 = atan2(v12, v11);
    if (v25 < 0.0)
    {
      v25 = v25 + 6.2832;
    }

    if (v25 < 0.00000001)
    {
      v25 = 0.0;
    }

    if (v25 >= 3.1416)
    {
      v25 = v25 + -3.1416;
      if (v24 < 0.0)
      {
        v10 = -v10;
      }
    }

    else if (v24 < 0.0)
    {
      v19 = -v19;
    }

    priv->var0.x = v10;
    priv->var0.y = v19;
    priv->var1 = v25;
    priv->var3.x = v23;
    priv->var3.y = 0.0;
  }

  else
  {
    priv->var0.x = 0.0;
    priv->var0.y = 0.0;
    priv->var1 = 0.0;
    priv->var3.x = 0.0;
    priv->var3.y = 0.0;
  }
}

- (CGAffineTransform)cgAffineTransform
{
  priv = self->_priv;
  var3 = priv->var3;
  retstr->ty = 0.0;
  retstr->a = 1.0;
  *&retstr->b = vextq_s8(var3, var3, 8uLL);
  retstr->d = 1.0;
  retstr->tx = 0.0;
  var3.i64[0] = *&priv->var0.x;
  y = priv->var0.y;
  v7 = *&retstr->c;
  *&v16.a = *&retstr->a;
  *&v16.c = v7;
  *&v16.tx = *&retstr->tx;
  CGAffineTransformScale(retstr, &v16, *var3.i64, y);
  var1 = priv->var1;
  v9 = *&retstr->c;
  *&v15.a = *&retstr->a;
  *&v15.c = v9;
  *&v15.tx = *&retstr->tx;
  CGAffineTransformRotate(&v16, &v15, var1);
  v10 = *&v16.c;
  *&retstr->a = *&v16.a;
  *&retstr->c = v10;
  *&retstr->tx = *&v16.tx;
  x = priv->var2.x;
  *&v10 = priv->var2.y;
  v12 = *&retstr->c;
  *&v15.a = *&retstr->a;
  *&v15.c = v12;
  *&v15.tx = *&retstr->tx;
  result = CGAffineTransformTranslate(&v16, &v15, x, *&v10);
  v14 = *&v16.c;
  *&retstr->a = *&v16.a;
  *&retstr->c = v14;
  *&retstr->tx = *&v16.tx;
  return result;
}

@end