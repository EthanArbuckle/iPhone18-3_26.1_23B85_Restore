@interface FxBitmap
- (BOOL)_verifyImage;
- (FxBitmap)init;
- (FxBitmap)initWithCopy:(id)copy;
- (FxBitmap)initWithCopy:(id)copy andInfo:(id *)info;
- (FxBitmap)initWithInfo:(id *)info;
- (FxBitmap)initWithInfo:(id *)info andData:(void *)data;
- (FxBitmap)initWithInfo:(id *)info rowBytes:(unint64_t)bytes andData:(void *)data;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)_packedRowBytes;
- (void)_setOwnedDataPtr:(void *)ptr;
- (void)dataPtrForPositionX:(unint64_t)x Y:(unint64_t)y;
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
  depth = [(FxImage *)&v5 depth];
  return 4 * v7 * (depth >> 3);
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

- (FxBitmap)initWithInfo:(id *)info
{
  v4 = *&info->var6;
  v15[2] = *&info->var4;
  v15[3] = v4;
  var8 = info->var8;
  v5 = *&info->var2;
  v15[0] = *&info->var0;
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
      _packedRowBytes = [(FxBitmap *)v7 _packedRowBytes];
      v7->_bitmapPriv->var1 = _packedRowBytes;
      v10 = info->var1 * _packedRowBytes;
      if (v10 <= 0x32000)
      {
        v11 = info->var1 * _packedRowBytes;
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

- (FxBitmap)initWithInfo:(id *)info andData:(void *)data
{
  v5 = *&info->var6;
  v12[2] = *&info->var4;
  v12[3] = v5;
  var8 = info->var8;
  v6 = *&info->var2;
  v12[0] = *&info->var0;
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
      bitmapPriv->var0 = data;
      v8->_bitmapPriv->var2 = 0;
      v8->_bitmapPriv->var1 = [(FxBitmap *)v8 _packedRowBytes];
    }
  }

  return v8;
}

- (FxBitmap)initWithInfo:(id *)info rowBytes:(unint64_t)bytes andData:(void *)data
{
  v6 = *&info->var6;
  v10[2] = *&info->var4;
  v10[3] = v6;
  var8 = info->var8;
  v7 = *&info->var2;
  v10[0] = *&info->var0;
  v10[1] = v7;
  result = [(FxBitmap *)self initWithInfo:v10 andData:data];
  if (result)
  {
    bitmapPriv = result->_bitmapPriv;
    if (bitmapPriv)
    {
      bitmapPriv->var1 = bytes;
    }
  }

  return result;
}

- (FxBitmap)initWithCopy:(id)copy
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  if (copy)
  {
    [copy imageInfo];
  }

  v5[2] = v9;
  v5[3] = v10;
  v6 = v11;
  v5[0] = v7;
  v5[1] = v8;
  return [(FxBitmap *)self initWithInfo:v5];
}

- (FxBitmap)initWithCopy:(id)copy andInfo:(id *)info
{
  _packedRowBytes = [(FxBitmap *)self _packedRowBytes];
  v8 = *&info->var6;
  v11[2] = *&info->var4;
  v11[3] = v8;
  var8 = info->var8;
  v9 = *&info->var2;
  v11[0] = *&info->var0;
  v11[1] = v9;
  return [(FxBitmap *)self initWithCopy:copy andInfo:v11 andRowBytes:_packedRowBytes];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[FxBitmap allocWithZone:?], "initWithCopy:", self];
  v5 = v4;
  if (v4)
  {
    if (!v4->_bitmapPriv)
    {
      goto LABEL_10;
    }

    rowBytes = [(FxBitmap *)self rowBytes];
    bitmapPriv = v5->_bitmapPriv;
    bitmapPriv->var1 = rowBytes;
    bitmapPriv->var2 = 1;
    height = [(FxImage *)self height];
    v9 = [(FxBitmap *)self rowBytes]* height;
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

- (void)dataPtrForPositionX:(unint64_t)x Y:(unint64_t)y
{
  if (!self->_bitmapPriv->var0)
  {
    return 0;
  }

  depth = [(FxImage *)self depth];
  var0 = self->_bitmapPriv->var0;
  return &var0[[(FxBitmap *)self rowBytes]* y + ((depth >> 1) & 0xFFFFFFFFFFFFFFFCLL) * x];
}

- (BOOL)_verifyImage
{
  v6.receiver = self;
  v6.super_class = FxBitmap;
  _verifyImage = [(FxImage *)&v6 _verifyImage];
  if (_verifyImage)
  {
    bitmapPriv = self->_bitmapPriv;
    if (bitmapPriv)
    {
      if (bitmapPriv->var0 && bitmapPriv->var1)
      {
        LOBYTE(_verifyImage) = 1;
        return _verifyImage;
      }

      NSLog(&cfstr_FxbitmapVerify_0.isa);
    }

    else
    {
      NSLog(&cfstr_FxbitmapVerify.isa);
    }

    LOBYTE(_verifyImage) = 0;
  }

  return _verifyImage;
}

- (void)_setOwnedDataPtr:(void *)ptr
{
  bitmapPriv = self->_bitmapPriv;
  if (bitmapPriv->var2 && bitmapPriv->var0)
  {
    free(bitmapPriv->var0);
    bitmapPriv = self->_bitmapPriv;
  }

  bitmapPriv->var0 = ptr;
  self->_bitmapPriv->var2 = 1;
}

@end