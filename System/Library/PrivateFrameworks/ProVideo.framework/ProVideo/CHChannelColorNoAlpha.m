@interface CHChannelColorNoAlpha
- (double)blueValueAtTime:(id *)a3;
- (double)curveBlueValueAtTime:(id *)a3;
- (double)curveGreenValueAtTime:(id *)a3;
- (double)curveRedValueAtTime:(id *)a3;
- (double)greenValueAtTime:(id *)a3;
- (double)redValueAtTime:(id *)a3;
- (id)blueChannel;
- (id)greenChannel;
- (id)redChannel;
- (void)getColorAtTime:(id *)a3 curveRed:(double *)a4 curveGreen:(double *)a5 curveBlue:(double *)a6;
- (void)getColorAtTime:(id *)a3 red:(double *)a4 green:(double *)a5 blue:(double *)a6;
- (void)getDefaultCurveRed:(double *)a3 curveGreen:(double *)a4 curveBlue:(double *)a5;
- (void)ozChannel;
- (void)setColorAtTime:(id *)a3 curveRed:(double)a4 curveGreen:(double)a5 curveBlue:(double)a6 options:(unsigned int)a7;
- (void)setColorSpaceIDNoConversion:(int)a3;
- (void)setCurveBlueValue:(double)a3 atTime:(id *)a4 options:(unsigned int)a5;
- (void)setCurveGreenValue:(double)a3 atTime:(id *)a4 options:(unsigned int)a5;
- (void)setCurveRedValue:(double)a3 atTime:(id *)a4 options:(unsigned int)a5;
- (void)setDefaultCurveRed:(double)a3 curveGreen:(double)a4 curveBlue:(double)a5;
- (void)setIsColor:(BOOL)a3;
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

- (void)setDefaultCurveRed:(double)a3 curveGreen:(double)a4 curveBlue:(double)a5
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
  v10 = a3;
  v11 = a4;
  v12 = a5;
  PCColor::PCColor(&v13.var1, v10, v11, v12, &v13);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v13);
  (*(*v9 + 848))(v9, &v13.var1);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v13.var7);
}

- (void)getDefaultCurveRed:(double *)a3 curveGreen:(double *)a4 curveBlue:(double *)a5
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (a3)
  {
LABEL_3:
    *a3 = OZChannel::getDefaultValue((v9 + 136));
  }

LABEL_4:
  if (a4)
  {
    *a4 = OZChannel::getDefaultValue((v9 + 288));
  }

  if (a5)
  {
    *a5 = OZChannel::getDefaultValue((v9 + 440));
  }
}

- (void)setColorSpaceIDNoConversion:(int)a3
{
  v3 = *&a3;
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelColorNoAlpha::setColorSpaceIDNoConversion(pOZChannel, v3, 0);
}

- (void)setIsColor:(BOOL)a3
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelColorNoAlpha::setIsColor(pOZChannel, a3);
}

- (void)getColorAtTime:(id *)a3 red:(double *)a4 green:(double *)a5 blue:(double *)a6
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
  (*(*v11 + 336))(v14, v11, a3);
  (*(*v11 + 824))(v11, v14, &v15, 0.0);
  v13 = 0;
  v12 = 0.0;
  OZChannelColorNoAlpha::getPCColorSpace(v11, v14);
  PCColor::getRGB(&v15, &v13 + 1, &v13, &v12, v14);
  PCCFRef<CGColorSpace *>::~PCCFRef(v14);
  *a4 = *(&v13 + 1);
  *a5 = *&v13;
  *a6 = v12;
  PCCFRef<CGColorSpace *>::~PCCFRef(&v15.var1._obj);
}

- (double)redValueAtTime:(id *)a3
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

- (double)greenValueAtTime:(id *)a3
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(&v7, v5, a3);
  OZChannel::getValueAsDouble((v5 + 288), &v7, 0.0);
  return result;
}

- (double)blueValueAtTime:(id *)a3
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(&v7, v5, a3);
  OZChannel::getValueAsDouble((v5 + 440), &v7, 0.0);
  return result;
}

- (void)getColorAtTime:(id *)a3 curveRed:(double *)a4 curveGreen:(double *)a5 curveBlue:(double *)a6
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (a4)
  {
LABEL_3:
    *a4 = OZChannel::getCurveValue((v11 + 136), a3, 0);
  }

LABEL_4:
  if (a5)
  {
    *a5 = OZChannel::getCurveValue((v11 + 288), a3, 0);
  }

  if (a6)
  {
    *a6 = OZChannel::getCurveValue((v11 + 440), a3, 0);
  }
}

- (double)curveRedValueAtTime:(id *)a3
{

  return OZChannel::getCurveValue(v4, a3, 0);
}

- (double)curveGreenValueAtTime:(id *)a3
{

  return OZChannel::getCurveValue(v4, a3, 0);
}

- (double)curveBlueValueAtTime:(id *)a3
{

  return OZChannel::getCurveValue(v4, a3, 0);
}

- (void)setColorAtTime:(id *)a3 curveRed:(double)a4 curveGreen:(double)a5 curveBlue:(double)a6 options:(unsigned int)a7
{
  v7 = a7;
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
    v13 = pOZChannel;
  }

  else
  {
    v13 = 0;
  }

  if ((~a3->var2 & 0x11) == 0)
  {
    v14 = *MEMORY[0x277CC08F0];
    a3->var3 = *(MEMORY[0x277CC08F0] + 16);
    *&a3->var0 = v14;
  }

  Instance = OZCoreGlobals::getInstance(pOZChannel);
  v16 = *(Instance + 8);
  *(OZCoreGlobals::getInstance(Instance) + 8) = v7 & 1;
  OZChannelColorNoAlpha::getPCColorSpace(v13, &v21);
  v17 = a4;
  v18 = a5;
  v19 = a6;
  PCColor::PCColor(&v21.var3, v17, v18, v19, &v21);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v21);
  (*(*v13 + 336))(&v21, v13, a3);
  v20 = (*(*v13 + 840))(v13, &v21, &v21.var3, 0);
  *(OZCoreGlobals::getInstance(v20) + 8) = v16;
  PCCFRef<CGColorSpace *>::~PCCFRef(&v21.var9);
}

- (void)setCurveRedValue:(double)a3 atTime:(id *)a4 options:(unsigned int)a5
{
  v5 = a5;
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
    v9 = pOZChannel;
  }

  else
  {
    v9 = 0;
  }

  if ((~a4->var2 & 0x11) == 0)
  {
    v10 = *MEMORY[0x277CC08F0];
    a4->var3 = *(MEMORY[0x277CC08F0] + 16);
    *&a4->var0 = v10;
  }

  Instance = OZCoreGlobals::getInstance(pOZChannel);
  v12 = *(Instance + 8);
  *(OZCoreGlobals::getInstance(Instance) + 8) = v5 & 1;
  (*(*v9 + 336))(v14, v9, a4);
  v13 = (*(v9[17] + 712))(v9 + 17, v14, 0, a3);
  *(OZCoreGlobals::getInstance(v13) + 8) = v12;
}

- (void)setCurveGreenValue:(double)a3 atTime:(id *)a4 options:(unsigned int)a5
{
  v5 = a5;
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
    v9 = pOZChannel;
  }

  else
  {
    v9 = 0;
  }

  if ((~a4->var2 & 0x11) == 0)
  {
    v10 = *MEMORY[0x277CC08F0];
    a4->var3 = *(MEMORY[0x277CC08F0] + 16);
    *&a4->var0 = v10;
  }

  Instance = OZCoreGlobals::getInstance(pOZChannel);
  v12 = *(Instance + 8);
  *(OZCoreGlobals::getInstance(Instance) + 8) = v5 & 1;
  (*(*v9 + 336))(v14, v9, a4);
  v13 = (*(v9[36] + 712))(v9 + 36, v14, 0, a3);
  *(OZCoreGlobals::getInstance(v13) + 8) = v12;
}

- (void)setCurveBlueValue:(double)a3 atTime:(id *)a4 options:(unsigned int)a5
{
  v5 = a5;
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
    v9 = pOZChannel;
  }

  else
  {
    v9 = 0;
  }

  if ((~a4->var2 & 0x11) == 0)
  {
    v10 = *MEMORY[0x277CC08F0];
    a4->var3 = *(MEMORY[0x277CC08F0] + 16);
    *&a4->var0 = v10;
  }

  Instance = OZCoreGlobals::getInstance(pOZChannel);
  v12 = *(Instance + 8);
  *(OZCoreGlobals::getInstance(Instance) + 8) = v5 & 1;
  (*(*v9 + 336))(v14, v9, a4);
  v13 = (*(v9[55] + 712))(v9 + 55, v14, 0, a3);
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