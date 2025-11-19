@interface CHChannelFrame
- (OZChannelFrame)ozChannel;
@end

@implementation CHChannelFrame

- (OZChannelFrame)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

@end