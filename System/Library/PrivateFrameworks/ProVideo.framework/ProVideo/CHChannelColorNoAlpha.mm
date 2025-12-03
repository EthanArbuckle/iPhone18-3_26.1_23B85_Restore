@interface CHChannelColorNoAlpha
- (double)blueValueAtTime:(id *)time;
- (double)curveBlueValueAtTime:(id *)time;
- (double)curveGreenValueAtTime:(id *)time;
- (double)curveRedValueAtTime:(id *)time;
- (double)greenValueAtTime:(id *)time;
- (double)redValueAtTime:(id *)time;
- (id)blueChannel;
- (id)greenChannel;
- (id)redChannel;
- (void)getColorAtTime:(id *)time curveRed:(double *)red curveGreen:(double *)green curveBlue:(double *)blue;
- (void)getColorAtTime:(id *)time red:(double *)red green:(double *)green blue:(double *)blue;
- (void)getDefaultCurveRed:(double *)red curveGreen:(double *)green curveBlue:(double *)blue;
- (void)ozChannel;
- (void)setColorAtTime:(id *)time curveRed:(double)red curveGreen:(double)green curveBlue:(double)blue options:(unsigned int)options;
- (void)setColorSpaceIDNoConversion:(int)conversion;
- (void)setCurveBlueValue:(double)value atTime:(id *)time options:(unsigned int)options;
- (void)setCurveGreenValue:(double)value atTime:(id *)time options:(unsigned int)options;
- (void)setCurveRedValue:(double)value atTime:(id *)time options:(unsigned int)options;
- (void)setDefaultCurveRed:(double)red curveGreen:(double)green curveBlue:(double)blue;
- (void)setIsColor:(BOOL)color;
@end

@implementation CHChannelColorNoAlpha

- (void)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (void)setDefaultCurveRed:(double)red curveGreen:(double)green curveBlue:(double)blue
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v9 = 0;
  }

  OZChannelColorNoAlpha::getPCColorSpace(v9, &v13);
  redCopy = red;
  greenCopy = green;
  blueCopy = blue;
  PCColor::PCColor(&v13.var1, redCopy, greenCopy, blueCopy, &v13);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v13);
  (*(*v9 + 848))(v9, &v13.var1);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v13.var7);
}

- (void)getDefaultCurveRed:(double *)red curveGreen:(double *)green curveBlue:(double *)blue
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
    if (!red)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (red)
  {
LABEL_3:
    *red = OZChannel::getDefaultValue((v9 + 136));
  }

LABEL_4:
  if (green)
  {
    *green = OZChannel::getDefaultValue((v9 + 288));
  }

  if (blue)
  {
    *blue = OZChannel::getDefaultValue((v9 + 440));
  }
}

- (void)setColorSpaceIDNoConversion:(int)conversion
{
  v3 = *&conversion;
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelColorNoAlpha::setColorSpaceIDNoConversion(pOZChannel, v3, 0);
}

- (void)setIsColor:(BOOL)color
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelColorNoAlpha::setIsColor(pOZChannel, color);
}

- (void)getColorAtTime:(id *)time red:(double *)red green:(double *)green blue:(double *)blue
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v11 = 0;
  }

  PCColor::PCColor(&v15);
  (*(*v11 + 336))(v14, v11, time);
  (*(*v11 + 824))(v11, v14, &v15, 0.0);
  v13 = 0;
  v12 = 0.0;
  OZChannelColorNoAlpha::getPCColorSpace(v11, v14);
  PCColor::getRGB(&v15, &v13 + 1, &v13, &v12, v14);
  PCCFRef<CGColorSpace *>::~PCCFRef(v14);
  *red = *(&v13 + 1);
  *green = *&v13;
  *blue = v12;
  PCCFRef<CGColorSpace *>::~PCCFRef(&v15.var1._obj);
}

- (double)redValueAtTime:(id *)time
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v4 = (pOZChannel + 136);
  (*(*pOZChannel + 336))(&v6);
  OZChannel::getValueAsDouble(v4, &v6, 0.0);
  return result;
}

- (double)greenValueAtTime:(id *)time
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(&v7, v5, time);
  OZChannel::getValueAsDouble((v5 + 288), &v7, 0.0);
  return result;
}

- (double)blueValueAtTime:(id *)time
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(&v7, v5, time);
  OZChannel::getValueAsDouble((v5 + 440), &v7, 0.0);
  return result;
}

- (void)getColorAtTime:(id *)time curveRed:(double *)red curveGreen:(double *)green curveBlue:(double *)blue
{
  pOZChannel = self->super.super.super._pOZChannel;
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
    *red = OZChannel::getCurveValue((v11 + 136), time, 0);
  }

LABEL_4:
  if (green)
  {
    *green = OZChannel::getCurveValue((v11 + 288), time, 0);
  }

  if (blue)
  {
    *blue = OZChannel::getCurveValue((v11 + 440), time, 0);
  }
}

- (double)curveRedValueAtTime:(id *)time
{

  return OZChannel::getCurveValue(v4, time, 0);
}

- (double)curveGreenValueAtTime:(id *)time
{

  return OZChannel::getCurveValue(v4, time, 0);
}

- (double)curveBlueValueAtTime:(id *)time
{

  return OZChannel::getCurveValue(v4, time, 0);
}

- (void)setColorAtTime:(id *)time curveRed:(double)red curveGreen:(double)green curveBlue:(double)blue options:(unsigned int)options
{
  optionsCopy = options;
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
    v13 = pOZChannel;
  }

  else
  {
    v13 = 0;
  }

  if ((~time->var2 & 0x11) == 0)
  {
    v14 = *MEMORY[0x277CC08F0];
    time->var3 = *(MEMORY[0x277CC08F0] + 16);
    *&time->var0 = v14;
  }

  Instance = OZCoreGlobals::getInstance(pOZChannel);
  v16 = *(Instance + 8);
  *(OZCoreGlobals::getInstance(Instance) + 8) = optionsCopy & 1;
  OZChannelColorNoAlpha::getPCColorSpace(v13, &v21);
  redCopy = red;
  greenCopy = green;
  blueCopy = blue;
  PCColor::PCColor(&v21.var3, redCopy, greenCopy, blueCopy, &v21);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v21);
  (*(*v13 + 336))(&v21, v13, time);
  v20 = (*(*v13 + 840))(v13, &v21, &v21.var3, 0);
  *(OZCoreGlobals::getInstance(v20) + 8) = v16;
  PCCFRef<CGColorSpace *>::~PCCFRef(&v21.var9);
}

- (void)setCurveRedValue:(double)value atTime:(id *)time options:(unsigned int)options
{
  optionsCopy = options;
  pOZChannel = self->super.super.super._pOZChannel;
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
  v13 = (*(v9[17] + 712))(v9 + 17, v14, 0, value);
  *(OZCoreGlobals::getInstance(v13) + 8) = v12;
}

- (void)setCurveGreenValue:(double)value atTime:(id *)time options:(unsigned int)options
{
  optionsCopy = options;
  pOZChannel = self->super.super.super._pOZChannel;
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
  v13 = (*(v9[36] + 712))(v9 + 36, v14, 0, value);
  *(OZCoreGlobals::getInstance(v13) + 8) = v12;
}

- (void)setCurveBlueValue:(double)value atTime:(id *)time options:(unsigned int)options
{
  optionsCopy = options;
  pOZChannel = self->super.super.super._pOZChannel;
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
  v13 = (*(v9[55] + 712))(v9 + 55, v14, 0, value);
  *(OZCoreGlobals::getInstance(v13) + 8) = v12;
}

- (id)redChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

- (id)greenChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

- (id)blueChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

@end