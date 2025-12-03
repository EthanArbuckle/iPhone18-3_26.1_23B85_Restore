@interface CHChannelGradientExtras
- (id)gradientTypeChannel;
- (int)gradientType:(id *)type;
- (int)gradientType:(id *)type index:(double)index;
- (void)ozChannel;
@end

@implementation CHChannelGradientExtras

- (void)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (id)gradientTypeChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

- (int)gradientType:(id *)type
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(&v7, v5, type);
  return OZChannel::getValueAsInt((v5 + 800), &v7, 0.0);
}

- (int)gradientType:(id *)type index:(double)index
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  (*(*v7 + 336))(&v9, v7, type);
  return OZChannel::getValueAsInt((v7 + 800), &v9, index);
}

@end