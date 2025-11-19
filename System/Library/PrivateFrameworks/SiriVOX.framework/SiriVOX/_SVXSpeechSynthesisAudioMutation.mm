@interface _SVXSpeechSynthesisAudioMutation
- (_SVXSpeechSynthesisAudioMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _SVXSpeechSynthesisAudioMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (baseModel)
  {
    if (*&self->_mutationFlags)
    {
      if ((*&self->_mutationFlags & 2) != 0)
      {
        v6 = self->_data;
      }

      else
      {
        v6 = [(SVXSpeechSynthesisAudio *)baseModel data];
      }

      v7 = v6;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        v8 = self->_decoderASBD;
      }

      else
      {
        v8 = [(SVXSpeechSynthesisAudio *)self->_baseModel decoderASBD];
      }

      v9 = v8;
      if ((*&self->_mutationFlags & 8) != 0)
      {
        v10 = self->_playerASBD;
      }

      else
      {
        v10 = [(SVXSpeechSynthesisAudio *)self->_baseModel playerASBD];
      }

      v11 = v10;
      v5 = [[SVXSpeechSynthesisAudio alloc] initWithData:v7 decoderASBD:v9 playerASBD:v10];

      goto LABEL_16;
    }

    v4 = [(SVXSpeechSynthesisAudio *)baseModel copy];
  }

  else
  {
    v4 = [[SVXSpeechSynthesisAudio alloc] initWithData:self->_data decoderASBD:self->_decoderASBD playerASBD:self->_playerASBD];
  }

  v5 = v4;
LABEL_16:

  return v5;
}

- (_SVXSpeechSynthesisAudioMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXSpeechSynthesisAudioMutation;
  v6 = [(_SVXSpeechSynthesisAudioMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end