@interface CHChannelGradientFolder
- (id)addNewChannelWithXMLTypeInfo:(id)a3;
- (id)cloneSample:(unsigned int)a3;
- (id)insertSampleAtTime:(id *)a3 offset:(double)a4;
- (id)sampleBaseName;
- (void)deleteSample:(unsigned int)a3;
- (void)flopAtTime:(id *)a3;
- (void)ozChannel;
- (void)sortAndRename;
- (void)spreadAtTime:(id *)a3;
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

- (id)insertSampleAtTime:(id *)a3 offset:(double)a4
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v7 = (*(*pOZChannel + 720))(pOZChannel, a3, a4);

  return CHChannelWrapperForOZChannel(v7, 0);
}

- (id)cloneSample:(unsigned int)a3
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v5 = OZChannelGradientFolder::cloneSample(pOZChannel, a3);

  return CHChannelWrapperForOZChannel(v5, 0);
}

- (void)deleteSample:(unsigned int)a3
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelGradientFolder::deleteSample(pOZChannel, a3);
}

- (void)spreadAtTime:(id *)a3
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelGradientFolder::spread(pOZChannel, a3);
}

- (void)flopAtTime:(id *)a3
{
  pOZChannel = self->super.super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelGradientFolder::flop(pOZChannel, a3);
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

- (id)addNewChannelWithXMLTypeInfo:(id)a3
{
  v4 = *MEMORY[0x277CC08F0];
  v5 = *(MEMORY[0x277CC08F0] + 16);
  return [(CHChannelGradientFolder *)self insertSampleAtTime:&v4 offset:0.0];
}

@end