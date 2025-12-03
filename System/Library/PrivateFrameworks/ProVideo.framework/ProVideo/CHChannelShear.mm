@interface CHChannelShear
- (void)getDefaultCurveX:(double *)x curveY:(double *)y;
- (void)getMaxCurveX:(double *)x curveY:(double *)y;
- (void)getMinCurveX:(double *)x curveY:(double *)y;
- (void)getShearAtTime:(id *)time curveX:(double *)x curveY:(double *)y;
- (void)getShearAtTime:(id *)time x:(double *)x y:(double *)y;
- (void)ozChannel;
- (void)setDefaultCurveX:(double)x curveY:(double)y;
- (void)setMaxCurveX:(double)x curveY:(double)y;
- (void)setMinCurveX:(double)x curveY:(double)y;
- (void)setShearAtTime:(id *)time curveX:(double)x curveY:(double)y options:(unsigned int)options;
@end

@implementation CHChannelShear

- (void)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (void)getShearAtTime:(id *)time x:(double *)x y:(double *)y
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v9 = 0;
  }

  OZChannel::getValueAsDouble((v9 + 136), time, 0.0);
  *x = v10;
  OZChannel::getValueAsDouble((v9 + 288), time, 0.0);
  *y = v11;
}

- (void)getShearAtTime:(id *)time curveX:(double *)x curveY:(double *)y
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v10 = 0;
  }

  memset(&v13, 0, sizeof(v13));
  v11 = *&time->var0;
  var3 = time->var3;
  [(CHChannelBase *)self convertGlobalToLocal:&v11];
  if (x)
  {
    *x = OZChannel::getCurveValue((v10 + 136), &v13, 0);
  }

  if (y)
  {
    *y = OZChannel::getCurveValue((v10 + 288), &v13, 0);
  }
}

- (void)setShearAtTime:(id *)time curveX:(double)x curveY:(double)y options:(unsigned int)options
{
  optionsCopy = options;
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
    v11 = pOZChannel;
  }

  else
  {
    v11 = 0;
  }

  if ((~time->var2 & 0x11) == 0)
  {
    v12 = *MEMORY[0x277CC08F0];
    time->var3 = *(MEMORY[0x277CC08F0] + 16);
    *&time->var0 = v12;
  }

  Instance = OZCoreGlobals::getInstance(pOZChannel);
  v14 = *(Instance + 8);
  *(OZCoreGlobals::getInstance(Instance) + 8) = optionsCopy & 1;
  OZChannel::setValue((v11 + 136), time, x, 0);
  v15 = OZChannel::setValue((v11 + 288), time, y, 0);
  *(OZCoreGlobals::getInstance(v15) + 8) = v14;
}

- (void)getDefaultCurveX:(double *)x curveY:(double *)y
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
    if (!x)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (x)
  {
LABEL_3:
    *x = OZChannel::getDefaultValue((v7 + 136));
  }

LABEL_4:
  if (y)
  {
    *y = OZChannel::getDefaultValue((v7 + 288));
  }
}

- (void)setDefaultCurveX:(double)x curveY:(double)y
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

  OZChannel::setDefaultValue(v8, x);
  OZChannel::setDefaultValue(v12, y);
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

- (void)getMinCurveX:(double *)x curveY:(double *)y
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
    if (!x)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (x)
  {
LABEL_3:
    v8 = 0;
    (*(**(v7[31] + 8) + 264))(*(v7[31] + 8), &v8);
    *x = v8;
  }

LABEL_4:
  if (y)
  {
    v8 = 0;
    (*(**(v7[50] + 8) + 264))(*(v7[50] + 8), &v8);
    *y = v8;
  }
}

- (void)setMinCurveX:(double)x curveY:(double)y
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  OZChannel::setMin((v7 + 136), x);

  OZChannel::setMin((v7 + 288), y);
}

- (void)getMaxCurveX:(double *)x curveY:(double *)y
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
    if (!x)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (x)
  {
LABEL_3:
    v8 = 0;
    (*(**(v7[31] + 8) + 256))(*(v7[31] + 8), &v8);
    *x = v8;
  }

LABEL_4:
  if (y)
  {
    v8 = 0;
    (*(**(v7[50] + 8) + 256))(*(v7[50] + 8), &v8);
    *y = v8;
  }
}

- (void)setMaxCurveX:(double)x curveY:(double)y
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  OZChannel::setMax((v7 + 136), x);

  OZChannel::setMax((v7 + 288), y);
}

@end