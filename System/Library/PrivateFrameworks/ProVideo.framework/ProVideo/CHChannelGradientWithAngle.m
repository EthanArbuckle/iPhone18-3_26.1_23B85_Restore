@interface CHChannelGradientWithAngle
- (double)gradientAngleAtTime:(id *)a3;
- (id)gradientAngleChannel;
- (void)ozChannel;
@end

@implementation CHChannelGradientWithAngle

- (void)ozChannel
{
  result = self->super.super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (id)gradientAngleChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

- (double)gradientAngleAtTime:(id *)a3
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
  OZChannel::getValueAsDouble((v5 + 1056), &v7, 0.0);
  return result;
}

@end