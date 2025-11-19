@interface CHChannelHistogramSample
- (id)blackInChannel;
- (id)blackOutChannel;
- (id)gammaChannel;
- (id)whiteInChannel;
- (id)whiteOutChannel;
- (void)ozChannel;
@end

@implementation CHChannelHistogramSample

- (void)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (id)blackInChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

- (id)blackOutChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

- (id)whiteInChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

- (id)whiteOutChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

- (id)gammaChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

@end