@interface _SVXAudioStreamBasicDescriptionMutation
- (_SVXAudioStreamBasicDescriptionMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SVXAudioStreamBasicDescriptionMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v5 = [[SVXAudioStreamBasicDescription alloc] initWithSampleRate:self->_formatID formatID:self->_formatFlags formatFlags:self->_bytesPerPacket bytesPerPacket:self->_framesPerPacket framesPerPacket:self->_bytesPerFrame bytesPerFrame:self->_channelsPerFrame channelsPerFrame:self->_sampleRate bitsPerChannel:*&self->_bitsPerChannel reserved:?];
    goto LABEL_25;
  }

  mutationFlags = self->_mutationFlags;
  if ((mutationFlags & 1) == 0)
  {
    v5 = [(SVXAudioStreamBasicDescription *)baseModel copy];
    goto LABEL_25;
  }

  if ((mutationFlags & 2) != 0)
  {
    sampleRate = self->_sampleRate;
    if ((mutationFlags & 4) != 0)
    {
LABEL_7:
      formatID = self->_formatID;
      if ((mutationFlags & 8) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else
  {
    [(SVXAudioStreamBasicDescription *)baseModel sampleRate];
    sampleRate = v6;
    mutationFlags = self->_mutationFlags;
    if ((mutationFlags & 4) != 0)
    {
      goto LABEL_7;
    }
  }

  formatID = [(SVXAudioStreamBasicDescription *)self->_baseModel formatID];
  mutationFlags = self->_mutationFlags;
  if ((mutationFlags & 8) != 0)
  {
LABEL_8:
    formatFlags = self->_formatFlags;
    if ((mutationFlags & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  formatFlags = [(SVXAudioStreamBasicDescription *)self->_baseModel formatFlags];
  mutationFlags = self->_mutationFlags;
  if ((mutationFlags & 0x10) != 0)
  {
LABEL_9:
    bytesPerPacket = self->_bytesPerPacket;
    if ((mutationFlags & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  bytesPerPacket = [(SVXAudioStreamBasicDescription *)self->_baseModel bytesPerPacket];
  mutationFlags = self->_mutationFlags;
  if ((mutationFlags & 0x20) != 0)
  {
LABEL_10:
    framesPerPacket = self->_framesPerPacket;
    if ((mutationFlags & 0x40) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  framesPerPacket = [(SVXAudioStreamBasicDescription *)self->_baseModel framesPerPacket];
  mutationFlags = self->_mutationFlags;
  if ((mutationFlags & 0x40) != 0)
  {
LABEL_11:
    bytesPerFrame = self->_bytesPerFrame;
    if ((mutationFlags & 0x80) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  bytesPerFrame = [(SVXAudioStreamBasicDescription *)self->_baseModel bytesPerFrame];
  mutationFlags = self->_mutationFlags;
  if ((mutationFlags & 0x80) != 0)
  {
LABEL_12:
    channelsPerFrame = self->_channelsPerFrame;
    if ((mutationFlags & 0x100) != 0)
    {
      goto LABEL_13;
    }

LABEL_22:
    bitsPerChannel = [(SVXAudioStreamBasicDescription *)self->_baseModel bitsPerChannel];
    if ((*&self->_mutationFlags & 0x200) != 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    reserved = [(SVXAudioStreamBasicDescription *)self->_baseModel reserved];
    goto LABEL_24;
  }

LABEL_21:
  channelsPerFrame = [(SVXAudioStreamBasicDescription *)self->_baseModel channelsPerFrame];
  mutationFlags = self->_mutationFlags;
  if ((mutationFlags & 0x100) == 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  bitsPerChannel = self->_bitsPerChannel;
  if ((mutationFlags & 0x200) == 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  reserved = self->_reserved;
LABEL_24:
  v5 = [[SVXAudioStreamBasicDescription alloc] initWithSampleRate:formatID formatID:formatFlags formatFlags:bytesPerPacket bytesPerPacket:framesPerPacket framesPerPacket:bytesPerFrame bytesPerFrame:channelsPerFrame channelsPerFrame:sampleRate bitsPerChannel:__PAIR64__(reserved reserved:bitsPerChannel)];
LABEL_25:

  return v5;
}

- (_SVXAudioStreamBasicDescriptionMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SVXAudioStreamBasicDescriptionMutation;
  v6 = [(_SVXAudioStreamBasicDescriptionMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end