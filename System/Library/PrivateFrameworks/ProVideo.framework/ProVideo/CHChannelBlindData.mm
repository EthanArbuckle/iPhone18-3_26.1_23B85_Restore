@interface CHChannelBlindData
- (id)pluginDataAtTime:(id *)time;
- (void)ozChannel;
- (void)setDefaultCurveBlindDataValue:(id)value;
- (void)setPluginData:(id)data atTime:(id *)time;
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

- (id)pluginDataAtTime:(id *)time
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannelBlindData::getPluginDataPtr(pOZChannel, time);
}

- (void)setPluginData:(id)data atTime:(id *)time
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelBlindData::setPluginDataPtr(pOZChannel, time, data, 0, 1, 1);
}

- (void)setDefaultCurveBlindDataValue:(id)value
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
    OZChannelBlindData::setDefaultValue(v5, value);
    if (v8)
    {
      return;
    }
  }

  else
  {
    v9 = (*(v7 + 496))(v5, 1);
    OZChannelBlindData::setDefaultValue(v5, value);
    if (v9)
    {
      return;
    }
  }

  v10 = *(*v5 + 288);

  v10(v5, 0);
}

@end