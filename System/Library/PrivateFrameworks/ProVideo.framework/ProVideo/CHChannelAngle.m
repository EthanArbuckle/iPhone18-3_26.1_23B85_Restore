@interface CHChannelAngle
- (OZChannelAngle)ozChannel;
@end

@implementation CHChannelAngle

- (OZChannelAngle)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

@end