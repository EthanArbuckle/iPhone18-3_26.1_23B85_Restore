@interface CHChannelSeed
- (OZChannelSeed)ozChannel;
@end

@implementation CHChannelSeed

- (OZChannelSeed)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

@end