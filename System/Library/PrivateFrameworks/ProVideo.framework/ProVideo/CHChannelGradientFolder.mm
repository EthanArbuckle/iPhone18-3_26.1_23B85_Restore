@interface CHChannelGradientFolder
- (id)addNewChannelWithXMLTypeInfo:(id)info;
- (id)cloneSample:(unsigned int)sample;
- (id)insertSampleAtTime:(id *)time offset:(double)offset;
- (id)sampleBaseName;
- (void)deleteSample:(unsigned int)sample;
- (void)flopAtTime:(id *)time;
- (void)ozChannel;
- (void)sortAndRename;
- (void)spreadAtTime:(id *)time;
@end

@implementation CHChannelGradientFolder

- (void)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (id)sampleBaseName
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v3 = (*(*pOZChannel + 712))(pOZChannel, a2);

  return PCString::ns_str(v3);
}

- (id)insertSampleAtTime:(id *)time offset:(double)offset
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v7 = (*(*pOZChannel + 720))(pOZChannel, time, offset);

  return CHChannelWrapperForOZChannel(v7, 0);
}

- (id)cloneSample:(unsigned int)sample
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v5 = OZChannelGradientFolder::cloneSample(pOZChannel, sample);

  return CHChannelWrapperForOZChannel(v5, 0);
}

- (void)deleteSample:(unsigned int)sample
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelGradientFolder::deleteSample(pOZChannel, sample);
}

- (void)spreadAtTime:(id *)time
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelGradientFolder::spread(pOZChannel, time);
}

- (void)flopAtTime:(id *)time
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelGradientFolder::flop(pOZChannel, time);
}

- (void)sortAndRename
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
    v2 = vars8;
  }

  OZChannelGradientFolder::sortAndRename(pOZChannel);
}

- (id)addNewChannelWithXMLTypeInfo:(id)info
{
  v4 = *MEMORY[0x277CC08F0];
  v5 = *(MEMORY[0x277CC08F0] + 16);
  return [(CHChannelGradientFolder *)self insertSampleAtTime:&v4 offset:0.0];
}

@end