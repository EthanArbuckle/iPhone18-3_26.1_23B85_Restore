@interface _SVXSpeechSynthesisAudioMutation
- (_SVXSpeechSynthesisAudioMutation)initWithBaseModel:(id)model;
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
        data = self->_data;
      }

      else
      {
        data = [(SVXSpeechSynthesisAudio *)baseModel data];
      }

      v7 = data;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        decoderASBD = self->_decoderASBD;
      }

      else
      {
        decoderASBD = [(SVXSpeechSynthesisAudio *)self->_baseModel decoderASBD];
      }

      v9 = decoderASBD;
      if ((*&self->_mutationFlags & 8) != 0)
      {
        playerASBD = self->_playerASBD;
      }

      else
      {
        playerASBD = [(SVXSpeechSynthesisAudio *)self->_baseModel playerASBD];
      }

      v11 = playerASBD;
      v5 = [[SVXSpeechSynthesisAudio alloc] initWithData:v7 decoderASBD:v9 playerASBD:playerASBD];

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

- (_SVXSpeechSynthesisAudioMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SVXSpeechSynthesisAudioMutation;
  v6 = [(_SVXSpeechSynthesisAudioMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end