@interface CHChannelPosition3D
- (id)zChannel;
- (void)getDefaultCurveX:(double *)x curveY:(double *)y curveZ:(double *)z;
- (void)getMaxCurveX:(double *)x curveY:(double *)y curveZ:(double *)z;
- (void)getMinCurveX:(double *)x curveY:(double *)y curveZ:(double *)z;
- (void)getPositionAtTime:(id *)time curveX:(double *)x curveY:(double *)y curveZ:(double *)z;
- (void)getPositionAtTime:(id *)time x:(double *)x y:(double *)y z:(double *)z;
- (void)offsetPositionAtTime:(id *)time deltaX:(double)x deltaY:(double)y deltaZ:(double)z options:(unsigned int)options;
- (void)ozChannel;
- (void)setDefaultCurveX:(double)x curveY:(double)y curveZ:(double)z;
- (void)setDoubleValuesAtTime:(id *)time curveX:(double)x curveY:(double)y curveZ:(double)z options:(unsigned int)options;
- (void)setMaxCurveX:(double)x curveY:(double)y curveZ:(double)z;
- (void)setMinCurveX:(double)x curveY:(double)y curveZ:(double)z;
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

- (void)getPositionAtTime:(id *)time x:(double *)x y:(double *)y z:(double *)z
{
  pOZChannel = self->super.super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v11 = 0;
  }

  (*(*v11 + 336))(&v15, v11, time);
  if (x)
  {
    OZChannel::getValueAsDouble((v11 + 136), &v15, 0.0);
    *x = v12;
  }

  if (y)
  {
    OZChannel::getValueAsDouble((v11 + 288), &v15, 0.0);
    *y = v13;
  }

  if (z)
  {
    OZChannel::getValueAsDouble((v11 + 736), &v15, 0.0);
    *z = v14;
  }
}

- (void)getPositionAtTime:(id *)time curveX:(double *)x curveY:(double *)y curveZ:(double *)z
{
  pOZChannel = self->super.super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
    if (!x)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (x)
  {
LABEL_3:
    *x = OZChannel::getCurveValue((v11 + 136), time, 0);
  }

LABEL_4:
  if (y)
  {
    *y = OZChannel::getCurveValue((v11 + 288), time, 0);
  }

  if (z)
  {
    *z = OZChannel::getCurveValue((v11 + 736), time, 0);
  }
}

- (void)setDoubleValuesAtTime:(id *)time curveX:(double)x curveY:(double)y curveZ:(double)z options:(unsigned int)options
{
  optionsCopy = options;
  pOZChannel = self->super.super.super.super.super._pOZChannel;
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
  memset(v20, 0, sizeof(v20));
  (*(*v13 + 336))(v20, v13, time);
  v18 = v13[17];
  v17 = v13 + 17;
  (*(v18 + 712))(v17, v20, 0, x);
  (*(v17[19] + 712))(v17 + 19, v20, 0, y);
  v19 = (*(v17[75] + 712))(v17 + 75, v20, 0, z);
  *(OZCoreGlobals::getInstance(v19) + 8) = v16;
}

- (void)offsetPositionAtTime:(id *)time deltaX:(double)x deltaY:(double)y deltaZ:(double)z options:(unsigned int)options
{
  optionsCopy = options;
  pOZChannel = self->super.super.super.super.super._pOZChannel;
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
  memset(&v18, 0, sizeof(v18));
  (*(*v13 + 336))(&v18, v13, time);
  v17 = OZChannelPosition3D::offsetPosition(v13, &v18, x, y, z, 1);
  *(OZCoreGlobals::getInstance(v17) + 8) = v16;
}

- (void)getDefaultCurveX:(double *)x curveY:(double *)y curveZ:(double *)z
{
  pOZChannel = self->super.super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
    if (!x)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (x)
  {
LABEL_3:
    *x = OZChannel::getDefaultValue((v9 + 136));
  }

LABEL_4:
  if (y)
  {
    *y = OZChannel::getDefaultValue((v9 + 288));
  }

  if (z)
  {
    *z = OZChannel::getDefaultValue((v9 + 736));
  }
}

- (void)setDefaultCurveX:(double)x curveY:(double)y curveZ:(double)z
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

  OZChannel::setDefaultValue(v10, x);
  OZChannel::setDefaultValue(v14, y);
  OZChannel::setDefaultValue(v18, z);
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

- (void)getMinCurveX:(double *)x curveY:(double *)y curveZ:(double *)z
{
  pOZChannel = self->super.super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
    if (!x)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (x)
  {
LABEL_3:
    v10 = 0;
    (*(**(v9[31] + 8) + 264))(*(v9[31] + 8), &v10);
    *x = v10;
  }

LABEL_4:
  if (y)
  {
    v10 = 0;
    (*(**(v9[50] + 8) + 264))(*(v9[50] + 8), &v10);
    *y = v10;
  }

  if (z)
  {
    v10 = 0;
    (*(**(v9[106] + 8) + 264))(*(v9[106] + 8), &v10);
    *z = v10;
  }
}

- (void)setMinCurveX:(double)x curveY:(double)y curveZ:(double)z
{
  pOZChannel = self->super.super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v9 = 0;
  }

  OZChannel::setMin((v9 + 136), x);
  OZChannel::setMin((v9 + 288), y);

  OZChannel::setMin((v9 + 736), z);
}

- (void)getMaxCurveX:(double *)x curveY:(double *)y curveZ:(double *)z
{
  pOZChannel = self->super.super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
    if (!x)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (x)
  {
LABEL_3:
    v10 = 0;
    (*(**(v9[31] + 8) + 256))(*(v9[31] + 8), &v10);
    *x = v10;
  }

LABEL_4:
  if (y)
  {
    v10 = 0;
    (*(**(v9[50] + 8) + 256))(*(v9[50] + 8), &v10);
    *y = v10;
  }

  if (z)
  {
    v10 = 0;
    (*(**(v9[106] + 8) + 256))(*(v9[106] + 8), &v10);
    *z = v10;
  }
}

- (void)setMaxCurveX:(double)x curveY:(double)y curveZ:(double)z
{
  pOZChannel = self->super.super.super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v9 = 0;
  }

  OZChannel::setMax((v9 + 136), x);
  OZChannel::setMax((v9 + 288), y);

  OZChannel::setMax((v9 + 736), z);
}

- (id)zChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

@end