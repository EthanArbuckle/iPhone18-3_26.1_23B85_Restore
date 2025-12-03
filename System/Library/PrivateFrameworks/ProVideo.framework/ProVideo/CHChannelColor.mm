@interface CHChannelColor
- (double)alphaCurveValueAtTime:(id *)time;
- (double)alphaValueAtTime:(id *)time;
- (id)alphaChannel;
- (void)getColorAtTime:(id *)time curveRed:(double *)red curveGreen:(double *)green curveBlue:(double *)blue curveAlpha:(double *)alpha;
- (void)getColorAtTime:(id *)time red:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha inColorSpace:(CGColorSpace *)space;
- (void)getDefaultCurveRed:(double *)red curveGreen:(double *)green curveBlue:(double *)blue curveAlpha:(double *)alpha;
- (void)ozChannel;
- (void)setAlphaAtTime:(id *)time curveAlpha:(double)alpha options:(unsigned int)options;
- (void)setColorAtTime:(id *)time curveRed:(double)red curveGreen:(double)green curveBlue:(double)blue curveAlpha:(double)alpha options:(unsigned int)options;
- (void)setDefaultCurveRed:(double)red curveGreen:(double)green curveBlue:(double)blue curveAlpha:(double)alpha;
@end

@implementation CHChannelColor

- (void)ozChannel
{
  result = self->super.super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (void)setDefaultCurveRed:(double)red curveGreen:(double)green curveBlue:(double)blue curveAlpha:(double)alpha
{
  pOZChannel = self->super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v11 = 0;
  }

  OZChannelColorNoAlpha::getPCColorSpace(v11, &v16);
  redCopy = red;
  greenCopy = green;
  blueCopy = blue;
  alphaCopy = alpha;
  PCColor::PCColor(&v16.var1, redCopy, greenCopy, blueCopy, alphaCopy, &v16);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v16);
  (*(*v11 + 848))(v11, &v16.var1);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v16.var7);
}

- (void)getDefaultCurveRed:(double *)red curveGreen:(double *)green curveBlue:(double *)blue curveAlpha:(double *)alpha
{
  pOZChannel = self->super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
    if (!red)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (red)
  {
LABEL_3:
    *red = OZChannel::getDefaultValue((v11 + 136));
  }

LABEL_4:
  if (green)
  {
    *green = OZChannel::getDefaultValue((v11 + 288));
  }

  if (blue)
  {
    *blue = OZChannel::getDefaultValue((v11 + 440));
  }

  if (alpha)
  {
    *alpha = OZChannel::getDefaultValue((v11 + 1008));
  }
}

- (void)getColorAtTime:(id *)time red:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha inColorSpace:(CGColorSpace *)space
{
  pOZChannel = self->super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v15 = 0;
  }

  PCColor::PCColor(&v19);
  (*(*v15 + 336))(v18, v15, time);
  (*(*v15 + 832))(v15, v18, &v19);
  v16 = 0;
  v17 = 0;
  if (space)
  {
    PCColor::getRGBA(&v19, &v17 + 1, &v17, &v16 + 1, &v16, space);
  }

  else
  {
    OZChannelColorNoAlpha::getPCColorSpace(v15, v18);
    PCColor::getRGBA(&v19, &v17 + 1, &v17, &v16 + 1, &v16, v18);
    PCCFRef<CGColorSpace *>::~PCCFRef(v18);
  }

  *red = *(&v17 + 1);
  *green = *&v17;
  *blue = *(&v16 + 1);
  *alpha = *&v16;
  PCCFRef<CGColorSpace *>::~PCCFRef(&v19.var1._obj);
}

- (double)alphaValueAtTime:(id *)time
{
  pOZChannel = self->super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(&v7, v5, time);
  OZChannel::getValueAsDouble((v5 + 1008), &v7, 0.0);
  return result;
}

- (void)getColorAtTime:(id *)time curveRed:(double *)red curveGreen:(double *)green curveBlue:(double *)blue curveAlpha:(double *)alpha
{
  pOZChannel = self->super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
    if (!red)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  if (red)
  {
LABEL_3:
    *red = OZChannel::getCurveValue((v13 + 136), time, 0);
  }

LABEL_4:
  if (green)
  {
    *green = OZChannel::getCurveValue((v13 + 288), time, 0);
  }

  if (blue)
  {
    *blue = OZChannel::getCurveValue((v13 + 440), time, 0);
  }

  if (alpha)
  {
    *alpha = OZChannel::getCurveValue((v13 + 1008), time, 0);
  }
}

- (double)alphaCurveValueAtTime:(id *)time
{

  return OZChannel::getCurveValue(v4, time, 0);
}

- (void)setColorAtTime:(id *)time curveRed:(double)red curveGreen:(double)green curveBlue:(double)blue curveAlpha:(double)alpha options:(unsigned int)options
{
  optionsCopy = options;
  pOZChannel = self->super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
    v15 = pOZChannel;
  }

  else
  {
    v15 = 0;
  }

  if ((~time->var2 & 0x11) == 0)
  {
    v16 = *MEMORY[0x277CC08F0];
    time->var3 = *(MEMORY[0x277CC08F0] + 16);
    *&time->var0 = v16;
  }

  Instance = OZCoreGlobals::getInstance(pOZChannel);
  v18 = *(Instance + 8);
  *(OZCoreGlobals::getInstance(Instance) + 8) = optionsCopy & 1;
  OZChannelColorNoAlpha::getPCColorSpace(v15, &v24);
  redCopy = red;
  greenCopy = green;
  blueCopy = blue;
  alphaCopy = alpha;
  PCColor::PCColor(&v24.var3, redCopy, greenCopy, blueCopy, alphaCopy, &v24);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v24);
  (*(*v15 + 336))(&v24, v15, time);
  v23 = (*(*v15 + 840))(v15, &v24, &v24.var3, 0);
  *(OZCoreGlobals::getInstance(v23) + 8) = v18;
  PCCFRef<CGColorSpace *>::~PCCFRef(&v24.var9);
}

- (void)setAlphaAtTime:(id *)time curveAlpha:(double)alpha options:(unsigned int)options
{
  optionsCopy = options;
  pOZChannel = self->super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
    v9 = pOZChannel;
  }

  else
  {
    v9 = 0;
  }

  if ((~time->var2 & 0x11) == 0)
  {
    v10 = *MEMORY[0x277CC08F0];
    time->var3 = *(MEMORY[0x277CC08F0] + 16);
    *&time->var0 = v10;
  }

  Instance = OZCoreGlobals::getInstance(pOZChannel);
  v12 = *(Instance + 8);
  *(OZCoreGlobals::getInstance(Instance) + 8) = optionsCopy & 1;
  (*(*v9 + 336))(v14, v9, time);
  v13 = (*(v9[126] + 712))(v9 + 126, v14, 0, alpha);
  *(OZCoreGlobals::getInstance(v13) + 8) = v12;
}

- (id)alphaChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

@end