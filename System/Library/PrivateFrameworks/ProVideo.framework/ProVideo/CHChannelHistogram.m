@interface CHChannelHistogram
- (double)blackInValueAtTime:(id *)a3 forHistogramChannel:(int)a4;
- (double)blackOutValueAtTime:(id *)a3 forHistogramChannel:(int)a4;
- (double)gammaValueAtTime:(id *)a3 forHistogramChannel:(int)a4;
- (double)whiteInValueAtTime:(id *)a3 forHistogramChannel:(int)a4;
- (double)whiteOutValueAtTime:(id *)a3 forHistogramChannel:(int)a4;
- (id)blackInChannelForHistogramChannel:(unsigned int)a3;
- (id)blackOutChannelForHistogramChannel:(unsigned int)a3;
- (id)gammaChannelForHistogramChannel:(unsigned int)a3;
- (id)selectedChannel;
- (id)whiteInChannelForHistogramChannel:(unsigned int)a3;
- (id)whiteOutChannelForHistogramChannel:(unsigned int)a3;
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

- (id)blackInChannelForHistogramChannel:(unsigned int)a3
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  BlackIn = OZChannelHistogram::getBlackIn(pOZChannel, a3);

  return CHChannelWrapperForOZChannel(BlackIn, 0);
}

- (id)blackOutChannelForHistogramChannel:(unsigned int)a3
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  BlackOut = OZChannelHistogram::getBlackOut(pOZChannel, a3);

  return CHChannelWrapperForOZChannel(BlackOut, 0);
}

- (id)whiteInChannelForHistogramChannel:(unsigned int)a3
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  WhiteIn = OZChannelHistogram::getWhiteIn(pOZChannel, a3);

  return CHChannelWrapperForOZChannel(WhiteIn, 0);
}

- (id)whiteOutChannelForHistogramChannel:(unsigned int)a3
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  WhiteOut = OZChannelHistogram::getWhiteOut(pOZChannel, a3);

  return CHChannelWrapperForOZChannel(WhiteOut, 0);
}

- (id)gammaChannelForHistogramChannel:(unsigned int)a3
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  Gamma = OZChannelHistogram::getGamma(pOZChannel, a3);

  return CHChannelWrapperForOZChannel(Gamma, 0);
}

- (double)blackInValueAtTime:(id *)a3 forHistogramChannel:(int)a4
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
  return OZChannelHistogram::getBlackInValue(v7, a4, &v9, 0.0);
}

- (double)blackOutValueAtTime:(id *)a3 forHistogramChannel:(int)a4
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
  return OZChannelHistogram::getBlackOutValue(v7, a4, &v9, 0.0);
}

- (double)whiteInValueAtTime:(id *)a3 forHistogramChannel:(int)a4
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
  return OZChannelHistogram::getWhiteInValue(v7, a4, &v9, 0.0);
}

- (double)whiteOutValueAtTime:(id *)a3 forHistogramChannel:(int)a4
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
  return OZChannelHistogram::getWhiteOutValue(v7, a4, &v9, 0.0);
}

- (double)gammaValueAtTime:(id *)a3 forHistogramChannel:(int)a4
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
  return OZChannelHistogram::getGammaValue(v7, a4, &v9, 0.0);
}

@end