@interface CHChannel2D
- (id)xChannel;
- (id)yChannel;
- (void)getDefaultCurveX:(double *)a3 curveY:(double *)a4;
- (void)getDoubleValuesAtTime:(id *)a3 curveX:(double *)a4 curveY:(double *)a5;
- (void)getDoubleValuesAtTime:(id *)a3 x:(double *)a4 y:(double *)a5;
- (void)getMaxCurveX:(double *)a3 curveY:(double *)a4;
- (void)getMinCurveX:(double *)a3 curveY:(double *)a4;
- (void)offsetDoubleValuesAtTime:(id *)a3 deltaX:(double)a4 deltaY:(double)a5 options:(unsigned int)a6;
- (void)ozChannel;
- (void)setDefaultCurveX:(double)a3 curveY:(double)a4;
- (void)setDoubleValuesAtTime:(id *)a3 curveX:(double)a4 curveY:(double)a5 options:(unsigned int)a6;
- (void)setMaxCurveX:(double)a3 curveY:(double)a4;
- (void)setMinCurveX:(double)a3 curveY:(double)a4;
@end

@implementation CHChannel2D

- (void)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (void)getDoubleValuesAtTime:(id *)a3 x:(double *)a4 y:(double *)a5
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v9 = 0;
  }

  (*(*v9 + 336))(&v12, v9, a3);
  if (a4)
  {
    OZChannel::getValueAsDouble((v9 + 136), &v12, 0.0);
    *a4 = v10;
  }

  if (a5)
  {
    OZChannel::getValueAsDouble((v9 + 288), &v12, 0.0);
    *a5 = v11;
  }
}

- (void)getDoubleValuesAtTime:(id *)a3 curveX:(double *)a4 curveY:(double *)a5
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

  v9 = 0;
  if (a4)
  {
LABEL_3:
    *a4 = OZChannel::getCurveValue((v9 + 136), a3, 0);
  }

LABEL_4:
  if (a5)
  {
    *a5 = OZChannel::getCurveValue((v9 + 288), a3, 0);
  }
}

- (void)setDoubleValuesAtTime:(id *)a3 curveX:(double)a4 curveY:(double)a5 options:(unsigned int)a6
{
  v6 = a6;
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
    v11 = pOZChannel;
  }

  else
  {
    v11 = 0;
  }

  if ((~a3->var2 & 0x11) == 0)
  {
    v12 = *MEMORY[0x277CC08F0];
    a3->var3 = *(MEMORY[0x277CC08F0] + 16);
    *&a3->var0 = v12;
  }

  Instance = OZCoreGlobals::getInstance(pOZChannel);
  v14 = *(Instance + 8);
  *(OZCoreGlobals::getInstance(Instance) + 8) = v6 & 1;
  memset(v18, 0, sizeof(v18));
  (*(*v11 + 336))(v18, v11, a3);
  v16 = v11[17];
  v15 = v11 + 17;
  (*(v16 + 712))(v15, v18, 0, a4);
  v17 = (*(v15[19] + 712))(v15 + 19, v18, 0, a5);
  *(OZCoreGlobals::getInstance(v17) + 8) = v14;
}

- (void)offsetDoubleValuesAtTime:(id *)a3 deltaX:(double)a4 deltaY:(double)a5 options:(unsigned int)a6
{
  v6 = a6;
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
    v11 = pOZChannel;
  }

  else
  {
    v11 = 0;
  }

  if ((~a3->var2 & 0x11) == 0)
  {
    v12 = *MEMORY[0x277CC08F0];
    a3->var3 = *(MEMORY[0x277CC08F0] + 16);
    *&a3->var0 = v12;
  }

  Instance = OZCoreGlobals::getInstance(pOZChannel);
  v14 = *(Instance + 8);
  *(OZCoreGlobals::getInstance(Instance) + 8) = v6 & 1;
  memset(&v16, 0, sizeof(v16));
  (*(*v11 + 336))(&v16, v11, a3);
  v15 = OZChannel2D::setValueOffsetByBehaviors(v11, &v16, a4, a5);
  *(OZCoreGlobals::getInstance(v15) + 8) = v14;
}

- (void)getDefaultCurveX:(double *)a3 curveY:(double *)a4
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

  v7 = 0;
  if (a3)
  {
LABEL_3:
    *a3 = OZChannel::getDefaultValue((v7 + 136));
  }

LABEL_4:
  if (a4)
  {
    *a4 = OZChannel::getDefaultValue((v7 + 288));
  }
}

- (void)setDefaultCurveX:(double)a3 curveY:(double)a4
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  v8 = (v7 + 136);
  v9 = (*(*(v7 + 17) + 512))(v7 + 136);
  v10 = *(v7 + 17);
  if (v9)
  {
    v11 = (*(v10 + 832))(v7 + 136) == 0;
  }

  else
  {
    v11 = (*(v10 + 496))(v7 + 136, 1) ^ 1;
  }

  v12 = (v7 + 288);
  v13 = (*(*(v7 + 36) + 512))(v7 + 288);
  v14 = *(v7 + 36);
  if (v13)
  {
    v15 = (*(v14 + 832))(v7 + 288) == 0;
  }

  else
  {
    v15 = (*(v14 + 496))(v7 + 288, 1) ^ 1;
  }

  OZChannel::setDefaultValue(v8, a3);
  OZChannel::setDefaultValue(v12, a4);
  if (v11)
  {
    (*(v8->var0 + 36))(v8, 0);
  }

  if (v15)
  {
    v16 = *(v12->var0 + 36);

    v16(v12, 0);
  }
}

- (void)getMinCurveX:(double *)a3 curveY:(double *)a4
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

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v8 = 0;
    (*(**(v7[31] + 8) + 264))(*(v7[31] + 8), &v8);
    *a3 = v8;
  }

LABEL_4:
  if (a4)
  {
    v8 = 0;
    (*(**(v7[50] + 8) + 264))(*(v7[50] + 8), &v8);
    *a4 = v8;
  }
}

- (void)setMinCurveX:(double)a3 curveY:(double)a4
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  OZChannel::setMin((v7 + 136), a3);

  OZChannel::setMin((v7 + 288), a4);
}

- (void)getMaxCurveX:(double *)a3 curveY:(double *)a4
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

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v8 = 0;
    (*(**(v7[31] + 8) + 256))(*(v7[31] + 8), &v8);
    *a3 = v8;
  }

LABEL_4:
  if (a4)
  {
    v8 = 0;
    (*(**(v7[50] + 8) + 256))(*(v7[50] + 8), &v8);
    *a4 = v8;
  }
}

- (void)setMaxCurveX:(double)a3 curveY:(double)a4
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  OZChannel::setMax((v7 + 136), a3);

  OZChannel::setMax((v7 + 288), a4);
}

- (id)xChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

- (id)yChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

@end