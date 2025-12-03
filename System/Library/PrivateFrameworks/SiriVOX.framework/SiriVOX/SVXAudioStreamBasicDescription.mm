@interface SVXAudioStreamBasicDescription
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXAudioStreamBasicDescription)initWithCoder:(id)coder;
- (SVXAudioStreamBasicDescription)initWithSampleRate:(double)rate formatID:(unsigned int)d formatFlags:(unsigned int)flags bytesPerPacket:(unsigned int)packet framesPerPacket:(unsigned int)perPacket bytesPerFrame:(unsigned int)frame channelsPerFrame:(unsigned int)perFrame bitsPerChannel:(unsigned int)self0 reserved:(unsigned int)self1;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXAudioStreamBasicDescription

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  sampleRate = self->_sampleRate;
  coderCopy = coder;
  v7 = [v4 numberWithDouble:sampleRate];
  [coderCopy encodeObject:v7 forKey:@"SVXAudioStreamBasicDescription::sampleRate"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_formatID];
  [coderCopy encodeObject:v8 forKey:@"SVXAudioStreamBasicDescription::formatID"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_formatFlags];
  [coderCopy encodeObject:v9 forKey:@"SVXAudioStreamBasicDescription::formatFlags"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bytesPerPacket];
  [coderCopy encodeObject:v10 forKey:@"SVXAudioStreamBasicDescription::bytesPerPacket"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_framesPerPacket];
  [coderCopy encodeObject:v11 forKey:@"SVXAudioStreamBasicDescription::framesPerPacket"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bytesPerFrame];
  [coderCopy encodeObject:v12 forKey:@"SVXAudioStreamBasicDescription::bytesPerFrame"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_channelsPerFrame];
  [coderCopy encodeObject:v13 forKey:@"SVXAudioStreamBasicDescription::channelsPerFrame"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bitsPerChannel];
  [coderCopy encodeObject:v14 forKey:@"SVXAudioStreamBasicDescription::bitsPerChannel"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_reserved];
  [coderCopy encodeObject:v15 forKey:@"SVXAudioStreamBasicDescription::reserved"];
}

- (SVXAudioStreamBasicDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::sampleRate"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::formatID"];
  unsignedIntValue = [v7 unsignedIntValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::formatFlags"];
  unsignedIntValue2 = [v9 unsignedIntValue];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::bytesPerPacket"];
  unsignedIntValue3 = [v11 unsignedIntValue];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::framesPerPacket"];
  unsignedIntValue4 = [v13 unsignedIntValue];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::bytesPerFrame"];
  unsignedIntValue5 = [v15 unsignedIntValue];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::channelsPerFrame"];
  unsignedIntValue6 = [v17 unsignedIntValue];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::bitsPerChannel"];
  unsignedIntValue7 = [v19 unsignedIntValue];

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::reserved"];

  LODWORD(coderCopy) = [v21 unsignedIntValue];
  return [(SVXAudioStreamBasicDescription *)self initWithSampleRate:unsignedIntValue formatID:unsignedIntValue2 formatFlags:unsignedIntValue3 bytesPerPacket:unsignedIntValue4 framesPerPacket:unsignedIntValue5 bytesPerFrame:unsignedIntValue6 channelsPerFrame:v6 bitsPerChannel:__PAIR64__(coderCopy reserved:unsignedIntValue7)];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sampleRate = self->_sampleRate;
      [(SVXAudioStreamBasicDescription *)v5 sampleRate];
      if (sampleRate == v7 && (formatID = self->_formatID, formatID == [(SVXAudioStreamBasicDescription *)v5 formatID]) && (formatFlags = self->_formatFlags, formatFlags == [(SVXAudioStreamBasicDescription *)v5 formatFlags]) && (bytesPerPacket = self->_bytesPerPacket, bytesPerPacket == [(SVXAudioStreamBasicDescription *)v5 bytesPerPacket]) && (framesPerPacket = self->_framesPerPacket, framesPerPacket == [(SVXAudioStreamBasicDescription *)v5 framesPerPacket]) && (bytesPerFrame = self->_bytesPerFrame, bytesPerFrame == [(SVXAudioStreamBasicDescription *)v5 bytesPerFrame]) && (channelsPerFrame = self->_channelsPerFrame, channelsPerFrame == [(SVXAudioStreamBasicDescription *)v5 channelsPerFrame]) && (bitsPerChannel = self->_bitsPerChannel, bitsPerChannel == [(SVXAudioStreamBasicDescription *)v5 bitsPerChannel]))
      {
        reserved = self->_reserved;
        v16 = reserved == [(SVXAudioStreamBasicDescription *)v5 reserved];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_sampleRate];
  v3 = [v21 hash];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_formatID];
  v4 = [v20 hash] ^ v3;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_formatFlags];
  v6 = [v5 hash];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bytesPerPacket];
  v8 = v4 ^ v6 ^ [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_framesPerPacket];
  v10 = [v9 hash];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bytesPerFrame];
  v12 = v10 ^ [v11 hash];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_channelsPerFrame];
  v14 = v8 ^ v12 ^ [v13 hash];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bitsPerChannel];
  v16 = [v15 hash];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_reserved];
  v18 = v16 ^ [v17 hash];

  return v14 ^ v18;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXAudioStreamBasicDescription;
  v5 = [(SVXAudioStreamBasicDescription *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {sampleRate = %f, formatID = %u, formatFlags = %u, bytesPerPacket = %u, framesPerPacket = %u, bytesPerFrame = %u, channelsPerFrame = %u, bitsPerChannel = %u, reserved = %u}", v5, *&self->_sampleRate, self->_formatID, self->_formatFlags, self->_bytesPerPacket, self->_framesPerPacket, self->_bytesPerFrame, self->_channelsPerFrame, self->_bitsPerChannel, self->_reserved];

  return v6;
}

- (SVXAudioStreamBasicDescription)initWithSampleRate:(double)rate formatID:(unsigned int)d formatFlags:(unsigned int)flags bytesPerPacket:(unsigned int)packet framesPerPacket:(unsigned int)perPacket bytesPerFrame:(unsigned int)frame channelsPerFrame:(unsigned int)perFrame bitsPerChannel:(unsigned int)self0 reserved:(unsigned int)self1
{
  v19.receiver = self;
  v19.super_class = SVXAudioStreamBasicDescription;
  result = [(SVXAudioStreamBasicDescription *)&v19 init];
  if (result)
  {
    result->_sampleRate = rate;
    result->_formatID = d;
    result->_formatFlags = flags;
    result->_bytesPerPacket = packet;
    result->_framesPerPacket = perPacket;
    result->_bytesPerFrame = frame;
    result->_channelsPerFrame = perFrame;
    result->_bitsPerChannel = channel;
    result->_reserved = reserved;
  }

  return result;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXAudioStreamBasicDescriptionMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXAudioStreamBasicDescriptionMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXAudioStreamBasicDescription *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXAudioStreamBasicDescriptionMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXAudioStreamBasicDescriptionMutation *)v4 generate];

  return generate;
}

@end