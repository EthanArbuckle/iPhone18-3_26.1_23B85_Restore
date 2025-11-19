@interface PIParallaxInfillRequest
- (id)copyWithZone:(_NSZone *)a3;
- (id)newRenderJob;
- (void)_commonInit;
@end

@implementation PIParallaxInfillRequest

- (id)newRenderJob
{
  v3 = [PIParallaxInfillJob alloc];

  return [(PIParallaxInfillJob *)v3 initWithParallaxInfillRequest:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = PIParallaxInfillRequest;
  v4 = [(NURenderRequest *)&v14 copyWithZone:a3];
  if (v4)
  {
    v5 = [(PIParallaxInfillRequest *)self segmentationMatte];
    v6 = v4[21];
    v4[21] = v5;

    v7 = [(PIParallaxInfillRequest *)self scalePolicy];
    v8 = v4[22];
    v4[22] = v7;

    v9 = [(PIParallaxInfillRequest *)self pixelFormat];
    v10 = v4[23];
    v4[23] = v9;

    v11 = [(PIParallaxInfillRequest *)self colorSpace];
    v12 = v4[24];
    v4[24] = v11;

    *(v4 + 160) = [(PIParallaxInfillRequest *)self shouldInfillForeground];
  }

  return v4;
}

- (void)_commonInit
{
  v9.receiver = self;
  v9.super_class = PIParallaxInfillRequest;
  [(NURenderRequest *)&v9 _commonInit];
  v3 = [MEMORY[0x1E69B3A88] oneToOneScalePolicy];
  scalePolicy = self->_scalePolicy;
  self->_scalePolicy = v3;

  v5 = [MEMORY[0x1E69B3BF0] BGRA8];
  pixelFormat = self->_pixelFormat;
  self->_pixelFormat = v5;

  v7 = [MEMORY[0x1E69B3A10] sRGBColorSpace];
  colorSpace = self->_colorSpace;
  self->_colorSpace = v7;

  self->_shouldInfillForeground = 0;
}

@end