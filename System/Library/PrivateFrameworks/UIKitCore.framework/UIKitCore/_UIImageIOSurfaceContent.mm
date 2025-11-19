@interface _UIImageIOSurfaceContent
- (BOOL)addContentToDestination:(CGImageDestination *)a3 properties:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CGSize)sizeInPixels;
- (_UIImageIOSurfaceContent)initWithSDRIOSurface:(__IOSurface *)a3 HDRIOSurface:(__IOSurface *)a4 scale:(double)a5;
- (_UIImageIOSurfaceContent)initWithScale:(double)a3;
- (id)description;
- (id)imageRendererFormat;
- (id)layerContents;
- (id)makeSDRVersion;
- (void)_drawWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 renditionContext:(id)a6;
- (void)_prepareForDrawingWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5;
- (void)dealloc;
@end

@implementation _UIImageIOSurfaceContent

- (_UIImageIOSurfaceContent)initWithSDRIOSurface:(__IOSurface *)a3 HDRIOSurface:(__IOSurface *)a4 scale:(double)a5
{
  if (!a3)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1510 description:@"sdrSurface is nil"];
  }

  v10 = CFGetTypeID(a3);
  if (v10 == IOSurfaceGetTypeID())
  {
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1511 description:@"sdrSurface is not an IOSurfaceRef"];

    if (!a4)
    {
      goto LABEL_7;
    }
  }

  v11 = CFGetTypeID(a4);
  if (v11 != IOSurfaceGetTypeID())
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1513 description:@"hdrSurface is not an IOSurfaceRef"];
  }

LABEL_7:
  v18.receiver = self;
  v18.super_class = _UIImageIOSurfaceContent;
  v12 = [(_UIImageContent *)&v18 initWithScale:a5];
  if (v12)
  {
    v12->_surface = CFRetain(a3);
    if (a4)
    {
      hdrSurface = CFRetain(a4);
      v12->_hdrSurface = hdrSurface;
      if (hdrSurface)
      {
LABEL_11:
        v12->_headroom = _UIRenderingBufferGetHeadroom(hdrSurface);
        return v12;
      }
    }

    else
    {
      hdrSurface = v12->_hdrSurface;
      if (hdrSurface)
      {
        goto LABEL_11;
      }
    }

    hdrSurface = v12->_surface;
    goto LABEL_11;
  }

  return v12;
}

- (_UIImageIOSurfaceContent)initWithScale:(double)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1529 description:@"You need to use -initWithIOSurface:scale:"];

  return 0;
}

- (void)dealloc
{
  CFRelease(self->_surface);
  hdrSurface = self->_hdrSurface;
  if (hdrSurface)
  {
    CFRelease(hdrSurface);
  }

  v4.receiver = self;
  v4.super_class = _UIImageIOSurfaceContent;
  [(_UIImageIOSurfaceContent *)&v4 dealloc];
}

- (id)makeSDRVersion
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (![(_UIImageIOSurfaceContent *)self isHDR])
  {
    v5 = self;
    goto LABEL_5;
  }

  if (self->_hdrSurface)
  {
    v3 = [_UIImageIOSurfaceContent alloc];
    surface = self->_surface;
    [(_UIImageContent *)self scale];
    v5 = [(_UIImageIOSurfaceContent *)v3 initWithIOSurface:surface scale:?];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  v8 = self->_surface;
  v12 = @"dst-gamut";
  v13[0] = &unk_1EFE30490;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  CGImage = _UIRenderingBufferCreateCGImage(v8, v9);

  v11 = [_UIImageCGImageContent alloc];
  [(_UIImageContent *)self scale];
  v6 = [(_UIImageCGImageContent *)v11 initWithCGImage:CGImage scale:?];
  CGImageRelease(CGImage);
LABEL_6:

  return v6;
}

- (id)imageRendererFormat
{
  v4.receiver = self;
  v4.super_class = _UIImageIOSurfaceContent;
  v2 = [(_UIImageContent *)&v4 imageRendererFormat];

  return v2;
}

- (id)layerContents
{
  hdrSurface = self->_hdrSurface;
  if (!hdrSurface)
  {
    hdrSurface = self->_surface;
  }

  return hdrSurface;
}

- (BOOL)addContentToDestination:(CGImageDestination *)a3 properties:(id)a4
{
  v5 = a4;
  v6 = CGImageCreateFromIOSurface();
  if (v6)
  {
    CGImageDestinationAddImage(a3, v6, v5);
    CGImageRelease(v6);
  }

  return v6 != 0;
}

- (CGSize)sizeInPixels
{
  Width = IOSurfaceGetWidth(self->_surface);
  Height = IOSurfaceGetHeight(self->_surface);
  v5 = Width;
  result.height = Height;
  result.width = v5;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIImageIOSurfaceContent;
  v5 = [(_UIImageContent *)&v7 isEqual:v4]&& self->_surface == v4[5] && self->_hdrSurface == v4[6];

  return v5;
}

- (id)description
{
  hdrSurface = self->_hdrSurface;
  surface = self->_surface;
  if (hdrSurface)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"IOSurfaceRef:%p/%p", surface, hdrSurface];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"IOSurfaceRef:%p", surface, v6];
  }
  v4 = ;

  return v4;
}

- (void)_prepareForDrawingWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5
{
  CGContextTranslateCTM(a5, 0.0, a3.height);

  CGContextScaleCTM(a5, 1.0, -1.0);
}

- (void)_drawWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 renditionContext:(id)a6
{
  height = a3.height;
  width = a3.width;
  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  CGImage = _UIRenderingBufferCreateCGImage(self->_surface, 0);
  v13.origin.x = v9;
  v13.origin.y = v10;
  v13.size.width = width;
  v13.size.height = height;
  CGContextDrawImage(a5, v13, CGImage);

  CGImageRelease(CGImage);
}

@end