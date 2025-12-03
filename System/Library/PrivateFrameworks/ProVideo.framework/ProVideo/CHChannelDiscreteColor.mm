@interface CHChannelDiscreteColor
- (int)colorIndex;
- (int)defaultColorIndex;
- (void)ozChannel;
- (void)setColorIndex:(int)index;
- (void)setDefaultColorIndex:(int)index;
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

- (void)setColorIndex:(int)index
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelDiscreteColor::setColorIndex(pOZChannel, index);
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

- (void)setDefaultColorIndex:(int)index
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelDiscreteColor::setDefaultColorIndex(pOZChannel, index);
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