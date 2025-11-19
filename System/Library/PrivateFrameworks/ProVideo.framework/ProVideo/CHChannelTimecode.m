@interface CHChannelTimecode
- (OZChannelTimecode)ozChannel;
@end

@implementation CHChannelTimecode

- (OZChannelTimecode)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

@end