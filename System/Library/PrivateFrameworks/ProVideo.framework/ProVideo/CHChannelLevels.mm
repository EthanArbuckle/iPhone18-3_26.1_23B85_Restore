@interface CHChannelLevels
- (double)blackValueAtTime:(id *)time;
- (double)gammaValueAtTime:(id *)time;
- (double)whiteValueAtTime:(id *)time;
- (id)blackChannel;
- (id)gammaChannel;
- (id)whiteChannel;
- (void)ozChannel;
@end

@implementation CHChannelLevels

- (void)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (id)blackChannel
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  FrameStats = PVRenderJob::GetFrameStats(pOZChannel);

  return CHChannelWrapperForOZChannel(FrameStats, 0);
}

- (id)whiteChannel
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  White = OZChannelLevels::getWhite(pOZChannel);

  return CHChannelWrapperForOZChannel(White, 0);
}

- (id)gammaChannel
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  Gamma = OZChannelLevels::getGamma(pOZChannel);

  return CHChannelWrapperForOZChannel(Gamma, 0);
}

- (double)blackValueAtTime:(id *)time
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(&v7, v5, time);
  OZChannelLevels::getBlackValue(v5, &v7, 0.0);
  return result;
}

- (double)whiteValueAtTime:(id *)time
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(&v7, v5, time);
  OZChannelLevels::getWhiteValue(v5, &v7, 0.0);
  return result;
}

- (double)gammaValueAtTime:(id *)time
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 336))(&v7, v5, time);
  OZChannelLevels::getGammaValue(v5, &v7, 0.0);
  return result;
}

@end