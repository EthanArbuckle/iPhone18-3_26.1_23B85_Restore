@interface SVXSpeechSynthesisAudio
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXSpeechSynthesisAudio)initWithCoder:(id)coder;
- (SVXSpeechSynthesisAudio)initWithData:(id)data decoderASBD:(id)d playerASBD:(id)bD;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXSpeechSynthesisAudio

- (void)encodeWithCoder:(id)coder
{
  data = self->_data;
  coderCopy = coder;
  [coderCopy encodeObject:data forKey:@"SVXSpeechSynthesisAudio::data"];
  [coderCopy encodeObject:self->_decoderASBD forKey:@"SVXSpeechSynthesisAudio::decoderASBD"];
  [coderCopy encodeObject:self->_playerASBD forKey:@"SVXSpeechSynthesisAudio::playerASBD"];
}

- (SVXSpeechSynthesisAudio)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisAudio::data"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisAudio::decoderASBD"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisAudio::playerASBD"];

  v8 = [(SVXSpeechSynthesisAudio *)self initWithData:v5 decoderASBD:v6 playerASBD:v7];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      data = [(SVXSpeechSynthesisAudio *)v5 data];
      data = self->_data;
      if (data == data || [(NSData *)data isEqual:data])
      {
        decoderASBD = [(SVXSpeechSynthesisAudio *)v5 decoderASBD];
        decoderASBD = self->_decoderASBD;
        if (decoderASBD == decoderASBD || [(SVXAudioStreamBasicDescription *)decoderASBD isEqual:decoderASBD])
        {
          playerASBD = [(SVXSpeechSynthesisAudio *)v5 playerASBD];
          playerASBD = self->_playerASBD;
          v12 = playerASBD == playerASBD || [(SVXAudioStreamBasicDescription *)playerASBD isEqual:playerASBD];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_data hash];
  v4 = [(SVXAudioStreamBasicDescription *)self->_decoderASBD hash]^ v3;
  return v4 ^ [(SVXAudioStreamBasicDescription *)self->_playerASBD hash];
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXSpeechSynthesisAudio;
  v5 = [(SVXSpeechSynthesisAudio *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {data = (%llu bytes), decoderASBD = %@, playerASBD = %@}", v5, -[NSData length](self->_data, "length"), self->_decoderASBD, self->_playerASBD];

  return v6;
}

- (SVXSpeechSynthesisAudio)initWithData:(id)data decoderASBD:(id)d playerASBD:(id)bD
{
  dataCopy = data;
  dCopy = d;
  bDCopy = bD;
  v19.receiver = self;
  v19.super_class = SVXSpeechSynthesisAudio;
  v11 = [(SVXSpeechSynthesisAudio *)&v19 init];
  if (v11)
  {
    v12 = [dataCopy copy];
    data = v11->_data;
    v11->_data = v12;

    v14 = [dCopy copy];
    decoderASBD = v11->_decoderASBD;
    v11->_decoderASBD = v14;

    v16 = [bDCopy copy];
    playerASBD = v11->_playerASBD;
    v11->_playerASBD = v16;
  }

  return v11;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXSpeechSynthesisAudioMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXSpeechSynthesisAudioMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXSpeechSynthesisAudio *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXSpeechSynthesisAudioMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXSpeechSynthesisAudioMutation *)v4 generate];

  return generate;
}

@end