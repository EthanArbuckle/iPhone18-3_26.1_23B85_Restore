@interface FxBitmap
- (BOOL)_verifyImage;
- (FxBitmap)init;
- (FxBitmap)initWithCopy:(id)a3;
- (FxBitmap)initWithCopy:(id)a3 andInfo:(id *)a4;
- (FxBitmap)initWithInfo:(id *)a3;
- (FxBitmap)initWithInfo:(id *)a3 andData:(void *)a4;
- (FxBitmap)initWithInfo:(id *)a3 rowBytes:(unint64_t)a4 andData:(void *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)_packedRowBytes;
- (void)_setOwnedDataPtr:(void *)a3;
- (void)dataPtrForPositionX:(unint64_t)a3 Y:(unint64_t)a4;
- (void)dealloc;
@end

@implementation FxBitmap

- (unint64_t)_packedRowBytes
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6.receiver = self;
  v6.super_class = FxBitmap;
  [(FxImage *)&v6 imageInfo];
  v5.receiver = self;
  v5.super_class = FxBitmap;
  v3 = [(FxImage *)&v5 depth];
  return 4 * v7 * (v3 >> 3);
}

- (FxBitmap)init
{
  v5.receiver = self;
  v5.super_class = FxBitmap;
  result = [(FxImage *)&v5 init];
  if (result)
  {
    v3 = result;
    v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040BEB90DD3uLL);
    v3->_bitmapPriv = v4;
    if (v4)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (FxBitmap)initWithInfo:(id *)a3
{
  v4 = *&a3->var6;
  v15[2] = *&a3->var4;
  v15[3] = v4;
  var8 = a3->var8;
  v5 = *&a3->var2;
  v15[0] = *&a3->var0;
  v15[1] = v5;
  v14.receiver = self;
  v14.super_class = FxBitmap;
  v6 = [(FxImage *)&v14 initWithInfo:v15];
  v7 = v6;
  if (v6)
  {
    bitmapPriv = v6->_bitmapPriv;
    if (bitmapPriv || (bitmapPriv = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040BEB90DD3uLL), (v7->_bitmapPriv = bitmapPriv) != 0))
    {
      bitmapPriv->var2 = 1;
      v9 = [(FxBitmap *)v7 _packedRowBytes];
      v7->_bitmapPriv->var1 = v9;
      v10 = a3->var1 * v9;
      if (v10 <= 0x32000)
      {
        v11 = a3->var1 * v9;
      }

      else
      {
        v11 = (v10 + 0xFFFF) & 0xFFFFFFFFFFFF0000;
      }

      v7->_bitmapPriv->var0 = malloc_type_malloc(v11, 0x95ADD378uLL);
      if (v7->_bitmapPriv->var0)
      {
        v12 = 1;
      }

      else
      {
        v12 = guaranteeMemory == 0;
      }

      if (!v12)
      {
        guaranteeMemory(v11);
        v7->_bitmapPriv->var0 = malloc_type_malloc(v11, 0xB7E7D2D8uLL);
      }
    }
  }

  return v7;
}

- (FxBitmap)initWithInfo:(id *)a3 andData:(void *)a4
{
  v5 = *&a3->var6;
  v12[2] = *&a3->var4;
  v12[3] = v5;
  var8 = a3->var8;
  v6 = *&a3->var2;
  v12[0] = *&a3->var0;
  v12[1] = v6;
  v11.receiver = self;
  v11.super_class = FxBitmap;
  v7 = [(FxImage *)&v11 initWithInfo:v12];
  v8 = v7;
  if (v7)
  {
    bitmapPriv = v7->_bitmapPriv;
    if (bitmapPriv || (bitmapPriv = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040BEB90DD3uLL), (v8->_bitmapPriv = bitmapPriv) != 0))
    {
      bitmapPriv->var0 = a4;
      v8->_bitmapPriv->var2 = 0;
      v8->_bitmapPriv->var1 = [(FxBitmap *)v8 _packedRowBytes];
    }
  }

  return v8;
}

- (FxBitmap)initWithInfo:(id *)a3 rowBytes:(unint64_t)a4 andData:(void *)a5
{
  v6 = *&a3->var6;
  v10[2] = *&a3->var4;
  v10[3] = v6;
  var8 = a3->var8;
  v7 = *&a3->var2;
  v10[0] = *&a3->var0;
  v10[1] = v7;
  result = [(FxBitmap *)self initWithInfo:v10 andData:a5];
  if (result)
  {
    bitmapPriv = result->_bitmapPriv;
    if (bitmapPriv)
    {
      bitmapPriv->var1 = a4;
    }
  }

  return result;
}

- (FxBitmap)initWithCopy:(id)a3
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  if (a3)
  {
    [a3 imageInfo];
  }

  v5[2] = v9;
  v5[3] = v10;
  v6 = v11;
  v5[0] = v7;
  v5[1] = v8;
  return [(FxBitmap *)self initWithInfo:v5];
}

- (FxBitmap)initWithCopy:(id)a3 andInfo:(id *)a4
{
  v7 = [(FxBitmap *)self _packedRowBytes];
  v8 = *&a4->var6;
  v11[2] = *&a4->var4;
  v11[3] = v8;
  var8 = a4->var8;
  v9 = *&a4->var2;
  v11[0] = *&a4->var0;
  v11[1] = v9;
  return [(FxBitmap *)self initWithCopy:a3 andInfo:v11 andRowBytes:v7];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[FxBitmap allocWithZone:?], "initWithCopy:", self];
  v5 = v4;
  if (v4)
  {
    if (!v4->_bitmapPriv)
    {
      goto LABEL_10;
    }

    v6 = [(FxBitmap *)self rowBytes];
    bitmapPriv = v5->_bitmapPriv;
    bitmapPriv->var1 = v6;
    bitmapPriv->var2 = 1;
    v8 = [(FxImage *)self height];
    v9 = [(FxBitmap *)self rowBytes]* v8;
    v5->_bitmapPriv->var0 = malloc_type_malloc(v9, 0x5D2CCAF7uLL);
    var0 = v5->_bitmapPriv->var0;
    if (!var0 && guaranteeMemory != 0)
    {
      guaranteeMemory(v9);
      v5->_bitmapPriv->var0 = malloc_type_malloc(v9, 0xAF129A94uLL);
      var0 = v5->_bitmapPriv->var0;
    }

    if (var0)
    {
      memcpy([(FxBitmap *)v5 dataPtr], [(FxBitmap *)self dataPtr], v9);
    }

    else
    {
LABEL_10:

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  bitmapPriv = self->_bitmapPriv;
  if (bitmapPriv)
  {
    if (bitmapPriv->var2 && bitmapPriv->var0)
    {
      free(bitmapPriv->var0);
      bitmapPriv = self->_bitmapPriv;
    }

    free(bitmapPriv);
  }

  v4.receiver = self;
  v4.super_class = FxBitmap;
  [(FxImage *)&v4 dealloc];
}

- (void)dataPtrForPositionX:(unint64_t)a3 Y:(unint64_t)a4
{
  if (!self->_bitmapPriv->var0)
  {
    return 0;
  }

  v7 = [(FxImage *)self depth];
  var0 = self->_bitmapPriv->var0;
  return &var0[[(FxBitmap *)self rowBytes]* a4 + ((v7 >> 1) & 0xFFFFFFFFFFFFFFFCLL) * a3];
}

- (BOOL)_verifyImage
{
  v6.receiver = self;
  v6.super_class = FxBitmap;
  v3 = [(FxImage *)&v6 _verifyImage];
  if (v3)
  {
    bitmapPriv = self->_bitmapPriv;
    if (bitmapPriv)
    {
      if (bitmapPriv->var0 && bitmapPriv->var1)
      {
        LOBYTE(v3) = 1;
        return v3;
      }

      NSLog(&cfstr_FxbitmapVerify_0.isa);
    }

    else
    {
      NSLog(&cfstr_FxbitmapVerify.isa);
    }

    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_setOwnedDataPtr:(void *)a3
{
  bitmapPriv = self->_bitmapPriv;
  if (bitmapPriv->var2 && bitmapPriv->var0)
  {
    free(bitmapPriv->var0);
    bitmapPriv = self->_bitmapPriv;
  }

  bitmapPriv->var0 = a3;
  self->_bitmapPriv->var2 = 1;
}

@end