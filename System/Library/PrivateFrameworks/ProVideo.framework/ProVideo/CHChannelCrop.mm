@interface CHChannelCrop
- (id)bottomChannel;
- (id)leftChannel;
- (id)rightChannel;
- (id)topChannel;
- (void)ozChannel;
@end

@implementation CHChannelCrop

- (void)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (id)leftChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

- (id)rightChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

- (id)bottomChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

- (id)topChannel
{

  return CHChannelWrapperForOZChannel(v2, 0);
}

@end