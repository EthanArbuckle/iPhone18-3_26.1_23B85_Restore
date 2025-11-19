@interface CHChannelGradientPositioned
- (id)endChannel;
- (id)startChannel;
- (void)ozChannel;
@end

@implementation CHChannelGradientPositioned

- (void)ozChannel
{
  result = self->super.super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (id)startChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

- (id)endChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

@end