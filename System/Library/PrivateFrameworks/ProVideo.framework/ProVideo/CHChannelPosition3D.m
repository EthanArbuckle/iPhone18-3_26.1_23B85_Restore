@interface CHChannelPosition3D
- (id)zChannel;
- (void)getDefaultCurveX:(double *)a3 curveY:(double *)a4 curveZ:(double *)a5;
- (void)getMaxCurveX:(double *)a3 curveY:(double *)a4 curveZ:(double *)a5;
- (void)getMinCurveX:(double *)a3 curveY:(double *)a4 curveZ:(double *)a5;
- (void)getPositionAtTime:(id *)a3 curveX:(double *)a4 curveY:(double *)a5 curveZ:(double *)a6;
- (void)getPositionAtTime:(id *)a3 x:(double *)a4 y:(double *)a5 z:(double *)a6;
- (void)offsetPositionAtTime:(id *)a3 deltaX:(double)a4 deltaY:(double)a5 deltaZ:(double)a6 options:(unsigned int)a7;
- (void)ozChannel;
- (void)setDefaultCurveX:(double)a3 curveY:(double)a4 curveZ:(double)a5;
- (void)setDoubleValuesAtTime:(id *)a3 curveX:(double)a4 curveY:(double)a5 curveZ:(double)a6 options:(unsigned int)a7;
- (void)setMaxCurveX:(double)a3 curveY:(double)a4 curveZ:(double)a5;
- (void)setMinCurveX:(double)a3 curveY:(double)a4 curveZ:(double)a5;
@end

@implementation CHChannelPosition3D

- (void)ozChannel
{
  result = self->super.super.super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (void)getPositionAtTime:(id *)a3 x:(double *)a4 y:(double *)a5 z:(double *)a6
{
  pOZChannel = self->super.super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v11 = 0;
  }

  (*(*v11 + 336))(&v15, v11, a3);
  if (a4)
  {
    OZChannel::getValueAsDouble((v11 + 136), &v15, 0.0);
    *a4 = v12;
  }

  if (a5)
  {
    OZChannel::getValueAsDouble((v11 + 288), &v15, 0.0);
    *a5 = v13;
  }

  if (a6)
  {
    OZChannel::getValueAsDouble((v11 + 736), &v15, 0.0);
    *a6 = v14;
  }
}

- (void)getPositionAtTime:(id *)a3 curveX:(double *)a4 curveY:(double *)a5 curveZ:(double *)a6
{
  pOZChannel = self->super.super.super.super.super._pOZChannel;
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
    *a6 = OZChannel::getCurveValue((v11 + 736), a3, 0);
  }
}

- (void)setDoubleValuesAtTime:(id *)a3 curveX:(double)a4 curveY:(double)a5 curveZ:(double)a6 options:(unsigned int)a7
{
  v7 = a7;
  pOZChannel = self->super.super.super.super.super._pOZChannel;
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
  memset(v20, 0, sizeof(v20));
  (*(*v13 + 336))(v20, v13, a3);
  v18 = v13[17];
  v17 = v13 + 17;
  (*(v18 + 712))(v17, v20, 0, a4);
  (*(v17[19] + 712))(v17 + 19, v20, 0, a5);
  v19 = (*(v17[75] + 712))(v17 + 75, v20, 0, a6);
  *(OZCoreGlobals::getInstance(v19) + 8) = v16;
}

- (void)offsetPositionAtTime:(id *)a3 deltaX:(double)a4 deltaY:(double)a5 deltaZ:(double)a6 options:(unsigned int)a7
{
  v7 = a7;
  pOZChannel = self->super.super.super.super.super._pOZChannel;
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
  memset(&v18, 0, sizeof(v18));
  (*(*v13 + 336))(&v18, v13, a3);
  v17 = OZChannelPosition3D::offsetPosition(v13, &v18, a4, a5, a6, 1);
  *(OZCoreGlobals::getInstance(v17) + 8) = v16;
}

- (void)getDefaultCurveX:(double *)a3 curveY:(double *)a4 curveZ:(double *)a5
{
  pOZChannel = self->super.super.super.super.super._pOZChannel;
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
    *a5 = OZChannel::getDefaultValue((v9 + 736));
  }
}

- (void)setDefaultCurveX:(double)a3 curveY:(double)a4 curveZ:(double)a5
{
  pOZChannel = self->super.super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v9 = 0;
  }

  v10 = (v9 + 17);
  v11 = (*(v9[17] + 512))(v9 + 17);
  v12 = v9[17];
  if (v11)
  {
    v13 = (*(v12 + 832))(v9 + 17) == 0;
  }

  else
  {
    v13 = (*(v12 + 496))(v9 + 17, 1) ^ 1;
  }

  v14 = (v9 + 36);
  v15 = (*(v9[36] + 512))(v9 + 36);
  v16 = v9[36];
  if (v15)
  {
    v17 = (*(v16 + 832))(v9 + 36) == 0;
  }

  else
  {
    v17 = (*(v16 + 496))(v9 + 36, 1) ^ 1;
  }

  v18 = (v9 + 92);
  v19 = (*(v9[92] + 512))(v9 + 92);
  v20 = v9[92];
  if (v19)
  {
    v21 = (*(v20 + 832))(v9 + 92) == 0;
  }

  else
  {
    v21 = (*(v20 + 496))(v9 + 92, 1) ^ 1;
  }

  OZChannel::setDefaultValue(v10, a3);
  OZChannel::setDefaultValue(v14, a4);
  OZChannel::setDefaultValue(v18, a5);
  if (!v13)
  {
    if (!v17)
    {
      goto LABEL_15;
    }

LABEL_20:
    (*(v14->var0 + 36))(v14, 0);
    if (!v21)
    {
      return;
    }

    goto LABEL_16;
  }

  (*(v10->var0 + 36))(v10, 0);
  if (v17)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (!v21)
  {
    return;
  }

LABEL_16:
  v22 = *(v18->var0 + 36);

  v22(v18, 0);
}

- (void)getMinCurveX:(double *)a3 curveY:(double *)a4 curveZ:(double *)a5
{
  pOZChannel = self->super.super.super.super.super._pOZChannel;
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
    v10 = 0;
    (*(**(v9[31] + 8) + 264))(*(v9[31] + 8), &v10);
    *a3 = v10;
  }

LABEL_4:
  if (a4)
  {
    v10 = 0;
    (*(**(v9[50] + 8) + 264))(*(v9[50] + 8), &v10);
    *a4 = v10;
  }

  if (a5)
  {
    v10 = 0;
    (*(**(v9[106] + 8) + 264))(*(v9[106] + 8), &v10);
    *a5 = v10;
  }
}

- (void)setMinCurveX:(double)a3 curveY:(double)a4 curveZ:(double)a5
{
  pOZChannel = self->super.super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v9 = 0;
  }

  OZChannel::setMin((v9 + 136), a3);
  OZChannel::setMin((v9 + 288), a4);

  OZChannel::setMin((v9 + 736), a5);
}

- (void)getMaxCurveX:(double *)a3 curveY:(double *)a4 curveZ:(double *)a5
{
  pOZChannel = self->super.super.super.super.super._pOZChannel;
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
    v10 = 0;
    (*(**(v9[31] + 8) + 256))(*(v9[31] + 8), &v10);
    *a3 = v10;
  }

LABEL_4:
  if (a4)
  {
    v10 = 0;
    (*(**(v9[50] + 8) + 256))(*(v9[50] + 8), &v10);
    *a4 = v10;
  }

  if (a5)
  {
    v10 = 0;
    (*(**(v9[106] + 8) + 256))(*(v9[106] + 8), &v10);
    *a5 = v10;
  }
}

- (void)setMaxCurveX:(double)a3 curveY:(double)a4 curveZ:(double)a5
{
  pOZChannel = self->super.super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v9 = 0;
  }

  OZChannel::setMax((v9 + 136), a3);
  OZChannel::setMax((v9 + 288), a4);

  OZChannel::setMax((v9 + 736), a5);
}

- (id)zChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

@end