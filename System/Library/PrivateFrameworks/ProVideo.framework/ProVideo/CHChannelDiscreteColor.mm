@interface CHChannelDiscreteColor
- (int)colorIndex;
- (int)defaultColorIndex;
- (void)ozChannel;
- (void)setColorIndex:(int)a3;
- (void)setDefaultColorIndex:(int)a3;
@end

@implementation CHChannelDiscreteColor

- (void)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (void)setColorIndex:(int)a3
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelDiscreteColor::setColorIndex(pOZChannel, a3);
}

- (int)colorIndex
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
    v2 = vars8;
  }

  v4 = MEMORY[0x277CC08F0];

  return OZChannel::getValueAsInt(pOZChannel, v4, 0.0);
}

- (void)setDefaultColorIndex:(int)a3
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelDiscreteColor::setDefaultColorIndex(pOZChannel, a3);
}

- (int)defaultColorIndex
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
    v2 = vars8;
  }

  return OZChannelDiscreteColor::getDefaultColorIndex(pOZChannel);
}

@end