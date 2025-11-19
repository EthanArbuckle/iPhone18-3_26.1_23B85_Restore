@interface VTKBitmapContext
+ (id)contextType:(unint64_t)a3 width:(double)a4 height:(double)a5 scale:(double)a6;
- (UIImage)image;
- (VTKBitmapContext)initWithColorSpaceName:(__CFString *)a3 contextType:(unint64_t)a4 width:(double)a5 height:(double)a6 scale:(double)a7 bitsPerComponent:(unint64_t)a8 bytesPerPixel:(unint64_t)a9 bitmapInfo:(unsigned int)a10;
- (id)_16BitColor:(VTKBitmapContext *)self;
- (id)_8BitColor:(char *)a3;
- (id)colorAt:(void *)a3;
- (id)colorForAntiAliased;
- (id)colorForDifferent;
- (id)colorForSame;
- (void)_draw16BitColor:(id)a3 at:;
- (void)_draw8BitColor:(id)a3 at:(char *)a4;
- (void)dataAtPixel:(VTKPoint)a3;
- (void)dealloc;
- (void)drawColor:(id)a3 at:(void *)a4;
@end

@implementation VTKBitmapContext

+ (id)contextType:(unint64_t)a3 width:(double)a4 height:(double)a5 scale:(double)a6
{
  if (a3 == 1)
  {
    v6 = kCGColorSpaceExtendedSRGB;
    v7 = 4353;
    v8 = 8;
    v9 = 16;
  }

  else if (a3)
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v6 = kCGColorSpaceSRGB;
    v7 = 1;
    v8 = 4;
    v9 = 8;
  }

  v10 = [[VTKBitmapContext alloc] initWithColorSpaceName:v6 contextType:a3 width:v9 height:v8 scale:v7 bitsPerComponent:a4 bytesPerPixel:a5 bitmapInfo:a6];

  return v10;
}

- (VTKBitmapContext)initWithColorSpaceName:(__CFString *)a3 contextType:(unint64_t)a4 width:(double)a5 height:(double)a6 scale:(double)a7 bitsPerComponent:(unint64_t)a8 bytesPerPixel:(unint64_t)a9 bitmapInfo:(unsigned int)a10
{
  v25.receiver = self;
  v25.super_class = VTKBitmapContext;
  v18 = [(VTKBitmapContext *)&v25 init];
  if (v18)
  {
    v18->_colorSpace = CGColorSpaceCreateWithName(a3);
    v18->_contextType = a4;
    v18->_width = a5;
    v18->_height = a6;
    v18->_scale = a7;
    v18->_bytesPerPixel = a9;
    v19 = [(VTKBitmapContext *)v18 pixelWidth];
    v20 = [(VTKBitmapContext *)v18 pixelHeight];
    v18->_bytesPerRow = v19 * a9;
    v21 = v19 * a9 * v20;
    v18->_CGContextDataBytesLength = v21;
    v22 = malloc_type_malloc(v21, 0x81A5901uLL);
    v18->_CGContextDataBytes = v22;
    v23 = CGBitmapContextCreate(v22, v19, v20, a8, v18->_bytesPerRow, v18->_colorSpace, a10);
    v18->_CGContext = v23;
    CGContextSetInterpolationQuality(v23, kCGInterpolationLow);
    v26.size.width = v19;
    v26.size.height = v20;
    v26.origin.x = 0.0;
    v26.origin.y = 0.0;
    CGContextClearRect(v18->_CGContext, v26);
  }

  return v18;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_colorSpace);
  CGContextRelease(self->_CGContext);
  free(self->_CGContextDataBytes);
  v3.receiver = self;
  v3.super_class = VTKBitmapContext;
  [(VTKBitmapContext *)&v3 dealloc];
}

- (UIImage)image
{
  Image = CGBitmapContextCreateImage([(VTKBitmapContext *)self CGContext]);
  [(VTKBitmapContext *)self scale];
  v4 = [UIImage imageWithCGImage:Image scale:0 orientation:?];
  CGImageRelease(Image);

  return v4;
}

- (id)colorAt:(void *)a3
{
  contextType = self->_contextType;
  if (contextType == 1)
  {
    v4 = [(VTKBitmapContext *)self _16BitColor:a3];
  }

  else
  {
    if (contextType)
    {
      goto LABEL_6;
    }

    v4 = [(VTKBitmapContext *)self _8BitColor:a3];
  }

  a2 = v4;
LABEL_6:

  return a2;
}

- (id)_8BitColor:(char *)a3
{
  LOBYTE(v3) = *a3;
  LOBYTE(v4) = a3[1];
  LOBYTE(v5) = a3[2];
  LOBYTE(v6) = a3[3];
  return [VTKColor colorWithRed:v3 / 255.0 green:v4 / 255.0 blue:v5 / 255.0 alpha:v6 / 255.0];
}

- (id)_16BitColor:(VTKBitmapContext *)self
{
  _H0 = *v2;
  __asm { FCVT            D0, H0 }

  _H1 = v2[1];
  __asm { FCVT            D1, H1 }

  _H2 = v2[2];
  __asm { FCVT            D2, H2 }

  _H3 = v2[3];
  __asm { FCVT            D3, H3 }

  return [VTKColor colorWithRed:_D0 green:_D1 blue:_D2 alpha:_D3];
}

- (id)colorForDifferent
{
  contextType = self->_contextType;
  if (contextType == 1)
  {
    v3 = 1.0;
    v4 = 1.0;
    v5 = 1.0;
    v6 = 1.0;
  }

  else
  {
    if (contextType)
    {
      goto LABEL_6;
    }

    v3 = 255.0;
    v4 = 255.0;
    v5 = 255.0;
    v6 = 255.0;
  }

  self = [VTKColor colorWithRed:v3 green:v4 blue:v5 alpha:v6];
LABEL_6:

  return self;
}

- (id)colorForSame
{
  contextType = self->_contextType;
  if (contextType)
  {
    if (contextType != 1)
    {
      goto LABEL_6;
    }

    v5 = 1.0;
  }

  else
  {
    v5 = 255.0;
  }

  self = [VTKColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:v5, v2];
LABEL_6:

  return self;
}

- (id)colorForAntiAliased
{
  contextType = self->_contextType;
  if (contextType == 1)
  {
    v3 = 1.0;
    v4 = 1.0;
    v5 = 1.0;
  }

  else
  {
    if (contextType)
    {
      goto LABEL_6;
    }

    v3 = 255.0;
    v4 = 255.0;
    v5 = 255.0;
  }

  self = [VTKColor colorWithRed:v3 green:v4 blue:0.0 alpha:v5];
LABEL_6:

  return self;
}

- (void)drawColor:(id)a3 at:(void *)a4
{
  v6 = a3;
  v7 = v6;
  contextType = self->_contextType;
  if (contextType == 1)
  {
    v9 = v6;
    v6 = [(VTKBitmapContext *)self _draw16BitColor:v6 at:a4];
  }

  else
  {
    if (contextType)
    {
      goto LABEL_6;
    }

    v9 = v6;
    v6 = [(VTKBitmapContext *)self _draw8BitColor:v6 at:a4];
  }

  v7 = v9;
LABEL_6:

  _objc_release_x1(v6, v7);
}

- (void)_draw8BitColor:(id)a3 at:(char *)a4
{
  v5 = a3;
  [v5 red];
  *a4 = v6;
  [v5 green];
  a4[1] = v7;
  [v5 blue];
  a4[2] = v8;
  [v5 alpha];
  v10 = v9;

  a4[3] = v10;
}

- (void)_draw16BitColor:(id)a3 at:
{
  v4 = v3;
  v5 = a3;
  [v5 red];
  __asm { FCVT            H0, D0 }

  *v4 = _D0;
  [v5 green];
  __asm { FCVT            H0, D0 }

  v4[1] = _D0;
  [v5 blue];
  __asm { FCVT            H0, D0 }

  v4[2] = _D0;
  [v5 alpha];
  _D8 = v13;

  __asm { FCVT            H0, D8 }

  v4[3] = _H0;
}

- (void)dataAtPixel:(VTKPoint)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(VTKBitmapContext *)self bytesPerRow];
  v7 = [(VTKBitmapContext *)self bytesPerPixel];
  return [(VTKBitmapContext *)self CGContextDataBytes]+ v6 * var1 + v7 * var0;
}

@end