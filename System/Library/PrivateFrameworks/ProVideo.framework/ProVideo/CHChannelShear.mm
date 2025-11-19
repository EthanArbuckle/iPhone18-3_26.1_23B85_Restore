@interface CHChannelShear
- (void)getDefaultCurveX:(double *)a3 curveY:(double *)a4;
- (void)getMaxCurveX:(double *)a3 curveY:(double *)a4;
- (void)getMinCurveX:(double *)a3 curveY:(double *)a4;
- (void)getShearAtTime:(id *)a3 curveX:(double *)a4 curveY:(double *)a5;
- (void)getShearAtTime:(id *)a3 x:(double *)a4 y:(double *)a5;
- (void)ozChannel;
- (void)setDefaultCurveX:(double)a3 curveY:(double)a4;
- (void)setMaxCurveX:(double)a3 curveY:(double)a4;
- (void)setMinCurveX:(double)a3 curveY:(double)a4;
- (void)setShearAtTime:(id *)a3 curveX:(double)a4 curveY:(double)a5 options:(unsigned int)a6;
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

- (void)getShearAtTime:(id *)a3 x:(double *)a4 y:(double *)a5
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v9 = 0;
  }

  OZChannel::getValueAsDouble((v9 + 136), a3, 0.0);
  *a4 = v10;
  OZChannel::getValueAsDouble((v9 + 288), a3, 0.0);
  *a5 = v11;
}

- (void)getShearAtTime:(id *)a3 curveX:(double *)a4 curveY:(double *)a5
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
  v11 = *&a3->var0;
  var3 = a3->var3;
  [(CHChannelBase *)self convertGlobalToLocal:&v11];
  if (a4)
  {
    *a4 = OZChannel::getCurveValue((v10 + 136), &v13, 0);
  }

  if (a5)
  {
    *a5 = OZChannel::getCurveValue((v10 + 288), &v13, 0);
  }
}

- (void)setShearAtTime:(id *)a3 curveX:(double)a4 curveY:(double)a5 options:(unsigned int)a6
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
  OZChannel::setValue((v11 + 136), a3, a4, 0);
  v15 = OZChannel::setValue((v11 + 288), a3, a5, 0);
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

@end