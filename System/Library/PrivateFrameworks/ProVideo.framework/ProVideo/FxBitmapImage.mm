@interface FxBitmapImage
+ (id)bitmapWithData:(id)data bytesPerRow:(unint64_t)row size:(CGSize)size format:(int)format colorSpace:(CGColorSpace *)space;
+ (id)bitmapWithSize:(CGSize)size format:(int)format colorSpace:(CGColorSpace *)space;
- (CGContext)cgContext;
- (CGImage)cgImage;
- (CGSize)size;
- (FxBitmapImage)initWithData:(id)data bytesPerRow:(unint64_t)row size:(CGSize)size format:(int)format colorSpace:(CGColorSpace *)space;
- (void)dealloc;
@end

@implementation FxBitmapImage

- (FxBitmapImage)initWithData:(id)data bytesPerRow:(unint64_t)row size:(CGSize)size format:(int)format colorSpace:(CGColorSpace *)space
{
  height = size.height;
  width = size.width;
  v18.receiver = self;
  v18.super_class = FxBitmapImage;
  v13 = [(FxBitmapImage *)&v18 init];
  if (v13)
  {
    v14 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A0040171D60F0uLL);
    v13->_priv = v14;
    if (v14)
    {
      dataCopy = data;
      priv = v13->_priv;
      priv->var0 = dataCopy;
      priv->var1 = row;
      priv->var2.width = width;
      priv->var2.height = height;
      priv->var3 = format;
      v13->_priv->var4 = CGColorSpaceRetain(space);
      v13->_priv->var7 = CGDataProviderCreateWithData(v13->_priv->var0, [(FxBitmapImage *)v13 bytes], (v13->_priv->var2.height * v13->_priv->var1), MyDataProviderReleaser);
      CGDataProviderRetain(v13->_priv->var7);
    }
  }

  return v13;
}

- (void)dealloc
{
  FxDebugAssert(self->_priv != 0, &cfstr_PrivNull.isa, v2, v3, v4, v5, v6, v7, v10.receiver);
  priv = self->_priv;
  if (priv)
  {
    if (priv->var4)
    {
      CGColorSpaceRelease(priv->var4);
      priv = self->_priv;
    }

    if (priv->var5)
    {
      CGContextRelease(priv->var5);
      priv = self->_priv;
    }

    if (priv->var6)
    {
      CGImageRelease(priv->var6);
      priv = self->_priv;
    }

    if (priv->var7)
    {
      CGDataProviderRelease(priv->var7);
      priv = self->_priv;
    }

    free(priv);
  }

  v10.receiver = self;
  v10.super_class = FxBitmapImage;
  [(FxBitmapImage *)&v10 dealloc];
}

+ (id)bitmapWithData:(id)data bytesPerRow:(unint64_t)row size:(CGSize)size format:(int)format colorSpace:(CGColorSpace *)space
{
  v7 = [objc_alloc(objc_opt_class()) initWithData:data bytesPerRow:row size:*&format format:space colorSpace:{size.width, size.height}];

  return v7;
}

+ (id)bitmapWithSize:(CGSize)size format:(int)format colorSpace:(CGColorSpace *)space
{
  width = size.width;
  v6 = 16.0;
  if (!format)
  {
    v6 = 4.0;
  }

  v7 = [objc_alloc(objc_opt_class()) initWithData:objc_msgSend(MEMORY[0x277CBEB28] bytesPerRow:"dataWithLength:" size:(size.height * ((width * v6 + 7.0) & 0xFFFFFFFFFFFFFFF8))) format:(width * v6 + 7.0) & 0xFFFFFFFFFFFFFFF8 colorSpace:{*&format, space, width, size.height}];

  return v7;
}

- (CGSize)size
{
  priv = self->_priv;
  width = priv->var2.width;
  height = priv->var2.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGContext)cgContext
{
  priv = self->_priv;
  if (!priv->var5)
  {
    var3 = priv->var3;
    if (FxDebugAssert(var3 == 0, &cfstr_32BitFloatRgba.isa, v2, v3, v4, v5, v6, v7, v15))
    {
      v11 = var3 == 0;
      if (var3)
      {
        v12 = 32;
      }

      else
      {
        v12 = 8;
      }

      if (v11)
      {
        v13 = 2;
      }

      else
      {
        v13 = 257;
      }

      self->_priv->var5 = CGBitmapContextCreate([(FxBitmapImage *)self bytes], self->_priv->var2.width, self->_priv->var2.height, v12, self->_priv->var1, self->_priv->var4, v13);
      CGContextRetain(self->_priv->var5);
    }
  }

  return self->_priv->var5;
}

- (CGImage)cgImage
{
  priv = self->_priv;
  if (!priv->var6)
  {
    var3 = priv->var3;
    v11 = FxDebugAssert(var3 == 0, &cfstr_32BitFloatRgba.isa, v2, v3, v4, v5, v6, v7, decode);
    priv = self->_priv;
    if (v11)
    {
      if (var3)
      {
        v12 = 128;
      }

      else
      {
        v12 = 32;
      }

      if (var3)
      {
        v13 = 32;
      }

      else
      {
        v13 = 8;
      }

      if (var3)
      {
        v14 = 257;
      }

      else
      {
        v14 = 2;
      }

      self->_priv->var6 = CGImageCreate(priv->var2.width, priv->var2.height, v13, v12, priv->var1, priv->var4, v14, priv->var7, 0, 1, kCGRenderingIntentDefault);
      CGImageRetain(self->_priv->var6);
      priv = self->_priv;
    }
  }

  return priv->var6;
}

@end