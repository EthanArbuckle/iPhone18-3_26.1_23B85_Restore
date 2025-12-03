@interface CHChannelHistogram
- (double)blackInValueAtTime:(id *)time forHistogramChannel:(int)channel;
- (double)blackOutValueAtTime:(id *)time forHistogramChannel:(int)channel;
- (double)gammaValueAtTime:(id *)time forHistogramChannel:(int)channel;
- (double)whiteInValueAtTime:(id *)time forHistogramChannel:(int)channel;
- (double)whiteOutValueAtTime:(id *)time forHistogramChannel:(int)channel;
- (id)blackInChannelForHistogramChannel:(unsigned int)channel;
- (id)blackOutChannelForHistogramChannel:(unsigned int)channel;
- (id)gammaChannelForHistogramChannel:(unsigned int)channel;
- (id)selectedChannel;
- (id)whiteInChannelForHistogramChannel:(unsigned int)channel;
- (id)whiteOutChannelForHistogramChannel:(unsigned int)channel;
- (void)ozChannel;
@end

@implementation CHChannelHistogram

- (void)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (id)selectedChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

- (id)blackInChannelForHistogramChannel:(unsigned int)channel
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  BlackIn = OZChannelHistogram::getBlackIn(pOZChannel, channel);

  return CHChannelWrapperForOZChannel(BlackIn, 0);
}

- (id)blackOutChannelForHistogramChannel:(unsigned int)channel
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  BlackOut = OZChannelHistogram::getBlackOut(pOZChannel, channel);

  return CHChannelWrapperForOZChannel(BlackOut, 0);
}

- (id)whiteInChannelForHistogramChannel:(unsigned int)channel
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  WhiteIn = OZChannelHistogram::getWhiteIn(pOZChannel, channel);

  return CHChannelWrapperForOZChannel(WhiteIn, 0);
}

- (id)whiteOutChannelForHistogramChannel:(unsigned int)channel
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  WhiteOut = OZChannelHistogram::getWhiteOut(pOZChannel, channel);

  return CHChannelWrapperForOZChannel(WhiteOut, 0);
}

- (id)gammaChannelForHistogramChannel:(unsigned int)channel
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  Gamma = OZChannelHistogram::getGamma(pOZChannel, channel);

  return CHChannelWrapperForOZChannel(Gamma, 0);
}

- (double)blackInValueAtTime:(id *)time forHistogramChannel:(int)channel
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  (*(*v7 + 336))(&v9, v7, time);
  return OZChannelHistogram::getBlackInValue(v7, channel, &v9, 0.0);
}

- (double)blackOutValueAtTime:(id *)time forHistogramChannel:(int)channel
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  (*(*v7 + 336))(&v9, v7, time);
  return OZChannelHistogram::getBlackOutValue(v7, channel, &v9, 0.0);
}

- (double)whiteInValueAtTime:(id *)time forHistogramChannel:(int)channel
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  (*(*v7 + 336))(&v9, v7, time);
  return OZChannelHistogram::getWhiteInValue(v7, channel, &v9, 0.0);
}

- (double)whiteOutValueAtTime:(id *)time forHistogramChannel:(int)channel
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  (*(*v7 + 336))(&v9, v7, time);
  return OZChannelHistogram::getWhiteOutValue(v7, channel, &v9, 0.0);
}

- (double)gammaValueAtTime:(id *)time forHistogramChannel:(int)channel
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  (*(*v7 + 336))(&v9, v7, time);
  return OZChannelHistogram::getGammaValue(v7, channel, &v9, 0.0);
}

@end