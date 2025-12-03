@interface PIParallaxInfillRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)newRenderJob;
- (void)_commonInit;
@end

@implementation PIParallaxInfillRequest

- (id)newRenderJob
{
  v3 = [PIParallaxInfillJob alloc];

  return [(PIParallaxInfillJob *)v3 initWithParallaxInfillRequest:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = PIParallaxInfillRequest;
  v4 = [(NURenderRequest *)&v14 copyWithZone:zone];
  if (v4)
  {
    segmentationMatte = [(PIParallaxInfillRequest *)self segmentationMatte];
    v6 = v4[21];
    v4[21] = segmentationMatte;

    scalePolicy = [(PIParallaxInfillRequest *)self scalePolicy];
    v8 = v4[22];
    v4[22] = scalePolicy;

    pixelFormat = [(PIParallaxInfillRequest *)self pixelFormat];
    v10 = v4[23];
    v4[23] = pixelFormat;

    colorSpace = [(PIParallaxInfillRequest *)self colorSpace];
    v12 = v4[24];
    v4[24] = colorSpace;

    *(v4 + 160) = [(PIParallaxInfillRequest *)self shouldInfillForeground];
  }

  return v4;
}

- (void)_commonInit
{
  v9.receiver = self;
  v9.super_class = PIParallaxInfillRequest;
  [(NURenderRequest *)&v9 _commonInit];
  oneToOneScalePolicy = [MEMORY[0x1E69B3A88] oneToOneScalePolicy];
  scalePolicy = self->_scalePolicy;
  self->_scalePolicy = oneToOneScalePolicy;

  bGRA8 = [MEMORY[0x1E69B3BF0] BGRA8];
  pixelFormat = self->_pixelFormat;
  self->_pixelFormat = bGRA8;

  sRGBColorSpace = [MEMORY[0x1E69B3A10] sRGBColorSpace];
  colorSpace = self->_colorSpace;
  self->_colorSpace = sRGBColorSpace;

  self->_shouldInfillForeground = 0;
}

@end