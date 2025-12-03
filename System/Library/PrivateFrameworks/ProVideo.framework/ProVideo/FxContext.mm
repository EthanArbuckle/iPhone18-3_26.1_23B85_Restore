@interface FxContext
+ (id)contextForCGImageWithOptions:(id)options;
+ (id)contextForCIImageWithOptions:(id)options;
+ (id)contextForGLTextureWithOptions:(id)options;
+ (id)contextWithCGContext:(CGContext *)context options:(id)options;
+ (id)contextWithFxBitmapImage:(id)image options:(id)options;
- (CGColorSpace)glTextureColorSpace;
- (CGContext)cgContext;
- (CGImage)cgImage;
- (CGSize)glTextureSize;
- (FxContext)initWithCGContext:(CGContext *)context options:(id)options;
- (FxContext)initWithFxBitmapImage:(id)image options:(id)options;
- (id)bitmap;
- (id)ciImage;
- (id)derivedCIContext;
- (id)initForCGImageWithOptions:(id)options;
- (id)initForCIImageWithOptions:(id)options;
- (id)initForGLTextureWithOptions:(id)options;
- (unint64_t)glTexture;
- (void)dealloc;
- (void)drawFxSample:(id)sample withRegionOfInterest:(id)interest;
- (void)setCGImage:(CGImage *)image;
- (void)setCIImage:(id)image;
- (void)setGLTexture:(unint64_t)texture size:(CGSize)size flipped:(BOOL)flipped colorSpace:(CGColorSpace *)space;
- (void)setOptions:(id)options;
@end

@implementation FxContext

- (void)dealloc
{
  FxDebugAssert(self->_priv != 0, &cfstr_PrivNull.isa, v2, v3, v4, v5, v6, v7, v21.receiver);
  priv = self->_priv;
  if (priv)
  {
    var0 = priv->var0;
    if (priv->var0 <= 2)
    {
      if (var0)
      {
        if (var0 == 1)
        {
          v20 = priv->var2.var0.var0;
          if (v20)
          {
            CGImageRelease(v20);
          }
        }

        else if (var0 == 2)
        {
          v17 = priv->var2.var0.var0;
          if (v17)
          {
            CGContextRelease(v17);
          }
        }
      }

      else
      {
        FxDebugAssert(0, &cfstr_InvalidContext.isa, v9, v10, v11, v12, v13, v14, v21.receiver);
      }

      goto LABEL_21;
    }

    if (var0 > 4)
    {
      if (var0 != 5 && var0 != 6)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (var0 == 3)
      {
        var3 = priv->var2.var2.var3;
        if (var3)
        {
          CGColorSpaceRelease(var3);
        }

        goto LABEL_21;
      }

      if (var0 != 4)
      {
LABEL_21:
        free(self->_priv);
        goto LABEL_22;
      }
    }

    v18 = priv->var2.var0.var0;
    if (v18)
    {
    }

    goto LABEL_21;
  }

LABEL_22:
  v21.receiver = self;
  v21.super_class = FxContext;
  [(FxContext *)&v21 dealloc];
}

- (id)initForCGImageWithOptions:(id)options
{
  v7.receiver = self;
  v7.super_class = FxContext;
  v4 = [(FxContext *)&v7 init];
  if (v4)
  {
    v5 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A204022D66DCFuLL);
    v4->_priv = v5;
    if (v5)
    {
      v5->var0 = 1;
      v5->var2.var2.var0 = 0;
      v4->_priv->var1 = options;
    }
  }

  return v4;
}

- (FxContext)initWithCGContext:(CGContext *)context options:(id)options
{
  v9.receiver = self;
  v9.super_class = FxContext;
  v6 = [(FxContext *)&v9 init];
  if (v6)
  {
    v7 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A204022D66DCFuLL);
    v6->_priv = v7;
    if (v7)
    {
      v7->var0 = 2;
      v6->_priv->var2.var2.var0 = CGContextRetain(context);
      v6->_priv->var1 = options;
    }
  }

  return v6;
}

- (id)initForGLTextureWithOptions:(id)options
{
  v7.receiver = self;
  v7.super_class = FxContext;
  v4 = [(FxContext *)&v7 init];
  if (v4)
  {
    v5 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A204022D66DCFuLL);
    v4->_priv = v5;
    if (v5)
    {
      v5->var0 = 3;
      v5->var2.var2.var0 = 0;
      *(&v4->_priv->var2.var5 + 1) = *MEMORY[0x277CBF3A8];
      v4->_priv->var2.var2.var2 = 0;
      v4->_priv->var2.var2.var3 = 0;
      v4->_priv->var1 = options;
    }
  }

  return v4;
}

- (FxContext)initWithFxBitmapImage:(id)image options:(id)options
{
  v9.receiver = self;
  v9.super_class = FxContext;
  v6 = [(FxContext *)&v9 init];
  if (v6)
  {
    v7 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A204022D66DCFuLL);
    v6->_priv = v7;
    if (v7)
    {
      v7->var0 = 5;
      v6->_priv->var2.var2.var0 = image;
      v6->_priv->var1 = options;
    }
  }

  return v6;
}

- (id)initForCIImageWithOptions:(id)options
{
  v7.receiver = self;
  v7.super_class = FxContext;
  v4 = [(FxContext *)&v7 init];
  if (v4)
  {
    v5 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A204022D66DCFuLL);
    v4->_priv = v5;
    if (v5)
    {
      v5->var0 = 6;
      v5->var2.var2.var0 = 0;
      v4->_priv->var1 = options;
    }
  }

  return v4;
}

+ (id)contextForCGImageWithOptions:(id)options
{
  v3 = [objc_alloc(objc_opt_class()) initForCGImageWithOptions:options];

  return v3;
}

+ (id)contextWithCGContext:(CGContext *)context options:(id)options
{
  v4 = [objc_alloc(objc_opt_class()) initWithCGContext:context options:options];

  return v4;
}

+ (id)contextForGLTextureWithOptions:(id)options
{
  v3 = [objc_alloc(objc_opt_class()) initForGLTextureWithOptions:options];

  return v3;
}

+ (id)contextWithFxBitmapImage:(id)image options:(id)options
{
  v4 = [objc_alloc(objc_opt_class()) initWithFxBitmapImage:image options:options];

  return v4;
}

+ (id)contextForCIImageWithOptions:(id)options
{
  v3 = [objc_alloc(objc_opt_class()) initForCIImageWithOptions:options];

  return v3;
}

- (void)setCGImage:(CGImage *)image
{
  if (FxDebugAssert(self->_priv->var0 == 1, &cfstr_NonCgimageFxco.isa, image, v3, v4, v5, v6, v7, v11))
  {
    var0 = self->_priv->var2.var0.var0;
    if (var0)
    {
      CGImageRelease(var0);
    }

    self->_priv->var2.var2.var0 = CGImageRetain(image);
  }
}

- (CGImage)cgImage
{
  if (FxDebugAssert(self->_priv->var0 == 1, &cfstr_NonCgimageFxco_0.isa, v2, v3, v4, v5, v6, v7, v10))
  {
    return self->_priv->var2.var0.var0;
  }

  else
  {
    return 0;
  }
}

- (CGContext)cgContext
{
  if (FxDebugAssert(self->_priv->var0 == 2, &cfstr_NonCgcontextFx.isa, v2, v3, v4, v5, v6, v7, v10))
  {
    return self->_priv->var2.var0.var0;
  }

  else
  {
    return 0;
  }
}

- (void)setGLTexture:(unint64_t)texture size:(CGSize)size flipped:(BOOL)flipped colorSpace:(CGColorSpace *)space
{
  height = size.height;
  width = size.width;
  if (FxDebugAssert(self->_priv->var0 == 3, &cfstr_NonGltextureFx.isa, texture, flipped, space, v6, v7, v8, v19))
  {
    priv = self->_priv;
    var3 = priv->var2.var2.var3;
    if (var3)
    {
      CGColorSpaceRelease(var3);
      priv = self->_priv;
    }

    priv->var2.var2.var0 = texture;
    v17 = self->_priv;
    v17->var2.var2.var1.width = width;
    v17->var2.var2.var1.height = height;
    v17->var2.var2.var2 = flipped;
    if (space)
    {
      v18 = CGColorSpaceRetain(space);
    }

    else
    {
      v18 = 0;
    }

    self->_priv->var2.var2.var3 = v18;
  }
}

- (unint64_t)glTexture
{
  if (FxDebugAssert(self->_priv->var0 == 3, &cfstr_NonGltextureFx_0.isa, v2, v3, v4, v5, v6, v7, v10))
  {
    return self->_priv->var2.var2.var0;
  }

  else
  {
    return 0;
  }
}

- (CGSize)glTextureSize
{
  v9 = FxDebugAssert(self->_priv->var0 == 3, &cfstr_NonGltextureFx_1.isa, v2, v3, v4, v5, v6, v7, v13);
  width = 0.0;
  height = 0.0;
  if (v9)
  {
    priv = self->_priv;
    width = priv->var2.var2.var1.width;
    height = priv->var2.var2.var1.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGColorSpace)glTextureColorSpace
{
  if (FxDebugAssert(self->_priv->var0 == 3, &cfstr_NonGltextureFx_3.isa, v2, v3, v4, v5, v6, v7, v10))
  {
    return self->_priv->var2.var2.var3;
  }

  else
  {
    return 0;
  }
}

- (id)derivedCIContext
{
  if (FxDebugAssert(self->_priv->var0 == 4, &cfstr_NonGlcontextFx.isa, v2, v3, v4, v5, v6, v7, v10))
  {
    return self->_priv->var2.var0.var0;
  }

  else
  {
    return 0;
  }
}

- (void)setCIImage:(id)image
{
  if (FxDebugAssert(self->_priv->var0 == 6, &cfstr_NonCiimageFxco.isa, image, v3, v4, v5, v6, v7, v11))
  {
    var0 = self->_priv->var2.var0.var0;
    if (var0)
    {
    }

    self->_priv->var2.var2.var0 = image;
  }
}

- (id)ciImage
{
  if (FxDebugAssert(self->_priv->var0 == 6, &cfstr_NonCiimageFxco_0.isa, v2, v3, v4, v5, v6, v7, v10))
  {
    return self->_priv->var2.var0.var0;
  }

  else
  {
    return 0;
  }
}

- (id)bitmap
{
  if (FxDebugAssert(self->_priv->var0 == 5, &cfstr_NonBitmapFxcon.isa, v2, v3, v4, v5, v6, v7, v10))
  {
    return self->_priv->var2.var0.var0;
  }

  else
  {
    return 0;
  }
}

- (void)drawFxSample:(id)sample withRegionOfInterest:(id)interest
{
  [sample setRegionOfInterest:interest];
  [sample setContext:self];

  [sample evaluateWithOptions:0];
}

- (void)setOptions:(id)options
{
  var1 = self->_priv->var1;
  if (var1)
  {
  }

  self->_priv->var1 = options;
}

@end