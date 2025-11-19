@interface SVXSpeechSynthesisAudio
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXSpeechSynthesisAudio)initWithCoder:(id)a3;
- (SVXSpeechSynthesisAudio)initWithData:(id)a3 decoderASBD:(id)a4 playerASBD:(id)a5;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXSpeechSynthesisAudio

- (void)encodeWithCoder:(id)a3
{
  data = self->_data;
  v5 = a3;
  [v5 encodeObject:data forKey:@"SVXSpeechSynthesisAudio::data"];
  [v5 encodeObject:self->_decoderASBD forKey:@"SVXSpeechSynthesisAudio::decoderASBD"];
  [v5 encodeObject:self->_playerASBD forKey:@"SVXSpeechSynthesisAudio::playerASBD"];
}

- (SVXSpeechSynthesisAudio)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisAudio::data"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisAudio::decoderASBD"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXSpeechSynthesisAudio::playerASBD"];

  v8 = [(SVXSpeechSynthesisAudio *)self initWithData:v5 decoderASBD:v6 playerASBD:v7];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SVXSpeechSynthesisAudio *)v5 data];
      data = self->_data;
      if (data == v6 || [(NSData *)data isEqual:v6])
      {
        v8 = [(SVXSpeechSynthesisAudio *)v5 decoderASBD];
        decoderASBD = self->_decoderASBD;
        if (decoderASBD == v8 || [(SVXAudioStreamBasicDescription *)decoderASBD isEqual:v8])
        {
          v10 = [(SVXSpeechSynthesisAudio *)v5 playerASBD];
          playerASBD = self->_playerASBD;
          v12 = playerASBD == v10 || [(SVXAudioStreamBasicDescription *)playerASBD isEqual:v10];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXSpeechSynthesisAudio;
  v5 = [(SVXSpeechSynthesisAudio *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {data = (%llu bytes), decoderASBD = %@, playerASBD = %@}", v5, -[NSData length](self->_data, "length"), self->_decoderASBD, self->_playerASBD];

  return v6;
}

- (SVXSpeechSynthesisAudio)initWithData:(id)a3 decoderASBD:(id)a4 playerASBD:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SVXSpeechSynthesisAudio;
  v11 = [(SVXSpeechSynthesisAudio *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    data = v11->_data;
    v11->_data = v12;

    v14 = [v9 copy];
    decoderASBD = v11->_decoderASBD;
    v11->_decoderASBD = v14;

    v16 = [v10 copy];
    playerASBD = v11->_playerASBD;
    v11->_playerASBD = v16;
  }

  return v11;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXSpeechSynthesisAudioMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXSpeechSynthesisAudioMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXSpeechSynthesisAudio *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXSpeechSynthesisAudioMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXSpeechSynthesisAudioMutation *)v4 generate];

  return v5;
}

@end