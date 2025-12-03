@interface VTKBitmapContext
+ (id)contextType:(unint64_t)type width:(double)width height:(double)height scale:(double)scale;
- (UIImage)image;
- (VTKBitmapContext)initWithColorSpaceName:(__CFString *)name contextType:(unint64_t)type width:(double)width height:(double)height scale:(double)scale bitsPerComponent:(unint64_t)component bytesPerPixel:(unint64_t)pixel bitmapInfo:(unsigned int)self0;
- (id)_16BitColor:(VTKBitmapContext *)self;
- (id)_8BitColor:(char *)color;
- (id)colorAt:(void *)at;
- (id)colorForAntiAliased;
- (id)colorForDifferent;
- (id)colorForSame;
- (void)_draw16BitColor:(id)color at:;
- (void)_draw8BitColor:(id)color at:(char *)at;
- (void)dataAtPixel:(VTKPoint)pixel;
- (void)dealloc;
- (void)drawColor:(id)color at:(void *)at;
@end

@implementation VTKBitmapContext

+ (id)contextType:(unint64_t)type width:(double)width height:(double)height scale:(double)scale
{
  if (type == 1)
  {
    v6 = kCGColorSpaceExtendedSRGB;
    v7 = 4353;
    v8 = 8;
    v9 = 16;
  }

  else if (type)
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

  v10 = [[VTKBitmapContext alloc] initWithColorSpaceName:v6 contextType:type width:v9 height:v8 scale:v7 bitsPerComponent:width bytesPerPixel:height bitmapInfo:scale];

  return v10;
}

- (VTKBitmapContext)initWithColorSpaceName:(__CFString *)name contextType:(unint64_t)type width:(double)width height:(double)height scale:(double)scale bitsPerComponent:(unint64_t)component bytesPerPixel:(unint64_t)pixel bitmapInfo:(unsigned int)self0
{
  v25.receiver = self;
  v25.super_class = VTKBitmapContext;
  v18 = [(VTKBitmapContext *)&v25 init];
  if (v18)
  {
    v18->_colorSpace = CGColorSpaceCreateWithName(name);
    v18->_contextType = type;
    v18->_width = width;
    v18->_height = height;
    v18->_scale = scale;
    v18->_bytesPerPixel = pixel;
    pixelWidth = [(VTKBitmapContext *)v18 pixelWidth];
    pixelHeight = [(VTKBitmapContext *)v18 pixelHeight];
    v18->_bytesPerRow = pixelWidth * pixel;
    v21 = pixelWidth * pixel * pixelHeight;
    v18->_CGContextDataBytesLength = v21;
    v22 = malloc_type_malloc(v21, 0x81A5901uLL);
    v18->_CGContextDataBytes = v22;
    v23 = CGBitmapContextCreate(v22, pixelWidth, pixelHeight, component, v18->_bytesPerRow, v18->_colorSpace, info);
    v18->_CGContext = v23;
    CGContextSetInterpolationQuality(v23, kCGInterpolationLow);
    v26.size.width = pixelWidth;
    v26.size.height = pixelHeight;
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

- (id)colorAt:(void *)at
{
  contextType = self->_contextType;
  if (contextType == 1)
  {
    v4 = [(VTKBitmapContext *)self _16BitColor:at];
  }

  else
  {
    if (contextType)
    {
      goto LABEL_6;
    }

    v4 = [(VTKBitmapContext *)self _8BitColor:at];
  }

  a2 = v4;
LABEL_6:

  return a2;
}

- (id)_8BitColor:(char *)color
{
  LOBYTE(v3) = *color;
  LOBYTE(v4) = color[1];
  LOBYTE(v5) = color[2];
  LOBYTE(v6) = color[3];
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

- (void)drawColor:(id)color at:(void *)at
{
  colorCopy = color;
  v7 = colorCopy;
  contextType = self->_contextType;
  if (contextType == 1)
  {
    v9 = colorCopy;
    colorCopy = [(VTKBitmapContext *)self _draw16BitColor:colorCopy at:at];
  }

  else
  {
    if (contextType)
    {
      goto LABEL_6;
    }

    v9 = colorCopy;
    colorCopy = [(VTKBitmapContext *)self _draw8BitColor:colorCopy at:at];
  }

  v7 = v9;
LABEL_6:

  _objc_release_x1(colorCopy, v7);
}

- (void)_draw8BitColor:(id)color at:(char *)at
{
  colorCopy = color;
  [colorCopy red];
  *at = v6;
  [colorCopy green];
  at[1] = v7;
  [colorCopy blue];
  at[2] = v8;
  [colorCopy alpha];
  v10 = v9;

  at[3] = v10;
}

- (void)_draw16BitColor:(id)color at:
{
  v4 = v3;
  colorCopy = color;
  [colorCopy red];
  __asm { FCVT            H0, D0 }

  *v4 = _D0;
  [colorCopy green];
  __asm { FCVT            H0, D0 }

  v4[1] = _D0;
  [colorCopy blue];
  __asm { FCVT            H0, D0 }

  v4[2] = _D0;
  [colorCopy alpha];
  _D8 = v13;

  __asm { FCVT            H0, D8 }

  v4[3] = _H0;
}

- (void)dataAtPixel:(VTKPoint)pixel
{
  var1 = pixel.var1;
  var0 = pixel.var0;
  bytesPerRow = [(VTKBitmapContext *)self bytesPerRow];
  bytesPerPixel = [(VTKBitmapContext *)self bytesPerPixel];
  return [(VTKBitmapContext *)self CGContextDataBytes]+ bytesPerRow * var1 + bytesPerPixel * var0;
}

@end