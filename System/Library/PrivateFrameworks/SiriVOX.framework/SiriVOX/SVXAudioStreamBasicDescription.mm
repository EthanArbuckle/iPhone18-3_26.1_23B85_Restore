@interface SVXAudioStreamBasicDescription
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXAudioStreamBasicDescription)initWithCoder:(id)a3;
- (SVXAudioStreamBasicDescription)initWithSampleRate:(double)a3 formatID:(unsigned int)a4 formatFlags:(unsigned int)a5 bytesPerPacket:(unsigned int)a6 framesPerPacket:(unsigned int)a7 bytesPerFrame:(unsigned int)a8 channelsPerFrame:(unsigned int)a9 bitsPerChannel:(unsigned int)a10 reserved:(unsigned int)a11;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXAudioStreamBasicDescription

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  sampleRate = self->_sampleRate;
  v6 = a3;
  v7 = [v4 numberWithDouble:sampleRate];
  [v6 encodeObject:v7 forKey:@"SVXAudioStreamBasicDescription::sampleRate"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_formatID];
  [v6 encodeObject:v8 forKey:@"SVXAudioStreamBasicDescription::formatID"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_formatFlags];
  [v6 encodeObject:v9 forKey:@"SVXAudioStreamBasicDescription::formatFlags"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bytesPerPacket];
  [v6 encodeObject:v10 forKey:@"SVXAudioStreamBasicDescription::bytesPerPacket"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_framesPerPacket];
  [v6 encodeObject:v11 forKey:@"SVXAudioStreamBasicDescription::framesPerPacket"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bytesPerFrame];
  [v6 encodeObject:v12 forKey:@"SVXAudioStreamBasicDescription::bytesPerFrame"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_channelsPerFrame];
  [v6 encodeObject:v13 forKey:@"SVXAudioStreamBasicDescription::channelsPerFrame"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bitsPerChannel];
  [v6 encodeObject:v14 forKey:@"SVXAudioStreamBasicDescription::bitsPerChannel"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_reserved];
  [v6 encodeObject:v15 forKey:@"SVXAudioStreamBasicDescription::reserved"];
}

- (SVXAudioStreamBasicDescription)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::sampleRate"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::formatID"];
  v8 = [v7 unsignedIntValue];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::formatFlags"];
  v10 = [v9 unsignedIntValue];

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::bytesPerPacket"];
  v12 = [v11 unsignedIntValue];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::framesPerPacket"];
  v14 = [v13 unsignedIntValue];

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::bytesPerFrame"];
  v16 = [v15 unsignedIntValue];

  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::channelsPerFrame"];
  v18 = [v17 unsignedIntValue];

  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::bitsPerChannel"];
  v20 = [v19 unsignedIntValue];

  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SVXAudioStreamBasicDescription::reserved"];

  LODWORD(v3) = [v21 unsignedIntValue];
  return [(SVXAudioStreamBasicDescription *)self initWithSampleRate:v8 formatID:v10 formatFlags:v12 bytesPerPacket:v14 framesPerPacket:v16 bytesPerFrame:v18 channelsPerFrame:v6 bitsPerChannel:__PAIR64__(v3 reserved:v20)];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXAudioStreamBasicDescription;
  v5 = [(SVXAudioStreamBasicDescription *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {sampleRate = %f, formatID = %u, formatFlags = %u, bytesPerPacket = %u, framesPerPacket = %u, bytesPerFrame = %u, channelsPerFrame = %u, bitsPerChannel = %u, reserved = %u}", v5, *&self->_sampleRate, self->_formatID, self->_formatFlags, self->_bytesPerPacket, self->_framesPerPacket, self->_bytesPerFrame, self->_channelsPerFrame, self->_bitsPerChannel, self->_reserved];

  return v6;
}

- (SVXAudioStreamBasicDescription)initWithSampleRate:(double)a3 formatID:(unsigned int)a4 formatFlags:(unsigned int)a5 bytesPerPacket:(unsigned int)a6 framesPerPacket:(unsigned int)a7 bytesPerFrame:(unsigned int)a8 channelsPerFrame:(unsigned int)a9 bitsPerChannel:(unsigned int)a10 reserved:(unsigned int)a11
{
  v19.receiver = self;
  v19.super_class = SVXAudioStreamBasicDescription;
  result = [(SVXAudioStreamBasicDescription *)&v19 init];
  if (result)
  {
    result->_sampleRate = a3;
    result->_formatID = a4;
    result->_formatFlags = a5;
    result->_bytesPerPacket = a6;
    result->_framesPerPacket = a7;
    result->_bytesPerFrame = a8;
    result->_channelsPerFrame = a9;
    result->_bitsPerChannel = a10;
    result->_reserved = a11;
  }

  return result;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXAudioStreamBasicDescriptionMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXAudioStreamBasicDescriptionMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXAudioStreamBasicDescription *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXAudioStreamBasicDescriptionMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXAudioStreamBasicDescriptionMutation *)v4 generate];

  return v5;
}

@end