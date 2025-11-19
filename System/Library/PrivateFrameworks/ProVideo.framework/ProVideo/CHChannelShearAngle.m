@interface CHChannelShearAngle
- (OZChannelShearAngle)ozChannel;
@end

@implementation CHChannelShearAngle

- (OZChannelShearAngle)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

@end