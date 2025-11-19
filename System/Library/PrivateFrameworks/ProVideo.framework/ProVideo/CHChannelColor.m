@interface CHChannelColor
- (double)alphaCurveValueAtTime:(id *)a3;
- (double)alphaValueAtTime:(id *)a3;
- (id)alphaChannel;
- (void)getColorAtTime:(id *)a3 curveRed:(double *)a4 curveGreen:(double *)a5 curveBlue:(double *)a6 curveAlpha:(double *)a7;
- (void)getColorAtTime:(id *)a3 red:(double *)a4 green:(double *)a5 blue:(double *)a6 alpha:(double *)a7 inColorSpace:(CGColorSpace *)a8;
- (void)getDefaultCurveRed:(double *)a3 curveGreen:(double *)a4 curveBlue:(double *)a5 curveAlpha:(double *)a6;
- (void)ozChannel;
- (void)setAlphaAtTime:(id *)a3 curveAlpha:(double)a4 options:(unsigned int)a5;
- (void)setColorAtTime:(id *)a3 curveRed:(double)a4 curveGreen:(double)a5 curveBlue:(double)a6 curveAlpha:(double)a7 options:(unsigned int)a8;
- (void)setDefaultCurveRed:(double)a3 curveGreen:(double)a4 curveBlue:(double)a5 curveAlpha:(double)a6;
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

- (void)setDefaultCurveRed:(double)a3 curveGreen:(double)a4 curveBlue:(double)a5 curveAlpha:(double)a6
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
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  PCColor::PCColor(&v16.var1, v12, v13, v14, v15, &v16);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v16);
  (*(*v11 + 848))(v11, &v16.var1);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v16.var7);
}

- (void)getDefaultCurveRed:(double *)a3 curveGreen:(double *)a4 curveBlue:(double *)a5 curveAlpha:(double *)a6
{
  pOZChannel = self->super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (a3)
  {
LABEL_3:
    *a3 = OZChannel::getDefaultValue((v11 + 136));
  }

LABEL_4:
  if (a4)
  {
    *a4 = OZChannel::getDefaultValue((v11 + 288));
  }

  if (a5)
  {
    *a5 = OZChannel::getDefaultValue((v11 + 440));
  }

  if (a6)
  {
    *a6 = OZChannel::getDefaultValue((v11 + 1008));
  }
}

- (void)getColorAtTime:(id *)a3 red:(double *)a4 green:(double *)a5 blue:(double *)a6 alpha:(double *)a7 inColorSpace:(CGColorSpace *)a8
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
  (*(*v15 + 336))(v18, v15, a3);
  (*(*v15 + 832))(v15, v18, &v19);
  v16 = 0;
  v17 = 0;
  if (a8)
  {
    PCColor::getRGBA(&v19, &v17 + 1, &v17, &v16 + 1, &v16, a8);
  }

  else
  {
    OZChannelColorNoAlpha::getPCColorSpace(v15, v18);
    PCColor::getRGBA(&v19, &v17 + 1, &v17, &v16 + 1, &v16, v18);
    PCCFRef<CGColorSpace *>::~PCCFRef(v18);
  }

  *a4 = *(&v17 + 1);
  *a5 = *&v17;
  *a6 = *(&v16 + 1);
  *a7 = *&v16;
  PCCFRef<CGColorSpace *>::~PCCFRef(&v19.var1._obj);
}

- (double)alphaValueAtTime:(id *)a3
{
  pOZChannel = self->super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(&v7, v5, a3);
  OZChannel::getValueAsDouble((v5 + 1008), &v7, 0.0);
  return result;
}

- (void)getColorAtTime:(id *)a3 curveRed:(double *)a4 curveGreen:(double *)a5 curveBlue:(double *)a6 curveAlpha:(double *)a7
{
  pOZChannel = self->super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  if (a4)
  {
LABEL_3:
    *a4 = OZChannel::getCurveValue((v13 + 136), a3, 0);
  }

LABEL_4:
  if (a5)
  {
    *a5 = OZChannel::getCurveValue((v13 + 288), a3, 0);
  }

  if (a6)
  {
    *a6 = OZChannel::getCurveValue((v13 + 440), a3, 0);
  }

  if (a7)
  {
    *a7 = OZChannel::getCurveValue((v13 + 1008), a3, 0);
  }
}

- (double)alphaCurveValueAtTime:(id *)a3
{

  return OZChannel::getCurveValue(v4, a3, 0);
}

- (void)setColorAtTime:(id *)a3 curveRed:(double)a4 curveGreen:(double)a5 curveBlue:(double)a6 curveAlpha:(double)a7 options:(unsigned int)a8
{
  v8 = a8;
  pOZChannel = self->super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
    v15 = pOZChannel;
  }

  else
  {
    v15 = 0;
  }

  if ((~a3->var2 & 0x11) == 0)
  {
    v16 = *MEMORY[0x277CC08F0];
    a3->var3 = *(MEMORY[0x277CC08F0] + 16);
    *&a3->var0 = v16;
  }

  Instance = OZCoreGlobals::getInstance(pOZChannel);
  v18 = *(Instance + 8);
  *(OZCoreGlobals::getInstance(Instance) + 8) = v8 & 1;
  OZChannelColorNoAlpha::getPCColorSpace(v15, &v24);
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  PCColor::PCColor(&v24.var3, v19, v20, v21, v22, &v24);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v24);
  (*(*v15 + 336))(&v24, v15, a3);
  v23 = (*(*v15 + 840))(v15, &v24, &v24.var3, 0);
  *(OZCoreGlobals::getInstance(v23) + 8) = v18;
  PCCFRef<CGColorSpace *>::~PCCFRef(&v24.var9);
}

- (void)setAlphaAtTime:(id *)a3 curveAlpha:(double)a4 options:(unsigned int)a5
{
  v5 = a5;
  pOZChannel = self->super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
    v9 = pOZChannel;
  }

  else
  {
    v9 = 0;
  }

  if ((~a3->var2 & 0x11) == 0)
  {
    v10 = *MEMORY[0x277CC08F0];
    a3->var3 = *(MEMORY[0x277CC08F0] + 16);
    *&a3->var0 = v10;
  }

  Instance = OZCoreGlobals::getInstance(pOZChannel);
  v12 = *(Instance + 8);
  *(OZCoreGlobals::getInstance(Instance) + 8) = v5 & 1;
  (*(*v9 + 336))(v14, v9, a3);
  v13 = (*(v9[126] + 712))(v9 + 126, v14, 0, a4);
  *(OZCoreGlobals::getInstance(v13) + 8) = v12;
}

- (id)alphaChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

@end