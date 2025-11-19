@interface CHChannelGradientExtras
- (id)gradientTypeChannel;
- (int)gradientType:(id *)a3;
- (int)gradientType:(id *)a3 index:(double)a4;
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

- (int)gradientType:(id *)a3
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
  return OZChannel::getValueAsInt((v5 + 800), &v7, 0.0);
}

- (int)gradientType:(id *)a3 index:(double)a4
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  (*(*v7 + 336))(&v9, v7, a3);
  return OZChannel::getValueAsInt((v7 + 800), &v9, a4);
}

@end