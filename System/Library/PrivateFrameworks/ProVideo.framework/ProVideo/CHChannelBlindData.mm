@interface CHChannelBlindData
- (id)pluginDataAtTime:(id *)a3;
- (void)ozChannel;
- (void)setDefaultCurveBlindDataValue:(id)a3;
- (void)setPluginData:(id)a3 atTime:(id *)a4;
@end

@implementation CHChannelBlindData

- (void)ozChannel
{
  result = self->super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (id)pluginDataAtTime:(id *)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannelBlindData::getPluginDataPtr(pOZChannel, a3);
}

- (void)setPluginData:(id)a3 atTime:(id *)a4
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelBlindData::setPluginDataPtr(pOZChannel, a4, a3, 0, 1, 1);
}

- (void)setDefaultCurveBlindDataValue:(id)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(*v5 + 512))(v5);
  v7 = *v5;
  if (v6)
  {
    v8 = (*(v7 + 832))(v5);
    OZChannelBlindData::setDefaultValue(v5, a3);
    if (v8)
    {
      return;
    }
  }

  else
  {
    v9 = (*(v7 + 496))(v5, 1);
    OZChannelBlindData::setDefaultValue(v5, a3);
    if (v9)
    {
      return;
    }
  }

  v10 = *(*v5 + 288);

  v10(v5, 0);
}

@end