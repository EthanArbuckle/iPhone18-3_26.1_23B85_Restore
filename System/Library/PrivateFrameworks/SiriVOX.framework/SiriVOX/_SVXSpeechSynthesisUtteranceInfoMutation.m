@interface _SVXSpeechSynthesisUtteranceInfoMutation
- (_SVXSpeechSynthesisUtteranceInfoMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _SVXSpeechSynthesisUtteranceInfoMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (baseModel)
  {
    if (*&self->_mutationFlags)
    {
      if ((*&self->_mutationFlags & 2) != 0)
      {
        v6 = self->_utterance;
      }

      else
      {
        v6 = [(SVXSpeechSynthesisUtteranceInfo *)baseModel utterance];
      }

      v7 = v6;
      if ((*&self->_mutationFlags & 4) != 0)
      {
        v8 = self->_wordTimings;
      }

      else
      {
        v8 = [(SVXSpeechSynthesisUtteranceInfo *)self->_baseModel wordTimings];
      }

      v9 = v8;
      v5 = [[SVXSpeechSynthesisUtteranceInfo alloc] initWithUtterance:v7 wordTimings:v8];

      goto LABEL_13;
    }

    v4 = [(SVXSpeechSynthesisUtteranceInfo *)baseModel copy];
  }

  else
  {
    v4 = [[SVXSpeechSynthesisUtteranceInfo alloc] initWithUtterance:self->_utterance wordTimings:self->_wordTimings];
  }

  v5 = v4;
LABEL_13:

  return v5;
}

- (_SVXSpeechSynthesisUtteranceInfoMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXSpeechSynthesisUtteranceInfoMutation;
  v6 = [(_SVXSpeechSynthesisUtteranceInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end