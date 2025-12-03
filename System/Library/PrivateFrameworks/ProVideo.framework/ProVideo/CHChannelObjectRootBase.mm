@interface CHChannelObjectRootBase
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)offset;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeOffset;
- (void)ozChannel;
- (void)setDuration:(id *)duration;
- (void)setOffset:(id *)offset;
- (void)setTimeOffset:(id *)offset;
@end

@implementation CHChannelObjectRootBase

- (void)ozChannel
{
  result = self->super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeOffset
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v4 = *(*pOZChannel + 320);

  return v4();
}

- (void)setTimeOffset:(id *)offset
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelObjectRootBase::setTimeOffset(pOZChannel, offset, 0);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  result = (*(*pOZChannel + 712))(v6);
  *&retstr->var0 = v7;
  retstr->var3 = v8;
  return result;
}

- (void)setDuration:(id *)duration
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 712))(v6, v5);
  v7 = *&duration->var0;
  var3 = duration->var3;
  OZChannelObjectRootBase::setTimeExtent(v5, v6, 0);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)offset
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  result = (*(*pOZChannel + 712))(&v6);
  *&retstr->var0 = v6;
  retstr->var3 = v7;
  return result;
}

- (void)setOffset:(id *)offset
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  (*(*v5 + 712))(&v6, v5);
  v6 = *&offset->var0;
  var3 = offset->var3;
  OZChannelObjectRootBase::setTimeExtent(v5, &v6, 0);
}

@end