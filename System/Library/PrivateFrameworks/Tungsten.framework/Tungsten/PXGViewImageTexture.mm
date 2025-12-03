@interface PXGViewImageTexture
- (CGSize)pixelSize;
- (PXGViewImageTexture)initWithImage:(CGImage *)image orientation:(unsigned int)orientation alpha:(float)alpha suppressContentsRect:(float)rect;
- (id)copyWithOrientationTransform:(float)transform alpha:(float)alpha suppressContentsRect:;
- (void)dealloc;
@end

@implementation PXGViewImageTexture

- (id)copyWithOrientationTransform:(float)transform alpha:(float)alpha suppressContentsRect:
{
  v5 = v4;
  if (v7 >= 0.0)
  {
    v8 = 5;
  }

  else
  {
    v8 = 8;
  }

  if (v9 > 0.0)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if (v11 >= 0.0)
  {
    v12 = 6;
  }

  else
  {
    v12 = 7;
  }

  if (v13 < 0.0)
  {
    v10 = v12;
  }

  if (v14 >= 0.0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 4;
  }

  if (transform > 0.0)
  {
    v10 = v15;
  }

  if (v16 >= 0.0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  if (transform < 0.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = v10;
  }

  if (v18 == self->_orientation && self->_alpha == alpha && self->_suppressContentsRect == v4)
  {

    return self;
  }

  else
  {
    v20 = objc_alloc(objc_opt_class());
    *&v21 = alpha;
    *&v22 = v5;
    v23 = [v20 initWithImage:self->_imageRef orientation:v18 alpha:v21 suppressContentsRect:v22];
    [v23 setSourceCGImage:{-[PXGImageTexture sourceCGImage](self, "sourceCGImage")}];
    [v23 setSourceCVPixelBuffer:{-[PXGImageTexture sourceCVPixelBuffer](self, "sourceCVPixelBuffer")}];
    return v23;
  }
}

- (CGSize)pixelSize
{
  Width = CGImageGetWidth(self->_imageRef);
  Height = CGImageGetHeight(self->_imageRef);
  v5 = Width;
  result.height = Height;
  result.width = v5;
  return result;
}

- (void)dealloc
{
  CGImageRelease(self->_imageRef);
  v3.receiver = self;
  v3.super_class = PXGViewImageTexture;
  [(PXGImageTexture *)&v3 dealloc];
}

- (PXGViewImageTexture)initWithImage:(CGImage *)image orientation:(unsigned int)orientation alpha:(float)alpha suppressContentsRect:(float)rect
{
  v13.receiver = self;
  v13.super_class = PXGViewImageTexture;
  v10 = [(PXGImageTexture *)&v13 init];
  if (v10)
  {
    v10->_imageRef = CGImageRetain(image);
    v10->_orientation = orientation;
    v10->_alpha = alpha;
    v10->_suppressContentsRect = rect;
    AlphaInfo = CGImageGetAlphaInfo(image);
    v10->_isContentOpaque = (AlphaInfo < kCGImageAlphaOnly) & (0x61u >> AlphaInfo);
  }

  return v10;
}

@end