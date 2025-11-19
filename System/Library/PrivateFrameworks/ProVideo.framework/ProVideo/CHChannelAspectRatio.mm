@interface CHChannelAspectRatio
- (OZChannelAspectRatio)ozChannel;
@end

@implementation CHChannelAspectRatio

- (OZChannelAspectRatio)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

@end