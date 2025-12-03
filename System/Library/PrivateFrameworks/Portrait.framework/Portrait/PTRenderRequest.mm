@interface PTRenderRequest
- ($3CC19D079FD0B010EE84973AA846B91B)scissorRect;
- (CGSize)totalSensorCropRectSize;
- (PTRenderRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setScissorRect:(id *)rect;
@end

@implementation PTRenderRequest

- (PTRenderRequest)init
{
  v11.receiver = self;
  v11.super_class = PTRenderRequest;
  v2 = [(PTRenderRequest *)&v11 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_focusDisparity = 0x408000003F000000;
    v2->_alphaLowLight = 1.0;
    +[PTRaytracingUtils focalLength];
    v3->_focalLenIn35mmFilm = v4 * 1000.0;
    __asm { FMOV            V0.2S, #1.0 }

    *v3->_visCropFactor = _D0;
    *v3->_visCropFactorPreview = _D0;
    v3->_networkBias = 0.0;
    v3->_totalSensorCropRectSize = xmmword_2244A5680;
    *&v3->_sensorID = xmmword_2244A5690;
    *&v3->_readNoise_8x = 118358;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setRenderState:self->_renderState];
  [v4 setSourceColor:self->_sourceColor];
  [v4 setSourceDisparity:self->_sourceDisparity];
  [v4 setDestinationColor:self->_destinationColor];
  *&v5 = self->_focusDisparity;
  [v4 setFocusDisparity:v5];
  *&v6 = self->_fNumber;
  [v4 setFNumber:v6];
  *&v7 = self->_focalLenIn35mmFilm;
  [v4 setFocalLenIn35mmFilm:v7];
  [v4 setSensorID:self->_sensorID];
  [v4 setTotalSensorCropRectSize:{self->_totalSensorCropRectSize.width, self->_totalSensorCropRectSize.height}];
  [v4 setVisCropFactor:*self->_visCropFactor];
  [v4 setAGC:self->_AGC];
  [v4 setConversionGain:self->_conversionGain];
  [v4 setReadNoise_1x:self->_readNoise_1x];
  [v4 setReadNoise_8x:self->_readNoise_8x];
  [v4 setFrameId:self->_frameId];
  v8 = *&self->_scissorRect.width;
  v12[0] = *&self->_scissorRect.x;
  v12[1] = v8;
  [v4 setScissorRect:v12];
  *&v9 = self->_alphaLowLight;
  [v4 setAlphaLowLight:v9];
  *&v10 = self->_networkBias;
  [v4 setNetworkBias:v10];
  return v4;
}

- (CGSize)totalSensorCropRectSize
{
  width = self->_totalSensorCropRectSize.width;
  height = self->_totalSensorCropRectSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- ($3CC19D079FD0B010EE84973AA846B91B)scissorRect
{
  v3 = *&self[5].var2;
  *&retstr->var0 = *&self[5].var0;
  *&retstr->var2 = v3;
  return self;
}

- (void)setScissorRect:(id *)rect
{
  v3 = *&rect->var2;
  *&self->_scissorRect.x = *&rect->var0;
  *&self->_scissorRect.width = v3;
}

@end