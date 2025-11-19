@interface CHChannelLevels
- (double)blackValueAtTime:(id *)a3;
- (double)gammaValueAtTime:(id *)a3;
- (double)whiteValueAtTime:(id *)a3;
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

- (double)blackValueAtTime:(id *)a3
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
  OZChannelLevels::getBlackValue(v5, &v7, 0.0);
  return result;
}

- (double)whiteValueAtTime:(id *)a3
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
  OZChannelLevels::getWhiteValue(v5, &v7, 0.0);
  return result;
}

- (double)gammaValueAtTime:(id *)a3
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
  OZChannelLevels::getGammaValue(v5, &v7, 0.0);
  return result;
}

@end